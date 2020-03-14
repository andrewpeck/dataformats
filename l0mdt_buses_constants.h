// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

#ifndef LOMDT_BUSES_CONSTANTS_H
#define LOMDT_BUSES_CONSTANTS_H

const char df_hash[] = "bece9746";

// -------------------------------------------------------------------
const int SLC_MUID_LEN = 20;

// SLc Identification (up to 3)
const int SLC_MUID_SLCID_LEN = 2;
const int SLC_MUID_SLCID_MSB = 19;
const int SLC_MUID_SLCID_LSB = 18;

// SL board ID (based on the fiber ID)
const int SLC_MUID_SLID_LEN = 6;
const int SLC_MUID_SLID_MSB = 17;
const int SLC_MUID_SLID_LSB = 12;

// BCID from SLC
const int SLC_MUID_BCID_LEN = 12;
const int SLC_MUID_BCID_MSB = 11;
const int SLC_MUID_BCID_LSB = 0;
const int SLC_MUID_BCID_SCALE = 25;
const float SLC_MUID_BCID_SCALE_INV = 0.04;

// -------------------------------------------------------------------
const int SLC_COMMON_LEN = 32;

// SLc Identification (up to 3)
const int SLC_COMMON_SLCID_LEN = 2;
const int SLC_COMMON_SLCID_MSB = 31;
const int SLC_COMMON_SLCID_LSB = 30;
const int SLC_COMMON_SLCID_DECB = 0;

// TC sent to MDT TP
const int SLC_COMMON_TCSENT_LEN = 1;
const int SLC_COMMON_TCSENT_MSB = 29;
const int SLC_COMMON_TCSENT_LSB = 29;
const int SLC_COMMON_TCSENT_DECB = 0;

// SLc Eta Position
const int SLC_COMMON_POSETA_LEN = 15;
const int SLC_COMMON_POSETA_MSB = 28;
const int SLC_COMMON_POSETA_LSB = 14;
const int SLC_COMMON_POSETA_DECB = 12;

// SLc Phi Position
const int SLC_COMMON_POSPHI_LEN = 9;
const int SLC_COMMON_POSPHI_MSB = 13;
const int SLC_COMMON_POSPHI_LSB = 5;
const int SLC_COMMON_POSPHI_SCALE = 24;
const float SLC_COMMON_POSPHI_SCALE_INV = 0.041667;

// SLc highest pT threshold passed
const int SLC_COMMON_PTTHRESH_LEN = 4;
const int SLC_COMMON_PTTHRESH_MSB = 4;
const int SLC_COMMON_PTTHRESH_LSB = 1;
const int SLC_COMMON_PTTHRESH_SCALE = 5;
const float SLC_COMMON_PTTHRESH_SCALE_INV = 0.2;

// SLc charge
const int SLC_COMMON_CHARGE_LEN = 1;
const int SLC_COMMON_CHARGE_MSB = 0;
const int SLC_COMMON_CHARGE_LSB = 0;

// -------------------------------------------------------------------
const int SLC_ENDCAP_LEN = 70;

// (COPY)
const int SLC_ENDCAP_SLC_COMMON_LEN = 32;
const int SLC_ENDCAP_SLC_COMMON_MSB = 69;
const int SLC_ENDCAP_SLC_COMMON_LSB = 38;
const int SLC_ENDCAP_SLC_COMMON_DECB = 0;

// SLc Segment Angle wrt Eta position
const int SLC_ENDCAP_SEG_ANGDTHETA_LEN = 7;
const int SLC_ENDCAP_SEG_ANGDTHETA_MSB = 37;
const int SLC_ENDCAP_SEG_ANGDTHETA_LSB = 31;
const int SLC_ENDCAP_SEG_ANGDTHETA_SCALE = 3;
const float SLC_ENDCAP_SEG_ANGDTHETA_SCALE_INV = 0.333333;

// SLc Segment Angle wrt Phi position
const int SLC_ENDCAP_SEG_ANGDPHI_LEN = 4;
const int SLC_ENDCAP_SEG_ANGDPHI_MSB = 30;
const int SLC_ENDCAP_SEG_ANGDPHI_LSB = 27;
const int SLC_ENDCAP_SEG_ANGDPHI_SCALE = 5;
const float SLC_ENDCAP_SEG_ANGDPHI_SCALE_INV = 0.2;

