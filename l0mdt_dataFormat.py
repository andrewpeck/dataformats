import csv
from typing import NamedTuple
import sys, getopt, csv, os
from datetime import datetime, timezone
from pathlib import Path
from math import ceil, floor, log

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

    ofile = None

    def write_ln(line):
        nonlocal ofile
        ofile.write(f"{line}\n");

    def write_header(suffix):
        write_ln(f"#ifndef L0MDT_BUSES_{suffix.upper()}_H")
        write_ln(f"#define L0MDT_BUSES_{suffix.upper()}_H")
        write_ln("");


    def write_footer(suffix):
        write_ln("")
        write_ln(f"// {'-'*67}")
        write_ln("")
        write_ln(f"#endif // L0MDT_BUSES_{suffix.upper()}_H")

    buses_filt = [bus for bus in buses if bus.name]

    def get_var_name(var, bus=None):
        prefix = ""
        if bus: prefix += f"{bus.name}_"
        if var.station: prefix += f"{var.station}_"
        return f"{prefix}{var.name}"

    def get_hls_type(var):
        if not (var.low or var.high or var.prec):
            return "uint"
        elif int(var.decb) == 0:
            if int(var.low) < 0:
                return "int"
            else:
                return "uint"
        else:
            if float(var.low) < 0:
                return "fixed"
            else:
                return "ufixed"

    #constants ---------------------------------------------
    suffix = 'constants'
    p = os.path.join(o_dir, f"{c_name}_{suffix}.h")
    ofile = open(p, "w")

    insert_header_notes(ofile, "//")
    write_header(suffix)
    write_ln(f'const char df_hash[] = "{df_hash}";')
    for bus in buses_filt:

        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"const int {bus.name}_LEN = {bus.width};")

        for var in bus.vars:
            ##if var.type != "var":
            ##    continue

            ##if var.parameter == "(COPY)":
            ##    continue

            write_ln("")
            if var.parameter == "(COPY)":
                write_ln(f"// (COPY - {var.type})")
            else:
                write_ln(f"// {var.parameter}")

            tpl = "const int %s = %s;"

            var_name = get_var_name(var, bus).upper()

            hls_type = get_hls_type(var)

            write_ln(tpl %(f"{var_name}_LEN", var.width))
            write_ln(tpl %(f"{var_name}_MSB", var.msb))
            write_ln(tpl %(f"{var_name}_LSB", var.lsb))
            if 'fixed' in hls_type:
                write_ln(tpl %(f"{var_name}_DECB", var.decb))
                var_iwidth = str(int(var.width) - int(var.decb))
                write_ln(tpl %(f"{var_name}_IW", var_iwidth))
            if 'int' in get_hls_type(var) and var.prec and float(var.prec) > 1:
                scale = floor(float(var.prec))
                write_ln(tpl %(f"{var_name}_SCALE", str(scale)))
                write_ln(f"const float {var_name}_SCALE_INV = " + str(round(1/scale,6)) + ";")

    write_footer(suffix)
    ofile.close()
    print(f'C: {suffix} file generated.')

    #constants (offline/software precision) ---------------------------------------------
    suffix = 'constants_sw'
    p = os.path.join(o_dir, f"{c_name}_{suffix}.h")
    ofile = open(p, "w")

    insert_header_notes(ofile, "//")
    write_header(suffix)
    write_ln(f'const char df_hash[] = "{df_hash}";')
    write_ln("")
    write_ln("const int SW_LEN = 64; // Default bit width")
    write_ln("const int SW_IW = 15; // Default integer bit width")

    for bus in buses_filt:

        n_vars = len(bus.vars)
        var_sum = "\n\t\t+ ".join([get_var_name(var, bus).upper()+"_LEN" for var in bus.vars])

        write_ln("");
        write_ln(f"// {'-'*67}")

        for var in reversed(bus.vars):

            write_ln("")
            if var.parameter == "(COPY)":
                write_ln(f"// (COPY - {var.type})")
            else:
                write_ln(f"// {var.parameter}")

            tpl = "const int %s = %s;"

            var_name = get_var_name(var, bus).upper()

            hls_type = get_hls_type(var)

            if var.type == 'var':
                len_var = "SW_LEN"
            else:
                var_name_no_bus = var_name.replace(bus.name+"_","")
                len_var = f"{var_name_no_bus}_LEN"
            write_ln(tpl %(f"{var_name}_LEN", len_var))

            var_idx = bus.vars.index(var)
            if var_idx < n_vars-1:
                next_var_name = get_var_name(bus.vars[var_idx+1], bus).upper()
                write_ln(tpl %(f"{var_name}_LSB", f"{next_var_name}_MSB + 1"))
            else:
                write_ln(tpl %(f"{var_name}_LSB", "0"))
            write_ln(tpl %(f"{var_name}_MSB", f"{var_name}_LSB + {len_var}-1"))

            if 'fixed' in hls_type:
                write_ln(tpl %(f"{var_name}_DECB", "SW_LEN - SW_IW"))
                write_ln(tpl %(f"{var_name}_IW", "SW_IW"))
            if 'int' in get_hls_type(var) and var.prec and float(var.prec) > 1:
                write_ln(tpl %(f"{var_name}_SCALE", str(1)))
                write_ln(f"const float {var_name}_SCALE_INV = " + str(1) + ";")

        write_ln("")
        write_ln(f"const int {bus.name}_LEN = {var_sum};")

    write_ln("")
    write_footer(suffix)
    ofile.close()
    print(f'C: {suffix} file generated.')

    # types ------------------------------------------------
    suffix = 'types'
    p = os.path.join(o_dir, f"{c_name}_{suffix}.h")
    ofile = open(p, "w")

    insert_header_notes(ofile, "//")
    write_header(suffix)
    write_ln(f'const char df_hash[] = "{df_hash}";')
    p = os.path.join(o_dir, c_name+"_types.h")

    write_ln("");
    write_ln("// Usage:")
    write_ln("//   uint16_t bcid;")
    write_ln("//   GETVAL(bcid, SLC_MUID.bcid, 12);")
    write_ln("template <typename T>")
    write_ln("void GETVAL(T dest, char orig, unsigned int nbits) {")
    write_ln("    dest = 0;")
    write_ln("    for (int i=0; i <= nbits/8; i++){")
    write_ln("    dest |= orig[i] << i*8;")
    write_ln("}")

    for bus in buses_filt:
        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"typedef struct {bus.name}_n {{")

        included = []
        for var in bus.vars:
            if var.name in included: continue
            included.append(var.name)

            if var.type != 'var':
                write_ln(f"    // struct {var.name}")
            elif var.type == 'var':
                write_ln(f"    // {var.parameter}")

            l = ((int(var.width)-1) // 8) + 1
            l_fmt = f"[{l}]" if l > 1 else ""

            var_name = get_var_name(var)

            write_ln(f"    char {var_name}{l_fmt}; // {var.width} bits")

        write_ln(f"}} {bus.name}_rt;")

    write_footer(suffix)
    ofile.close()
    print(f'C: {suffix} file generated.')

    # HLS types  ---------------------------------------------
    suffix = 'hls_types'
    p = os.path.join(o_dir, f"{c_name}_{suffix}.h")
    ofile = open(p, "w")

    insert_header_notes(ofile, "//")
    write_header(suffix)

    write_ln("");
    write_ln("#include <ap_fixed.h>")
    write_ln("#include <ap_int.h>")

    for bus in buses_filt:
        write_ln("");
        write_ln(f"// {'-'*67}")
        write_ln(f"typedef ap_uint<{bus.name}_LEN> {bus.name.lower()}_uint_t;")

        for var in bus.vars:
            if var.parameter == "(COPY)": continue

            var_name = get_var_name(var, bus).upper()

            hls_type = get_hls_type(var)

            if 'fixed' in hls_type:
                hls_def = f"ap_{hls_type}<{var_name}_LEN, {var_name}_IW>"
            elif 'int' in hls_type:
                hls_def = f"ap_{hls_type}<{var_name}_LEN>"
            write_ln(f"typedef {hls_def} {var_name.lower()}_{hls_type}_t;")

            if 'int' in hls_type and var.prec and float(var.prec) > 1:
                var_range = float(var.high) - float(var.low) + 1
                scaled_width = ceil(log(var_range,2))
                write_ln(f"typedef ap_{hls_type}<{scaled_width}> {var_name.lower()}_{hls_type}_scaled_t;")

    write_footer(suffix)
    ofile.close()
    print(f'C: {suffix} file generated.')

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
        write_ln(f"parameter {bus.name}_LEN = {bus.width} ;")

        for var in bus.vars:
            #if var.type != "var":
            #    continue

            #if var.parameter == "(COPY)":
            #    continue

            write_ln("")
            write_ln(f"// {var.parameter}")

            tpl = "parameter %s = %s ;"

            suffix = ""
            if var.station:
                prefix = f"{bus.name}_{var.station}_"
            else:
                prefix = f"{bus.name}_"

            var_name = f"{prefix}{var.name}{suffix}".upper()

            write_ln(tpl %(f"{var_name}_LEN", var.width))
            write_ln(tpl %(f"{var_name}_MSB", var.msb))
            write_ln(tpl %(f"{var_name}_LSB", var.lsb))
            write_ln(tpl %(f"{var_name}_DECB", var.decb))

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

            suffix = ""
            
            if var.station:
                prefix = f"{var.station}_{var.name}"
            else:
                prefix = f"{var.name}"

            var_name = f"{prefix}{var.name}{suffix}"
                
            write_ln(f"    logic [{msb}:0] {var_name};")

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
        
            write_ln(f"  constant {bus.name}_LEN : natural := {bus.width};")
        
            for var in bus.vars:
                if var.type == "struct":
                    continue
        
                #if var.parameter == "(COPY)":
                #    continue
        
                write_ln("")
                write_ln(f"  -- {var.parameter}")

                tpl = "  constant %s : %s := %s;"

                suffix = ""
                
                if var.station:
                    prefix = f"{bus.name}_{var.station}_"
       	        else:
                    prefix = f"{bus.name}_"

                var_name = f"{prefix}{var.name}{suffix}".upper()
                    
                write_ln(tpl %(f"{var_name}_LEN", "natural", var.width))
                write_ln(tpl %(f"{var_name}_MSB", "natural", var.msb))
                write_ln(tpl %(f"{var_name}_LSB", "natural", var.lsb))
                write_ln(tpl %(f"{var_name}_DECB", "natural", var.decb))

                mult = 0
                if var.high != '' and var.low!= '':
                    mult = round((2**int(var.width))/(float(var.high)-float(var.low)))
                
                write_ln(tpl %(f"{var_name}_MULT", "natural", mult))
        
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

        write_ln("");
        write_ln("library l0mdt_lib;")
        write_ln("use l0mdt_lib.mdttp_constants_pkg.all;")
        
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

            tpl = f"  subtype %s_at is std_logic_vector(%s downto 0);"
            write_ln(tpl %(bus.name, int(bus.width)-1))
            
            write_ln("");
            write_ln(f"  type {bus.name.lower()}_rt is record")
        
            included = []
            for var in bus.vars:
                
                if var.type != 'var':
                    write_ln(f"    -- struct {var.name}")
                    suffix = "_r"
                elif var.type == 'var':
                    write_ln(f"    -- {var.parameter}")
                    suffix = ""

                if var.station:
                    prefix = f"{var.station}_"
                else:
                    prefix = f""

                var_name = f"{prefix}{var.name}{suffix}".lower()
                const_name = f"{bus.name}_{prefix}{var.name}".upper()


                if var_name in included:
                    continue
        
                included.append(var_name)
                
                if var.type == 'var':
                    msb = int(var.width)-1
                    if msb > 0: 
                        aux = f"std_logic_vector({const_name}_LEN-1 downto 0)"
                        write_ln(f"    {var_name} : {aux}; -- {msb}")
                    else:
                        write_ln(f"    {var_name} : std_logic;")
                else:
                        write_ln(f"    {var_name} : {var.name}_rt;")
                    
        
            write_ln(f"  end record {bus.name.lower()}_rt;")
            
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
        write_ln("use l0mdt_lib.mdttp_constants_pkg.all;")
        write_ln("use l0mdt_lib.mdttp_types_pkg.all;")
        
        write_ln("")
        write_ln("package mdttp_functions_pkg is")
        
        write_ln("")
        msb = len(df_hash)*4-1
        tpl = 'constant DF_HASH : std_logic_vector(%s downto 0);'
        write_ln(f'  {tpl}' %(msb))
        
        for bus in buses:
            if not f'{bus.name}':
                ## somehow we have an empty bus name...
                continue
            
            write_ln("");
            write_ln(f"  -- {'-'*65}")

            included = []
            for var in bus.vars:
                
                if var.type != 'var':
                    tpl = f"{var.name}_2af(d.{var.name}_r)"
                    included.append(tpl)
                elif var.type == 'var':
                    if var.station:
                        var_prefix = f"{var.station}_"
                    else:
                        var_prefix = f""

                    var_name = f"d.{var_prefix}{var.name}"
                    if var_name in included:
                        continue
                    included.append(var_name)

            ## to vector
            write_ln(f'  function {bus.name.lower()}_2af (d: {bus.name}_rt)')
            write_ln(f'  return std_logic_vector;')

            write_ln("")
            
            # from vector
            write_ln(f'  function {bus.name.lower()}_2rf (v: {bus.name.lower()}_at)')
            write_ln(f'  return {bus.name}_rt;')

        write_ln("")
        write_ln(f"  -- {'-'*67}")
        write_ln("")
        write_ln("end package mdttp_functions_pkg;")

        write_ln("")
        write_ln("package body mdttp_functions_pkg is")
        
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
                
                if var.type != 'var':
                    tpl = f"{var.name}_2af(d.{var.name}_r)"
                    included.append(tpl)
                elif var.type == 'var':
                    if var.station:
                        var_prefix = f"{var.station}_"
                    else:
                        var_prefix = f""

                    var_name = f"d.{var_prefix}{var.name}"
                    if var_name in included:
                        continue
                    included.append(var_name)

            ## to vector
            write_ln(f'  function {bus.name.lower()}_2af (d: {bus.name}_rt)')
            write_ln(f'  return std_logic_vector is')
            write_ln(f'    variable v : std_logic_vector({bus.name}_LEN-1 downto 0);')
            write_ln(f'  begin')
            c = [x.lower() for x in included]
            r_side = "\n         & ".join(c).strip()
            write_ln(f'    v := {r_side};')
            write_ln(f'    return v;')
            write_ln(f'  end function {bus.name.lower()}_2af;')

            write_ln("")
            
            # from vector
            write_ln(f'  function {bus.name.lower()}_2rf (v: {bus.name.lower()}_at)')
            write_ln(f'  return {bus.name}_rt is')
            write_ln(f'    variable b : {bus.name}_rt;')
            write_ln(f"    variable msb : integer;")
            write_ln(f"    variable lsb : integer;")
            write_ln(f'  begin')

            included = []
            prev_var = None
            for var in bus.vars:
                if var.type != 'var':
                    var_suffix = "_r"
                elif var.type == 'var':
                    var_suffix = ""

                const_suffix = ""
                const_prefix = f"{bus.name}_"
                
                if var.station:
                    var_prefix = f"{var.station}_"
                    const_prefix += f"{var.station}_"
                else:
                    var_prefix = f""

                var_name = f"{var_prefix}{var.name}{var_suffix}"
                const_name = f"{const_prefix}{var.name}{const_suffix}"

                if var_name in included:
                    continue
                included.append(var_name)

                if prev_var is None:
                    msb = int(bus.width)-1
                    write_ln(f'    msb := {bus.name.upper()}_LEN - 1; -- {bus.width}')
                else:
                    msb = lsb - 1
                    write_ln(f'    msb := lsb - 1;')

                lsb = msb - int(var.width) + 1
                write_ln(f'    lsb := msb - {const_name.upper()}_LEN + 1; -- {var.width}')
                prev_var = var

                if msb != lsb:
                    var_range = f"v(msb downto lsb)"
                    var_comment = f"{msb} {lsb}"
                else:
                    var_range = "v(msb)"
                    var_comment = f"{msb}"
                    
                    
                if var.type == 'var':
                    write_ln(f'    b.{var_name.lower()} := {var_range}; -- {var_comment}')
                else:
                    right = f'{var.name.lower()}_2rf({var_range}); -- {var_comment}'
                    write_ln(f'    b.{var_name.lower()} := {right}')

            write_ln(f'    return b;')
            write_ln(f'  end function {bus.name.lower()}_2rf;')

        write_ln("")
        write_ln(f"  -- {'-'*67}")
        write_ln("")
        write_ln("end package body mdttp_functions_pkg;")

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
