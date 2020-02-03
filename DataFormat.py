from enum import IntEnum
from BitField import BitFieldWordDesc,BitFieldWordValue

N_eta=40 # number of 0.2x0.2 blocks in eta
N_phi=32 # number of 0.2x0.2 blocks in phi

WORD_LENGTH=64
ENDIAN='little'

#--------------------------------------------------------------------------------
# Generic Metadata Word
#--------------------------------------------------------------------------------

GenMetadata = BitFieldWordDesc("GenMetaData",64)
GenMetadata.addField("FLAG",8)
GenMetadata.addField("OTHER",56)


#--------------------------------------------------------------------------------
# Event Header Definitions
#--------------------------------------------------------------------------------

# word1
EVT_HDR1 = BitFieldWordDesc("EVT_HDR_W1",64)
EVT_HDR1.addField("FLAG",8)
EVT_HDR1.addField("TRK_TYPE",8)
EVT_HDR1.addField("SPARE",8)
EVT_HDR1.addField("L0ID",40)

class EVT_HDR1_FLAG(IntEnum):
    FLAG                = 0xab

class EVT_HDR1_TRK_TYPE(IntEnum):    
    RHTT      = 1
    GHTT      = 2
    
EVT_HDR1["FLAG"].addEnum(EVT_HDR1_FLAG)
EVT_HDR1["TRK_TYPE"].addEnum(EVT_HDR1_TRK_TYPE)
    
# word2
EVT_HDR2 = BitFieldWordDesc("EVT_HDR_W2",64)
EVT_HDR2.addField("BCID",12)
EVT_HDR2.addField("SPARE",20)
EVT_HDR2.addField("RUNNUMBER",32) # unnecessary length?

# word3
EVT_HDR3 = BitFieldWordDesc("EVT_HDR_W3",64)
EVT_HDR3.addField("ROI",64)

# word4
EVT_HDR4 = BitFieldWordDesc("EVT_HDR_W4",64)
EVT_HDR4.addField("EFPU_ID",20)
EVT_HDR4.addField("EFPU_PID",12)
EVT_HDR4.addField("TIME",32)

# word5
EVT_HDR5 = BitFieldWordDesc("EVT_HDR_W5",64)
EVT_HDR5.addField("Connection_ID",32)
EVT_HDR5.addField("Transaction_ID",32)

# word6
EVT_HDR6 = BitFieldWordDesc("EVT_HDR_W6",64)
EVT_HDR6.addField("STATUS",32)
EVT_HDR6.addField("CRC",32)

headerwords=[EVT_HDR1,EVT_HDR2,EVT_HDR3,EVT_HDR4,EVT_HDR5,EVT_HDR6]

#--------------------------------------------------------------------------------
# Event Footer Definitions
#--------------------------------------------------------------------------------

# word1
EVT_FTR1 = BitFieldWordDesc("EVT_FTR_W1",64)
EVT_FTR1.addField("FLAG",8)
EVT_FTR1.addField("SPARE",8)
EVT_FTR1.addField("META_COUNT",16)
EVT_FTR1.addField("HDR_CRC",32)

class EVT_FTR1_FLAG(IntEnum):
    FLAG              = 0xcd

EVT_FTR2 = BitFieldWordDesc("EVT_FTR_W2",64)
EVT_FTR2.addField("ERROR_FLAGS",64) # whole second word

EVT_FTR3 = BitFieldWordDesc("EVT_FTR_W3",64)
EVT_FTR3.addField("WORD_COUNT",32) # count of 64-bit words not including footer itself
EVT_FTR3.addField("CRC",32) # CRC of full event = header + data + footer itself (not including CRC itself)

footerwords=[EVT_FTR1,EVT_FTR2,EVT_FTR3] 

#--------------------------------------------------------------------------------
# Module Header Definitions
#--------------------------------------------------------------------------------
# module header is one 64-bit word plus a 32-bit word

M_HDR = BitFieldWordDesc("M_HDR",64)
M_HDR.addField("FLAG",8)
M_HDR.addField("TYPE",2)
M_HDR.addField("DET",1)
M_HDR.addField("ROUTING",52)
M_HDR.addField("SPARE",1)