// NSW segment eta position
const int SLC_ENDCAP_NSWSEG_POSETA_LEN = 14;
const int SLC_ENDCAP_NSWSEG_POSETA_MSB = 26;
const int SLC_ENDCAP_NSWSEG_POSETA_LSB = 13;
const int SLC_ENDCAP_NSWSEG_POSETA_DECB = 13;
const int SLC_ENDCAP_NSWSEG_POSETA_IW = 1;

// NSW segment phi position
const int SLC_ENDCAP_NSWSEG_POSPHI_LEN = 8;
const int SLC_ENDCAP_NSWSEG_POSPHI_MSB = 12;
const int SLC_ENDCAP_NSWSEG_POSPHI_LSB = 5;
const int SLC_ENDCAP_NSWSEG_POSPHI_SCALE = 25;
const float SLC_ENDCAP_NSWSEG_POSPHI_SCALE_INV = 0.04;

// NSW segment angle wrt Eta position
const int SLC_ENDCAP_NSWSEG_ANGDTHETA_LEN = 5;
const int SLC_ENDCAP_NSWSEG_ANGDTHETA_MSB = 4;
const int SLC_ENDCAP_NSWSEG_ANGDTHETA_LSB = 0;

// -------------------------------------------------------------------
const int SLC_BARREL_LEN = 75;

// (COPY)
const int SLC_BARREL_SLC_COMMON_LEN = 32;
const int SLC_BARREL_SLC_COMMON_MSB = 74;
const int SLC_BARREL_SLC_COMMON_LSB = 43;
const int SLC_BARREL_SLC_COMMON_DECB = 0;

// SLc Hit Z Position in RPC0
const int SLC_BARREL_RPC0_POSZ_LEN = 10;
const int SLC_BARREL_RPC0_POSZ_MSB = 42;
const int SLC_BARREL_RPC0_POSZ_LSB = 33;
const int SLC_BARREL_RPC0_POSZ_SCALE = 13;
const float SLC_BARREL_RPC0_POSZ_SCALE_INV = 0.076923;

// SLc Hit Z Position in RPC1
const int SLC_BARREL_RPC1_POSZ_LEN = 10;
const int SLC_BARREL_RPC1_POSZ_MSB = 32;
const int SLC_BARREL_RPC1_POSZ_LSB = 23;
const int SLC_BARREL_RPC1_POSZ_SCALE = 13;
const float SLC_BARREL_RPC1_POSZ_SCALE_INV = 0.076923;

// SLc Hit Z Position in RPC2
const int SLC_BARREL_RPC2_POSZ_LEN = 10;
const int SLC_BARREL_RPC2_POSZ_MSB = 22;
const int SLC_BARREL_RPC2_POSZ_LSB = 13;
const int SLC_BARREL_RPC2_POSZ_SCALE = 13;
const float SLC_BARREL_RPC2_POSZ_SCALE_INV = 0.076923;

// SLc Hit Z Position in RPC3
const int SLC_BARREL_RPC3_POSZ_LEN = 10;
const int SLC_BARREL_RPC3_POSZ_MSB = 12;
const int SLC_BARREL_RPC3_POSZ_LSB = 3;
const int SLC_BARREL_RPC3_POSZ_SCALE = 13;
const float SLC_BARREL_RPC3_POSZ_SCALE_INV = 0.076923;

// SLc coincidence type
const int SLC_BARREL_COINTYPE_LEN = 3;
const int SLC_BARREL_COINTYPE_MSB = 2;
const int SLC_BARREL_COINTYPE_LSB = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPE_COMMON_LEN = 35;

// SLc busy flag
const int SLCPROC_PIPE_COMMON_BUSY_LEN = 1;
const int SLCPROC_PIPE_COMMON_BUSY_MSB = 34;
const int SLCPROC_PIPE_COMMON_BUSY_LSB = 34;
const int SLCPROC_PIPE_COMMON_BUSY_DECB = 0;

