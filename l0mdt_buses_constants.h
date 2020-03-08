// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

#ifndef LOMDT_BUSES_CONSTANTS_H
#define LOMDT_BUSES_CONSTANTS_H

const char df_hash[] = "a34aee13";

// -------------------------------------------------------------------
const int SLC_MUID_LEN = 20;

// SLc Identification (up to 3)
const int SLC_MUID_SLCIDSLCID_LEN = 2;
const int SLC_MUID_SLCIDSLCID_MSB = 19;
const int SLC_MUID_SLCIDSLCID_LSB = 18;
const int SLC_MUID_SLCIDSLCID_DECB = 0;

// SL board ID (based on the fiber ID)
const int SLC_MUID_SLIDSLID_LEN = 6;
const int SLC_MUID_SLIDSLID_MSB = 17;
const int SLC_MUID_SLIDSLID_LSB = 12;
const int SLC_MUID_SLIDSLID_DECB = 0;

// BCID from SLC
const int SLC_MUID_BCIDBCID_LEN = 12;
const int SLC_MUID_BCIDBCID_MSB = 11;
const int SLC_MUID_BCIDBCID_LSB = 0;
const int SLC_MUID_BCIDBCID_DECB = 0;

// -------------------------------------------------------------------
const int SLC_COMMON_LEN = 31;

// SLc Identification (up to 3)
const int SLC_COMMON_SLCIDSLCID_LEN = 2;
const int SLC_COMMON_SLCIDSLCID_MSB = 30;
const int SLC_COMMON_SLCIDSLCID_LSB = 29;
const int SLC_COMMON_SLCIDSLCID_DECB = 0;

// TC sent to MDT TP
const int SLC_COMMON_TCSENTTCSENT_LEN = 1;
const int SLC_COMMON_TCSENTTCSENT_MSB = 28;
const int SLC_COMMON_TCSENTTCSENT_LSB = 28;
const int SLC_COMMON_TCSENTTCSENT_DECB = 0;

// SLc Eta Position
const int SLC_COMMON_POSETAPOSETA_LEN = 14;
const int SLC_COMMON_POSETAPOSETA_MSB = 27;
const int SLC_COMMON_POSETAPOSETA_LSB = 14;
const int SLC_COMMON_POSETAPOSETA_DECB = 12;

// SLc Phi Position
const int SLC_COMMON_POSPHIPOSPHI_LEN = 9;
const int SLC_COMMON_POSPHIPOSPHI_MSB = 13;
const int SLC_COMMON_POSPHIPOSPHI_LSB = 5;
const int SLC_COMMON_POSPHIPOSPHI_DECB = 0;

// SLc highest pT threshold passed
const int SLC_COMMON_PTTHRESHPTTHRESH_LEN = 4;
const int SLC_COMMON_PTTHRESHPTTHRESH_MSB = 4;
const int SLC_COMMON_PTTHRESHPTTHRESH_LSB = 1;
const int SLC_COMMON_PTTHRESHPTTHRESH_DECB = 0;

// SLc charge
const int SLC_COMMON_CHARGECHARGE_LEN = 1;
const int SLC_COMMON_CHARGECHARGE_MSB = 0;
const int SLC_COMMON_CHARGECHARGE_LSB = 0;
const int SLC_COMMON_CHARGECHARGE_DECB = 0;

// -------------------------------------------------------------------
const int SLC_ENDCAP_LEN = 69;

// SLc Segment Angle wrt Eta position
const int SLC_ENDCAP_SEG_ANGDTHETASEG_ANGDTHETA_LEN = 7;
const int SLC_ENDCAP_SEG_ANGDTHETASEG_ANGDTHETA_MSB = 37;
const int SLC_ENDCAP_SEG_ANGDTHETASEG_ANGDTHETA_LSB = 31;
const int SLC_ENDCAP_SEG_ANGDTHETASEG_ANGDTHETA_DECB = 0;

