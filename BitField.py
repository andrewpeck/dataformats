
from enum import IntEnum

# a signal string of bits that make of a field in a word
class BitField:
    def __init__(self,name,nbits,firstbit):
        self.name=name
        self.nbits=nbits
        self.firstbit=firstbit
        self.lastbit=firstbit-(nbits-1)
        self.enum=None
        self.desc=None
        
    def addEnum(self,enum):
        self.enum=enum
        
        
    def __str__(self):
        retv =  "field: %-15s  %d bits (%d-%d)" %(self.name,self.nbits,self.firstbit,self.lastbit)
        if self.desc:
            retv += " desc: "+self.desc
        if self.enum:
            retv += "\nvalues:"
            for x in self.enum:
                retv += "\t %-15s = %s\n" % (x.name,hex(x.value))
        return retv
              

        
# a word is a set of fields, this class describes what is in the field
class BitFieldWordDesc:    
    def __init__(self,name,nbits):
        self.fields=[] # ordered list of fields
        self.fielddict={} # dictionary for lookup            
        self.nbits=nbits
        self.wordname=name
        self.value=0
        
    def addField(self,name,nbits,desc=None):
        if len(self.fields)==0:
            field=BitField(name,nbits,self.nbits-1)
        else:
            field=BitField(name,nbits,self.fields[-1].lastbit-1)
            if field.lastbit < 0:
                print("ERROR: "+type(self).__name__+" fields larger than word size")
            self.fields
        field.desc=desc
        self.fields.append(field)
        self.fielddict[field.name]=field

    def getFieldNBits(self,name):
        return self.fielddict[name].nbits

    def __getitem__(self,name):
        return self.fielddict[name]
    
    def __str__(self):
        retv=''    
        for field in self.fields:
            retv+=str(field)+"\n"
        return retv

    def writeVerilog(self,outfile):
        outfile.write("// %s word description\n" % (self.wordname,))
        for field in self.fields:
            outfile.write("parameter %-30s = %d;\n" % (self.wordname+"_"+field.name+"_bits",field.nbits))
            outfile.write("parameter %-30s = %d;\n" % (self.wordname+"_"+field.name+"_firstbit",field.firstbit))
            outfile.write("parameter %-30s = %d;\n" % (self.wordname+"_"+field.name+"_lastbit",field.lastbit))
            if field.enum:
                for val in field.enum:
                    outfile.write("parameter %-30s = %d;\n" % (self.wordname+"_"+field.name+"_"+val.name,val.value))
            outfile.write("\n")


    def writeCUnion(self,outfile):
        if self.nbits==16:
            sizetype="unsigned short int";
        elif self.nbits==32:
            sizetype="unsigned int";
        elif self.nbits==64:
            sizetype="unsigned long int";        

        outfile.write("//--------------------------------------------------------------------------------\n")
        outfile.write("// %s word description\n" % (self.wordname,))
        outfile.write("//--------------------------------------------------------------------------------\n")
        outfile.write("union %s {\n" % (self.wordname,))
        outfile.write("  struct  { \n")
        for field in reversed(self.fields): # reversed because C packs from LSB first
            outfile.write("    %s %s : %d;\n" % (sizetype,field.name,field.nbits))
        outfile.write("  } fields;\n\n")
        
        outfile.write("  // access full word\n")
        outfile.write("  %s fullword;\n" % (sizetype,))
        outfile.write("\n")
        
        outfile.write("  // bit descriptors\n")
        for field in self.fields:
            outfile.write("  const static %s %s_bits = %d;\n"%     (sizetype,field.name,field.nbits))
            outfile.write("  const static %s %s_firstbit = %d;\n"% (sizetype,field.name,field.firstbit))
            outfile.write("  const static %s %s_lastbit = %d;\n"%  (sizetype,field.name,field.lastbit))            
            if field.enum:
                for val in field.enum:
                    outfile.write("  const static %s %s_%s = %s;\n"%  (sizetype,field.name,val.name,hex(val.value)))            
            
            outfile.write("  void set%s(%s val) {\n" % (field.name,sizetype))
            if field.nbits < 64: # no check if field is size of max input type                
                outfile.write("      if (val > (1UL<<%s)){ throw(\"%s set%s value out of range\");}\n" %
                              (field.name+"_bits",self.wordname,field.name))
            outfile.write("      fields.%s = val;\n" % (field.name,))
            outfile.write("  }\n")

            outfile.write("  %s get%s() {\n" % (sizetype,field.name))
            outfile.write("      return fields.%s;\n" % (field.name,))
            outfile.write("  }\n")
            
            outfile.write("\n")
            
        outfile.write("};\n")

  


                    

# this class uses a BitFieldWordDescription to parse the contents of an actual value
class BitFieldWordValue:
    def __init__(self,BitFieldWordDesc_class,value=0):
        self.value=value
        self.classobj=BitFieldWordDesc_class

    def setField(self,name,bits,mask=False):
        field=self.classobj.fielddict[name]
        if not mask and (bits >> field.nbits != 0):
            print("ERROR: length of bits given for field %s longer than field length (%d)" % (name,field.nbits))
        self.value |= (bits & (2**field.nbits-1)) << field.lastbit

    def getField(self,name):
        field=self.classobj.fielddict[name]
        return (self.value >> field.lastbit) & (2**field.nbits-1)

    def getValue(self):
        return self.value
    
    def __str__(self):
        retv=''
        for field in self.classobj.fields:
            retv+=field.name+" "+hex(self.getField(field.name))+" "
        return retv                         


    
# unit test
if __name__ == "__main__":

    ModuleHeaderDesc = BitFieldWordDesc("M_HDR",64)
    
    ModuleHeaderDesc.addField("FLAG",8)
    ModuleHeaderDesc.addField("TYPE",2)
    ModuleHeaderDesc.addField("DET",1)
    ModuleHeaderDesc.addField("SPARE",1)
    ModuleHeaderDesc.addField("ROUTING",52)

    class ModuleHeaderDesc_TYPE(IntEnum):
        RAW            = 0
        CLUSTERED      = 1
        CLUSTEREDwRAW  = 2
        UNUSED         = 3  # currently 0 is not a vavlid value
    ModuleHeaderDesc["TYPE"].addEnum(ModuleHeaderDesc_TYPE)
                                                       
    print(ModuleHeaderDesc)
    
    ModuleHeaderValue = BitFieldWordValue(ModuleHeaderDesc)
    
    ModuleHeaderValue.setField("FLAG",0x55)
    ModuleHeaderValue.setField("TYPE",1)
    ModuleHeaderValue.setField("DET",0)
    ModuleHeaderValue.setField("ROUTING",0x123456789abcd)

    print(ModuleHeaderValue)

    # Test Verilog Write
    import io
    filestream=io.StringIO()
    ModuleHeaderDesc.writeVerilog(filestream)
    filestream.seek(0)
    for l in filestream:
        print(l,end='')

    # Test C Union write
    filestream=io.StringIO()
    ModuleHeaderDesc.writeCUnion(filestream)
    filestream.seek(0)
    for l in filestream:
        print(l,end='')
