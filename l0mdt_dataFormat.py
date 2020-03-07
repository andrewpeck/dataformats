import csv
from typing import NamedTuple
import sys, getopt, csv, os
from datetime import datetime, timezone
from pathlib import Path

#declare variable class
class Var(NamedTuple):
    name: str
    station: str
    width: int
    msb: int
    lsb: int
    decb: int
    low: float
    high: float
    prec: int
    units: str
    destination_chip: str
    destination_block: str
    source: str
    parameter: str
    type: str
    use: str
    comments: str

#declare Bus class (set of variables)
class Bus(NamedTuple):
    name: str
    width: int
    vars: Var = []

buses = []
vars = []

#define struct attributes
bus_name = ''
total = 0

#csv file reader
def read_csv(input_file) :

    with open(input_file) as csv_file:
        #read csv file
        readCSV = csv.reader(csv_file, delimiter=',')
        vars = []
    
        #loop over csv rows
        for row in readCSV:
    
            if len(row) == 0:
                continue
            elif row[1] == 'Station':
                bus_name = row[0]
                continue
            elif row[0] == 'TOTAL':
                buses.append(Bus(bus_name,row[2],vars));
                vars=[]
                continue
            elif row[0] == '':
                continue
    
            vars.append(Var(*row))
         

now = datetime.now(tz=None)
dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
date_now = datetime.now(timezone.utc).astimezone().tzname()

url_base = "https://docs.google.com/spreadsheets"
url_spec = "d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s"
url = f"{url_base}/{url_spec}"


def insert_header_notes(file_obj, comment):

    def write_ln(line):
        file_obj.write(f"{line}\n");

    write_ln(f"{comment} {'-'*97}")
    write_ln(f"{comment} Auto-generated from:")
    write_ln(f"{comment} {url}")
    # write_ln(f"{comment} Date: {dt_string} {date_now}")
    write_ln(f"{comment} {'-'*97}")


