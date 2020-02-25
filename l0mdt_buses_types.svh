// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

#ifndef LOMDT_BUS_TYPES_H
#define LOMDT_BUS_TYPES_H

const char df_hash[] = "a04a67a6";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    logic [1:0] slcid;
    // SL board ID (based on the fiber ID)
    logic [5:0] slid;
    // BCID from SLC
    logic [11:0] bcid;
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    logic [1:0] slcid;
    // TC sent to MDT TP
    logic [0:0] tcsent;
    // SLc Eta Position
    logic [13:0] poseta;
    // SLc Phi Position
    logic [8:0] posphi;
    // SLc highest pT threshold passed
    logic [3:0] ptthresh;
    // SLc charge
    logic [0:0] charge;
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMON;
    // SLc Segment Angle wrt Eta position
    logic [6:0] seg_angdtheta;
    // SLc Segment Angle wrt Phi position
    logic [3:0] seg_angdphi;
    // NSW segment eta position
    logic [13:0] nswseg_poseta;
    // NSW segment phi position
    logic [7:0] nswseg_posphi;
    // NSW segment angle wrt Eta position
    logic [4:0] nswseg_angdtheta;
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMON;
    // SLc Hit Z Position in RPC0
    logic [9:0] rpc0_posz;
    // SLc Hit Z Position in RPC1
    logic [9:0] rpc1_posz;
    // SLc Hit Z Position in RPC2
    logic [9:0] rpc2_posz;
    // SLc Hit Z Position in RPC3
    logic [9:0] rpc3_posz;
    // SLc coincidence type
    logic [2:0] cointype;
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_COMMON_n {
    // SLc busy flag
    logic [0:0] busy;
    // SLc board destination
    logic [1:0] destsl;
    // SLc phimod
    logic [7:0] phimod;
    // SLc Inner Vector MDT chamber ID
    logic [5:0] vec_mdtid;
} SLCPROC_PIPELINE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_ENDCAP_n {
    // struct SLCPROC_PIPELINE_COMMON
    logic [34:0] SLCPROC_PIPELINE_COMMON;
    // struct SLC_ENDCAP
    logic [68:0] SLC_ENDCAP;
    // struct SLC_MUID
    logic [19:0] SLC_MUID;
} SLCPROC_PIPELINE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_BARREL_n {
    // struct SLCPROC_PIPELINE_COMMON
    logic [34:0] SLCPROC_PIPELINE_COMMON;
    // struct SLC_BARREL
    logic [73:0] SLC_BARREL;
    // struct SLC_MUID
    logic [19:0] SLC_MUID;
} SLCPROC_PIPELINE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct CSM_n {
    // Channel number within TDC
    logic [4:0] chanid;
    // Edge or pair mode
    logic [1:0] edgemode;
    // TDC BCID
    logic [11:0] coarsetime;
    // TDC fine time with BCID
    logic [4:0] finetime;
    // Pulse width
    logic [7:0] pulsewidth;
} CSM_rt;

// -------------------------------------------------------------------
typedef struct TDCFORMAT_n {
    // struct CSM
    logic [31:0] CSM;
    // Fiber ID within board
    logic [4:0] fiberid;
    // Elink ID within fiber
    logic [3:0] elinkid;
    // Valid bit
    logic [0:0] datavalid;
    // MDT Station Type (Inner, Middle, Outer, Extra)
    logic [1:0] stationid;
} TDCFORMAT_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HESF_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUID;
    // inner MDT segment chip destination
    logic [1:0] mdtseg_dest;
    // SLc Inner Vector MDT chamber ID
    logic [5:0] vec_mdtid;
    // SLc inner vector rho position
    logic [9:0] vec_pos;
    // SLc inner vector theta angle
    logic [9:0] vec_ang;
} SLCPROC_HESF_rt;

// -------------------------------------------------------------------
typedef struct TUBEREMAP_n {
    // Tube layer within one station
    logic [5:0] mdt_tube_layer;
    // Tube number within one station
    logic [9:0] mdt_tube_num;
    // Tube radial position
    logic [17:0] mdt_tube_rho;
    // Tube position along z
    logic [18:0] mdt_tube_z;
    // Tube (uncalibrated) time
    logic [20:0] mdt_tube_time;
} TUBEREMAP_rt;

// -------------------------------------------------------------------
typedef struct HE_LSF_n {
    // Hit Valid bit
    logic [0:0] mdt_valid;
    // Data Valid bit
    logic [0:0] data_valid;
    // Tube local position along precision coord
    logic [13:0] mdt_localx;
    // Tube local position along second coord
    logic [13:0] mdt_localy;
    // Tube drift radius
    logic [8:0] mdt_radius;
} HE_LSF_rt;

// -------------------------------------------------------------------
typedef struct HE_CSF_n {
    // Hit Valid bit
    logic [0:0] mdt_valid;
    // Data Valid bit
    logic [0:0] data_valid;
    // Tube local position along precision coord
    logic [14:0] mdt_localx;
    // Tube local position along second coord
    logic [14:0] mdt_localy;
    // Tube drift radius
    logic [8:0] mdt_radius;
} HE_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_PTCALC_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUID;
    // (COPY)
    logic [5:0] vec_mdtid;
    // (COPY)
    logic [7:0] phimod;
    // (COPY)
    logic [0:0] charge;
} SLCPIPELINE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUID;
    // (COPY)
    logic [5:0] vec_mdtid;
    // SF MDT segment valid bit
    logic [0:0] segvalid;
    // SF MDT segment position along the precision coord
    logic [15:0] segpos;
    // SF MDT segment angle along the precision coord
    logic [10:0] segangle;
    // SF MDT segment quality
    logic [0:0] segquality;
} SF_rt;

// -------------------------------------------------------------------
typedef struct PTCALC_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUID;
    // eta of the innermost MDT station segment position
    logic [13:0] mtc_eta;
    // pT calculated by the pT Calc
    logic [7:0] mtc_pt;
    // pT threshold satisfied by the MDT TC
    logic [3:0] mtc_ptthresh;
    // charge determined from the pT calc
    logic [0:0] mtc_charge;
    // # of segments used for calculating the pT
    logic [1:0] mtc_nsegments;
    // quality of the MDT TC (TBC how this is defined)
    logic [2:0] mtc_quality;
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_MTC_ENDCAP_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMON;
    // (COPY)
    logic [0:0] busy;
    // (COPY)
    logic [1:0] destsl;
} SLCPIPELINE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_MTC_BARREL_n {
    // (COPY)
    logic [2:0] cointype;
    // struct SLC_COMMON
    logic [30:0] SLC_COMMON;
    // (COPY)
    logic [0:0] busy;
    // (COPY)
    logic [1:0] destsl;
} SLCPIPELINE_MTC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct MTC_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMON;
    // (COPY)
    logic [13:0] mtc_eta;
    // (COPY)
    logic [7:0] mtc_pt;
    // (COPY)
    logic [3:0] mtc_ptthresh;
    // (COPY)
    logic [0:0] mtc_charge;
    // MDT processing flags
    logic [3:0] mtc_procflags;
    // (COPY)
    logic [1:0] mtc_nsegments;
    // (COPY)
    logic [2:0] mtc_quality;
} MTC_rt;

// -------------------------------------------------------------------

#endif // LOMDT_BUS_TYPES_H