// SLc Segment Angle wrt Phi position
const int SLC_ENDCAP_SEG_ANGDPHISEG_ANGDPHI_LEN = 4;
const int SLC_ENDCAP_SEG_ANGDPHISEG_ANGDPHI_MSB = 30;
const int SLC_ENDCAP_SEG_ANGDPHISEG_ANGDPHI_LSB = 27;
const int SLC_ENDCAP_SEG_ANGDPHISEG_ANGDPHI_DECB = 0;

// NSW segment eta position
const int SLC_ENDCAP_NSWSEG_POSETANSWSEG_POSETA_LEN = 14;
const int SLC_ENDCAP_NSWSEG_POSETANSWSEG_POSETA_MSB = 26;
const int SLC_ENDCAP_NSWSEG_POSETANSWSEG_POSETA_LSB = 13;
const int SLC_ENDCAP_NSWSEG_POSETANSWSEG_POSETA_DECB = 13;

// NSW segment phi position
const int SLC_ENDCAP_NSWSEG_POSPHINSWSEG_POSPHI_LEN = 8;
const int SLC_ENDCAP_NSWSEG_POSPHINSWSEG_POSPHI_MSB = 12;
const int SLC_ENDCAP_NSWSEG_POSPHINSWSEG_POSPHI_LSB = 5;
const int SLC_ENDCAP_NSWSEG_POSPHINSWSEG_POSPHI_DECB = 0;

// NSW segment angle wrt Eta position
const int SLC_ENDCAP_NSWSEG_ANGDTHETANSWSEG_ANGDTHETA_LEN = 5;
const int SLC_ENDCAP_NSWSEG_ANGDTHETANSWSEG_ANGDTHETA_MSB = 4;
const int SLC_ENDCAP_NSWSEG_ANGDTHETANSWSEG_ANGDTHETA_LSB = 0;
const int SLC_ENDCAP_NSWSEG_ANGDTHETANSWSEG_ANGDTHETA_DECB = 0;

// -------------------------------------------------------------------
const int SLC_BARREL_LEN = 74;

// SLc Hit Z Position in RPC0
const int SLC_BARREL_RPC0_POSZRPC0_POSZ_LEN = 10;
const int SLC_BARREL_RPC0_POSZRPC0_POSZ_MSB = 42;
const int SLC_BARREL_RPC0_POSZRPC0_POSZ_LSB = 33;
const int SLC_BARREL_RPC0_POSZRPC0_POSZ_DECB = 0;

// SLc Hit Z Position in RPC1
const int SLC_BARREL_RPC1_POSZRPC1_POSZ_LEN = 10;
const int SLC_BARREL_RPC1_POSZRPC1_POSZ_MSB = 32;
const int SLC_BARREL_RPC1_POSZRPC1_POSZ_LSB = 23;
const int SLC_BARREL_RPC1_POSZRPC1_POSZ_DECB = 0;

// SLc Hit Z Position in RPC2
const int SLC_BARREL_RPC2_POSZRPC2_POSZ_LEN = 10;
const int SLC_BARREL_RPC2_POSZRPC2_POSZ_MSB = 22;
const int SLC_BARREL_RPC2_POSZRPC2_POSZ_LSB = 13;
const int SLC_BARREL_RPC2_POSZRPC2_POSZ_DECB = 0;

// SLc Hit Z Position in RPC3
const int SLC_BARREL_RPC3_POSZRPC3_POSZ_LEN = 10;
const int SLC_BARREL_RPC3_POSZRPC3_POSZ_MSB = 12;
const int SLC_BARREL_RPC3_POSZRPC3_POSZ_LSB = 3;
const int SLC_BARREL_RPC3_POSZRPC3_POSZ_DECB = 0;

// SLc coincidence type
const int SLC_BARREL_COINTYPECOINTYPE_LEN = 3;
const int SLC_BARREL_COINTYPECOINTYPE_MSB = 2;
const int SLC_BARREL_COINTYPECOINTYPE_LSB = 0;
const int SLC_BARREL_COINTYPECOINTYPE_DECB = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPELINE_COMMON_LEN = 35;

