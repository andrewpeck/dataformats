// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

#ifndef LOMDT_BUS_TYPES_H
#define LOMDT_BUS_TYPES_H

const char df_hash[] = "2f2974c9";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    logic [1:0] slcidslcid;
    // SL board ID (based on the fiber ID)
    logic [5:0] slidslid;
    // BCID from SLC
    logic [11:0] bcidbcid;
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    logic [1:0] slcidslcid;
    // TC sent to MDT TP
    logic [0:0] tcsenttcsent;
    // SLc Eta Position
    logic [13:0] posetaposeta;
    // SLc Phi Position
    logic [8:0] posphiposphi;
    // SLc highest pT threshold passed
    logic [3:0] ptthreshptthresh;
    // SLc charge
    logic [0:0] chargecharge;
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMONSLC_COMMON;
    // SLc Segment Angle wrt Eta position
    logic [6:0] seg_angdthetaseg_angdtheta;
    // SLc Segment Angle wrt Phi position
    logic [3:0] seg_angdphiseg_angdphi;
    // NSW segment eta position
    logic [13:0] nswseg_posetanswseg_poseta;
    // NSW segment phi position
    logic [7:0] nswseg_posphinswseg_posphi;
    // NSW segment angle wrt Eta position
    logic [4:0] nswseg_angdthetanswseg_angdtheta;
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMONSLC_COMMON;
    // SLc Hit Z Position in RPC0
    logic [9:0] rpc0_poszrpc0_posz;
    // SLc Hit Z Position in RPC1
    logic [9:0] rpc1_poszrpc1_posz;
    // SLc Hit Z Position in RPC2
    logic [9:0] rpc2_poszrpc2_posz;
    // SLc Hit Z Position in RPC3
    logic [9:0] rpc3_poszrpc3_posz;
    // SLc coincidence type
    logic [2:0] cointypecointype;
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_COMMON_n {
    // SLc busy flag
    logic [0:0] busybusy;
    // SLc board destination
    logic [1:0] destsldestsl;
    // SLc phimod
    logic [7:0] phimodphimod;
    // SLc Inner Vector MDT chamber ID
    logic [5:0] INN_vec_mdtidvec_mdtid;
} SLCPROC_PIPELINE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_ENDCAP_n {
    // struct SLCPROC_PIPELINE_COMMON
    logic [34:0] SLCPROC_PIPELINE_COMMONSLCPROC_PIPELINE_COMMON;
    // struct SLC_ENDCAP
    logic [68:0] SLC_ENDCAPSLC_ENDCAP;
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
} SLCPROC_PIPELINE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_BARREL_n {
    // struct SLCPROC_PIPELINE_COMMON
    logic [34:0] SLCPROC_PIPELINE_COMMONSLCPROC_PIPELINE_COMMON;
    // struct SLC_BARREL
    logic [73:0] SLC_BARRELSLC_BARREL;
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
} SLCPROC_PIPELINE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct TDC_n {
    // Channel number within TDC
    logic [4:0] chanidchanid;
    // Edge or pair mode
    logic [1:0] edgemodeedgemode;
    // TDC BCID
    logic [11:0] coarsetimecoarsetime;
    // TDC fine time with BCID
    logic [4:0] finetimefinetime;
    // Pulse width
    logic [7:0] pulsewidthpulsewidth;
} TDC_rt;

// -------------------------------------------------------------------
typedef struct TDCPOLMUX_n {
    // struct TDC
    logic [31:0] TDCTDC;
    // Fiber ID within board
    logic [4:0] fiberidfiberid;
    // Elink ID within fiber
    logic [3:0] elinkidelinkid;
    // Valid bit
    logic [0:0] datavaliddatavalid;
} TDCPOLMUX_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HPS_n {
    // SLC Valid bit
    logic [0:0] slc_validslc_valid;
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
    // inner MDT segment chip destination
    logic [1:0] mdtseg_destmdtseg_dest;
    // SLc Inner Vector MDT chamber ID
    logic [5:0] vec_mdtidvec_mdtid;
    // SLc inner vector rho position
    logic [9:0] vec_posvec_pos;
    // SLc inner vector theta angle
    logic [9:0] vec_angvec_ang;
} SLCPROC_HPS_rt;

