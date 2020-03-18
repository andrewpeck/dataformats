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

const char df_hash[] = "bece9746";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    char MTC_slcid; // 2 bits
    // SL board ID (based on the fiber ID)
    char MTC_slid; // 6 bits
    // BCID from SLC
    char MTC_bcid[2]; // 12 bits
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    char MTC_slcid; // 2 bits
    // TC sent to MDT TP
    char MTC_tcsent; // 1 bits
    // SLc Eta Position
    char MTC_poseta[2]; // 15 bits
    // SLc Phi Position
    char MTC_posphi[2]; // 9 bits
    // SLc highest pT threshold passed
    char MTC_ptthresh; // 4 bits
    // SLc charge
    char MTC_charge; // 1 bits
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    char MTC_SLC_COMMON[4]; // 32 bits
    // SLc Segment Angle wrt Eta position
    char MTC_seg_angdtheta; // 7 bits
    // SLc Segment Angle wrt Phi position
    char MTC_seg_angdphi; // 4 bits
    // NSW segment eta position
    char MTC_nswseg_poseta[2]; // 14 bits
    // NSW segment phi position
    char MTC_nswseg_posphi; // 8 bits
    // NSW segment angle wrt Eta position
    char MTC_nswseg_angdtheta; // 5 bits
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    char MTC_SLC_COMMON[4]; // 32 bits
    // SLc Hit Z Position in RPC0
    char MTC_rpc0_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC1
    char MTC_rpc1_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC2
    char MTC_rpc2_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC3
    char MTC_rpc3_posz[2]; // 10 bits
    // SLc coincidence type
    char MTC_cointype; // 3 bits
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPE_COMMON_n {
    // SLc busy flag
    char MTC_busy; // 1 bits
    // SLc board destination
    char MTC_destsl; // 2 bits
    // SLc phimod
    char MTC_phimod; // 8 bits
    // SLc Inner Vector MDT chamber ID
    char INN_vec_mdtid; // 6 bits
} SLCPROC_PIPE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPE_ENDCAP_n {
    // struct SLCPROC_PIPE_COMMON
    char INN_SLCPROC_PIPE_COMMON[5]; // 35 bits
    // struct SLC_ENDCAP
    char SLC_ENDCAP[9]; // 70 bits
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
} SLCPROC_PIPE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPE_BARREL_n {
    // struct SLCPROC_PIPE_COMMON
    char INN_SLCPROC_PIPE_COMMON[5]; // 35 bits
    // struct SLC_BARREL
    char SLC_BARREL[10]; // 75 bits
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
} SLCPROC_PIPE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct TDC_n {
    // Channel number within TDC
    char chanid; // 5 bits
    // Edge or pair mode
    char edgemode; // 2 bits
    // TDC BCID
    char coarsetime[2]; // 12 bits
    // TDC fine time with BCID
    char finetime; // 6 bits
    // Pulse width
    char pulsewidth[2]; // 9 bits
} TDC_rt;

// -------------------------------------------------------------------
typedef struct TDCPOLMUX_n {
    // struct TDC
    char TDC[5]; // 34 bits
    // Fiber ID within board
    char fiberid; // 5 bits
    // Elink ID within fiber
    char elinkid; // 4 bits
    // Valid bit
    char datavalid; // 1 bits
} TDCPOLMUX_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HPS_SF_n {
    // SLC Valid bit
    char slc_valid; // 1 bits
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
} SLCPROC_HPS_SF_rt;

// -------------------------------------------------------------------
typedef struct TAR_n {
    // Tube layer within one station
    char mdt_tube_layer; // 5 bits
    // Tube number within one station
    char mdt_tube_num[2]; // 9 bits
    // Tube radial position
    char mdt_tube_rho[3]; // 19 bits
    // Tube position along z
    char mdt_tube_z[3]; // 20 bits
    // Tube (uncalibrated) time
    char mdt_tube_time[3]; // 18 bits
} TAR_rt;

// -------------------------------------------------------------------
typedef struct HPS_LSF_n {
    // Data Valid bit
    char data_valid; // 1 bits
    // Tube local position along precision coord
    char mdt_localx[2]; // 15 bits
    // Tube local position along second coord
    char mdt_localy[2]; // 15 bits
    // Tube drift radius
    char mdt_radius[2]; // 9 bits
} HPS_LSF_rt;

// -------------------------------------------------------------------
typedef struct HPS_CSF_n {
    // Data Valid bit
    char data_valid; // 1 bits
    // Tube local position along precision coord
    char mdt_localx[2]; // 15 bits
    // Tube local position along second coord
    char mdt_localy[2]; // 15 bits
    // Tube drift radius
    char mdt_radius[2]; // 9 bits
} HPS_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_PTCALC_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // (COPY)
    char phimod; // 8 bits
    // (COPY)
    char charge; // 1 bits
} SLCPIPE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // (COPY)
    char vec_mdtid; // 6 bits
    // SF MDT segment valid bit
    char segvalid; // 1 bits
    // SF MDT segment position along the precision coord
    char segpos[3]; // 17 bits
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
    char eta[2]; // 15 bits
    // pT calculated by the pT Calc
    char pt[2]; // 9 bits
    // pT threshold satisfied by the MDT TC
    char ptthresh; // 4 bits
    // charge determined from the pT calc
    char charge; // 1 bits
    // # of segments used for calculating the pT
    char nsegments; // 2 bits
    // quality of the MDT TC (TBC how this is defined)
    char quality; // 3 bits
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_ENDCAP_n {
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // (COPY)
    char busy; // 1 bits
    // (COPY)
    char destsl; // 2 bits
} SLCPIPE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_BARREL_n {
    // (COPY)
    char cointype; // 3 bits
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // (COPY)
    char busy; // 1 bits
    // (COPY)
    char destsl; // 2 bits
} SLCPIPE_MTC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct MTC_n {
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // (COPY)
    char eta[2]; // 15 bits
    // (COPY)
    char pt[2]; // 9 bits
    // (COPY)
    char ptthresh; // 4 bits
    // (COPY)
    char charge; // 1 bits
    // MDT processing flags
    char procflags; // 4 bits
    // (COPY)
    char nsegments; // 2 bits
    // (COPY)
    char quality; // 3 bits
} MTC_rt;

// -------------------------------------------------------------------

#endif // LOMDT_BUS_TYPES_H
