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
    low: int
    high: int
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

         vars.append(Var(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7],row[8],row[9],row[10],row[11],row[12],row[13],row[14],row[15],row[16]))


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
    write_ln(f"{comment} Date: {dt_string} {date_now}")
    write_ln(f"{comment} {'-'*97}")


#C file writer
def write_c_file(c_name, df_hash) :

    #constants
    f_constants = open(c_name+"_constants.h","w")
    insert_header_notes(f_constants, "//")

    def write_ln(line):
        f_constants.write(f"{line}\n");

    write_ln("");
    write_ln("#ifndef LOMDT_BUSES_CONSTANTS_H")
    write_ln("#define LOMDT_BUSES_CONSTANTS_H")

    write_ln("");
    write_ln(f"const char df_hash[] = {df_hash};")

    for bus in buses:
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

    print('C file written')

#system-verilog file writer
def write_sv_file(sv_name, df_hash):

    #constants
    f_constants = open(sv_name+"_constants.svh","w")
    insert_header_notes(f_constants, "//")

    def write_ln(line):
        f_constants.write(f"{line}\n");

    write_ln("");
    write_ln(f"`define DF_HASH {df_hash};")

    for bus in buses:
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
            var_prefix = f"{bus.name}_{var.name}"

            write_ln(tpl %(f"{var_prefix}_width", var.width))
            # write_ln(tpl %(f"{var_prefix}_msb", var.msb))
            write_ln(tpl %(f"{var_prefix}_lsb", var.lsb))
            write_ln(tpl %(f"{var_prefix}_decb", var.decb))

    f_constants.close()

    print('SV file written')

#vhdl file writer
def write_vhdl_file(vhdl_name, df_hash) :

    #constants
    f_constants = open(vhdl_name+"_constants.vhdl", "w")
    insert_header_notes(f_constants, "--")

    def write_ln(line):
        f_constants.write(f"{line}\n");

    write_ln("library ieee;")
    write_ln("use ieee.std_logic_1164.all;")
    write_ln("use ieee.numeric_std.all;")
    write_ln("")

    write_ln("package mdttp_pkg is")

    write_ln("")
    msb = len(df_hash)*4-1
    tpl = 'constant DF_HASH : std_logic_vector(%s downto 0) := x"%s"'
    write_ln(f'  {tpl}' %(msb, df_hash))

    for bus in buses:
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

            tpl = "  constant %s : natural := %s"
            var_prefix = f"{bus.name}_{var.name}"

            write_ln(tpl %(f"{var_prefix}_width", var.width))
            # write_ln(tpl %(f"{var_prefix}_msb", var.msb))
            write_ln(tpl %(f"{var_prefix}_lsb", var.lsb))
            write_ln(tpl %(f"{var_prefix}_decb", var.decb))

    write_ln("")
    write_ln("  " + "-" * 70)
    write_ln("")
    write_ln("end package mdttp_pkg;")
    f_constants.close()

    print('VHDL file written')


# LaTeX friendly writer
def write_latex_files(out, df_hash):
    latex_name = out + '_latex'
    Path(latex_name).mkdir(parents=True, exist_ok=True)

    fname = os.path.join(latex_name, 'df_hash.csv')
    with open(fname, 'w') as fobj:
        fobj.write(f"{df_hash}\n")

    for bus in buses:
        fname = os.path.join(latex_name, bus.name + '.csv')
        with open(fname, 'w') as fobj:
            def write_ln(line):
                fobj.write(f"{line}\n");
            l = ",".join(["Name", "Width", "MSB index", "LSB index", "DECB"])
            write_ln(l)
            for var in bus.vars:
                l = ",".join([var.name, var.width, var.msb, var.lsb, var.decb])
                l = l.replace('_', '\\_')
                write_ln(l)


#main function
def main(argv):

    inputfile = ''
    df_hash = ''

    try:
        opts, args = getopt.getopt(argv,
                                   "i:r:",
                                   ["ifile=", "ref="])
        print(opts)
        print(args)
    except getopt.GetoptError:
        print(f'{argv[0]} -i <inputfile> -r <df_hash>')
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print('l0mdt_dataFormat.py -i <inputfile>')
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg
        elif opt in ("-r", "--ref"):
            df_hash = arg[:8]

    print(f'Input file: {inputfile}.')
    print(f'Commit hash: {df_hash}.')

    read_csv(inputfile)
    print(buses)

    outputfile = inputfile[:-4]

    write_c_file(outputfile, df_hash)
    write_sv_file(outputfile, df_hash)
    write_vhdl_file(outputfile, df_hash)
    write_latex_files(outputfile, df_hash)

if __name__ == "__main__":
    main(sys.argv[1:])