// SLc busy flag
const int SLCPROC_PIPELINE_COMMON_BUSYBUSY_LEN = 1;
const int SLCPROC_PIPELINE_COMMON_BUSYBUSY_MSB = 34;
const int SLCPROC_PIPELINE_COMMON_BUSYBUSY_LSB = 34;
const int SLCPROC_PIPELINE_COMMON_BUSYBUSY_DECB = 0;

// SLc board destination
const int SLCPROC_PIPELINE_COMMON_DESTSLDESTSL_LEN = 2;
const int SLCPROC_PIPELINE_COMMON_DESTSLDESTSL_MSB = 33;
const int SLCPROC_PIPELINE_COMMON_DESTSLDESTSL_LSB = 32;
const int SLCPROC_PIPELINE_COMMON_DESTSLDESTSL_DECB = 0;

// SLc phimod
const int SLCPROC_PIPELINE_COMMON_PHIMODPHIMOD_LEN = 8;
const int SLCPROC_PIPELINE_COMMON_PHIMODPHIMOD_MSB = 31;
const int SLCPROC_PIPELINE_COMMON_PHIMODPHIMOD_LSB = 24;
const int SLCPROC_PIPELINE_COMMON_PHIMODPHIMOD_DECB = 0;

// SLc Inner Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_INN_VEC_MDTIDVEC_MDTID_LEN = 6;
const int SLCPROC_PIPELINE_COMMON_INN_VEC_MDTIDVEC_MDTID_MSB = 23;
const int SLCPROC_PIPELINE_COMMON_INN_VEC_MDTIDVEC_MDTID_LSB = 18;
const int SLCPROC_PIPELINE_COMMON_INN_VEC_MDTIDVEC_MDTID_DECB = 0;

// SLc Middle Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_MID_VEC_MDTIDVEC_MDTID_LEN = 6;
const int SLCPROC_PIPELINE_COMMON_MID_VEC_MDTIDVEC_MDTID_MSB = 17;
const int SLCPROC_PIPELINE_COMMON_MID_VEC_MDTIDVEC_MDTID_LSB = 12;
const int SLCPROC_PIPELINE_COMMON_MID_VEC_MDTIDVEC_MDTID_DECB = 0;

// SLc Outer Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTIDVEC_MDTID_LEN = 6;
const int SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTIDVEC_MDTID_MSB = 11;
const int SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTIDVEC_MDTID_LSB = 6;
const int SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTIDVEC_MDTID_DECB = 0;

// SLc Extra Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTIDVEC_MDTID_LEN = 6;
const int SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTIDVEC_MDTID_MSB = 5;
const int SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTIDVEC_MDTID_LSB = 0;
const int SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTIDVEC_MDTID_DECB = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPELINE_ENDCAP_LEN = 124;

// -------------------------------------------------------------------
const int SLCPROC_PIPELINE_BARREL_LEN = 129;

// -------------------------------------------------------------------
const int TDC_LEN = 32;

// Channel number within TDC
const int TDC_CHANIDCHANID_LEN = 5;
const int TDC_CHANIDCHANID_MSB = 31;
const int TDC_CHANIDCHANID_LSB = 27;
const int TDC_CHANIDCHANID_DECB = 0;

// Edge or pair mode
const int TDC_EDGEMODEEDGEMODE_LEN = 2;
const int TDC_EDGEMODEEDGEMODE_MSB = 26;
const int TDC_EDGEMODEEDGEMODE_LSB = 25;
const int TDC_EDGEMODEEDGEMODE_DECB = 0;

// TDC BCID
const int TDC_COARSETIMECOARSETIME_LEN = 12;
const int TDC_COARSETIMECOARSETIME_MSB = 24;
const int TDC_COARSETIMECOARSETIME_LSB = 13;
const int TDC_COARSETIMECOARSETIME_DECB = 0;