class M_HDR_FLAG(IntEnum):
    FLAG = 0x55

    
class M_HDR_TYPE(IntEnum):
    RAW            = 0
    CLUSTERED      = 1
    CLUSTEREDwRAW  = 2
    UNUSED         = 3  # currently 0 is not a vavlid value

class M_HDR_DET(IntEnum):
    PIXEL           = 0
    STRIP           = 1

class M_HDR_ROUTING(IntEnum):
    NPRM            = 12
    NAMBUS          = 4
    NTFM            = 4
    NTFM_per_SSTP   = 2
    TFM_lastbit       = NPRM*NAMBUS

M_HDR["FLAG"].addEnum(M_HDR_FLAG)
M_HDR["TYPE"].addEnum(M_HDR_TYPE)
M_HDR["DET"].addEnum(M_HDR_DET)
M_HDR["ROUTING"].addEnum(M_HDR_ROUTING)

def NBitMask(N):
    return 2**N-1

def AddAMBus(routing_bits,prm,ambus): # note amtp is 1-to-1 to prm
    routing_bits|= 1 << (prm*M_HDR_ROUTING.NAMBUS+ambus)
    return routing_bits
    

def AddTFM(routing_bits,sstp,tfm): 
    routing_bits|= 1 << (M_HDR_ROUTING.TFM_lastbit + sstp*M_HDR_ROUTING.NTFM_per_SSTP + tfm)
    return routing_bits

def ToPRM(routing_bits,amtp,prm):
    # note prm ignored b/c only one prm per amtp
    return ((routing_bits >> amtp*M_HDR_ROUTING.NAMBUS) & NBitMask(M_HDR_ROUTING.NAMBUS))!=0

def ToAMTP(routing_bits,amtp):
    return ((routing_bits >> amtp*M_HDR_ROUTING.NAMBUS) & NBitMask(M_HDR_ROUTING.NAMBUS))!=0

def ToTFM(routing_bits,sstp,tfm):
    return ((routing_bits >> M_HDR_ROUTING.TFM_lastbit+ sstp*M_HDR_ROUTING.NTFM_per_SSTP + tfm) & 0x1 )!=0

def ToSSTP(routing_bits,sstp):
    return ((routing_bits >> M_HDR_ROUTING.TFM_lastbit+ sstp*M_HDR_ROUTING.NTFM_per_SSTP ) & NBitMask(M_HDR_ROUTING.NTFM_per_SSTP))!=0

def InvertRoutingBits(bits):
    # In python you have to mask the length on the inverse
    # otherwise it includes inverted bits for a very long integer
    return (~bits & NBitMask(M_HDR["ROUTING"].nbits))
    
# these are useful for routing to the board to board switch
def AMTPToOtherTPs(routing_bits,amtp):
    thisAMTPbits = NBitMask(M_HDR_ROUTING.NAMBUS)<<M_HDR_ROUTING.NAMBUS*amtp
    all_bits_except_this_AMTP = InvertRoutingBits(thisAMTPbits)
    return (routing_bits & all_bits_except_this_AMTP)!=0

def SSTPToOtherTPs(routing_bits,sstp):
    thisSSTPbits = NBitMask(M_HDR_ROUTING.NTFM_per_SSTP) << M_HDR_ROUTING.TFM_lastbit+sstp*M_HDR_ROUTING.NTFM_per_SSTP
    all_bits_except_this_SSTP = InvertRoutingBits(thisSSTPbits)
    return (routing_bits & all_bits_except_this_SSTP)!=0


# second word in module header (32 bits only)
M_HDR2 = BitFieldWordDesc("M_HDR2",32)
M_HDR2.addField("MODID",18)
M_HDR2.addField("MODTYPE",2)
M_HDR2.addField("ORIENTATION",1)
M_HDR2.addField("SPARE",11)



#--------------------------------------------------------------------------------
# Raw Pixel (RD53b) Definitions
#--------------------------------------------------------------------------------

# the structure here depends on the proccessing that happens in the FELIX+Data Handler
# for now just assume 32 bits per cluster with not last cluster or 
PIXEL_RAW_BITS = 32
PIXEL_RAW_PER_64BITS = 64//PIXEL_RAW_BITS