// SLc board destination
const int SLCPROC_PIPE_COMMON_DESTSL_LEN = 2;
const int SLCPROC_PIPE_COMMON_DESTSL_MSB = 33;
const int SLCPROC_PIPE_COMMON_DESTSL_LSB = 32;
const int SLCPROC_PIPE_COMMON_DESTSL_DECB = 0;

// SLc phimod
const int SLCPROC_PIPE_COMMON_PHIMOD_LEN = 8;
const int SLCPROC_PIPE_COMMON_PHIMOD_MSB = 31;
const int SLCPROC_PIPE_COMMON_PHIMOD_LSB = 24;
const int SLCPROC_PIPE_COMMON_PHIMOD_DECB = 0;

// SLc Inner Vector MDT chamber ID
const int SLCPROC_PIPE_COMMON_INN_VEC_MDTID_LEN = 6;
const int SLCPROC_PIPE_COMMON_INN_VEC_MDTID_MSB = 23;
const int SLCPROC_PIPE_COMMON_INN_VEC_MDTID_LSB = 18;
const int SLCPROC_PIPE_COMMON_INN_VEC_MDTID_DECB = 0;

// SLc Middle Vector MDT chamber ID
const int SLCPROC_PIPE_COMMON_MID_VEC_MDTID_LEN = 6;
const int SLCPROC_PIPE_COMMON_MID_VEC_MDTID_MSB = 17;
const int SLCPROC_PIPE_COMMON_MID_VEC_MDTID_LSB = 12;
const int SLCPROC_PIPE_COMMON_MID_VEC_MDTID_DECB = 0;

// SLc Outer Vector MDT chamber ID
const int SLCPROC_PIPE_COMMON_OUT_VEC_MDTID_LEN = 6;
const int SLCPROC_PIPE_COMMON_OUT_VEC_MDTID_MSB = 11;
const int SLCPROC_PIPE_COMMON_OUT_VEC_MDTID_LSB = 6;
const int SLCPROC_PIPE_COMMON_OUT_VEC_MDTID_DECB = 0;

// SLc Extra Vector MDT chamber ID
const int SLCPROC_PIPE_COMMON_EXT_VEC_MDTID_LEN = 6;
const int SLCPROC_PIPE_COMMON_EXT_VEC_MDTID_MSB = 5;
const int SLCPROC_PIPE_COMMON_EXT_VEC_MDTID_LSB = 0;
const int SLCPROC_PIPE_COMMON_EXT_VEC_MDTID_DECB = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPE_ENDCAP_LEN = 125;

// (COPY)
const int SLCPROC_PIPE_ENDCAP_SLCPROC_PIPE_COMMON_LEN = 35;
const int SLCPROC_PIPE_ENDCAP_SLCPROC_PIPE_COMMON_MSB = 124;
const int SLCPROC_PIPE_ENDCAP_SLCPROC_PIPE_COMMON_LSB = 90;
const int SLCPROC_PIPE_ENDCAP_SLCPROC_PIPE_COMMON_DECB = 0;

// (COPY)
const int SLCPROC_PIPE_ENDCAP_SLC_ENDCAP_LEN = 70;
const int SLCPROC_PIPE_ENDCAP_SLC_ENDCAP_MSB = 89;
const int SLCPROC_PIPE_ENDCAP_SLC_ENDCAP_LSB = 20;
const int SLCPROC_PIPE_ENDCAP_SLC_ENDCAP_DECB = 0;

// (COPY)
const int SLCPROC_PIPE_ENDCAP_SLC_MUID_LEN = 20;
const int SLCPROC_PIPE_ENDCAP_SLC_MUID_MSB = 19;
const int SLCPROC_PIPE_ENDCAP_SLC_MUID_LSB = 0;
const int SLCPROC_PIPE_ENDCAP_SLC_MUID_DECB = 0;

// (COPY)
const int SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_LEN = 35;
const int SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_MSB = 123;
const int SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_LSB = 89;

// (COPY)
const int SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_LEN = 69;
const int SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_MSB = 88;
const int SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_LSB = 20;