// -------------------------------------------------------------------
typedef struct TAR_n {
    // Tube layer within one station
    logic [4:0] mdt_tube_layermdt_tube_layer;
    // Tube number within one station
    logic [8:0] mdt_tube_nummdt_tube_num;
    // Tube radial position
    logic [17:0] mdt_tube_rhomdt_tube_rho;
    // Tube position along z
    logic [18:0] mdt_tube_zmdt_tube_z;
    // Tube (uncalibrated) time
    logic [17:0] mdt_tube_timemdt_tube_time;
} TAR_rt;

// -------------------------------------------------------------------
typedef struct HP_LSF_n {
    // Data Valid bit
    logic [0:0] data_validdata_valid;
    // Tube local position along precision coord
    logic [13:0] mdt_localxmdt_localx;
    // Tube local position along second coord
    logic [13:0] mdt_localymdt_localy;
    // Tube drift radius
    logic [8:0] mdt_radiusmdt_radius;
} HP_LSF_rt;

// -------------------------------------------------------------------
typedef struct HP_CSF_n {
    // Data Valid bit
    logic [0:0] data_validdata_valid;
    // Tube local position along precision coord
    logic [13:0] mdt_localxmdt_localx;
    // Tube local position along second coord
    logic [13:0] mdt_localymdt_localy;
    // Tube drift radius
    logic [8:0] mdt_radiusmdt_radius;
} HP_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_PTCALC_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
    // (COPY)
    logic [7:0] phimodphimod;
    // (COPY)
    logic [0:0] chargecharge;
} SLCPIPE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
    // (COPY)
    logic [5:0] vec_mdtidvec_mdtid;
    // SF MDT segment valid bit
    logic [0:0] segvalidsegvalid;
    // SF MDT segment position along the precision coord
    logic [15:0] segpossegpos;
    // SF MDT segment angle along the precision coord
    logic [10:0] seganglesegangle;
    // SF MDT segment qualiry
    logic [0:0] segqualitysegquality;
} SF_rt;

// -------------------------------------------------------------------
typedef struct PTCALC_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
    // eta of the innermost MDT station segment position
    logic [13:0] etaeta;
    // pT calculated by the pT Calc
    logic [7:0] ptpt;
    // pT threshold satisfied by the MDT TC
    logic [3:0] ptthreshptthresh;
    // charge determined from the pT calc
    logic [0:0] chargecharge;
    // # of segments used for calculating the pT
    logic [1:0] nsegmentsnsegments;
    // quality of the MDT TC (TBC how this is defined)
    logic [2:0] qualityquality;
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_ENDCAP_n {
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
    // struct SLC_COMMON
    logic [30:0] SLC_COMMONSLC_COMMON;
    // (COPY)
    logic [0:0] busybusy;
    // (COPY)
    logic [1:0] destsldestsl;
} SLCPIPE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_BARREL_n {
    // (COPY)
    logic [2:0] cointypecointype;
    // struct SLC_MUID
    logic [19:0] SLC_MUIDSLC_MUID;
    // struct SLC_COMMON
    logic [30:0] SLC_COMMONSLC_COMMON;
    // (COPY)
    logic [0:0] busybusy;
    // (COPY)
    logic [1:0] destsldestsl;
} SLCPIPE_MTC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct MTC_n {
    // struct SLC_COMMON
    logic [30:0] SLC_COMMONSLC_COMMON;
    // (COPY)
    logic [13:0] etaeta;
    // (COPY)
    logic [7:0] ptpt;
    // (COPY)
    logic [3:0] ptthreshptthresh;
    // (COPY)
    logic [0:0] chargecharge;
    // MDT processing flags
    logic [3:0] procflagsprocflags;
    // (COPY)
    logic [1:0] nsegmentsnsegments;
    // (COPY)
    logic [2:0] qualityquality;
} MTC_rt;

// -------------------------------------------------------------------

#endif // LOMDT_BUS_TYPES_H
