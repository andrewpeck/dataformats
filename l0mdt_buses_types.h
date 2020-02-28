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

const char df_hash[] = "8e8e9b54";

// -------------------------------------------------------------------
typedef struct SLC_MUID_n {
    // SLc Identification (up to 3)
    char MTC_mtc_procflagsslcid; // 2 bits
    // SL board ID (based on the fiber ID)
    char MTC_mtc_procflagsslcidslid; // 6 bits
    // BCID from SLC
    char MTC_mtc_procflagsslcidslidbcid[2]; // 12 bits
} SLC_MUID_rt;

// -------------------------------------------------------------------
typedef struct SLC_COMMON_n {
    // SLc Identification (up to 3)
    char MTC_mtc_procflagsslcidslidbcidslcid; // 2 bits
    // TC sent to MDT TP
    char MTC_mtc_procflagsslcidslidbcidslcidtcsent; // 1 bits
    // SLc Eta Position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposeta[2]; // 14 bits
    // SLc Phi Position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphi[2]; // 9 bits
    // SLc highest pT threshold passed
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthresh; // 4 bits
    // SLc charge
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshcharge; // 1 bits
} SLC_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLC_ENDCAP_n {
    // struct SLC_COMMON
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMON[4]; // 31 bits
    // SLc Segment Angle wrt Eta position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdtheta; // 7 bits
    // SLc Segment Angle wrt Phi position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphi; // 4 bits
    // NSW segment eta position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_poseta[2]; // 14 bits
    // NSW segment phi position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphi; // 8 bits
    // NSW segment angle wrt Eta position
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdtheta; // 5 bits
} SLC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLC_BARREL_n {
    // struct SLC_COMMON
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMON[4]; // 31 bits
    // SLc Hit Z Position in RPC0
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC1
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC2
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_poszrpc2_posz[2]; // 10 bits
    // SLc Hit Z Position in RPC3
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_poszrpc2_poszrpc3_posz[2]; // 10 bits
    // SLc coincidence type
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_poszrpc2_poszrpc3_poszcointype; // 3 bits
} SLC_BARREL_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_COMMON_n {
    // SLc busy flag
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_poszrpc2_poszrpc3_poszcointypebusy; // 1 bits
    // SLc board destination
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_poszrpc2_poszrpc3_poszcointypebusydestsl; // 2 bits
    // SLc phimod
    char MTC_mtc_procflagsslcidslidbcidslcidtcsentposetaposphiptthreshchargeSLC_COMMONseg_angdthetaseg_angdphinswseg_posetanswseg_posphinswseg_angdthetaSLC_COMMONrpc0_poszrpc1_poszrpc2_poszrpc3_poszcointypebusydestslphimod; // 8 bits
    // SLc Inner Vector MDT chamber ID
    char INN_vec_mdtid; // 6 bits
} SLCPROC_PIPELINE_COMMON_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_ENDCAP_n {
    // struct SLCPROC_PIPELINE_COMMON
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMON[5]; // 35 bits
    // struct SLC_ENDCAP
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAP[9]; // 69 bits
    // struct SLC_MUID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUID[3]; // 20 bits
} SLCPROC_PIPELINE_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_PIPELINE_BARREL_n {
    // struct SLCPROC_PIPELINE_COMMON
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMON[5]; // 35 bits
    // struct SLC_BARREL
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARREL[10]; // 74 bits
    // struct SLC_MUID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUID[3]; // 20 bits
} SLCPROC_PIPELINE_BARREL_rt;

// -------------------------------------------------------------------
typedef struct CSM_n {
    // Channel number within TDC
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanid; // 5 bits
    // Edge or pair mode
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemode; // 2 bits
    // TDC BCID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetime[2]; // 12 bits
    // TDC fine time with BCID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetime; // 5 bits
    // Pulse width
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidth; // 8 bits
} CSM_rt;

// -------------------------------------------------------------------
typedef struct TDCFORMAT_n {
    // struct CSM
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSM[4]; // 32 bits
    // Fiber ID within board
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberid; // 5 bits
    // Elink ID within fiber
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkid; // 4 bits
    // Valid bit
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalid; // 1 bits
    // MDT Station Type (Inner, Middle, Outer, Extra)
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationid; // 2 bits
} TDCFORMAT_rt;

// -------------------------------------------------------------------
typedef struct SLCPROC_HESF_n {
    // struct SLC_MUID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUID[3]; // 20 bits
    // inner MDT segment chip destination
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_dest; // 2 bits
    // SLc Inner Vector MDT chamber ID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtid; // 6 bits
    // SLc inner vector rho position
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_pos[2]; // 10 bits
    // SLc inner vector theta angle
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_ang[2]; // 10 bits
} SLCPROC_HESF_rt;