#--------------------------------------------------------------------------------
# Raw Strips (HCC*) Definitions
#--------------------------------------------------------------------------------

HCC_HDR = BitFieldWordDesc("HCC_HDR",16)
HCC_HDR.addField("TYP",4)
HCC_HDR.addField("FLAG",1) # unused set to 1b0
HCC_HDR.addField("L0ID",7)
HCC_HDR.addField("BCID",4)

class HCC_HDR_TYP(IntEnum):
    PR     =   1  # L1Track RoI data
    LP     =   2  # Regular readout, this is what we'll set for baseline

HCC_HDR["TYP"].addEnum(HCC_HDR_TYP)

HCC_CLUSTER = BitFieldWordDesc("HCC_CLUSTER",16)
HCC_CLUSTER.addField("UNUSED",1) # unused set to 1b0
HCC_CLUSTER.addField("ABC",4) # abc input channel
HCC_CLUSTER.addField("COL",8) # column in chip
HCC_CLUSTER.addField("NEXT",3) # three bits after the labeled column (so a total of four contiguous bits are reported) 

HCC_CLUSTER_OR_HDR_PER_64BITS = 64//HCC_CLUSTER.nbits

HCC_LAST_CLUSTER  = 0x6FED


#--------------------------------------------------------------------------------
# Pixel Cluster Definitions
#--------------------------------------------------------------------------------

PIXEL_CLUSTER = BitFieldWordDesc("PIXEL_CLUSTER",32)
PIXEL_CLUSTER.addField("LAST",1)
PIXEL_CLUSTER.addField("PHISIZ",2)
PIXEL_CLUSTER.addField("PHI",13)
PIXEL_CLUSTER.addField("ETASIZ",3)
PIXEL_CLUSTER.addField("ETA",13)

PIXEL_CLUSTERS_PER_64BITS = 64//PIXEL_CLUSTER.nbits

PIXEL_CL_FTR = BitFieldWordDesc("PIXEL_CL_FTR",32)
PIXEL_CL_FTR.addField("FLAG",8)
PIXEL_CL_FTR.addField("COUNT",8)
PIXEL_CL_FTR.addField("ERROR",2)
PIXEL_CL_FTR.addField("SPARE",14)

class CL_FTR_FLAG(IntEnum):
    FLAG = 0x77

class CL_FTR_ERROR(IntEnum):
    NO_ERROR = 0
    FRONT_END_ERROR = 1
    PARSE_ERROR = 2
    UNUSED = 3
    

PIXEL_CL_FTR["FLAG"].addEnum(CL_FTR_FLAG)
PIXEL_CL_FTR["ERROR"].addEnum(CL_FTR_ERROR)

#--------------------------------------------------------------------------------
# Strip Cluster Definitions
#--------------------------------------------------------------------------------

STRIP_CLUSTER = BitFieldWordDesc("STRIP_CLUSTER",16)
STRIP_CLUSTER.addField("LAST",1)
STRIP_CLUSTER.addField("ROW",1)
STRIP_CLUSTER.addField("LEN",3)
STRIP_CLUSTER.addField("IDX",11)


STRIP_CLUSTERS_PER_64BITS = 64//STRIP_CLUSTER.nbits


STRIP_CL_FTR = BitFieldWordDesc("STRIP_CL_FTR",16)
STRIP_CL_FTR.addField("FLAG",8)
STRIP_CL_FTR.addField("COUNT",6)
STRIP_CL_FTR.addField("ERROR",2)

STRIP_CL_FTR["FLAG"].addEnum(CL_FTR_FLAG)
STRIP_CL_FTR["ERROR"].addEnum(CL_FTR_ERROR)


#--------------------------------------------------------------------------------
# Track format
#--------------------------------------------------------------------------------

TRACK_W1 = BitFieldWordDesc("TRACK_W1",64)
TRACK_W1.addField("TYPE",4,desc="Is four bits enough")
TRACK_W1.addField("PRM",10)
TRACK_W1.addField("ROADID",24)
TRACK_W1.addField("HITMAP",13,desc="Which layers of sector were hit")
TRACK_W1.addField("DETMAP",13,desc="Is cluster pixel(0) or strip(1) (required for parsing track data)")