// TDC fine time with BCID
const int TDC_FINETIMEFINETIME_LEN = 5;
const int TDC_FINETIMEFINETIME_MSB = 12;
const int TDC_FINETIMEFINETIME_LSB = 8;
const int TDC_FINETIMEFINETIME_DECB = 1;

// Pulse width
const int TDC_PULSEWIDTHPULSEWIDTH_LEN = 8;
const int TDC_PULSEWIDTHPULSEWIDTH_MSB = 7;
const int TDC_PULSEWIDTHPULSEWIDTH_LSB = 0;
const int TDC_PULSEWIDTHPULSEWIDTH_DECB = 1;

// -------------------------------------------------------------------
const int TDCFORMAT_LEN = 44;

// Fiber ID within board
const int TDCFORMAT_FIBERIDFIBERID_LEN = 5;
const int TDCFORMAT_FIBERIDFIBERID_MSB = 11;
const int TDCFORMAT_FIBERIDFIBERID_LSB = 7;
const int TDCFORMAT_FIBERIDFIBERID_DECB = 0;

// Elink ID within fiber
const int TDCFORMAT_ELINKIDELINKID_LEN = 4;
const int TDCFORMAT_ELINKIDELINKID_MSB = 6;
const int TDCFORMAT_ELINKIDELINKID_LSB = 3;
const int TDCFORMAT_ELINKIDELINKID_DECB = 0;

// Valid bit
const int TDCFORMAT_DATAVALIDDATAVALID_LEN = 1;
const int TDCFORMAT_DATAVALIDDATAVALID_MSB = 2;
const int TDCFORMAT_DATAVALIDDATAVALID_LSB = 2;
const int TDCFORMAT_DATAVALIDDATAVALID_DECB = 0;

// MDT Station Type (Inner, Middle, Outer, Extra)
const int TDCFORMAT_STATIONIDSTATIONID_LEN = 2;
const int TDCFORMAT_STATIONIDSTATIONID_MSB = 1;
const int TDCFORMAT_STATIONIDSTATIONID_LSB = 0;
const int TDCFORMAT_STATIONIDSTATIONID_DECB = 0;

// -------------------------------------------------------------------
const int SLCPROC_HESF_LEN = 48;

// SLc Muon Unique Identifier
const int SLCPROC_HESF_SLC_MUIDSLC_MUID_LEN = 20;
const int SLCPROC_HESF_SLC_MUIDSLC_MUID_MSB = 47;
const int SLCPROC_HESF_SLC_MUIDSLC_MUID_LSB = 28;
const int SLCPROC_HESF_SLC_MUIDSLC_MUID_DECB = 0;

// inner MDT segment chip destination
const int SLCPROC_HESF_MDTSEG_DESTMDTSEG_DEST_LEN = 2;
const int SLCPROC_HESF_MDTSEG_DESTMDTSEG_DEST_MSB = 27;
const int SLCPROC_HESF_MDTSEG_DESTMDTSEG_DEST_LSB = 26;
const int SLCPROC_HESF_MDTSEG_DESTMDTSEG_DEST_DECB = 0;

// SLc Inner Vector MDT chamber ID
const int SLCPROC_HESF_VEC_MDTIDVEC_MDTID_LEN = 6;
const int SLCPROC_HESF_VEC_MDTIDVEC_MDTID_MSB = 25;
const int SLCPROC_HESF_VEC_MDTIDVEC_MDTID_LSB = 20;
const int SLCPROC_HESF_VEC_MDTIDVEC_MDTID_DECB = 0;

// SLc inner vector rho position
const int SLCPROC_HESF_VEC_POSVEC_POS_LEN = 10;
const int SLCPROC_HESF_VEC_POSVEC_POS_MSB = 19;
const int SLCPROC_HESF_VEC_POSVEC_POS_LSB = 10;
const int SLCPROC_HESF_VEC_POSVEC_POS_DECB = 0;

