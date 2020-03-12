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

const char df_hash[] = "7221817b";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    char MTC_procflagsslcid; // 2 bits
    // SL board ID (based on the fiber ID)
    char MTC_procflagsslid; // 6 bits
    // BCID from SLC
    char MTC_procflagsbcid[2]; // 12 bits
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    char MTC_procflagsslcid; // 2 bits
    // TC sent to MDT TP
    char MTC_procflagstcsent; // 1 bits
    // SLc Eta Position
    char MTC_procflagsposeta[2]; // 14 bits
    // SLc Phi Position
    char MTC_procflagsposphi[2]; // 9 bits
    // SLc highest pT threshold passed
    char MTC_procflagsptthresh; // 4 bits
    // SLc charge
    char MTC_procflagscharge; // 1 bits
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    char MTC_procflagsSLC_COMMON[4]; // 31 bits
    // SLc Segment Angle wrt Eta position
    char MTC_procflagsseg_angdtheta; // 7 bits
    // SLc Segment Angle wrt Phi position
    char MTC_procflagsseg_angdphi; // 4 bits
    // NSW segment eta position
    char MTC_procflagsnswseg_poseta[2]; // 14 bits
    // NSW segment phi position
    char MTC_procflagsnswseg_posphi; // 8 bits
    // NSW segment angle wrt Eta position
    char MTC_procflagsnswseg_angdtheta; // 5 bits
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    char MTC_procflagsSLC_COMMON[4]; // 31 bits
    // SLc Hit Z Position in RPC0
    char MTC_procflagsrpc0_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC1
    char MTC_procflagsrpc1_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC2
    char MTC_procflagsrpc2_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC3
    char MTC_procflagsrpc3_posz[2]; // 10 bits
    // SLc coincidence type
    char MTC_procflagscointype; // 3 bits
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_COMMON_n {
    // SLc busy flag
    char MTC_procflagsbusy; // 1 bits
    // SLc board destination
    char MTC_procflagsdestsl; // 2 bits
    // SLc phimod
    char MTC_procflagsphimod; // 8 bits
    // SLc Inner Vector MDT chamber ID
    char INN_vec_mdtid; // 6 bits
} SLCPROC_PIPELINE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_ENDCAP_n {
    // struct SLCPROC_PIPELINE_COMMON
    char INN_SLCPROC_PIPELINE_COMMON[5]; // 35 bits
    // struct SLC_ENDCAP
    char INN_SLC_ENDCAP[9]; // 69 bits
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
} SLCPROC_PIPELINE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_BARREL_n {
    // struct SLCPROC_PIPELINE_COMMON
    char INN_SLCPROC_PIPELINE_COMMON[5]; // 35 bits
    // struct SLC_BARREL
    char INN_SLC_BARREL[10]; // 74 bits
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
} SLCPROC_PIPELINE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct TDC_n {
    // Channel number within TDC
    char INN_chanid; // 5 bits
    // Edge or pair mode
    char INN_edgemode; // 2 bits
    // TDC BCID
    char INN_coarsetime[2]; // 12 bits
    // TDC fine time with BCID
    char INN_finetime; // 5 bits
    // Pulse width
    char INN_pulsewidth; // 8 bits
} TDC_rt;

// -------------------------------------------------------------------
typedef struct TDCPOLMUX_n {
    // struct TDC
    char INN_TDC[4]; // 32 bits
    // Fiber ID within board
    char INN_fiberid; // 5 bits
    // Elink ID within fiber
    char INN_elinkid; // 4 bits
    // Valid bit
    char INN_datavalid; // 1 bits
} TDCPOLMUX_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HPS_n {
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
    // inner MDT segment chip destination
    char INN_mdtseg_dest; // 2 bits
    // SLc Inner Vector MDT chamber ID
    char INN_vec_mdtid; // 6 bits
    // SLc inner vector rho position
    char INN_vec_pos[2]; // 10 bits
    // SLc inner vector theta angle
    char INN_vec_ang[2]; // 10 bits
} SLCPROC_HPS_rt;