// (COPY)
const int SLCPROC_PIPELINE_ENDCAP_SLC_MUID_LEN = 20;
const int SLCPROC_PIPELINE_ENDCAP_SLC_MUID_MSB = 19;
const int SLCPROC_PIPELINE_ENDCAP_SLC_MUID_LSB = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPE_BARREL_LEN = 130;

// (COPY)
const int SLCPROC_PIPE_BARREL_SLCPROC_PIPE_COMMON_LEN = 35;
const int SLCPROC_PIPE_BARREL_SLCPROC_PIPE_COMMON_MSB = 129;
const int SLCPROC_PIPE_BARREL_SLCPROC_PIPE_COMMON_LSB = 95;
const int SLCPROC_PIPE_BARREL_SLCPROC_PIPE_COMMON_DECB = 0;

// (COPY)
const int SLCPROC_PIPE_BARREL_SLC_BARREL_LEN = 75;
const int SLCPROC_PIPE_BARREL_SLC_BARREL_MSB = 94;
const int SLCPROC_PIPE_BARREL_SLC_BARREL_LSB = 20;
const int SLCPROC_PIPE_BARREL_SLC_BARREL_DECB = 0;

// (COPY)
const int SLCPROC_PIPE_BARREL_SLC_MUID_LEN = 20;
const int SLCPROC_PIPE_BARREL_SLC_MUID_MSB = 19;
const int SLCPROC_PIPE_BARREL_SLC_MUID_LSB = 0;
const int SLCPROC_PIPE_BARREL_SLC_MUID_DECB = 0;

// (COPY)
const int SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_LEN = 35;
const int SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_MSB = 128;
const int SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_LSB = 94;

// (COPY)
const int SLCPROC_PIPELINE_BARREL_SLC_BARREL_LEN = 74;
const int SLCPROC_PIPELINE_BARREL_SLC_BARREL_MSB = 93;
const int SLCPROC_PIPELINE_BARREL_SLC_BARREL_LSB = 20;

// (COPY)
const int SLCPROC_PIPELINE_BARREL_SLC_MUID_LEN = 20;
const int SLCPROC_PIPELINE_BARREL_SLC_MUID_MSB = 19;
const int SLCPROC_PIPELINE_BARREL_SLC_MUID_LSB = 0;

// -------------------------------------------------------------------
const int TDC_LEN = 34;

// Channel number within TDC
const int TDC_CHANID_LEN = 5;
const int TDC_CHANID_MSB = 33;
const int TDC_CHANID_LSB = 29;
const int TDC_CHANID_DECB = 0;

// Edge or pair mode
const int TDC_EDGEMODE_LEN = 2;
const int TDC_EDGEMODE_MSB = 28;
const int TDC_EDGEMODE_LSB = 27;
const int TDC_EDGEMODE_DECB = 0;

// TDC BCID
const int TDC_COARSETIME_LEN = 12;
const int TDC_COARSETIME_MSB = 26;
const int TDC_COARSETIME_LSB = 15;
const int TDC_COARSETIME_DECB = 0;

// TDC fine time with BCID
const int TDC_FINETIME_LEN = 6;
const int TDC_FINETIME_MSB = 14;
const int TDC_FINETIME_LSB = 9;
const int TDC_FINETIME_DECB = 1;

// Pulse width
const int TDC_PULSEWIDTH_LEN = 9;
const int TDC_PULSEWIDTH_MSB = 8;
const int TDC_PULSEWIDTH_LSB = 0;
const int TDC_PULSEWIDTH_DECB = 1;

// -------------------------------------------------------------------
const int TDCPOLMUX_LEN = 44;

// (COPY)
const int TDCPOLMUX_TDC_LEN = 34;
const int TDCPOLMUX_TDC_MSB = 43;
const int TDCPOLMUX_TDC_LSB = 10;
const int TDCPOLMUX_TDC_DECB = 0;

// Fiber ID within board
const int TDCPOLMUX_FIBERID_LEN = 5;
const int TDCPOLMUX_FIBERID_MSB = 9;
const int TDCPOLMUX_FIBERID_LSB = 5;

