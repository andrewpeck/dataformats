// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

#ifndef LOMDT_BUS_TYPES_H
#define LOMDT_BUS_TYPES_H

// Usage:
//   uint16_t bcid;
//   GETVAL(bcid, SLC_MUID.bcid, 12);
#define GETVAL(dest,orig,nbits) \
    dest = 0; \
    for (int i=0; i <= nbits/8; i++){\
        dest |= orig[i] << i*8;\
    }

const char df_hash[] = "4b00b0c8";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    char slcid; // 2 bits
    // SL board ID (based on the fiber ID)
    char slid; // 6 bits
    // BCID from SLC
    char bcid[2]; // 12 bits
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    char slcid; // 2 bits
    // TC sent to MDT TP
    char tcsent; // 1 bits
    // SLc Eta Position
    char poseta[2]; // 14 bits
    // SLc Phi Position
    char posphi[2]; // 9 bits
    // SLc highest pT threshold passed
    char ptthresh; // 4 bits
    // SLc charge
    char charge; // 1 bits
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 31 bits
    // SLc Segment Angle wrt Eta position
    char seg_angdtheta; // 7 bits
    // SLc Segment Angle wrt Phi position
    char seg_angdphi; // 4 bits
    // NSW segment eta position
    char nswseg_poseta[2]; // 14 bits
    // NSW segment phi position
    char nswseg_posphi; // 8 bits
    // NSW segment angle wrt Eta position
    char nswseg_angdtheta; // 5 bits
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 31 bits
    // SLc Hit Z Position in RPC0
    char rpc0_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC1
    char rpc1_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC2
    char rpc2_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC3
    char rpc3_posz[2]; // 10 bits
    // SLc coincidence type
    char cointype; // 3 bits
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_COMMON_n {
    // SLc busy flag
    char busy; // 1 bits
    // SLc board destination
    char destsl; // 2 bits
    // SLc phimod
    char phimod; // 8 bits
    // SLc Inner Vector MDT chamber ID
    char vec_mdtid; // 6 bits
} SLCPROC_PIPELINE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_ENDCAP_n {
    // struct SLCPROC_PIPELINE_COMMON
    char SLCPROC_PIPELINE_COMMON[5]; // 35 bits
    // struct SLC_ENDCAP
    char SLC_ENDCAP[9]; // 69 bits
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
} SLCPROC_PIPELINE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_BARREL_n {
    // struct SLCPROC_PIPELINE_COMMON
    char SLCPROC_PIPELINE_COMMON[5]; // 35 bits
    // struct SLC_BARREL
    char SLC_BARREL[10]; // 74 bits
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
} SLCPROC_PIPELINE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct CSM_n {
    // Channel number within TDC
    char chanid; // 5 bits
    // Edge or pair mode
    char edgemode; // 2 bits
    // TDC BCID
    char coarsetime[2]; // 12 bits
    // TDC fine time with BCID
    char finetime; // 5 bits
    // Pulse width
    char pulsewidth; // 8 bits
} CSM_rt;

// -------------------------------------------------------------------
typedef struct TDCFORMAT_n {
    // struct CSM
    char CSM[4]; // 32 bits
    // Fiber ID within board
    char fiberid; // 5 bits
    // Elink ID within fiber
    char elinkid; // 4 bits
    // Valid bit
    char datavalid; // 1 bits
    // MDT Station Type (Inner, Middle, Outer, Extra)
    char stationid; // 2 bits
} TDCFORMAT_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HESF_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // inner MDT segment chip destination
    char mdtseg_dest; // 2 bits
    // SLc Inner Vector MDT chamber ID
    char vec_mdtid; // 6 bits
    // SLc inner vector rho position
    char vec_pos[2]; // 10 bits
    // SLc inner vector theta angle
    char vec_ang[2]; // 10 bits
} SLCPROC_HESF_rt;

// -------------------------------------------------------------------
typedef struct TUBEREMAP_n {
    // Tube layer within one station
    char mdt_tube_layer; // 6 bits
    // Tube number within one station
    char mdt_tube_num[2]; // 10 bits
    // Tube radial position
    char mdt_tube_rho[3]; // 18 bits
    // Tube position along z
    char mdt_tube_z[3]; // 19 bits
    // Tube (uncalibrated) time
    char mdt_tube_time[3]; // 21 bits
} TUBEREMAP_rt;

// -------------------------------------------------------------------
typedef struct HE_LSF_n {
    // Hit Valid bit
    char mdt_valid; // 1 bits
    // Data Valid bit
    char data_valid; // 1 bits
    // Tube local position along precision coord
    char mdt_localx[2]; // 14 bits
    // Tube local position along second coord
    char mdt_localy[2]; // 14 bits
    // Tube drift radius
    char mdt_radius[2]; // 9 bits
} HE_LSF_rt;

// -------------------------------------------------------------------
typedef struct HE_CSF_n {
    // Hit Valid bit
    char mdt_valid; // 1 bits
    // Data Valid bit
    char data_valid; // 1 bits
    // Tube local position along precision coord
    char mdt_localx[2]; // 15 bits
    // Tube local position along second coord
    char mdt_localy[2]; // 15 bits
    // Tube drift radius
    char mdt_radius[2]; // 9 bits
} HE_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_PTCALC_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // (COPY)
    char vec_mdtid; // 6 bits
    // (COPY)
    char phimod; // 8 bits
    // (COPY)
    char charge; // 1 bits
} SLCPIPELINE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // (COPY)
    char vec_mdtid; // 6 bits
    // SF MDT segment valid bit
    char segvalid; // 1 bits
    // SF MDT segment position along the precision coord
    char segpos[2]; // 16 bits
    // SF MDT segment angle along the precision coord
    char segangle[2]; // 11 bits
    // SF MDT segment qualiry
    char segquality; // 1 bits
} SF_rt;

// -------------------------------------------------------------------
typedef struct PTCALC_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // eta of the innermost MDT station segment position
    char mtc_eta[2]; // 14 bits
    // pT calculated by the pT Calc
    char mtc_pt; // 8 bits
    // pT threshold satisfied by the MDT TC
    char mtc_ptthresh; // 4 bits
    // charge determined from the pT calc
    char mtc_charge; // 1 bits
    // # of segments used for calculating the pT
    char mtc_nsegments; // 2 bits
    // quality of the MDT TC (TBC how this is defined)
    char mtc_quality; // 3 bits
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_MTC_ENDCAP_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 31 bits
    // (COPY)
    char busy; // 1 bits
    // (COPY)
    char destsl; // 2 bits
} SLCPIPELINE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_MTC_BARREL_n {
    // (COPY)
    char cointype; // 3 bits
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 31 bits
    // (COPY)
    char busy; // 1 bits
    // (COPY)
    char destsl; // 2 bits
} SLCPIPELINE_MTC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct MTC_n {
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 31 bits
    // (COPY)
    char mtc_eta[2]; // 14 bits
    // (COPY)
    char mtc_pt; // 8 bits
    // (COPY)
    char mtc_ptthresh; // 4 bits
    // (COPY)
    char mtc_charge; // 1 bits
    // MDT processing flags
    char mtc_procflags; // 4 bits
    // (COPY)
    char mtc_nsegments; // 2 bits
    // (COPY)
    char mtc_quality; // 3 bits
} MTC_rt;

// -------------------------------------------------------------------

#endif // LOMDT_BUS_TYPES_H
