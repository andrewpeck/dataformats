-- -------------------------------------------------------------------------------------------------
-- Auto-generated from:
-- https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
-- -------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package mdttp_constants_pkg is

  constant DF_HASH : std_logic_vector(31 downto 0) := x"1db9cdce";

  ----------------------------------------------------------------------
  constant SLC_MUID_LEN : natural := 20;

  -- SLc Identification (up to 3)
  constant SLC_MUID_SLCID_LEN : natural := 2;
  constant SLC_MUID_SLCID_MSB : natural := 19;
  constant SLC_MUID_SLCID_LSB : natural := 18;
  constant SLC_MUID_SLCID_DECB : natural := 0;
  constant SLC_MUID_SLCID_MULT : natural := 1;

  -- SL board ID (based on the fiber ID)
  constant SLC_MUID_SLID_LEN : natural := 6;
  constant SLC_MUID_SLID_MSB : natural := 17;
  constant SLC_MUID_SLID_LSB : natural := 12;
  constant SLC_MUID_SLID_DECB : natural := 0;
  constant SLC_MUID_SLID_MULT : natural := 1;

  -- BCID from SLC
  constant SLC_MUID_BCID_LEN : natural := 12;
  constant SLC_MUID_BCID_MSB : natural := 11;
  constant SLC_MUID_BCID_LSB : natural := 0;
  constant SLC_MUID_BCID_DECB : natural := 0;
  constant SLC_MUID_BCID_MULT : natural := 0;

  ----------------------------------------------------------------------
  constant SLC_COMMON_LEN : natural := 31;

  -- SLc Identification (up to 3)
  constant SLC_COMMON_SLCID_LEN : natural := 2;
  constant SLC_COMMON_SLCID_MSB : natural := 30;
  constant SLC_COMMON_SLCID_LSB : natural := 29;
  constant SLC_COMMON_SLCID_DECB : natural := 0;
  constant SLC_COMMON_SLCID_MULT : natural := 1;

  -- TC sent to MDT TP
  constant SLC_COMMON_TCSENT_LEN : natural := 1;
  constant SLC_COMMON_TCSENT_MSB : natural := 28;
  constant SLC_COMMON_TCSENT_LSB : natural := 28;
  constant SLC_COMMON_TCSENT_DECB : natural := 0;
  constant SLC_COMMON_TCSENT_MULT : natural := 2;

  -- SLc Eta Position
  constant SLC_COMMON_POSETA_LEN : natural := 14;
  constant SLC_COMMON_POSETA_MSB : natural := 27;
  constant SLC_COMMON_POSETA_LSB : natural := 14;
  constant SLC_COMMON_POSETA_DECB : natural := 12;
  constant SLC_COMMON_POSETA_MULT : natural := 3034;

  -- SLc Phi Position
  constant SLC_COMMON_POSPHI_LEN : natural := 9;
  constant SLC_COMMON_POSPHI_MSB : natural := 13;
  constant SLC_COMMON_POSPHI_LSB : natural := 5;
  constant SLC_COMMON_POSPHI_DECB : natural := 0;
  constant SLC_COMMON_POSPHI_MULT : natural := 0;

  -- SLc highest pT threshold passed
  constant SLC_COMMON_PTTHRESH_LEN : natural := 4;
  constant SLC_COMMON_PTTHRESH_MSB : natural := 4;
  constant SLC_COMMON_PTTHRESH_LSB : natural := 1;
  constant SLC_COMMON_PTTHRESH_DECB : natural := 0;
  constant SLC_COMMON_PTTHRESH_MULT : natural := 0;

  -- SLc charge
  constant SLC_COMMON_CHARGE_LEN : natural := 1;
  constant SLC_COMMON_CHARGE_MSB : natural := 0;
  constant SLC_COMMON_CHARGE_LSB : natural := 0;
  constant SLC_COMMON_CHARGE_DECB : natural := 0;
  constant SLC_COMMON_CHARGE_MULT : natural := 2;

  ----------------------------------------------------------------------
  constant SLC_ENDCAP_LEN : natural := 69;

  -- (COPY)
  constant SLC_ENDCAP_SLC_COMMON_LEN : natural := 31;
  constant SLC_ENDCAP_SLC_COMMON_MSB : natural := 68;
  constant SLC_ENDCAP_SLC_COMMON_LSB : natural := 38;
  constant SLC_ENDCAP_SLC_COMMON_DECB : natural := 0;
  constant SLC_ENDCAP_SLC_COMMON_MULT : natural := 0;

  -- SLc Segment Angle wrt Eta position
  constant SLC_ENDCAP_SEG_ANGDTHETA_LEN : natural := 7;
  constant SLC_ENDCAP_SEG_ANGDTHETA_MSB : natural := 37;
  constant SLC_ENDCAP_SEG_ANGDTHETA_LSB : natural := 31;
  constant SLC_ENDCAP_SEG_ANGDTHETA_DECB : natural := 0;
  constant SLC_ENDCAP_SEG_ANGDTHETA_MULT : natural := 0;

  -- SLc Segment Angle wrt Phi position
  constant SLC_ENDCAP_SEG_ANGDPHI_LEN : natural := 4;
  constant SLC_ENDCAP_SEG_ANGDPHI_MSB : natural := 30;
  constant SLC_ENDCAP_SEG_ANGDPHI_LSB : natural := 27;
  constant SLC_ENDCAP_SEG_ANGDPHI_DECB : natural := 0;
  constant SLC_ENDCAP_SEG_ANGDPHI_MULT : natural := 0;

  -- NSW segment eta position
  constant SLC_ENDCAP_NSWSEG_POSETA_LEN : natural := 14;
  constant SLC_ENDCAP_NSWSEG_POSETA_MSB : natural := 26;
  constant SLC_ENDCAP_NSWSEG_POSETA_LSB : natural := 13;
  constant SLC_ENDCAP_NSWSEG_POSETA_DECB : natural := 13;
  constant SLC_ENDCAP_NSWSEG_POSETA_MULT : natural := 9638;

  -- NSW segment phi position
  constant SLC_ENDCAP_NSWSEG_POSPHI_LEN : natural := 8;
  constant SLC_ENDCAP_NSWSEG_POSPHI_MSB : natural := 12;
  constant SLC_ENDCAP_NSWSEG_POSPHI_LSB : natural := 5;
  constant SLC_ENDCAP_NSWSEG_POSPHI_DECB : natural := 0;
  constant SLC_ENDCAP_NSWSEG_POSPHI_MULT : natural := 0;

  -- NSW segment angle wrt Eta position
  constant SLC_ENDCAP_NSWSEG_ANGDTHETA_LEN : natural := 5;
  constant SLC_ENDCAP_NSWSEG_ANGDTHETA_MSB : natural := 4;
  constant SLC_ENDCAP_NSWSEG_ANGDTHETA_LSB : natural := 0;
  constant SLC_ENDCAP_NSWSEG_ANGDTHETA_DECB : natural := 0;
  constant SLC_ENDCAP_NSWSEG_ANGDTHETA_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant SLC_BARREL_LEN : natural := 74;

  -- (COPY)
  constant SLC_BARREL_SLC_COMMON_LEN : natural := 31;
  constant SLC_BARREL_SLC_COMMON_MSB : natural := 73;
  constant SLC_BARREL_SLC_COMMON_LSB : natural := 43;
  constant SLC_BARREL_SLC_COMMON_DECB : natural := 0;
  constant SLC_BARREL_SLC_COMMON_MULT : natural := 0;

  -- SLc Hit Z Position in RPC0
  constant SLC_BARREL_RPC0_POSZ_LEN : natural := 10;
  constant SLC_BARREL_RPC0_POSZ_MSB : natural := 42;
  constant SLC_BARREL_RPC0_POSZ_LSB : natural := 33;
  constant SLC_BARREL_RPC0_POSZ_DECB : natural := 0;
  constant SLC_BARREL_RPC0_POSZ_MULT : natural := 0;

  -- SLc Hit Z Position in RPC1
  constant SLC_BARREL_RPC1_POSZ_LEN : natural := 10;
  constant SLC_BARREL_RPC1_POSZ_MSB : natural := 32;
  constant SLC_BARREL_RPC1_POSZ_LSB : natural := 23;
  constant SLC_BARREL_RPC1_POSZ_DECB : natural := 0;
  constant SLC_BARREL_RPC1_POSZ_MULT : natural := 0;

  -- SLc Hit Z Position in RPC2
  constant SLC_BARREL_RPC2_POSZ_LEN : natural := 10;
  constant SLC_BARREL_RPC2_POSZ_MSB : natural := 22;
  constant SLC_BARREL_RPC2_POSZ_LSB : natural := 13;
  constant SLC_BARREL_RPC2_POSZ_DECB : natural := 0;
  constant SLC_BARREL_RPC2_POSZ_MULT : natural := 0;

  -- SLc Hit Z Position in RPC3
  constant SLC_BARREL_RPC3_POSZ_LEN : natural := 10;
  constant SLC_BARREL_RPC3_POSZ_MSB : natural := 12;
  constant SLC_BARREL_RPC3_POSZ_LSB : natural := 3;
  constant SLC_BARREL_RPC3_POSZ_DECB : natural := 0;
  constant SLC_BARREL_RPC3_POSZ_MULT : natural := 0;

  -- SLc coincidence type
  constant SLC_BARREL_COINTYPE_LEN : natural := 3;
  constant SLC_BARREL_COINTYPE_MSB : natural := 2;
  constant SLC_BARREL_COINTYPE_LSB : natural := 0;
  constant SLC_BARREL_COINTYPE_DECB : natural := 0;
  constant SLC_BARREL_COINTYPE_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant SLCPROC_PIPELINE_COMMON_LEN : natural := 35;

  -- SLc busy flag
  constant SLCPROC_PIPELINE_COMMON_BUSY_LEN : natural := 1;
  constant SLCPROC_PIPELINE_COMMON_BUSY_MSB : natural := 34;
  constant SLCPROC_PIPELINE_COMMON_BUSY_LSB : natural := 34;
  constant SLCPROC_PIPELINE_COMMON_BUSY_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_BUSY_MULT : natural := 0;

  -- SLc board destination
  constant SLCPROC_PIPELINE_COMMON_DESTSL_LEN : natural := 2;
  constant SLCPROC_PIPELINE_COMMON_DESTSL_MSB : natural := 33;
  constant SLCPROC_PIPELINE_COMMON_DESTSL_LSB : natural := 32;
  constant SLCPROC_PIPELINE_COMMON_DESTSL_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_DESTSL_MULT : natural := 2;

  -- SLc phimod
  constant SLCPROC_PIPELINE_COMMON_PHIMOD_LEN : natural := 8;
  constant SLCPROC_PIPELINE_COMMON_PHIMOD_MSB : natural := 31;
  constant SLCPROC_PIPELINE_COMMON_PHIMOD_LSB : natural := 24;
  constant SLCPROC_PIPELINE_COMMON_PHIMOD_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_PHIMOD_MULT : natural := 0;

  -- SLc Inner Vector MDT chamber ID
  constant SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_LEN : natural := 6;
  constant SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_MSB : natural := 23;
  constant SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_LSB : natural := 18;
  constant SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_MULT : natural := 1;

  -- SLc Middle Vector MDT chamber ID
  constant SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_LEN : natural := 6;
  constant SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_MSB : natural := 17;
  constant SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_LSB : natural := 12;
  constant SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_MULT : natural := 1;

  -- SLc Outer Vector MDT chamber ID
  constant SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_LEN : natural := 6;
  constant SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_MSB : natural := 11;
  constant SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_LSB : natural := 6;
  constant SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_MULT : natural := 1;

  -- SLc Extra Vector MDT chamber ID
  constant SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_LEN : natural := 6;
  constant SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_MSB : natural := 5;
  constant SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_LSB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_DECB : natural := 0;
  constant SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant SLCPROC_PIPELINE_ENDCAP_LEN : natural := 124;

  -- (COPY)
  constant SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_LEN : natural := 35;
  constant SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_MSB : natural := 123;
  constant SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_LSB : natural := 89;
  constant SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_DECB : natural := 0;
  constant SLCPROC_PIPELINE_ENDCAP_SLCPROC_PIPELINE_COMMON_MULT : natural := 0;

  -- (COPY)
  constant SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_LEN : natural := 69;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_MSB : natural := 88;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_LSB : natural := 20;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_DECB : natural := 0;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_ENDCAP_MULT : natural := 0;

  -- (COPY)
  constant SLCPROC_PIPELINE_ENDCAP_SLC_MUID_LEN : natural := 20;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_MUID_MSB : natural := 19;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_MUID_LSB : natural := 0;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_MUID_DECB : natural := 0;
  constant SLCPROC_PIPELINE_ENDCAP_SLC_MUID_MULT : natural := 0;

  ----------------------------------------------------------------------
  constant SLCPROC_PIPELINE_BARREL_LEN : natural := 129;

  -- (COPY)
  constant SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_LEN : natural := 35;
  constant SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_MSB : natural := 128;
  constant SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_LSB : natural := 94;
  constant SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_DECB : natural := 0;
  constant SLCPROC_PIPELINE_BARREL_SLCPROC_PIPELINE_COMMON_MULT : natural := 0;

  -- (COPY)
  constant SLCPROC_PIPELINE_BARREL_SLC_BARREL_LEN : natural := 74;
  constant SLCPROC_PIPELINE_BARREL_SLC_BARREL_MSB : natural := 93;
  constant SLCPROC_PIPELINE_BARREL_SLC_BARREL_LSB : natural := 20;
  constant SLCPROC_PIPELINE_BARREL_SLC_BARREL_DECB : natural := 0;
  constant SLCPROC_PIPELINE_BARREL_SLC_BARREL_MULT : natural := 0;

  -- (COPY)
  constant SLCPROC_PIPELINE_BARREL_SLC_MUID_LEN : natural := 20;
  constant SLCPROC_PIPELINE_BARREL_SLC_MUID_MSB : natural := 19;
  constant SLCPROC_PIPELINE_BARREL_SLC_MUID_LSB : natural := 0;
  constant SLCPROC_PIPELINE_BARREL_SLC_MUID_DECB : natural := 0;
  constant SLCPROC_PIPELINE_BARREL_SLC_MUID_MULT : natural := 0;

  ----------------------------------------------------------------------
  constant TDC_LEN : natural := 32;

  -- Channel number within TDC
  constant TDC_CHANID_LEN : natural := 5;
  constant TDC_CHANID_MSB : natural := 31;
  constant TDC_CHANID_LSB : natural := 27;
  constant TDC_CHANID_DECB : natural := 0;
  constant TDC_CHANID_MULT : natural := 1;

  -- Edge or pair mode
  constant TDC_EDGEMODE_LEN : natural := 2;
  constant TDC_EDGEMODE_MSB : natural := 26;
  constant TDC_EDGEMODE_LSB : natural := 25;
  constant TDC_EDGEMODE_DECB : natural := 0;
  constant TDC_EDGEMODE_MULT : natural := 1;

  -- TDC BCID
  constant TDC_COARSETIME_LEN : natural := 12;
  constant TDC_COARSETIME_MSB : natural := 24;
  constant TDC_COARSETIME_LSB : natural := 13;
  constant TDC_COARSETIME_DECB : natural := 0;
  constant TDC_COARSETIME_MULT : natural := 0;

  -- TDC fine time with BCID
  constant TDC_FINETIME_LEN : natural := 5;
  constant TDC_FINETIME_MSB : natural := 12;
  constant TDC_FINETIME_LSB : natural := 8;
  constant TDC_FINETIME_DECB : natural := 1;
  constant TDC_FINETIME_MULT : natural := 1;

  -- Pulse width
  constant TDC_PULSEWIDTH_LEN : natural := 8;
  constant TDC_PULSEWIDTH_MSB : natural := 7;
  constant TDC_PULSEWIDTH_LSB : natural := 0;
  constant TDC_PULSEWIDTH_DECB : natural := 1;
  constant TDC_PULSEWIDTH_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant TDCFORMAT_LEN : natural := 44;

  -- (COPY)
  constant TDCFORMAT_TDC_LEN : natural := 32;
  constant TDCFORMAT_TDC_MSB : natural := 43;
  constant TDCFORMAT_TDC_LSB : natural := 12;
  constant TDCFORMAT_TDC_DECB : natural := 0;
  constant TDCFORMAT_TDC_MULT : natural := 0;

  -- Fiber ID within board
  constant TDCFORMAT_FIBERID_LEN : natural := 5;
  constant TDCFORMAT_FIBERID_MSB : natural := 11;
  constant TDCFORMAT_FIBERID_LSB : natural := 7;
  constant TDCFORMAT_FIBERID_DECB : natural := 0;
  constant TDCFORMAT_FIBERID_MULT : natural := 1;

  -- Elink ID within fiber
  constant TDCFORMAT_ELINKID_LEN : natural := 4;
  constant TDCFORMAT_ELINKID_MSB : natural := 6;
  constant TDCFORMAT_ELINKID_LSB : natural := 3;
  constant TDCFORMAT_ELINKID_DECB : natural := 0;
  constant TDCFORMAT_ELINKID_MULT : natural := 1;

  -- Valid bit
  constant TDCFORMAT_DATAVALID_LEN : natural := 1;
  constant TDCFORMAT_DATAVALID_MSB : natural := 2;
  constant TDCFORMAT_DATAVALID_LSB : natural := 2;
  constant TDCFORMAT_DATAVALID_DECB : natural := 0;
  constant TDCFORMAT_DATAVALID_MULT : natural := 2;

  -- MDT Station Type (Inner, Middle, Outer, Extra)
  constant TDCFORMAT_STATIONID_LEN : natural := 2;
  constant TDCFORMAT_STATIONID_MSB : natural := 1;
  constant TDCFORMAT_STATIONID_LSB : natural := 0;
  constant TDCFORMAT_STATIONID_DECB : natural := 0;
  constant TDCFORMAT_STATIONID_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant SLCPROC_HESF_LEN : natural := 48;

  -- SLc Muon Unique Identifier
  constant SLCPROC_HESF_SLC_MUID_LEN : natural := 20;
  constant SLCPROC_HESF_SLC_MUID_MSB : natural := 47;
  constant SLCPROC_HESF_SLC_MUID_LSB : natural := 28;
  constant SLCPROC_HESF_SLC_MUID_DECB : natural := 0;
  constant SLCPROC_HESF_SLC_MUID_MULT : natural := 0;

  -- inner MDT segment chip destination
  constant SLCPROC_HESF_MDTSEG_DEST_LEN : natural := 2;
  constant SLCPROC_HESF_MDTSEG_DEST_MSB : natural := 27;
  constant SLCPROC_HESF_MDTSEG_DEST_LSB : natural := 26;
  constant SLCPROC_HESF_MDTSEG_DEST_DECB : natural := 0;
  constant SLCPROC_HESF_MDTSEG_DEST_MULT : natural := 1;

  -- SLc Inner Vector MDT chamber ID
  constant SLCPROC_HESF_VEC_MDTID_LEN : natural := 6;
  constant SLCPROC_HESF_VEC_MDTID_MSB : natural := 25;
  constant SLCPROC_HESF_VEC_MDTID_LSB : natural := 20;
  constant SLCPROC_HESF_VEC_MDTID_DECB : natural := 0;
  constant SLCPROC_HESF_VEC_MDTID_MULT : natural := 1;

  -- SLc inner vector rho position
  constant SLCPROC_HESF_VEC_POS_LEN : natural := 10;
  constant SLCPROC_HESF_VEC_POS_MSB : natural := 19;
  constant SLCPROC_HESF_VEC_POS_LSB : natural := 10;
  constant SLCPROC_HESF_VEC_POS_DECB : natural := 0;
  constant SLCPROC_HESF_VEC_POS_MULT : natural := 0;

  -- SLc inner vector theta angle
  constant SLCPROC_HESF_VEC_ANG_LEN : natural := 10;
  constant SLCPROC_HESF_VEC_ANG_MSB : natural := 9;
  constant SLCPROC_HESF_VEC_ANG_LSB : natural := 0;
  constant SLCPROC_HESF_VEC_ANG_DECB : natural := 0;
  constant SLCPROC_HESF_VEC_ANG_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant TUBEREMAP_LEN : natural := 69;

  -- Tube layer within one station
  constant TUBEREMAP_MDT_TUBE_LAYER_LEN : natural := 5;
  constant TUBEREMAP_MDT_TUBE_LAYER_MSB : natural := 68;
  constant TUBEREMAP_MDT_TUBE_LAYER_LSB : natural := 64;
  constant TUBEREMAP_MDT_TUBE_LAYER_DECB : natural := 0;
  constant TUBEREMAP_MDT_TUBE_LAYER_MULT : natural := 1;

  -- Tube number within one station
  constant TUBEREMAP_MDT_TUBE_NUM_LEN : natural := 9;
  constant TUBEREMAP_MDT_TUBE_NUM_MSB : natural := 63;
  constant TUBEREMAP_MDT_TUBE_NUM_LSB : natural := 55;
  constant TUBEREMAP_MDT_TUBE_NUM_DECB : natural := 0;
  constant TUBEREMAP_MDT_TUBE_NUM_MULT : natural := 1;

  -- Tube radial position
  constant TUBEREMAP_MDT_TUBE_RHO_LEN : natural := 18;
  constant TUBEREMAP_MDT_TUBE_RHO_MSB : natural := 54;
  constant TUBEREMAP_MDT_TUBE_RHO_LSB : natural := 37;
  constant TUBEREMAP_MDT_TUBE_RHO_DECB : natural := 5;
  constant TUBEREMAP_MDT_TUBE_RHO_MULT : natural := 22;

  -- Tube position along z
  constant TUBEREMAP_MDT_TUBE_Z_LEN : natural := 19;
  constant TUBEREMAP_MDT_TUBE_Z_MSB : natural := 36;
  constant TUBEREMAP_MDT_TUBE_Z_LSB : natural := 18;
  constant TUBEREMAP_MDT_TUBE_Z_DECB : natural := 5;
  constant TUBEREMAP_MDT_TUBE_Z_MULT : natural := 21;

  -- Tube (uncalibrated) time
  constant TUBEREMAP_MDT_TUBE_TIME_LEN : natural := 18;
  constant TUBEREMAP_MDT_TUBE_TIME_MSB : natural := 17;
  constant TUBEREMAP_MDT_TUBE_TIME_LSB : natural := 0;
  constant TUBEREMAP_MDT_TUBE_TIME_DECB : natural := 1;
  constant TUBEREMAP_MDT_TUBE_TIME_MULT : natural := 3;

  ----------------------------------------------------------------------
  constant HE_LSF_LEN : natural := 39;

  -- Hit Valid bit
  constant HE_LSF_MDT_VALID_LEN : natural := 1;
  constant HE_LSF_MDT_VALID_MSB : natural := 38;
  constant HE_LSF_MDT_VALID_LSB : natural := 38;
  constant HE_LSF_MDT_VALID_DECB : natural := 0;
  constant HE_LSF_MDT_VALID_MULT : natural := 2;

  -- Data Valid bit
  constant HE_LSF_DATA_VALID_LEN : natural := 1;
  constant HE_LSF_DATA_VALID_MSB : natural := 37;
  constant HE_LSF_DATA_VALID_LSB : natural := 37;
  constant HE_LSF_DATA_VALID_DECB : natural := 0;
  constant HE_LSF_DATA_VALID_MULT : natural := 2;

  -- Tube local position along precision coord
  constant HE_LSF_MDT_LOCALX_LEN : natural := 14;
  constant HE_LSF_MDT_LOCALX_MSB : natural := 36;
  constant HE_LSF_MDT_LOCALX_LSB : natural := 23;
  constant HE_LSF_MDT_LOCALX_DECB : natural := 5;
  constant HE_LSF_MDT_LOCALX_MULT : natural := 21;

  -- Tube local position along second coord
  constant HE_LSF_MDT_LOCALY_LEN : natural := 14;
  constant HE_LSF_MDT_LOCALY_MSB : natural := 22;
  constant HE_LSF_MDT_LOCALY_LSB : natural := 9;
  constant HE_LSF_MDT_LOCALY_DECB : natural := 5;
  constant HE_LSF_MDT_LOCALY_MULT : natural := 23;

  -- Tube drift radius
  constant HE_LSF_MDT_RADIUS_LEN : natural := 9;
  constant HE_LSF_MDT_RADIUS_MSB : natural := 8;
  constant HE_LSF_MDT_RADIUS_LSB : natural := 0;
  constant HE_LSF_MDT_RADIUS_DECB : natural := 5;
  constant HE_LSF_MDT_RADIUS_MULT : natural := 34;

  ----------------------------------------------------------------------
  constant HE_CSF_LEN : natural := 39;

  -- Hit Valid bit
  constant HE_CSF_MDT_VALID_LEN : natural := 1;
  constant HE_CSF_MDT_VALID_MSB : natural := 38;
  constant HE_CSF_MDT_VALID_LSB : natural := 38;
  constant HE_CSF_MDT_VALID_DECB : natural := 0;
  constant HE_CSF_MDT_VALID_MULT : natural := 2;

  -- Data Valid bit
  constant HE_CSF_DATA_VALID_LEN : natural := 1;
  constant HE_CSF_DATA_VALID_MSB : natural := 37;
  constant HE_CSF_DATA_VALID_LSB : natural := 37;
  constant HE_CSF_DATA_VALID_DECB : natural := 0;
  constant HE_CSF_DATA_VALID_MULT : natural := 2;

  -- Tube local position along precision coord
  constant HE_CSF_MDT_LOCALX_LEN : natural := 14;
  constant HE_CSF_MDT_LOCALX_MSB : natural := 36;
  constant HE_CSF_MDT_LOCALX_LSB : natural := 23;
  constant HE_CSF_MDT_LOCALX_DECB : natural := 4;
  constant HE_CSF_MDT_LOCALX_MULT : natural := 16;

  -- Tube local position along second coord
  constant HE_CSF_MDT_LOCALY_LEN : natural := 14;
  constant HE_CSF_MDT_LOCALY_MSB : natural := 22;
  constant HE_CSF_MDT_LOCALY_LSB : natural := 9;
  constant HE_CSF_MDT_LOCALY_DECB : natural := 4;
  constant HE_CSF_MDT_LOCALY_MULT : natural := 16;

  -- Tube drift radius
  constant HE_CSF_MDT_RADIUS_LEN : natural := 9;
  constant HE_CSF_MDT_RADIUS_MSB : natural := 8;
  constant HE_CSF_MDT_RADIUS_LSB : natural := 0;
  constant HE_CSF_MDT_RADIUS_DECB : natural := 5;
  constant HE_CSF_MDT_RADIUS_MULT : natural := 32;

  ----------------------------------------------------------------------
  constant SLCPIPE_PTCALC_LEN : natural := 53;

  -- (COPY)
  constant SLCPIPE_PTCALC_SLC_MUID_LEN : natural := 20;
  constant SLCPIPE_PTCALC_SLC_MUID_MSB : natural := 52;
  constant SLCPIPE_PTCALC_SLC_MUID_LSB : natural := 33;
  constant SLCPIPE_PTCALC_SLC_MUID_DECB : natural := 0;
  constant SLCPIPE_PTCALC_SLC_MUID_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_PTCALC_INN_VEC_MDTID_LEN : natural := 6;
  constant SLCPIPE_PTCALC_INN_VEC_MDTID_MSB : natural := 32;
  constant SLCPIPE_PTCALC_INN_VEC_MDTID_LSB : natural := 27;
  constant SLCPIPE_PTCALC_INN_VEC_MDTID_DECB : natural := 0;
  constant SLCPIPE_PTCALC_INN_VEC_MDTID_MULT : natural := 1;

  -- (COPY)
  constant SLCPIPE_PTCALC_MID_VEC_MDTID_LEN : natural := 6;
  constant SLCPIPE_PTCALC_MID_VEC_MDTID_MSB : natural := 26;
  constant SLCPIPE_PTCALC_MID_VEC_MDTID_LSB : natural := 21;
  constant SLCPIPE_PTCALC_MID_VEC_MDTID_DECB : natural := 0;
  constant SLCPIPE_PTCALC_MID_VEC_MDTID_MULT : natural := 1;

  -- (COPY)
  constant SLCPIPE_PTCALC_OUT_VEC_MDTID_LEN : natural := 6;
  constant SLCPIPE_PTCALC_OUT_VEC_MDTID_MSB : natural := 20;
  constant SLCPIPE_PTCALC_OUT_VEC_MDTID_LSB : natural := 15;
  constant SLCPIPE_PTCALC_OUT_VEC_MDTID_DECB : natural := 0;
  constant SLCPIPE_PTCALC_OUT_VEC_MDTID_MULT : natural := 1;

  -- (COPY)
  constant SLCPIPE_PTCALC_EXT_VEC_MDTID_LEN : natural := 6;
  constant SLCPIPE_PTCALC_EXT_VEC_MDTID_MSB : natural := 14;
  constant SLCPIPE_PTCALC_EXT_VEC_MDTID_LSB : natural := 9;
  constant SLCPIPE_PTCALC_EXT_VEC_MDTID_DECB : natural := 0;
  constant SLCPIPE_PTCALC_EXT_VEC_MDTID_MULT : natural := 1;

  -- (COPY)
  constant SLCPIPE_PTCALC_PHIMOD_LEN : natural := 8;
  constant SLCPIPE_PTCALC_PHIMOD_MSB : natural := 8;
  constant SLCPIPE_PTCALC_PHIMOD_LSB : natural := 1;
  constant SLCPIPE_PTCALC_PHIMOD_DECB : natural := 0;
  constant SLCPIPE_PTCALC_PHIMOD_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_PTCALC_CHARGE_LEN : natural := 1;
  constant SLCPIPE_PTCALC_CHARGE_MSB : natural := 0;
  constant SLCPIPE_PTCALC_CHARGE_LSB : natural := 0;
  constant SLCPIPE_PTCALC_CHARGE_DECB : natural := 0;
  constant SLCPIPE_PTCALC_CHARGE_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant SF_LEN : natural := 55;

  -- (COPY)
  constant SF_SLC_MUID_LEN : natural := 20;
  constant SF_SLC_MUID_MSB : natural := 54;
  constant SF_SLC_MUID_LSB : natural := 35;
  constant SF_SLC_MUID_DECB : natural := 0;
  constant SF_SLC_MUID_MULT : natural := 0;

  -- (COPY)
  constant SF_VEC_MDTID_LEN : natural := 6;
  constant SF_VEC_MDTID_MSB : natural := 34;
  constant SF_VEC_MDTID_LSB : natural := 29;
  constant SF_VEC_MDTID_DECB : natural := 0;
  constant SF_VEC_MDTID_MULT : natural := 1;

  -- SF MDT segment valid bit
  constant SF_SEGVALID_LEN : natural := 1;
  constant SF_SEGVALID_MSB : natural := 28;
  constant SF_SEGVALID_LSB : natural := 28;
  constant SF_SEGVALID_DECB : natural := 0;
  constant SF_SEGVALID_MULT : natural := 2;

  -- SF MDT segment position along the precision coord
  constant SF_SEGPOS_LEN : natural := 16;
  constant SF_SEGPOS_MSB : natural := 27;
  constant SF_SEGPOS_LSB : natural := 12;
  constant SF_SEGPOS_DECB : natural := 3;
  constant SF_SEGPOS_MULT : natural := 5;

  -- SF MDT segment angle along the precision coord
  constant SF_SEGANGLE_LEN : natural := 11;
  constant SF_SEGANGLE_MSB : natural := 11;
  constant SF_SEGANGLE_LSB : natural := 1;
  constant SF_SEGANGLE_DECB : natural := 0;
  constant SF_SEGANGLE_MULT : natural := 1;

  -- SF MDT segment qualiry
  constant SF_SEGQUALITY_LEN : natural := 1;
  constant SF_SEGQUALITY_MSB : natural := 0;
  constant SF_SEGQUALITY_LSB : natural := 0;
  constant SF_SEGQUALITY_DECB : natural := 0;
  constant SF_SEGQUALITY_MULT : natural := 2;

  ----------------------------------------------------------------------
  constant PTCALC_LEN : natural := 52;

  -- (COPY)
  constant PTCALC_SLC_MUID_LEN : natural := 20;
  constant PTCALC_SLC_MUID_MSB : natural := 51;
  constant PTCALC_SLC_MUID_LSB : natural := 32;
  constant PTCALC_SLC_MUID_DECB : natural := 0;
  constant PTCALC_SLC_MUID_MULT : natural := 0;

  -- eta of the innermost MDT station segment position
  constant PTCALC_ETA_LEN : natural := 14;
  constant PTCALC_ETA_MSB : natural := 31;
  constant PTCALC_ETA_LSB : natural := 18;
  constant PTCALC_ETA_DECB : natural := 12;
  constant PTCALC_ETA_MULT : natural := 3034;

  -- pT calculated by the pT Calc
  constant PTCALC_PT_LEN : natural := 8;
  constant PTCALC_PT_MSB : natural := 17;
  constant PTCALC_PT_LSB : natural := 10;
  constant PTCALC_PT_DECB : natural := 2;
  constant PTCALC_PT_MULT : natural := 3;

  -- pT threshold satisfied by the MDT TC
  constant PTCALC_PTTHRESH_LEN : natural := 4;
  constant PTCALC_PTTHRESH_MSB : natural := 9;
  constant PTCALC_PTTHRESH_LSB : natural := 6;
  constant PTCALC_PTTHRESH_DECB : natural := 0;
  constant PTCALC_PTTHRESH_MULT : natural := 0;

  -- charge determined from the pT calc
  constant PTCALC_CHARGE_LEN : natural := 1;
  constant PTCALC_CHARGE_MSB : natural := 5;
  constant PTCALC_CHARGE_LSB : natural := 5;
  constant PTCALC_CHARGE_DECB : natural := 0;
  constant PTCALC_CHARGE_MULT : natural := 2;

  -- # of segments used for calculating the pT
  constant PTCALC_NSEGMENTS_LEN : natural := 2;
  constant PTCALC_NSEGMENTS_MSB : natural := 4;
  constant PTCALC_NSEGMENTS_LSB : natural := 3;
  constant PTCALC_NSEGMENTS_DECB : natural := 0;
  constant PTCALC_NSEGMENTS_MULT : natural := 1;

  -- quality of the MDT TC (TBC how this is defined)
  constant PTCALC_QUALITY_LEN : natural := 3;
  constant PTCALC_QUALITY_MSB : natural := 2;
  constant PTCALC_QUALITY_LSB : natural := 0;
  constant PTCALC_QUALITY_DECB : natural := 0;
  constant PTCALC_QUALITY_MULT : natural := 1;

  ----------------------------------------------------------------------
  constant SLCPIPE_MTC_ENDCAP_LEN : natural := 54;

  -- 
  constant SLCPIPE_MTC_ENDCAP_SLC_MUID_LEN : natural := 20;
  constant SLCPIPE_MTC_ENDCAP_SLC_MUID_MSB : natural := 53;
  constant SLCPIPE_MTC_ENDCAP_SLC_MUID_LSB : natural := 34;
  constant SLCPIPE_MTC_ENDCAP_SLC_MUID_DECB : natural := 0;
  constant SLCPIPE_MTC_ENDCAP_SLC_MUID_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_MTC_ENDCAP_SLC_COMMON_LEN : natural := 31;
  constant SLCPIPE_MTC_ENDCAP_SLC_COMMON_MSB : natural := 33;
  constant SLCPIPE_MTC_ENDCAP_SLC_COMMON_LSB : natural := 3;
  constant SLCPIPE_MTC_ENDCAP_SLC_COMMON_DECB : natural := 0;
  constant SLCPIPE_MTC_ENDCAP_SLC_COMMON_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_MTC_ENDCAP_BUSY_LEN : natural := 1;
  constant SLCPIPE_MTC_ENDCAP_BUSY_MSB : natural := 2;
  constant SLCPIPE_MTC_ENDCAP_BUSY_LSB : natural := 2;
  constant SLCPIPE_MTC_ENDCAP_BUSY_DECB : natural := 0;
  constant SLCPIPE_MTC_ENDCAP_BUSY_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_MTC_ENDCAP_DESTSL_LEN : natural := 2;
  constant SLCPIPE_MTC_ENDCAP_DESTSL_MSB : natural := 1;
  constant SLCPIPE_MTC_ENDCAP_DESTSL_LSB : natural := 0;
  constant SLCPIPE_MTC_ENDCAP_DESTSL_DECB : natural := 0;
  constant SLCPIPE_MTC_ENDCAP_DESTSL_MULT : natural := 0;

  ----------------------------------------------------------------------
  constant SLCPIPE_MTC_BARREL_LEN : natural := 57;

  -- (COPY)
  constant SLCPIPE_MTC_BARREL_COINTYPE_LEN : natural := 3;
  constant SLCPIPE_MTC_BARREL_COINTYPE_MSB : natural := 56;
  constant SLCPIPE_MTC_BARREL_COINTYPE_LSB : natural := 54;
  constant SLCPIPE_MTC_BARREL_COINTYPE_DECB : natural := 0;
  constant SLCPIPE_MTC_BARREL_COINTYPE_MULT : natural := 0;

  -- 
  constant SLCPIPE_MTC_BARREL_SLC_MUID_LEN : natural := 20;
  constant SLCPIPE_MTC_BARREL_SLC_MUID_MSB : natural := 53;
  constant SLCPIPE_MTC_BARREL_SLC_MUID_LSB : natural := 34;
  constant SLCPIPE_MTC_BARREL_SLC_MUID_DECB : natural := 0;
  constant SLCPIPE_MTC_BARREL_SLC_MUID_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_MTC_BARREL_SLC_COMMON_LEN : natural := 31;
  constant SLCPIPE_MTC_BARREL_SLC_COMMON_MSB : natural := 33;
  constant SLCPIPE_MTC_BARREL_SLC_COMMON_LSB : natural := 3;
  constant SLCPIPE_MTC_BARREL_SLC_COMMON_DECB : natural := 0;
  constant SLCPIPE_MTC_BARREL_SLC_COMMON_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_MTC_BARREL_BUSY_LEN : natural := 1;
  constant SLCPIPE_MTC_BARREL_BUSY_MSB : natural := 2;
  constant SLCPIPE_MTC_BARREL_BUSY_LSB : natural := 2;
  constant SLCPIPE_MTC_BARREL_BUSY_DECB : natural := 0;
  constant SLCPIPE_MTC_BARREL_BUSY_MULT : natural := 0;

  -- (COPY)
  constant SLCPIPE_MTC_BARREL_DESTSL_LEN : natural := 2;
  constant SLCPIPE_MTC_BARREL_DESTSL_MSB : natural := 1;
  constant SLCPIPE_MTC_BARREL_DESTSL_LSB : natural := 0;
  constant SLCPIPE_MTC_BARREL_DESTSL_DECB : natural := 0;
  constant SLCPIPE_MTC_BARREL_DESTSL_MULT : natural := 0;

  ----------------------------------------------------------------------
  constant MTC_LEN : natural := 67;

  -- (COPY)
  constant MTC_SLC_COMMON_LEN : natural := 31;
  constant MTC_SLC_COMMON_MSB : natural := 66;
  constant MTC_SLC_COMMON_LSB : natural := 36;
  constant MTC_SLC_COMMON_DECB : natural := 0;
  constant MTC_SLC_COMMON_MULT : natural := 0;

  -- (COPY)
  constant MTC_ETA_LEN : natural := 14;
  constant MTC_ETA_MSB : natural := 35;
  constant MTC_ETA_LSB : natural := 22;
  constant MTC_ETA_DECB : natural := 11;
  constant MTC_ETA_MULT : natural := 3034;

  -- (COPY)
  constant MTC_PT_LEN : natural := 8;
  constant MTC_PT_MSB : natural := 21;
  constant MTC_PT_LSB : natural := 14;
  constant MTC_PT_DECB : natural := 1;
  constant MTC_PT_MULT : natural := 3;

  -- (COPY)
  constant MTC_PTTHRESH_LEN : natural := 4;
  constant MTC_PTTHRESH_MSB : natural := 13;
  constant MTC_PTTHRESH_LSB : natural := 10;
  constant MTC_PTTHRESH_DECB : natural := 0;
  constant MTC_PTTHRESH_MULT : natural := 0;

  -- (COPY)
  constant MTC_CHARGE_LEN : natural := 1;
  constant MTC_CHARGE_MSB : natural := 9;
  constant MTC_CHARGE_LSB : natural := 9;
  constant MTC_CHARGE_DECB : natural := 0;
  constant MTC_CHARGE_MULT : natural := 2;

  -- MDT processing flags
  constant MTC_PROCFLAGS_LEN : natural := 4;
  constant MTC_PROCFLAGS_MSB : natural := 8;
  constant MTC_PROCFLAGS_LSB : natural := 5;
  constant MTC_PROCFLAGS_DECB : natural := 0;
  constant MTC_PROCFLAGS_MULT : natural := 1;

  -- (COPY)
  constant MTC_NSEGMENTS_LEN : natural := 2;
  constant MTC_NSEGMENTS_MSB : natural := 4;
  constant MTC_NSEGMENTS_LSB : natural := 3;
  constant MTC_NSEGMENTS_DECB : natural := 0;
  constant MTC_NSEGMENTS_MULT : natural := 1;

  -- (COPY)
  constant MTC_QUALITY_LEN : natural := 3;
  constant MTC_QUALITY_MSB : natural := 2;
  constant MTC_QUALITY_LSB : natural := 0;
  constant MTC_QUALITY_DECB : natural := 0;
  constant MTC_QUALITY_MULT : natural := 1;

  ----------------------------------------------------------------------

end package mdttp_constants_pkg;