#C file writer
def write_c_file(c_name, df_hash, o_dir) :

    #constants ---------------------------------------------
    p = os.path.join(o_dir, c_name+"_constants.h")
    f_constants = open(p, "w")
    insert_header_notes(f_constants, "//")

    def write_ln(line):
        f_constants.write(f"{line}\n");

    write_ln("");
    write_ln("#ifndef LOMDT_BUSES_CONSTANTS_H")
    write_ln("#define LOMDT_BUSES_CONSTANTS_H")

    write_ln("");
    write_ln(f'const char df_hash[] = "{df_hash}";')

    for bus in buses:
        if not f'{bus.name}':
            ## somehow we have an empty bus name...
            continue

        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"const int {bus.name}_width = {bus.width};")

        for var in bus.vars:
            if var.type == "struct":
                continue

            if var.parameter == "(COPY)":
                continue

            write_ln("")
            write_ln(f"// {var.parameter}")

            tpl = "const int %s = %s;"

            
            if var.station:
                var_prefix = f"{bus.name}_{var.station}_{var.name}"
            else:
                var_prefix = f"{bus.name}_{var.name}"

            write_ln(tpl %(f"{var_prefix}_width", var.width))
            # write_ln(tpl %(f"{var_prefix}_msb", var.msb))
            write_ln(tpl %(f"{var_prefix}_lsb", var.lsb))
            write_ln(tpl %(f"{var_prefix}_decb", var.decb))

    write_ln("")
    write_ln(f"// {'-'*67}")
    write_ln("")
    write_ln("#endif // LOMDT_BUSES_CONSTANTS_H")
    f_constants.close()

    print('C: constants file generated.')


    # types ------------------------------------------------
    p = os.path.join(o_dir, c_name+"_types.h")
    f_types = open(p, "w")
    insert_header_notes(f_types, "//")

    def write_ln(line):
        f_types.write(f"{line}\n");

    write_ln("");
    write_ln("#ifndef LOMDT_BUS_TYPES_H")
    write_ln("#define LOMDT_BUS_TYPES_H")

    macro=([
        "#define GETVAL(dest,orig,nbits) \\"
        , "    dest = 0; \\"
        , "    for (int i=0; i <= nbits/8; i++){\\"
        , "        dest |= orig[i] << i*8;\\"
        , "    }"
    ])

    write_ln("");
    ex = []
    ex += ["// Usage:"                              ]
    ex += ["//   uint16_t bcid;"                  ]
    ex += ["//   GETVAL(bcid, SLC_MUID.bcid, 12);"]
    for line in ex: write_ln(line)
    for line in macro: write_ln(line)

    write_ln("");
    write_ln(f'const char df_hash[] = "{df_hash}";')

    for bus in buses:
        if not f'{bus.name}':
            ## somehow we have an empty bus name...
            continue

        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"typedef struct {bus.name}_n {{")

        included = []
        for var in bus.vars:

            if var.name in included:
                continue

            included.append(var.name)

            if var.type != 'var':
                write_ln(f"    // struct {var.name}")
            elif var.type == 'var':
                write_ln(f"    // {var.parameter}")

            l = ((int(var.width)-1) // 8) + 1
            l_fmt = f"[{l}]" if l > 1 else ""
            
            if var.station:
                var_prefix = f"{var.station}_{var.name}"
            else:
                var_prefix += f"{var.name}"

            write_ln(f"    char {var_prefix}{l_fmt}; // {var.width} bits")

        write_ln(f"}} {bus.name}_rt;")
        
    write_ln("")
    write_ln(f"// {'-'*67}")
    write_ln("")
    write_ln("#endif // LOMDT_BUS_TYPES_H")
    f_constants.close()

    print('C: types file generated.')




    
#system-verilog file writer
def write_sv_file(sv_name, df_hash, o_dir):

    #constants ---------------------------------------------
    p = os.path.join(o_dir, sv_name+"_constants.svh")
    f_constants = open(p, "w")
    insert_header_notes(f_constants, "//")

    def write_ln(line):
        f_constants.write(f"{line}\n");

    write_ln("");
    write_ln(f"`define DF_HASH {df_hash};")

    for bus in buses:
        if not f'{bus.name}':
            ## somehow we have an empty bus name...
            continue

        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"`define {bus.name}_width {bus.width}")

        for var in bus.vars:
            if var.type == "struct":
                continue

            if var.parameter == "(COPY)":
                continue

            write_ln("")
            write_ln(f"// {var.parameter}")

            tpl = "`define %s %s"

            
            if var.station:
                var_prefix = f"{bus.name}_{var.station}_{var.name}"
            else:
                var_prefix = f"{bus.name}_{var.name}"
            
            write_ln(tpl %(f"{var_prefix}_width", var.width))
            # write_ln(tpl %(f"{var_prefix}_msb", var.msb))
            write_ln(tpl %(f"{var_prefix}_lsb", var.lsb))
            write_ln(tpl %(f"{var_prefix}_decb", var.decb))

    f_constants.close()

    print('SV: constants file written.')

    # types ------------------------------------------------
    p = os.path.join(o_dir, f"{sv_name}_types.svh")
    f_types = open(p, "w")
    insert_header_notes(f_types, "//")

    def write_ln(line):
        f_types.write(f"{line}\n");

    write_ln("");
    write_ln("#ifndef LOMDT_BUS_TYPES_H")
    write_ln("#define LOMDT_BUS_TYPES_H")

    write_ln("");
    write_ln(f'const char df_hash[] = "{df_hash}";')

    for bus in buses:
        if not f'{bus.name}':
            ## somehow we have an empty bus name...
            continue

        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"typedef struct {bus.name}_n {{")

        included = []
        for var in bus.vars:

            if var.name in included:
                continue

            included.append(var.name)

            if var.type != 'var':
                write_ln(f"    // struct {var.name}")
            elif var.type == 'var':
                write_ln(f"    // {var.parameter}")
            msb = int(var.width)-1

            if var.station:
                var_prefix = f"{var.station}_{var.name}"
            else:
                var_prefix = f"{var.name}"

            write_ln(f"    logic [{msb}:0] {var_prefix};")

        write_ln(f"}} {bus.name}_rt;")
        
    write_ln("")
    write_ln(f"// {'-'*67}")
    write_ln("")
    write_ln("#endif // LOMDT_BUS_TYPES_H")
    f_constants.close()

    print('SV: types file written.')

