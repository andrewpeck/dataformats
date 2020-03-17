// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------
#ifndef L0MDT_BUSES_TYPES_H
#define L0MDT_BUSES_TYPES_H

const char df_hash[] = "7eb82b5b";

// Usage:
//   uint16_t bcid;
//   GETVAL(bcid, SLC_MUID.bcid, 12);
template <typename T>
void GETVAL(T dest, char orig, unsigned int nbits) {
    dest = 0;
    for (int i=0; i <= nbits/8; i++){
    dest |= orig[i] << i*8;
}

const char df_hash[] = "bece9746";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    char _slcid; // 2 bits
    // SL board ID (based on the fiber ID)
    char _slid; // 6 bits
    // BCID from SLC
    char _bcid[2]; // 12 bits
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    char _slcid; // 2 bits
    // TC sent to MDT TP
    char _tcsent; // 1 bits
    // SLc Eta Position
    char poseta[2]; // 15 bits
    // SLc Phi Position
    char _posphi[2]; // 9 bits
    // SLc highest pT threshold passed
    char _ptthresh; // 4 bits
    // SLc charge
    char _charge; // 1 bits
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // SLc Segment Angle wrt Eta position
    char _seg_angdtheta; // 7 bits
    // SLc Segment Angle wrt Phi position
    char _seg_angdphi; // 4 bits
    // NSW segment eta position
    char _nswseg_poseta[2]; // 14 bits
    // NSW segment phi position
    char _nswseg_posphi; // 8 bits
    // NSW segment angle wrt Eta position
    char _nswseg_angdtheta; // 5 bits
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // SLc Hit Z Position in RPC0
    char _rpc0_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC1
    char _rpc1_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC2
    char _rpc2_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC3
    char _rpc3_posz[2]; // 10 bits
    // SLc coincidence type
    char _cointype; // 3 bits
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPE_COMMON_n {
    // SLc busy flag
    char _busy; // 1 bits
    // SLc board destination
    char _destsl; // 2 bits
    // SLc phimod
    char _phimod; // 8 bits
    // SLc Inner Vector MDT chamber ID
    char INN_vec_mdtid; // 6 bits
} SLCPROC_PIPE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPE_ENDCAP_n {
    // struct SLCPROC_PIPE_COMMON
    char SLCPROC_PIPE_COMMON[5]; // 35 bits
    // struct SLC_ENDCAP
    char SLC_ENDCAP[9]; // 70 bits
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
} SLCPROC_PIPE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPE_BARREL_n {
    // struct SLCPROC_PIPE_COMMON
    char SLCPROC_PIPE_COMMON[5]; // 35 bits
    // struct SLC_BARREL
    char SLC_BARREL[10]; // 75 bits
    // struct SLC_MUID
    char SLC_MUID[3]; // 20 bits
} SLCPROC_PIPE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct TDC_n {
    // Channel number within TDC
    char _chanid; // 5 bits
    // Edge or pair mode
    char _edgemode; // 2 bits
    // TDC BCID
    char _coarsetime[2]; // 12 bits
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
    char _fiberid; // 5 bits
    // Elink ID within fiber
    char _elinkid; // 4 bits
    // Valid bit
    char _datavalid; // 1 bits
} TDCPOLMUX_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HPS_SF_n {
    // SLC Valid bit
    char _slc_valid; // 1 bits
    // struct SLC_MUID
    char _SLC_MUID[3]; // 20 bits
    // inner MDT segment chip destination
    char _mdtseg_dest; // 2 bits
    // SLc Inner Vector MDT chamber ID
    char _vec_mdtid; // 6 bits
    // SLc inner vector rho position
    char _vec_pos[2]; // 10 bits
    // SLc inner vector theta angle
    char vec_ang[2]; // 10 bits
} SLCPROC_HPS_SF_rt;

// -------------------------------------------------------------------
typedef struct TAR_n {
    // Tube layer within one station
    char _mdt_tube_layer; // 5 bits
    // Tube number within one station
    char _mdt_tube_num[2]; // 9 bits
    // Tube radial position
    char mdt_tube_rho[3]; // 19 bits
    // Tube position along z
    char mdt_tube_z[3]; // 20 bits
    // Tube (uncalibrated) time
    char _mdt_tube_time[3]; // 18 bits
} TAR_rt;

// -------------------------------------------------------------------
typedef struct HPS_LSF_n {
    // Data Valid bit
    char _data_valid; // 1 bits
    // Tube local position along precision coord
    char mdt_localx[2]; // 15 bits
    // Tube local position along second coord
    char mdt_localy[2]; // 15 bits
    // Tube drift radius
    char _mdt_radius[2]; // 9 bits
} HPS_LSF_rt;

// -------------------------------------------------------------------
typedef struct HPS_CSF_n {
    // Data Valid bit
    char _data_valid; // 1 bits
    // Tube local position along precision coord
    char mdt_localx[2]; // 15 bits
    // Tube local position along second coord
    char mdt_localy[2]; // 15 bits
    // Tube drift radius
    char _mdt_radius[2]; // 9 bits
} HPS_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_PTCALC_n {
    // struct SLC_MUID
    char _SLC_MUID[3]; // 20 bits
    // (COPY)
    char _phimod; // 8 bits
    // (COPY)
    char _charge; // 1 bits
} SLCPIPE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    char _SLC_MUID[3]; // 20 bits
    // (COPY)
    char _vec_mdtid; // 6 bits
    // SF MDT segment valid bit
    char _segvalid; // 1 bits
    // SF MDT segment position along the precision coord
    char segpos[3]; // 17 bits
    // SF MDT segment angle along the precision coord
    char _segangle[2]; // 11 bits
    // SF MDT segment qualiry
    char _segquality; // 1 bits
} SF_rt;

// -------------------------------------------------------------------
typedef struct PTCALC_n {
    // struct SLC_MUID
    char _SLC_MUID[3]; // 20 bits
    // eta of the innermost MDT station segment position
    char eta[2]; // 15 bits
    // pT calculated by the pT Calc
    char pt[2]; // 9 bits
    // pT threshold satisfied by the MDT TC
    char _ptthresh; // 4 bits
    // charge determined from the pT calc
    char _charge; // 1 bits
    // # of segments used for calculating the pT
    char _nsegments; // 2 bits
    // quality of the MDT TC (TBC how this is defined)
    char _quality; // 3 bits
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_ENDCAP_n {
    // struct SLC_MUID
    char _SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // (COPY)
    char _busy; // 1 bits
    // (COPY)
    char _destsl; // 2 bits
} SLCPIPE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPE_MTC_BARREL_n {
    // (COPY)
    char _cointype; // 3 bits
    // struct SLC_MUID
    char _SLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char SLC_COMMON[4]; // 32 bits
    // (COPY)
    char _busy; // 1 bits
    // (COPY)
    char _destsl; // 2 bits
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
    char _ptthresh; // 4 bits
    // (COPY)
    char _charge; // 1 bits
    // MDT processing flags
    char _procflags; // 4 bits
    // (COPY)
    char _nsegments; // 2 bits
    // (COPY)
    char _quality; // 3 bits
} MTC_rt;

// -------------------------------------------------------------------

#endif // L0MDT_BUSES_TYPES_H