// -------------------------------------------------------------------
typedef struct TAR_n {
    // Tube layer within one station
    char INN_mdt_tube_layer; // 5 bits
    // Tube number within one station
    char INN_mdt_tube_num[2]; // 9 bits
    // Tube radial position
    char INN_mdt_tube_rho[3]; // 18 bits
    // Tube position along z
    char INN_mdt_tube_z[3]; // 19 bits
    // Tube (uncalibrated) time
    char INN_mdt_tube_time[3]; // 18 bits
} TAR_rt;

// -------------------------------------------------------------------
typedef struct HP_LSF_n {
    // Hit Valid bit
    char INN_mdt_valid; // 1 bits
    // Data Valid bit
    char INN_data_valid; // 1 bits
    // Tube local position along precision coord
    char INN_mdt_localx[2]; // 14 bits
    // Tube local position along second coord
    char INN_mdt_localy[2]; // 14 bits
    // Tube drift radius
    char INN_mdt_radius[2]; // 9 bits
} HP_LSF_rt;

// -------------------------------------------------------------------
typedef struct HP_CSF_n {
    // Hit Valid bit
    char INN_mdt_valid; // 1 bits
    // Data Valid bit
    char INN_data_valid; // 1 bits
    // Tube local position along precision coord
    char INN_mdt_localx[2]; // 14 bits
    // Tube local position along second coord
    char INN_mdt_localy[2]; // 14 bits
    // Tube drift radius
    char INN_mdt_radius[2]; // 9 bits
} HP_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_PTCALC_n {
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
    // (COPY)
    char INN_phimod; // 8 bits
    // (COPY)
    char INN_charge; // 1 bits
} SLCPIPE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
    // (COPY)
    char INN_vec_mdtid; // 6 bits
    // SF MDT segment valid bit
    char INN_segvalid; // 1 bits
    // SF MDT segment position along the precision coord
    char INN_segpos[2]; // 16 bits
    // SF MDT segment angle along the precision coord
    char INN_segangle[2]; // 11 bits
    // SF MDT segment qualiry
    char INN_segquality; // 1 bits
} SF_rt;

// -------------------------------------------------------------------
typedef struct PTCALC_n {
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
    // eta of the innermost MDT station segment position
    char INN_eta[2]; // 14 bits
    // pT calculated by the pT Calc
    char INN_pt; // 8 bits
    // pT threshold satisfied by the MDT TC
    char INN_ptthresh; // 4 bits
    // charge determined from the pT calc
    char INN_charge; // 1 bits
    // # of segments used for calculating the pT
    char INN_nsegments; // 2 bits
    // quality of the MDT TC (TBC how this is defined)
    char INN_quality; // 3 bits
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_ENDCAP_n {
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char INN_SLC_COMMON[4]; // 31 bits
    // (COPY)
    char INN_busy; // 1 bits
    // (COPY)
    char INN_destsl; // 2 bits
} SLCPIPE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_BARREL_n {
    // (COPY)
    char INN_cointype; // 3 bits
    // struct SLC_MUID
    char INN_SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char INN_SLC_COMMON[4]; // 31 bits
    // (COPY)
    char INN_busy; // 1 bits
    // (COPY)
    char INN_destsl; // 2 bits
} SLCPIPE_MTC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct MTC_n {
    // struct SLC_COMMON
    char INN_SLC_COMMON[4]; // 31 bits
    // (COPY)
    char INN_eta[2]; // 14 bits
    // (COPY)
    char INN_pt; // 8 bits
    // (COPY)
    char INN_ptthresh; // 4 bits
    // (COPY)
    char INN_charge; // 1 bits
    // MDT processing flags
    char INN_procflags; // 4 bits
    // (COPY)
    char INN_nsegments; // 2 bits
    // (COPY)
    char INN_quality; // 3 bits
} MTC_rt;

// -------------------------------------------------------------------

#endif // LOMDT_BUS_TYPES_H