#vhdl file writer
def write_vhdl_file(vhdl_name, df_hash, o_dir) :

    # constants --------------------------------------------
    p = os.path.join(o_dir, f"{vhdl_name}_constants_pkg.vhd")
    with open(p, "w") as f_constants:
        insert_header_notes(f_constants, "--")
        
        def write_ln(line):
            f_constants.write(f"{line}\n");
        
        write_ln("");
        write_ln("library ieee;")
        write_ln("use ieee.std_logic_1164.all;")
        write_ln("use ieee.numeric_std.all;")
        write_ln("")
        
        write_ln("package mdttp_constants_pkg is")
        
        write_ln("")
        msb = len(df_hash)*4-1
        tpl = 'constant DF_HASH : std_logic_vector(%s downto 0) := x"%s";'
        write_ln(f'  {tpl}' %(msb, df_hash))
        
        for bus in buses:
            if not f'{bus.name}':
                ## somehow we have an empty bus name...
                continue

            write_ln("")
            write_ln("  " + "-" * 70)
        
            write_ln(f"  constant {bus.name}_width : natural := {bus.width};")
        
            for var in bus.vars:
                if var.type == "struct":
                    continue
        
                if var.parameter == "(COPY)":
                    continue
        
                write_ln("")
                write_ln(f"  -- {var.parameter}")
        
                tpl = "  constant %s : natural := %s;"
                tpl_real = "  constant %s : real := %s;"
                
                if var.station:
                    var_prefix = f"{bus.name}_{var.station}_{var.name}"
       	        else:
                    var_prefix = f"{bus.name}_{var.name}"
			 
                mult = 0
                if var.high != '' and var.low!= '':
                    mult = round((2**int(var.width))/(float(var.high)-float(var.low)))

                write_ln(tpl %(f"{var_prefix}_width", var.width))
                write_ln(tpl_real %(f"{var_prefix}_mult", mult))
                write_ln(tpl %(f"{var_prefix}_msb", var.msb))
                write_ln(tpl %(f"{var_prefix}_lsb", var.lsb))
                write_ln(tpl %(f"{var_prefix}_decb", var.decb))
        
        write_ln("")
        write_ln("  " + "-" * 70)
        write_ln("")
        write_ln("end package mdttp_constants_pkg;")

    print('VHDL: constants file written')

    # types ------------------------------------------------
    p = os.path.join(o_dir, f"{vhdl_name}_types_pkg.vhd")
    with open(p, "w") as f_types:
        insert_header_notes(f_types, "--")
        
        def write_ln(line):
            f_types.write(f"{line}\n");
        
        write_ln("");
        write_ln("library ieee;")
        write_ln("use ieee.std_logic_1164.all;")
        write_ln("use ieee.numeric_std.all;")
        
        write_ln("")
        write_ln("package mdttp_types_pkg is")
        
        write_ln("")
        msb = len(df_hash)*4-1
        tpl = 'constant DF_HASH : std_logic_vector(%s downto 0) := x"%s";'
        write_ln(f'  {tpl}' %(msb, df_hash))
        
        for bus in buses:
            if not f'{bus.name}':
                ## somehow we have an empty bus name...
                continue

            
            write_ln("");
            write_ln(f"  -- {'-'*65}")

            tpl = f"  subtype %s_vt is std_logic_vector(%s downto 0);"
            write_ln(tpl %(bus.name, int(bus.width)-1))
            
            write_ln("");
            write_ln(f"  type {bus.name}_rt is record")
        
            included = []
            for var in bus.vars:
                
                if var.name in included:
                    continue
        
                included.append(var.name)
                
                if var.type != 'var':
                    write_ln(f"    -- struct {var.name}")
                    suffix = "_v"
                elif var.type == 'var':
                    write_ln(f"    -- {var.parameter}")
                    suffix = ""

                if var.station:
                    var_prefix = f"{var.station}_"
                else:
                    var_prefix = f""

                var_name = f"{var_prefix}{var.name}{suffix}"
                    
                msb = int(var.width)-1
                if msb > 0:
                    write_ln(f"    {var_name} : std_logic_vector({msb} downto 0);")
                else:
                    write_ln(f"    {var_name} : std_logic;")
        
            write_ln(f"  end record {bus.name}_rt;")
            
        write_ln("")
        write_ln(f"-- {'-'*67}")
        write_ln("")
        write_ln("end package mdttp_types_pkg;")


    print('VHDL: types file written.')

    # functions --------------------------------------------
    p = os.path.join(o_dir, f"{vhdl_name}_functions_pkg.vhd")
    with open(p, "w") as f_types:
        insert_header_notes(f_types, "--")
        
        def write_ln(line):
            f_types.write(f"{line}\n");
        
        write_ln("");
        write_ln("library ieee;")
        write_ln("use ieee.std_logic_1164.all;")
        write_ln("use ieee.numeric_std.all;")
        
        write_ln("");
        write_ln("library l0mdt_lib;")
        write_ln("use l0mdt_lib.mdttp_types_pkg.all;")
        
        write_ln("")
        write_ln("package mdttp_functions_pkg is")
        
        write_ln("")
        msb = len(df_hash)*4-1
        tpl = 'constant DF_HASH : std_logic_vector(%s downto 0) := x"%s";'
        write_ln(f'  {tpl}' %(msb, df_hash))
        
        for bus in buses:
            if not f'{bus.name}':
                ## somehow we have an empty bus name...
                continue
            
            write_ln("");
            write_ln(f"  -- {'-'*65}")

            included = []
            for var in bus.vars:
                if var.name in included:
                    continue
                included.append(var.name)

            ## to vector
            write_ln(f'  function {bus.name}_2af (d: in {bus.name}_rt)')
            write_ln(f'  return std_logic_vector is')
            write_ln(f'    variable v : std_logic_vector({bus.name}_msb downto 0);')
            write_ln(f'  begin')
            c = ["d." + x for x in included]
            r_side = "\n         & ".join(c).strip()
            write_ln(f'    v := {r_side};')
            write_ln(f'    return v;')
            write_ln(f'  end function {bus.name}_2af;')

            write_ln("")
            
            # from vector
            write_ln(f'  function {bus.name}_2rf (v: in std_logic_vector)')
            write_ln(f'  return {bus.name}_rt is')
            write_ln(f'    variable b : {bus.name}_rt;')
            write_ln(f'  begin')

            included = []
            for var in bus.vars:
                if var.name in included:
                    continue
                included.append(var.name)

                if var.station:
                    var_prefix = f"{var.station}_{var.name}"
                else:
                    var_prefix = f"{var.name}"
                    
                write_ln(f'    b.{var_prefix} := v({var.msb} downto {var.lsb});')

            write_ln(f'    return b;')
            write_ln(f'  end function {bus.name}_2rf;')

        write_ln("")
        write_ln(f"  -- {'-'*67}")
        write_ln("")
        write_ln("end package mdttp_functions_pkg;")

    print('VHDL: functions file written.')