// SLc inner vector theta angle
const int SLCPROC_HESF_VEC_ANGVEC_ANG_LEN = 10;
const int SLCPROC_HESF_VEC_ANGVEC_ANG_MSB = 9;
const int SLCPROC_HESF_VEC_ANGVEC_ANG_LSB = 0;
const int SLCPROC_HESF_VEC_ANGVEC_ANG_DECB = 0;

// -------------------------------------------------------------------
const int TUBEREMAP_LEN = 69;

// Tube layer within one station
const int TUBEREMAP_MDT_TUBE_LAYERMDT_TUBE_LAYER_LEN = 5;
const int TUBEREMAP_MDT_TUBE_LAYERMDT_TUBE_LAYER_MSB = 68;
const int TUBEREMAP_MDT_TUBE_LAYERMDT_TUBE_LAYER_LSB = 64;
const int TUBEREMAP_MDT_TUBE_LAYERMDT_TUBE_LAYER_DECB = 0;

// Tube number within one station
const int TUBEREMAP_MDT_TUBE_NUMMDT_TUBE_NUM_LEN = 9;
const int TUBEREMAP_MDT_TUBE_NUMMDT_TUBE_NUM_MSB = 63;
const int TUBEREMAP_MDT_TUBE_NUMMDT_TUBE_NUM_LSB = 55;
const int TUBEREMAP_MDT_TUBE_NUMMDT_TUBE_NUM_DECB = 0;

// Tube radial position
const int TUBEREMAP_MDT_TUBE_RHOMDT_TUBE_RHO_LEN = 18;
const int TUBEREMAP_MDT_TUBE_RHOMDT_TUBE_RHO_MSB = 54;
const int TUBEREMAP_MDT_TUBE_RHOMDT_TUBE_RHO_LSB = 37;
const int TUBEREMAP_MDT_TUBE_RHOMDT_TUBE_RHO_DECB = 5;

// Tube position along z
const int TUBEREMAP_MDT_TUBE_ZMDT_TUBE_Z_LEN = 19;
const int TUBEREMAP_MDT_TUBE_ZMDT_TUBE_Z_MSB = 36;
const int TUBEREMAP_MDT_TUBE_ZMDT_TUBE_Z_LSB = 18;
const int TUBEREMAP_MDT_TUBE_ZMDT_TUBE_Z_DECB = 5;

// Tube (uncalibrated) time
const int TUBEREMAP_MDT_TUBE_TIMEMDT_TUBE_TIME_LEN = 18;
const int TUBEREMAP_MDT_TUBE_TIMEMDT_TUBE_TIME_MSB = 17;
const int TUBEREMAP_MDT_TUBE_TIMEMDT_TUBE_TIME_LSB = 0;
const int TUBEREMAP_MDT_TUBE_TIMEMDT_TUBE_TIME_DECB = 1;

// -------------------------------------------------------------------
const int HE_LSF_LEN = 39;

// Hit Valid bit
const int HE_LSF_MDT_VALIDMDT_VALID_LEN = 1;
const int HE_LSF_MDT_VALIDMDT_VALID_MSB = 38;
const int HE_LSF_MDT_VALIDMDT_VALID_LSB = 38;
const int HE_LSF_MDT_VALIDMDT_VALID_DECB = 0;

// Data Valid bit
const int HE_LSF_DATA_VALIDDATA_VALID_LEN = 1;
const int HE_LSF_DATA_VALIDDATA_VALID_MSB = 37;
const int HE_LSF_DATA_VALIDDATA_VALID_LSB = 37;
const int HE_LSF_DATA_VALIDDATA_VALID_DECB = 0;

// Tube local position along precision coord
const int HE_LSF_MDT_LOCALXMDT_LOCALX_LEN = 14;
const int HE_LSF_MDT_LOCALXMDT_LOCALX_MSB = 36;
const int HE_LSF_MDT_LOCALXMDT_LOCALX_LSB = 23;
const int HE_LSF_MDT_LOCALXMDT_LOCALX_DECB = 5;