TRACK_W2 = BitFieldWordDesc("TRACK_W2",64)
TRACK_W2.addField("STAGE1_SECTOR",16)
TRACK_W2.addField("STAGE2_SECTOR",16)
TRACK_W2.addField("ETA",16)
TRACK_W2.addField("PHI",16)

TRACK_W3 = BitFieldWordDesc("TRACK_W3",64)
TRACK_W3.addField("QoverPt",16)
TRACK_W3.addField("Z0",16)
TRACK_W3.addField("D0",16)
TRACK_W3.addField("CHI2",16)

TRACK_STRIP_CLUSTER = BitFieldWordDesc("TRACK_STRIP_CLUSTER",32)
TRACK_STRIP_CLUSTER.addField("MODID",16,desc="Assumes strip id can be packed into 16-bits")
TRACK_STRIP_CLUSTER.addField("ROW",1)
TRACK_STRIP_CLUSTER.addField("IDX",11)
TRACK_STRIP_CLUSTER.addField("LEN",3)
TRACK_STRIP_CLUSTER.addField("LAST",1)

TRACK_PIXEL_CLUSTER = BitFieldWordDesc("TRACK_PIXEL_CLUSTER",64)
TRACK_PIXEL_CLUSTER.addField("MODID",18)
TRACK_PIXEL_CLUSTER.addField("RAW_INCLUDED",1,desc="Clusters have raw appended (not implemented yet)")
TRACK_PIXEL_CLUSTER.addField("SPARE",13)
TRACK_PIXEL_CLUSTER.addField("ETA",13)
TRACK_PIXEL_CLUSTER.addField("PHI",13)
TRACK_PIXEL_CLUSTER.addField("ETASIZ",3)
TRACK_PIXEL_CLUSTER.addField("PHISIZ",2)
TRACK_PIXEL_CLUSTER.addField("LAST",1)

trackwords=[TRACK_W1,TRACK_W2,TRACK_W3]

class TRACK_W1_TYPE(IntEnum):    
    FIRST_STAGE       = 1
    SECOND_STAGE      = 2
TRACK_W1["TYPE"].addEnum(TRACK_W1_TYPE)
    
#--------------------------------------------------------------------------------
# tests
#--------------------------------------------------------------------------------

class SubwordUnpacker:
    def __init__(self,w,size):
        self.word=w
        self.remaining=size

    def get(self,nbits): # returns nbits of word plus T/F flag for empty
        self.remaining-=nbits
        retv = (self.word >> self.remaining) & NBitMask(nbits)
        return (retv,self.remaining==0)
        