// -------------------------------------------------------------------
typedef struct TUBEREMAP_n {
    // Tube layer within one station
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layer; // 6 bits
    // Tube number within one station
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_num[2]; // 10 bits
    // Tube radial position
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rho[3]; // 18 bits
    // Tube position along z
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_z[3]; // 19 bits
    // Tube (uncalibrated) time
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_time[3]; // 21 bits
} TUBEREMAP_rt;

// -------------------------------------------------------------------
typedef struct HE_LSF_n {
    // Hit Valid bit
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_valid; // 1 bits
    // Data Valid bit
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_valid; // 1 bits
    // Tube local position along precision coord
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localx[2]; // 14 bits
    // Tube local position along second coord
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localy[2]; // 14 bits
    // Tube drift radius
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radius[2]; // 9 bits
} HE_LSF_rt;

// -------------------------------------------------------------------
typedef struct HE_CSF_n {
    // Hit Valid bit
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radiusmdt_valid; // 1 bits
    // Data Valid bit
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radiusmdt_validdata_valid; // 1 bits
    // Tube local position along precision coord
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radiusmdt_validdata_validmdt_localx[2]; // 15 bits
    // Tube local position along second coord
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radiusmdt_validdata_validmdt_localxmdt_localy[2]; // 15 bits
    // Tube drift radius
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radiusmdt_validdata_validmdt_localxmdt_localymdt_radius[2]; // 9 bits
} HE_CSF_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_PTCALC_n {
    // struct SLC_MUID
    char INN_vec_mdtidSLCPROC_PIPELINE_COMMONSLC_ENDCAPSLC_MUIDSLCPROC_PIPELINE_COMMONSLC_BARRELSLC_MUIDchanidedgemodecoarsetimefinetimepulsewidthCSMfiberidelinkiddatavalidstationidSLC_MUIDmdtseg_destvec_mdtidvec_posvec_angmdt_tube_layermdt_tube_nummdt_tube_rhomdt_tube_zmdt_tube_timemdt_validdata_validmdt_localxmdt_localymdt_radiusmdt_validdata_validmdt_localxmdt_localymdt_radiusSLC_MUID[3]; // 20 bits
    // (COPY)
    char INN_vec_mdtid; // 6 bits
    // (COPY)
    char INN_vec_mdtidphimod; // 8 bits
    // (COPY)
    char INN_vec_mdtidphimodcharge; // 1 bits
} SLCPIPELINE_PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SF_n {
    // struct SLC_MUID
    char INN_vec_mdtidphimodchargeSLC_MUID[3]; // 20 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtid; // 6 bits
    // SF MDT segment valid bit
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalid; // 1 bits
    // SF MDT segment position along the precision coord
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegpos[2]; // 16 bits
    // SF MDT segment angle along the precision coord
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegpossegangle[2]; // 11 bits
    // SF MDT segment qualiry
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegquality; // 1 bits
} SF_rt;

// -------------------------------------------------------------------
typedef struct PTCALC_n {
    // struct SLC_MUID
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUID[3]; // 20 bits
    // eta of the innermost MDT station segment position
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_eta[2]; // 14 bits
    // pT calculated by the pT Calc
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_pt; // 8 bits
    // pT threshold satisfied by the MDT TC
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthresh; // 4 bits
    // charge determined from the pT calc
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_charge; // 1 bits
    // # of segments used for calculating the pT
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegments; // 2 bits
    // quality of the MDT TC (TBC how this is defined)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_quality; // 3 bits
} PTCALC_rt;

// -------------------------------------------------------------------
typedef struct SLCPIPELINE_MTC_ENDCAP_n {
    // struct SLC_MUID
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUID[3]; // 20 bits
    // struct SLC_COMMON
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMON[4]; // 31 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusy; // 1 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestsl; // 2 bits
} SLCPIPELINE_MTC_ENDCAP_rt;

// -------------------------------------------------------------------
typedef struct MTC_n {
    // struct SLC_COMMON
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMON[4]; // 31 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_eta[2]; // 14 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_etamtc_pt; // 8 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_etamtc_ptmtc_ptthresh; // 4 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_etamtc_ptmtc_ptthreshmtc_charge; // 1 bits
    // MDT processing flags
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_procflags; // 4 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_procflagsmtc_nsegments; // 2 bits
    // (COPY)
    char INN_vec_mdtidphimodchargeSLC_MUIDvec_mdtidsegvalidsegposseganglesegqualitySLC_MUIDmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_nsegmentsmtc_qualitySLC_MUIDSLC_COMMONbusydestslSLC_COMMONmtc_etamtc_ptmtc_ptthreshmtc_chargemtc_procflagsmtc_nsegmentsmtc_quality; // 3 bits
} MTC_rt;

// -------------------------------------------------------------------

#endif // LOMDT_BUS_TYPES_H