// Tube local position along second coord
const int HE_LSF_MDT_LOCALYMDT_LOCALY_LEN = 14;
const int HE_LSF_MDT_LOCALYMDT_LOCALY_MSB = 22;
const int HE_LSF_MDT_LOCALYMDT_LOCALY_LSB = 9;
const int HE_LSF_MDT_LOCALYMDT_LOCALY_DECB = 5;

// Tube drift radius
const int HE_LSF_MDT_RADIUSMDT_RADIUS_LEN = 9;
const int HE_LSF_MDT_RADIUSMDT_RADIUS_MSB = 8;
const int HE_LSF_MDT_RADIUSMDT_RADIUS_LSB = 0;
const int HE_LSF_MDT_RADIUSMDT_RADIUS_DECB = 5;

// -------------------------------------------------------------------
const int HE_CSF_LEN = 39;

// Hit Valid bit
const int HE_CSF_MDT_VALIDMDT_VALID_LEN = 1;
const int HE_CSF_MDT_VALIDMDT_VALID_MSB = 38;
const int HE_CSF_MDT_VALIDMDT_VALID_LSB = 38;
const int HE_CSF_MDT_VALIDMDT_VALID_DECB = 0;

// Data Valid bit
const int HE_CSF_DATA_VALIDDATA_VALID_LEN = 1;
const int HE_CSF_DATA_VALIDDATA_VALID_MSB = 37;
const int HE_CSF_DATA_VALIDDATA_VALID_LSB = 37;
const int HE_CSF_DATA_VALIDDATA_VALID_DECB = 0;

// Tube local position along precision coord
const int HE_CSF_MDT_LOCALXMDT_LOCALX_LEN = 14;
const int HE_CSF_MDT_LOCALXMDT_LOCALX_MSB = 36;
const int HE_CSF_MDT_LOCALXMDT_LOCALX_LSB = 23;
const int HE_CSF_MDT_LOCALXMDT_LOCALX_DECB = 4;

// Tube local position along second coord
const int HE_CSF_MDT_LOCALYMDT_LOCALY_LEN = 14;
const int HE_CSF_MDT_LOCALYMDT_LOCALY_MSB = 22;
const int HE_CSF_MDT_LOCALYMDT_LOCALY_LSB = 9;
const int HE_CSF_MDT_LOCALYMDT_LOCALY_DECB = 4;

// Tube drift radius
const int HE_CSF_MDT_RADIUSMDT_RADIUS_LEN = 9;
const int HE_CSF_MDT_RADIUSMDT_RADIUS_MSB = 8;
const int HE_CSF_MDT_RADIUSMDT_RADIUS_LSB = 0;
const int HE_CSF_MDT_RADIUSMDT_RADIUS_DECB = 5;

// -------------------------------------------------------------------
const int SLCPIPE_PTCALC_LEN = 53;

// -------------------------------------------------------------------
const int SF_LEN = 55;

// SF MDT segment valid bit
const int SF_SEGVALIDSEGVALID_LEN = 1;
const int SF_SEGVALIDSEGVALID_MSB = 28;
const int SF_SEGVALIDSEGVALID_LSB = 28;
const int SF_SEGVALIDSEGVALID_DECB = 0;

// SF MDT segment position along the precision coord
const int SF_SEGPOSSEGPOS_LEN = 16;
const int SF_SEGPOSSEGPOS_MSB = 27;
const int SF_SEGPOSSEGPOS_LSB = 12;
const int SF_SEGPOSSEGPOS_DECB = 3;

// SF MDT segment angle along the precision coord
const int SF_SEGANGLESEGANGLE_LEN = 11;
const int SF_SEGANGLESEGANGLE_MSB = 11;
const int SF_SEGANGLESEGANGLE_LSB = 1;
const int SF_SEGANGLESEGANGLE_DECB = 0;