// Elink ID within fiber
const int TDCPOLMUX_ELINKID_LEN = 4;
const int TDCPOLMUX_ELINKID_MSB = 4;
const int TDCPOLMUX_ELINKID_LSB = 1;

// Valid bit
const int TDCPOLMUX_DATAVALID_LEN = 1;
const int TDCPOLMUX_DATAVALID_MSB = 0;
const int TDCPOLMUX_DATAVALID_LSB = 0;

// -------------------------------------------------------------------
const int SLCPROC_HPS_SF_LEN = 49;

// SLC Valid bit
const int SLCPROC_HPS_SF_SLC_VALID_LEN = 1;
const int SLCPROC_HPS_SF_SLC_VALID_MSB = 48;
const int SLCPROC_HPS_SF_SLC_VALID_LSB = 48;
const int SLCPROC_HPS_SF_SLC_VALID_DECB = 0;

// SLc Muon Unique Identifier
const int SLCPROC_HPS_SF_SLC_MUID_LEN = 20;
const int SLCPROC_HPS_SF_SLC_MUID_MSB = 47;
const int SLCPROC_HPS_SF_SLC_MUID_LSB = 28;
const int SLCPROC_HPS_SF_SLC_MUID_DECB = 0;

// inner MDT segment chip destination
const int SLCPROC_HPS_SF_MDTSEG_DEST_LEN = 2;
const int SLCPROC_HPS_SF_MDTSEG_DEST_MSB = 27;
const int SLCPROC_HPS_SF_MDTSEG_DEST_LSB = 26;
const int SLCPROC_HPS_SF_MDTSEG_DEST_DECB = 0;

// SLc Inner Vector MDT chamber ID
const int SLCPROC_HPS_SF_VEC_MDTID_LEN = 6;
const int SLCPROC_HPS_SF_VEC_MDTID_MSB = 25;
const int SLCPROC_HPS_SF_VEC_MDTID_LSB = 20;
const int SLCPROC_HPS_SF_VEC_MDTID_DECB = 0;

// SLc inner vector rho position
const int SLCPROC_HPS_SF_VEC_POS_LEN = 10;
const int SLCPROC_HPS_SF_VEC_POS_MSB = 19;
const int SLCPROC_HPS_SF_VEC_POS_LSB = 10;
const int SLCPROC_HPS_SF_VEC_POS_DECB = 0;

// SLc inner vector theta angle
const int SLCPROC_HPS_SF_VEC_ANG_LEN = 10;
const int SLCPROC_HPS_SF_VEC_ANG_MSB = 9;
const int SLCPROC_HPS_SF_VEC_ANG_LSB = 0;
const int SLCPROC_HPS_SF_VEC_ANG_DECB = 0;

// -------------------------------------------------------------------
const int TAR_LEN = 71;

// Tube layer within one station
const int TAR_MDT_TUBE_LAYER_LEN = 5;
const int TAR_MDT_TUBE_LAYER_MSB = 70;
const int TAR_MDT_TUBE_LAYER_LSB = 66;
const int TAR_MDT_TUBE_LAYER_DECB = 0;

// Tube number within one station
const int TAR_MDT_TUBE_NUM_LEN = 9;
const int TAR_MDT_TUBE_NUM_MSB = 65;
const int TAR_MDT_TUBE_NUM_LSB = 57;
const int TAR_MDT_TUBE_NUM_DECB = 0;

// Tube radial position
const int TAR_MDT_TUBE_RHO_LEN = 19;
const int TAR_MDT_TUBE_RHO_MSB = 56;
const int TAR_MDT_TUBE_RHO_LSB = 38;
const int TAR_MDT_TUBE_RHO_DECB = 5;

// Tube position along z
const int TAR_MDT_TUBE_Z_LEN = 20;
const int TAR_MDT_TUBE_Z_MSB = 37;
const int TAR_MDT_TUBE_Z_LSB = 18;
const int TAR_MDT_TUBE_Z_DECB = 5;

// Tube (uncalibrated) time
const int TAR_MDT_TUBE_TIME_LEN = 18;
const int TAR_MDT_TUBE_TIME_MSB = 17;
const int TAR_MDT_TUBE_TIME_LSB = 0;
const int TAR_MDT_TUBE_TIME_DECB = 1;
const int TAR_MDT_TUBE_TIME_IW = 17;