# LaTeX friendly writer
def write_latex_files(out, df_hash, o_dir):
    latex_name = out + '_latex'
    latex_dir = os.path.join(o_dir, latex_name)
    Path(latex_dir).mkdir(parents=True, exist_ok=True)

    p = os.path.join(latex_dir, f"hash.tex")
    with open(p, 'w') as fobj:
        fobj.write(f"{df_hash}")

    for bus in buses:
        if not f'{bus.name}':
            ## somehow we have an empty bus name...
            continue
        
        p = os.path.join(latex_dir, f'{bus.name}.csv')
        with open(p, 'w') as fobj:
            def write_ln(line):
                fobj.write(f"{line}\n");
            l = ",".join(["Name", "Station", "Width", "MSB index", "LSB index", "DECB"])
            write_ln(l)
            for var in bus.vars:
                l = ",".join([var.name, var.station, var.width, var.msb, var.lsb, var.decb])
                l = l.replace('_', '\\_')
                write_ln(l)

            write_ln("")
    print('LaTeX: table files written.')

#main function
def main(argv):

    inputfile = ''
    df_hash = ''
    o_dir=""

    try:
        opts, args = getopt.getopt(argv,
                                   "i:r:o:",
                                   ["ifile=", "ref=", "odir="])
        print(f"opts: {opts}")
        print(f"args: {args}")
    except getopt.GetoptError:
        print(f'{argv[0]} -i <inputfile> -r <df_hash>')
        sys.exit(2)
    for opt, arg in opts:
        if opt in ("-i", "--ifile"):
            inputfile = arg
        elif opt in ("-r", "--ref"):
            df_hash = arg[:8]
        elif opt in ("-o", "--odir"):
            o_dir = arg
        else:
            print('l0mdt_dataFormat.py -i <input file> -r <dt hash> -o <output dir>')
            sys.exit()

    print(f'Input file: "{inputfile}".')
    print(f'Commit hash: "{df_hash}".')
    print(f'Output dir: "{o_dir}".')

    read_csv(inputfile)
    # print(buses)

    outputfile = inputfile[:-4]

    Path(o_dir).mkdir(parents=True, exist_ok=True)

    write_c_file     (outputfile, df_hash, o_dir)
    write_sv_file    (outputfile, df_hash, o_dir)
    write_vhdl_file  (outputfile, df_hash, o_dir)
    write_latex_files(outputfile, df_hash, o_dir)

if __name__ == "__main__":
    main(sys.argv[1:])
