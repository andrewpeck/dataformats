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

#C file writer
def write_c_file(c_name) :
  
  now = datetime.now(tz=None) 
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

  #constants
  f_constants = open(c_name+"_constants.h","w")
  
  f_constants.write("//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
  f_constants.write("// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770\n")
  #f_constants.write("// Date : "+dt_string+" "+datetime.now(timezone.utc).astimezone().tzname()+"\n")
  f_constants.write("//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
  f_constants.write("\n");
  f_constants.write("\n");

  for bus in buses:
   f_constants.write("//---------------------------------------------------------------------------------------------------------------------------\n")
   f_constants.write("const int "+bus.name+"_width = "+bus.width+";\n")
   f_constants.write("\n")
   for var in bus.vars:
    if var.type!="struct" and var.parameter!="(COPY)":
     f_constants.write("// "+var.parameter+"\n")
     f_constants.write("const int "+bus.name+"_"+var.name+"_width = "+var.width+";\n")
     f_constants.write("const int "+bus.name+"_"+var.name+"_lsb = "+var.lsb+";\n")
     f_constants.write("const int "+bus.name+"_"+var.name+"_msb = "+var.msb+";\n")
     f_constants.write("const int "+bus.name+"_"+var.name+"_decb = "+var.decb+";\n")
     f_constants.write("\n");
   f_constants.write("//---------------------------------------------------------------------------------------------------------------------------\n")
   f_constants.write("\n")
  f_constants.close()
  
  print('C file written')

#system-verilog file writer
def write_sv_file(sv_name) :
  
  now = datetime.now(tz=None) 
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

  #constants
  f_constants = open(sv_name+"_constants.sv","w")
  
  f_constants.write("//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
  f_constants.write("// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770\n")
  #f_constants.write("// Date : "+dt_string+" "+datetime.now(timezone.utc).astimezone().tzname()+"\n")
  f_constants.write("//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
  f_constants.write("\n");
  f_constants.write("\n");
  
  for bus in buses:
   f_constants.write("//---------------------------------------------------------------------------------------------------------------------------\n")
   f_constants.write("'define "+bus.name+"_width "+bus.width+";\n")
   f_constants.write("\n")
   for var in bus.vars:
    if var.type!="struct" and var.parameter!="(COPY)":
     f_constants.write("// "+var.parameter+"\n")
     f_constants.write("'define "+bus.name+"_"+var.name+"_width "+var.width+";\n")
     f_constants.write("'define "+bus.name+"_"+var.name+"_lsb "+var.lsb+";\n")
     f_constants.write("'define "+bus.name+"_"+var.name+"_msb "+var.msb+";\n")
     f_constants.write("'define "+bus.name+"_"+var.name+"_decb "+var.decb+";\n")
     f_constants.write("\n")
   f_constants.write("//---------------------------------------------------------------------------------------------------------------------------\n")
   f_constants.write("\n")
  f_constants.close()
  
  print('SV file written')

#vhdl file writer
def write_vhdl_file(vhdl_name) :
  
  now = datetime.now(tz=None) 
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

  #constants
  f_constants = open(vhdl_name+"_constants.vhdl","w")
  
  f_constants.write("--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
  f_constants.write("-- Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770\n")
  #f_constants.write("-- Date : "+dt_string+" "+datetime.now(timezone.utc).astimezone().tzname()+"\n")
  f_constants.write("--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
  f_constants.write("\n");
  f_constants.write("\n");

  for bus in buses:
   f_constants.write("-----------------------------------------------------------------------------------------------------------------------------\n")
   f_constants.write("const "+bus.name+"_width : natural := "+bus.width+";\n")
   f_constants.write("\n")
   for var in bus.vars:
    if var.type!="struct" and var.parameter!="(COPY)":
     f_constants.write("-- "+var.parameter+"\n")
     f_constants.write("constant "+bus.name+"_"+var.name+"_width : natural := "+var.width+";\n")
     f_constants.write("constant "+bus.name+"_"+var.name+"_lsb : natural := "+var.lsb+";\n")
     f_constants.write("constant "+bus.name+"_"+var.name+"_msb : natural := "+var.msb+";\n")
     f_constants.write("constant "+bus.name+"_"+var.name+"_decb : natural := "+var.decb+";\n")
     f_constants.write("\n")
   f_constants.write("-----------------------------------------------------------------------------------------------------------------------------\n")
   f_constants.write("\n")
  f_constants.close()
  
  print('VHDL file written')

# LaTeX friendly writer
def write_latex_files(out):
    latex_name = out + '_latex'
    Path(latex_name).mkdir(parents=True, exist_ok=True)
    for bus in buses:
        fname = os.path.join(latex_name, bus.name + '.csv')
        with open(fname, 'w') as fobj:
             l = ",".join(["Name", "Width", "MSB index", "LSB index", "DECB"])
             fobj.write(l + '\n');         
             for var in bus.vars:
                l = ",".join([var.name, var.width, var.msb, var.lsb, var.decb])
                l = l.replace('_', '\\_');
                fobj.write(l + '\n');


 
#main function
def main(argv):
   inputfile = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:",["ifile="])
   except getopt.GetoptError:
      print('test.py -i <inputfile>')
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print('l0mdt_dataFormat.py -i <inputfile>')
         sys.exit()
      elif opt in ("-i", "--ifile"):
         inputfile = arg
   print('Input file is "', inputfile)

   read_csv(inputfile)
   print(buses)

   outputfile = inputfile[:-4]

   write_c_file(outputfile)
   write_sv_file(outputfile)
   write_vhdl_file(outputfile)
   write_latex_files(outputfile)

if __name__ == "__main__":
   main(sys.argv[1:])