// -------------------------------------------------------------------
const int HPS_LSF_LEN = 40;

// Data Valid bit
const int HPS_LSF_DATA_VALID_LEN = 1;
const int HPS_LSF_DATA_VALID_MSB = 39;
const int HPS_LSF_DATA_VALID_LSB = 39;
const int HPS_LSF_DATA_VALID_DECB = 0;

// Tube local position along precision coord
const int HPS_LSF_MDT_LOCALX_LEN = 15;
const int HPS_LSF_MDT_LOCALX_MSB = 38;
const int HPS_LSF_MDT_LOCALX_LSB = 24;
const int HPS_LSF_MDT_LOCALX_DECB = 5;

// Tube local position along second coord
const int HPS_LSF_MDT_LOCALY_LEN = 15;
const int HPS_LSF_MDT_LOCALY_MSB = 23;
const int HPS_LSF_MDT_LOCALY_LSB = 9;
const int HPS_LSF_MDT_LOCALY_DECB = 5;

// Tube drift radius
const int HPS_LSF_MDT_RADIUS_LEN = 9;
const int HPS_LSF_MDT_RADIUS_MSB = 8;
const int HPS_LSF_MDT_RADIUS_LSB = 0;
const int HPS_LSF_MDT_RADIUS_DECB = 5;

// -------------------------------------------------------------------
const int HPS_CSF_LEN = 40;

// Data Valid bit
const int HPS_CSF_DATA_VALID_LEN = 1;
const int HPS_CSF_DATA_VALID_MSB = 39;
const int HPS_CSF_DATA_VALID_LSB = 39;
const int HPS_CSF_DATA_VALID_DECB = 0;

// Tube local position along precision coord
const int HPS_CSF_MDT_LOCALX_LEN = 15;
const int HPS_CSF_MDT_LOCALX_MSB = 38;
const int HPS_CSF_MDT_LOCALX_LSB = 24;
const int HPS_CSF_MDT_LOCALX_DECB = 4;

// Tube local position along second coord
const int HPS_CSF_MDT_LOCALY_LEN = 15;
const int HPS_CSF_MDT_LOCALY_MSB = 23;
const int HPS_CSF_MDT_LOCALY_LSB = 9;
const int HPS_CSF_MDT_LOCALY_DECB = 4;

// Tube drift radius
const int HPS_CSF_MDT_RADIUS_LEN = 9;
const int HPS_CSF_MDT_RADIUS_MSB = 8;
const int HPS_CSF_MDT_RADIUS_LSB = 0;
const int HPS_CSF_MDT_RADIUS_DECB = 4;

// -------------------------------------------------------------------
const int SLCPIPE_PTCALC_LEN = 29;

// (COPY)
const int SLCPIPE_PTCALC_SLC_MUID_LEN = 20;
const int SLCPIPE_PTCALC_SLC_MUID_MSB = 28;
const int SLCPIPE_PTCALC_SLC_MUID_LSB = 9;
const int SLCPIPE_PTCALC_SLC_MUID_DECB = 0;

// (COPY)
const int SLCPIPE_PTCALC_PHIMOD_LEN = 8;
const int SLCPIPE_PTCALC_PHIMOD_MSB = 8;
const int SLCPIPE_PTCALC_PHIMOD_LSB = 1;
const int SLCPIPE_PTCALC_PHIMOD_DECB = 0;

// (COPY)
const int SLCPIPE_PTCALC_CHARGE_LEN = 1;
const int SLCPIPE_PTCALC_CHARGE_MSB = 0;
const int SLCPIPE_PTCALC_CHARGE_LSB = 0;
const int SLCPIPE_PTCALC_CHARGE_DECB = 0;

// -------------------------------------------------------------------
const int SF_LEN = 56;

// (COPY)
const int SF_SLC_MUID_LEN = 20;
const int SF_SLC_MUID_MSB = 55;
const int SF_SLC_MUID_LSB = 36;
const int SF_SLC_MUID_DECB = 0;

