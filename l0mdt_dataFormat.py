import csv
from typing import NamedTuple
import sys, getopt, csv
from datetime import datetime, timezone

#declare variable class
class Var(NamedTuple):
 name: str
 station: str
 width: int
 lsb: int
 msb: int
 low: int
 high: int
 prec: int
 units: str
 destination_chip: str
 destination_block: str
 source: str
 parameter: str
 type: str
 comments: str

#declare Bus class (set of variables)
class Bus(NamedTuple):
 name: str
 nbits: int
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
	    	
   vars.append(Var(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7],row[8],row[9],row[10],row[11],row[12],row[13],row[14]))

#C file writer
def write_c_file(c_name) :
  
  now = datetime.now(tz=None) 
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

  #constants
  f_constants = open(c_name+"_constants.h","w")
  
  f_constants.write("// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770\n")
  f_constants.write("// Date : "+dt_string+" "+datetime.now(timezone.utc).astimezone().tzname()+"\n")
  f_constants.write("\n");
  f_constants.write("\n");
  f_constants.write("\n");


  for bus in buses:
   for var in bus.vars:
    if var.type!="struct" and var.parameter!="(COPY)":
     f_constants.write("const int "+var.name+"_width = "+var.width+";\n")
     f_constants.write("const int "+var.name+"_lsb = "+var.lsb+";\n")
     f_constants.write("const int "+var.name+"_msb = "+var.msb+";\n")
     f_constants.write("\n");
  f_constants.close()
  
  #interface
  f = open(c_name+".C", "w")
  for bus in buses:
   f.write("//++++++++++++++++++++++++++"+bus.name+"+++++++++++++++++++++\n")
   f.write("type "+bus.name+"is record\n")
   for var in bus.vars:
    f.write(var.name+" : std::logic_vector("+var.width+" downto 0;\n")
   f.write("end record;\n")
   f.write("//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")

  f.close()
  print('C file written')

#system-verilog file writer
def write_sv_file(sv_name) :
  
  now = datetime.now(tz=None) 
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

  #constants
  f_constants = open(sv_name+"_constants.sv","w")
  
  f_constants.write("// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770\n")
  f_constants.write("// Date : "+dt_string+" "+datetime.now(timezone.utc).astimezone().tzname()+"\n")
  f_constants.write("\n");
  f_constants.write("\n");
  f_constants.write("\n");
  
  for bus in buses:
   for var in bus.vars:
    if var.type!="struct" and var.parameter!="(COPY)":
     f_constants.write("'define "+var.name+"_width "+var.width+";\n")
     f_constants.write("'define "+var.name+"_lsb "+var.lsb+";\n")
     f_constants.write("'define "+var.name+"_msb "+var.msb+";\n")
     f_constants.write("\n");
  f_constants.close()
  
  #interface
  f = open(sv_name+".sv", "w")
  for bus in buses:
   f.write("//++++++++++++++++++++++++++"+bus.name+"+++++++++++++++++++++\n")
   f.write("typedef struct {\n")
   for var in bus.vars:
    if var.type != 'var':
     f.write(var.type+" "+var.name+";\n")
    elif var.type == 'var':
     f.write("logic ["+var.width+" : 0] "+var.name+";\n")
   f.write("} "+bus.name+";\n")
   f.write("//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
   f.write("\n")

  f.close()
  print('SV file written')

#vhdl file writer
def write_vhdl_file(vhdl_name) :
  
  now = datetime.now(tz=None) 
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

  #constants
  f_constants = open(vhdl_name+"_constants.vhdl","w")
  
  f_constants.write("-- Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770\n")
  f_constants.write("-- Date : "+dt_string+" "+datetime.now(timezone.utc).astimezone().tzname()+"\n")
  f_constants.write("\n");
  f_constants.write("\n");
  f_constants.write("\n");

  for bus in buses:
   for var in bus.vars:
    if var.type!="struct" and var.parameter!="(COPY)":
     f_constants.write("constant "+var.name+"_width : natural := "+var.width+";\n")
     f_constants.write("constant "+var.name+"_lsb : natural := "+var.lsb+";\n")
     f_constants.write("constant "+var.name+"_msb : natural := "+var.msb+";\n")
     f_constants.write("\n");
  f_constants.close()
  
  #interface
  f = open(vhdl_name+".vhdl", "w")
  for bus in buses:
   f.write("-- ++++++++++++++++++++++++++"+bus.name+"+++++++++++++++++++++\n")
   f.write("type "+bus.name+" is record\n")
   for var in bus.vars:
    if var.type != 'var':
     f.write(var.type+" : "+var.name+";\n")
    elif var.type == 'var':
     f.write(var.name+" : std::logic_vector("+var.width+" downto 0);\n")
   f.write("end record;\n")
   f.write("-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n")
   f.write("\n")
  f.close()
  print('VHDL file written')



#main function
def main(argv):
   inputfile = ''
   outputfile = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
   except getopt.GetoptError:
      print('test.py -i <inputfile> -o <outputfile>')
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print('test.py -i <inputfile> -o <outputfile>')
         sys.exit()
      elif opt in ("-i", "--ifile"):
         inputfile = arg
      elif opt in ("-o", "--ofile"):
         outputfile = arg
   print('Input file is "', inputfile)
   print('Output file is "', outputfile)

   read_csv(inputfile)
   print(buses)

   outputfile = inputfile[:-4]

   write_c_file(outputfile)
   write_sv_file(outputfile)
   write_vhdl_file(outputfile)

if __name__ == "__main__":
   main(sys.argv[1:])