// SF MDT segment qualiry
const int SF_SEGQUALITYSEGQUALITY_LEN = 1;
const int SF_SEGQUALITYSEGQUALITY_MSB = 0;
const int SF_SEGQUALITYSEGQUALITY_LSB = 0;
const int SF_SEGQUALITYSEGQUALITY_DECB = 0;

// -------------------------------------------------------------------
const int PTCALC_LEN = 52;

// eta of the innermost MDT station segment position
const int PTCALC_MTC_ETAMTC_ETA_LEN = 14;
const int PTCALC_MTC_ETAMTC_ETA_MSB = 31;
const int PTCALC_MTC_ETAMTC_ETA_LSB = 18;
const int PTCALC_MTC_ETAMTC_ETA_DECB = 12;

// pT calculated by the pT Calc
const int PTCALC_MTC_PTMTC_PT_LEN = 8;
const int PTCALC_MTC_PTMTC_PT_MSB = 17;
const int PTCALC_MTC_PTMTC_PT_LSB = 10;
const int PTCALC_MTC_PTMTC_PT_DECB = 2;

// pT threshold satisfied by the MDT TC
const int PTCALC_MTC_PTTHRESHMTC_PTTHRESH_LEN = 4;
const int PTCALC_MTC_PTTHRESHMTC_PTTHRESH_MSB = 9;
const int PTCALC_MTC_PTTHRESHMTC_PTTHRESH_LSB = 6;
const int PTCALC_MTC_PTTHRESHMTC_PTTHRESH_DECB = 0;

// charge determined from the pT calc
const int PTCALC_MTC_CHARGEMTC_CHARGE_LEN = 1;
const int PTCALC_MTC_CHARGEMTC_CHARGE_MSB = 5;
const int PTCALC_MTC_CHARGEMTC_CHARGE_LSB = 5;
const int PTCALC_MTC_CHARGEMTC_CHARGE_DECB = 0;

// # of segments used for calculating the pT
const int PTCALC_MTC_NSEGMENTSMTC_NSEGMENTS_LEN = 2;
const int PTCALC_MTC_NSEGMENTSMTC_NSEGMENTS_MSB = 4;
const int PTCALC_MTC_NSEGMENTSMTC_NSEGMENTS_LSB = 3;
const int PTCALC_MTC_NSEGMENTSMTC_NSEGMENTS_DECB = 0;

// quality of the MDT TC (TBC how this is defined)
const int PTCALC_MTC_QUALITYMTC_QUALITY_LEN = 3;
const int PTCALC_MTC_QUALITYMTC_QUALITY_MSB = 2;
const int PTCALC_MTC_QUALITYMTC_QUALITY_LSB = 0;
const int PTCALC_MTC_QUALITYMTC_QUALITY_DECB = 0;

// -------------------------------------------------------------------
const int SLCPIPE_MTC_ENDCAP_LEN = 54;

// 
const int SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_LEN = 20;
const int SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_MSB = 53;
const int SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_LSB = 34;
const int SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_DECB = 0;

// -------------------------------------------------------------------
const int SLCPIPE_MTC_BARREL_LEN = 57;

// 
const int SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_LEN = 20;
const int SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_MSB = 53;
const int SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_LSB = 34;
const int SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_DECB = 0;

// -------------------------------------------------------------------
const int MTC_LEN = 67;

// MDT processing flags
const int MTC_MTC_PROCFLAGSMTC_PROCFLAGS_LEN = 4;
const int MTC_MTC_PROCFLAGSMTC_PROCFLAGS_MSB = 8;
const int MTC_MTC_PROCFLAGSMTC_PROCFLAGS_LSB = 5;
const int MTC_MTC_PROCFLAGSMTC_PROCFLAGS_DECB = 0;

// -------------------------------------------------------------------

#endif // LOMDT_BUSES_CONSTANTS_H