// (COPY)
const int SF_VEC_MDTID_LEN = 6;
const int SF_VEC_MDTID_MSB = 35;
const int SF_VEC_MDTID_LSB = 30;
const int SF_VEC_MDTID_DECB = 0;

// SF MDT segment valid bit
const int SF_SEGVALID_LEN = 1;
const int SF_SEGVALID_MSB = 29;
const int SF_SEGVALID_LSB = 29;
const int SF_SEGVALID_DECB = 0;

// SF MDT segment position along the precision coord
const int SF_SEGPOS_LEN = 17;
const int SF_SEGPOS_MSB = 28;
const int SF_SEGPOS_LSB = 12;
const int SF_SEGPOS_DECB = 3;

// SF MDT segment angle along the precision coord
const int SF_SEGANGLE_LEN = 11;
const int SF_SEGANGLE_MSB = 11;
const int SF_SEGANGLE_LSB = 1;

// SF MDT segment qualiry
const int SF_SEGQUALITY_LEN = 1;
const int SF_SEGQUALITY_MSB = 0;
const int SF_SEGQUALITY_LSB = 0;

// -------------------------------------------------------------------
const int PTCALC_LEN = 54;

// (COPY)
const int PTCALC_SLC_MUID_LEN = 20;
const int PTCALC_SLC_MUID_MSB = 53;
const int PTCALC_SLC_MUID_LSB = 34;
const int PTCALC_SLC_MUID_DECB = 0;

// eta of the innermost MDT station segment position
const int PTCALC_ETA_LEN = 15;
const int PTCALC_ETA_MSB = 33;
const int PTCALC_ETA_LSB = 19;
const int PTCALC_ETA_DECB = 12;

// pT calculated by the pT Calc
const int PTCALC_PT_LEN = 9;
const int PTCALC_PT_MSB = 18;
const int PTCALC_PT_LSB = 10;
const int PTCALC_PT_DECB = 2;

// pT threshold satisfied by the MDT TC
const int PTCALC_PTTHRESH_LEN = 4;
const int PTCALC_PTTHRESH_MSB = 9;
const int PTCALC_PTTHRESH_LSB = 6;
const int PTCALC_PTTHRESH_SCALE = 5;
const float PTCALC_PTTHRESH_SCALE_INV = 0.2;

// charge determined from the pT calc
const int PTCALC_CHARGE_LEN = 1;
const int PTCALC_CHARGE_MSB = 5;
const int PTCALC_CHARGE_LSB = 5;

// # of segments used for calculating the pT
const int PTCALC_NSEGMENTS_LEN = 2;
const int PTCALC_NSEGMENTS_MSB = 4;
const int PTCALC_NSEGMENTS_LSB = 3;

// quality of the MDT TC (TBC how this is defined)
const int PTCALC_QUALITY_LEN = 3;
const int PTCALC_QUALITY_MSB = 2;
const int PTCALC_QUALITY_LSB = 0;

// -------------------------------------------------------------------
const int SLCPIPE_MTC_ENDCAP_LEN = 55;

// (COPY)
const int SLCPIPE_MTC_ENDCAP_SLC_MUID_LEN = 20;
const int SLCPIPE_MTC_ENDCAP_SLC_MUID_MSB = 54;
const int SLCPIPE_MTC_ENDCAP_SLC_MUID_LSB = 35;
const int SLCPIPE_MTC_ENDCAP_SLC_MUID_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_ENDCAP_SLC_COMMON_LEN = 32;
const int SLCPIPE_MTC_ENDCAP_SLC_COMMON_MSB = 34;
const int SLCPIPE_MTC_ENDCAP_SLC_COMMON_LSB = 3;
const int SLCPIPE_MTC_ENDCAP_SLC_COMMON_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_ENDCAP_BUSY_LEN = 1;
const int SLCPIPE_MTC_ENDCAP_BUSY_MSB = 2;
const int SLCPIPE_MTC_ENDCAP_BUSY_LSB = 2;
const int SLCPIPE_MTC_ENDCAP_BUSY_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_ENDCAP_DESTSL_LEN = 2;
const int SLCPIPE_MTC_ENDCAP_DESTSL_MSB = 1;
const int SLCPIPE_MTC_ENDCAP_DESTSL_LSB = 0;
const int SLCPIPE_MTC_ENDCAP_DESTSL_DECB = 0;