def PrintFile(inputfile):
    with open(inputfile,"rb") as file:

        m=bool(int.from_bytes(file.read(1),ENDIAN))
        w=int.from_bytes(file.read(8),ENDIAN)

        while True:

            if not m:
                if len(file.read(1))==0:
                    # must be EOF??
                    print("End of stream")
                else:
                    print("ERROR: expected metadata flag, word=",w)                    
                break

            GenMetaValue= BitFieldWordValue(GenMetadata,w)

            flag = GenMetaValue.getField("FLAG")
            #print("%-5s" % (m,),word)

            if flag==EVT_HDR1_FLAG.FLAG:
                print("---------- Event Header ----------")
                # in header
                for word in headerwords:
                    curwordvalue = BitFieldWordValue(word,w)
                    print("%-5s" % (m,),curwordvalue)

                    m=bool(int.from_bytes(file.read(1),ENDIAN))
                    w=int.from_bytes(file.read(8),ENDIAN)

            elif flag==M_HDR_FLAG.FLAG:
                print("---------- Module  ----------")
                # in a module
                M_HDR_Value = BitFieldWordValue(M_HDR,w)
                print("%-5s" % (m,),M_HDR_Value)                    

                first=True
                expectfooter=False
                
                while True:
                    m=bool(int.from_bytes(file.read(1),ENDIAN))
                    w=int.from_bytes(file.read(8),ENDIAN)

                    if m: break # new meta data

                    # if here its module data
                    
                    if M_HDR_Value.getField("TYPE")==M_HDR_TYPE.RAW:

                        if M_HDR_Value.getField("DET")==M_HDR_DET.PIXEL:

                            print("%-5s" % (m,),"RAW PIXEL",end=' ')
                            unpacker=SubwordUnpacker(w,WORD_LENGTH)
                            empty=False
                            if first:
                                (val,empty) = unpacker.get(M_HDR2.nbits)
                                M_HDR2_Value = BitFieldWordValue(M_HDR2,val)
                                print(M_HDR2_Value,end=' ')
                            while not empty:
                                (val,empty) = unpacker.get(PIXEL_RAW_BITS)
                                print("W:",hex(val),end=' ')
                            print()


                        elif M_HDR_Value.getField("DET")==M_HDR_DET.STRIP:

                            print("%-5s" % (m,),"RAW STRIP",end=' ')
                            unpacker=SubwordUnpacker(w,WORD_LENGTH)
                            empty=False
                            if first:
                                (val,empty) = unpacker.get(M_HDR2.nbits)
                                M_HDR2_Value = BitFieldWordValue(M_HDR2,val)
                                print(M_HDR2_Value,end=' ')
                            while not empty:
                                (val,empty) = unpacker.get(HCC_CLUSTER.nbits)
                                print("W:",hex(val),end=' ')
                            print()


                    elif M_HDR_Value.getField("TYPE")==M_HDR_TYPE.CLUSTERED:
                        
                        if M_HDR_Value.getField("DET")==M_HDR_DET.PIXEL:

                            print("%-5s" % (m,),"CLUSTERED PIXEL",end=' ')
                            unpacker=SubwordUnpacker(w,WORD_LENGTH)
                            empty=False
                            if first:
                                (val,empty) = unpacker.get(M_HDR2.nbits)
                                M_HDR2_Value = BitFieldWordValue(M_HDR2,val)
                                print('HEAD:',M_HDR2_Value,end=' ')
                        
                            print("CLUSTERS",end=' ')                                
                            while not empty:
                                if not expectfooter:
                                    (val,empty) = unpacker.get(PIXEL_CLUSTER.nbits)
                                    PIXEL_CLUSTER_Value = BitFieldWordValue(PIXEL_CLUSTER,val)
                                    print('CL:',hex(PIXEL_CLUSTER_Value.value),
                                          'L' if PIXEL_CLUSTER_Value.getField("LAST")==1 else '',
                                          end=' ')
                                    expectfooter=(PIXEL_CLUSTER_Value.getField("LAST")==1)
                                else:
                                    (val,empty) = unpacker.get(PIXEL_CL_FTR.nbits)
                                    PIXEL_CL_FTR_Value = BitFieldWordValue(PIXEL_CL_FTR,val)
                                    print('FOOT:',PIXEL_CL_FTR_Value,end=' ')
                                    expectfooter=False

                            print()



                        if M_HDR_Value.getField("DET")==M_HDR_DET.STRIP:

                            print("%-5s" % (m,),"CLUSTERED STRIP",end=' ')
                            unpacker=SubwordUnpacker(w,WORD_LENGTH)
                            empty=False
                            if first:
                                (val,empty) = unpacker.get(M_HDR2.nbits)
                                M_HDR2_Value = BitFieldWordValue(M_HDR2,val)
                                print('HEAD:',M_HDR2_Value,end=' ')
                        
                            print("CLUSTERS",end=' ')                                
                            while not empty:
                                if not expectfooter:
                                    (val,empty) = unpacker.get(STRIP_CLUSTER.nbits)
                                    STRIP_CLUSTER_Value = BitFieldWordValue(STRIP_CLUSTER,val)
                                    print('CL:',hex(STRIP_CLUSTER_Value.value),
                                          'L' if STRIP_CLUSTER_Value.getField("LAST")==1 else '',
                                          end=' ')
                                    expectfooter=(STRIP_CLUSTER_Value.getField("LAST")==1)
                                else:
                                    (val,empty) = unpacker.get(STRIP_CL_FTR.nbits)
                                    STRIP_CL_FTR_Value = BitFieldWordValue(STRIP_CL_FTR,val)
                                    print('FOOT:',STRIP_CL_FTR_Value,end=' ')
                                    expectfooter=False

                            print()


                            
                        
                    else:
                        print("ERROR: Unknown module type flag",hex(M_HDR_Value.getField("TYPE")))

                    first=False

            elif flag==EVT_FTR1_FLAG.FLAG:
                print("---------- Event Footer  ----------")
                #in footer
                for word in footerwords:
                    curwordvalue = BitFieldWordValue(word,w)
                    print("%-5s" % (m,),curwordvalue)

                    m=bool(int.from_bytes(file.read(1),ENDIAN))
                    w=int.from_bytes(file.read(8),ENDIAN)
                print()



            else:
                print("ERROR: Unknown metadata flag",hex(flag))
                break


    


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description='Test of Data Format')
    parser.add_argument('--read',dest='inputfile', action='store',default=None)
    parser.add_argument('--printformat',dest='printformat', action='store_true')
    parser.add_argument('--writeVerilog',dest='writeVerilog', action='store_true')
    parser.add_argument('--writeCUnion',dest='writeCUnion', action='store_true')
    
    args = parser.parse_args()

    if args.inputfile:
        PrintFile(args.inputfile)

    if args.printformat:
        print("---------- Event Header ----------")
        for hw in headerwords:
            print(hw)

        print("---------- Event Footer ----------")
        for fw in footerwords:
            print(fw)

        print("---------- Module Header ----------")
        print(M_HDR)
        print(M_HDR2)

        print("---------- HCC Raw  ----------")
        print(HCC_HDR)
        print(HCC_CLUSTER)
        print("Last cluster is:",hex(HCC_LAST_CLUSTER))
        
        print("---------- Pixel Cluster  ----------")
        print(PIXEL_CLUSTER)

        print("footer:")
        print(PIXEL_CL_FTR)

        
        print("---------- Strip Cluster  ----------")
        print(STRIP_CLUSTER)

        print("footer:")
        print(STRIP_CL_FTR)

        print("---------- Track with Clusters  ----------")

        for word in trackwords:
            print(word)

        print("pixel cluster:")
        print(TRACK_PIXEL_CLUSTER)

        print("strip cluster:")
        print(TRACK_STRIP_CLUSTER)


    if args.writeVerilog:
        f = open("DataFormat.sv","w")
        
        for hw in headerwords:
            hw.writeVerilog(f)

        for fw in footerwords:
            fw.writeVerilog(f)

        M_HDR.writeVerilog(f)
        M_HDR2.writeVerilog(f)
        HCC_HDR.writeVerilog(f)
        HCC_CLUSTER.writeVerilog(f)
        f.write("parameter HCC_LAST_CLUSTER = 16'h%s;\n\n" %(hex(HCC_LAST_CLUSTER)[2:],))

        PIXEL_CLUSTER.writeVerilog(f)
        PIXEL_CL_FTR.writeVerilog(f)

        STRIP_CLUSTER.writeVerilog(f)
        STRIP_CL_FTR.writeVerilog(f)

        for word in trackwords:
            word.writeVerilog(f)

        TRACK_PIXEL_CLUSTER.writeVerilog(f)
        TRACK_STRIP_CLUSTER.writeVerilog(f)

        

    if args.writeCUnion:
        f = open("DataFormat.C","w")
        
        for hw in headerwords:
            hw.writeCUnion(f)

        for fw in footerwords:
            fw.writeCUnion(f)

        M_HDR.writeCUnion(f)
        M_HDR2.writeCUnion(f)
        HCC_HDR.writeCUnion(f)
        HCC_CLUSTER.writeCUnion(f)
        f.write("#define HCC_LAST_CLUSTER  0x%s;\n\n" %(hex(HCC_LAST_CLUSTER)[2:],))

        PIXEL_CLUSTER.writeCUnion(f)
        PIXEL_CL_FTR.writeCUnion(f)

        STRIP_CLUSTER.writeCUnion(f)
        STRIP_CL_FTR.writeCUnion(f)

        for word in trackwords:
            word.writeCUnion(f)

        TRACK_PIXEL_CLUSTER.writeCUnion(f)
        TRACK_STRIP_CLUSTER.writeCUnion(f)