// -------------------------------------------------------------------
const int SLCPIPE_MTC_BARREL_LEN = 58;

// (COPY)
const int SLCPIPE_MTC_BARREL_COINTYPE_LEN = 3;
const int SLCPIPE_MTC_BARREL_COINTYPE_MSB = 57;
const int SLCPIPE_MTC_BARREL_COINTYPE_LSB = 55;
const int SLCPIPE_MTC_BARREL_COINTYPE_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_BARREL_SLC_MUID_LEN = 20;
const int SLCPIPE_MTC_BARREL_SLC_MUID_MSB = 54;
const int SLCPIPE_MTC_BARREL_SLC_MUID_LSB = 35;
const int SLCPIPE_MTC_BARREL_SLC_MUID_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_BARREL_SLC_COMMON_LEN = 32;
const int SLCPIPE_MTC_BARREL_SLC_COMMON_MSB = 34;
const int SLCPIPE_MTC_BARREL_SLC_COMMON_LSB = 3;
const int SLCPIPE_MTC_BARREL_SLC_COMMON_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_BARREL_BUSY_LEN = 1;
const int SLCPIPE_MTC_BARREL_BUSY_MSB = 2;
const int SLCPIPE_MTC_BARREL_BUSY_LSB = 2;
const int SLCPIPE_MTC_BARREL_BUSY_DECB = 0;

// (COPY)
const int SLCPIPE_MTC_BARREL_DESTSL_LEN = 2;
const int SLCPIPE_MTC_BARREL_DESTSL_MSB = 1;
const int SLCPIPE_MTC_BARREL_DESTSL_LSB = 0;
const int SLCPIPE_MTC_BARREL_DESTSL_DECB = 0;

// -------------------------------------------------------------------
const int MTC_LEN = 70;

// (COPY)
const int MTC_SLC_COMMON_LEN = 32;
const int MTC_SLC_COMMON_MSB = 69;
const int MTC_SLC_COMMON_LSB = 38;
const int MTC_SLC_COMMON_DECB = 0;

// (COPY)
const int MTC_ETA_LEN = 15;
const int MTC_ETA_MSB = 37;
const int MTC_ETA_LSB = 23;
const int MTC_ETA_DECB = 12;

// (COPY)
const int MTC_PT_LEN = 9;
const int MTC_PT_MSB = 22;
const int MTC_PT_LSB = 14;
const int MTC_PT_DECB = 2;

// (COPY)
const int MTC_PTTHRESH_LEN = 4;
const int MTC_PTTHRESH_MSB = 13;
const int MTC_PTTHRESH_LSB = 10;
const int MTC_PTTHRESH_DECB = 0;

// (COPY)
const int MTC_CHARGE_LEN = 1;
const int MTC_CHARGE_MSB = 9;
const int MTC_CHARGE_LSB = 9;
const int MTC_CHARGE_DECB = 0;

// MDT processing flags
const int MTC_PROCFLAGS_LEN = 4;
const int MTC_PROCFLAGS_MSB = 8;
const int MTC_PROCFLAGS_LSB = 5;

// (COPY)
const int MTC_NSEGMENTS_LEN = 2;
const int MTC_NSEGMENTS_MSB = 4;
const int MTC_NSEGMENTS_LSB = 3;

// (COPY)
const int MTC_QUALITY_LEN = 3;
const int MTC_QUALITY_MSB = 2;
const int MTC_QUALITY_LSB = 0;

// (COPY)
const int MTC_NSEGMENTS_LEN = 2;
const int MTC_NSEGMENTS_MSB = 4;
const int MTC_NSEGMENTS_LSB = 3;
const int MTC_NSEGMENTS_DECB = 0;

// (COPY)
const int MTC_QUALITY_LEN = 3;
const int MTC_QUALITY_MSB = 2;
const int MTC_QUALITY_LSB = 0;
const int MTC_QUALITY_DECB = 0;

// -------------------------------------------------------------------

#endif // LOMDT_BUSES_CONSTANTS_H
