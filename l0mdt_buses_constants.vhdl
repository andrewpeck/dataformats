--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
-- Date : 10/02/2020 11:56:45 UTC
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-----------------------------------------------------------------------------------------------------------------------------
const SLC_MU_ID_width : natural := 20;

-- 
constant SLC_MU_ID_slc_id_width : natural := 2;
constant SLC_MU_ID_slc_id_lsb : natural := 0;
constant SLC_MU_ID_slc_id_msb : natural := 1;

-- 
constant SLC_MU_ID_sl_id_width : natural := 6;
constant SLC_MU_ID_sl_id_lsb : natural := 2;
constant SLC_MU_ID_sl_id_msb : natural := 7;

-- 
constant SLC_MU_ID_slc_bcid_width : natural := 12;
constant SLC_MU_ID_slc_bcid_lsb : natural := 8;
constant SLC_MU_ID_slc_bcid_msb : natural := 19;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPROC_IN_COMMON_width : natural := 42;

-- SLc Identification (up to 3)
constant SLCPROC_IN_COMMON_slc_id_width : natural := 2;
constant SLCPROC_IN_COMMON_slc_id_lsb : natural := 0;
constant SLCPROC_IN_COMMON_slc_id_msb : natural := 1;

-- SLc Segment Eta Position in outermost TGC layer
constant SLCPROC_IN_COMMON_slc_seg_pos_eta_width : natural := 14;
constant SLCPROC_IN_COMMON_slc_seg_pos_eta_lsb : natural := 2;
constant SLCPROC_IN_COMMON_slc_seg_pos_eta_msb : natural := 15;

-- SLc Segment Phi Position in outermost TGC layer
constant SLCPROC_IN_COMMON_slc_seg_pos_phi_width : natural := 9;
constant SLCPROC_IN_COMMON_slc_seg_pos_phi_lsb : natural := 16;
constant SLCPROC_IN_COMMON_slc_seg_pos_phi_msb : natural := 24;

-- SLc highest pT threshold passed
constant SLCPROC_IN_COMMON_slc_pt_thresh_width : natural := 4;
constant SLCPROC_IN_COMMON_slc_pt_thresh_lsb : natural := 25;
constant SLCPROC_IN_COMMON_slc_pt_thresh_msb : natural := 28;

-- SLc charge
constant SLCPROC_IN_COMMON_slc_charge_width : natural := 1;
constant SLCPROC_IN_COMMON_slc_charge_lsb : natural := 29;
constant SLCPROC_IN_COMMON_slc_charge_msb : natural := 29;

-- SLc BCID
constant SLCPROC_IN_COMMON_slc_bcid_width : natural := 12;
constant SLCPROC_IN_COMMON_slc_bcid_lsb : natural := 30;
constant SLCPROC_IN_COMMON_slc_bcid_msb : natural := 41;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPROC_IN_ENDCAP_width : natural := 80;

-- SLc Segment Angle wrt Eta position
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_width : natural := 7;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_lsb : natural := 42;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_msb : natural := 48;

-- SLc Segment Angle wrt Phi position
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_width : natural := 4;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_lsb : natural := 49;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_msb : natural := 52;

-- NSW segment eta position
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_width : natural := 14;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_lsb : natural := 53;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_msb : natural := 66;

-- NSW segment phi position
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_width : natural := 8;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_lsb : natural := 67;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_msb : natural := 74;

-- NSW segment angle wrt Eta position
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_width : natural := 5;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_lsb : natural := 75;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_msb : natural := 79;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPROC_IN_BARREL_width : natural := 84;

-- SLc Hit Z Position in RPC0
constant SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_lsb : natural := 42;
constant SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_msb : natural := 51;

-- SLc Hit Z Position in RPC1
constant SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_lsb : natural := 52;
constant SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_msb : natural := 61;

-- SLc Hit Z Position in RPC2
constant SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_lsb : natural := 62;
constant SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_msb : natural := 71;

-- SLc Hit Z Position in RPC3
constant SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_lsb : natural := 72;
constant SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_msb : natural := 81;

-- SLc coincidence type
constant SLCPROC_IN_BARREL_slc_barrel_coin_type_width : natural := 2;
constant SLCPROC_IN_BARREL_slc_barrel_coin_type_lsb : natural := 82;
constant SLCPROC_IN_BARREL_slc_barrel_coin_type_msb : natural := 83;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPIPE_IN_COMMON_width : natural := 62;

-- SLc Inner Vector MDT chamber ID
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 20;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 25;

-- SLc Middle Vector MDT chamber ID
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 26;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 31;

-- SLc Outer Vector MDT chamber ID
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 32;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 37;

-- SLc Extra Vector MDT chamber ID
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 38;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 43;

-- SLc phimod
constant SLCPIPE_IN_COMMON_slcproc_phimod_width : natural := 16;
constant SLCPIPE_IN_COMMON_slcproc_phimod_lsb : natural := 44;
constant SLCPIPE_IN_COMMON_slcproc_phimod_msb : natural := 59;

-- SLc board destination
constant SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_width : natural := 2;
constant SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_lsb : natural := 60;
constant SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_msb : natural := 61;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const TDCFORMAT_IN_width : natural := 32;

-- Channel number within TDC
constant TDCFORMAT_IN_csm_tdc_chan_id_width : natural := 5;
constant TDCFORMAT_IN_csm_tdc_chan_id_lsb : natural := 0;
constant TDCFORMAT_IN_csm_tdc_chan_id_msb : natural := 4;

-- Edge or pair mode
constant TDCFORMAT_IN_csm_tdc_edge_mode_width : natural := 2;
constant TDCFORMAT_IN_csm_tdc_edge_mode_lsb : natural := 5;
constant TDCFORMAT_IN_csm_tdc_edge_mode_msb : natural := 6;

-- TDC BCID
constant TDCFORMAT_IN_csm_tdc_coarse_time_width : natural := 12;
constant TDCFORMAT_IN_csm_tdc_coarse_time_lsb : natural := 7;
constant TDCFORMAT_IN_csm_tdc_coarse_time_msb : natural := 18;

-- TDC fine time with BCID
constant TDCFORMAT_IN_csm_tdc_fine_time_width : natural := 5;
constant TDCFORMAT_IN_csm_tdc_fine_time_lsb : natural := 19;
constant TDCFORMAT_IN_csm_tdc_fine_time_msb : natural := 23;

-- Pulse width
constant TDCFORMAT_IN_csm_tdc_pulse_width_width : natural := 8;
constant TDCFORMAT_IN_csm_tdc_pulse_width_lsb : natural := 24;
constant TDCFORMAT_IN_csm_tdc_pulse_width_msb : natural := 31;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const TUBEREMAP_IN_width : natural := 44;

-- Fiber ID within board
constant TUBEREMAP_IN_fiber_id_width : natural := 5;
constant TUBEREMAP_IN_fiber_id_lsb : natural := 32;
constant TUBEREMAP_IN_fiber_id_msb : natural := 36;

-- Elink ID within fiber
constant TUBEREMAP_IN_elink_id_width : natural := 4;
constant TUBEREMAP_IN_elink_id_lsb : natural := 37;
constant TUBEREMAP_IN_elink_id_msb : natural := 40;

-- Valid bit
constant TUBEREMAP_IN_data_valid_width : natural := 1;
constant TUBEREMAP_IN_data_valid_lsb : natural := 41;
constant TUBEREMAP_IN_data_valid_msb : natural := 41;

-- 
constant TUBEREMAP_IN_station_id_width : natural := 2;
constant TUBEREMAP_IN_station_id_lsb : natural := 42;
constant TUBEREMAP_IN_station_id_msb : natural := 43;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const HESF_IN_SLCPROC_width : natural := 48;

-- inner MDT segment chip destination
constant HESF_IN_SLCPROC_mdt_seg_dest_c_width : natural := 2;
constant HESF_IN_SLCPROC_mdt_seg_dest_c_lsb : natural := 0;
constant HESF_IN_SLCPROC_mdt_seg_dest_c_msb : natural := 1;

-- SLc Inner Vector MDT chamber ID
constant HESF_IN_SLCPROC_slcproc_vec_mdt_id_width : natural := 6;
constant HESF_IN_SLCPROC_slcproc_vec_mdt_id_lsb : natural := 2;
constant HESF_IN_SLCPROC_slcproc_vec_mdt_id_msb : natural := 7;

-- SLc inner vector rho position
constant HESF_IN_SLCPROC_slcproc_vec_pos_width : natural := 10;
constant HESF_IN_SLCPROC_slcproc_vec_pos_lsb : natural := 8;
constant HESF_IN_SLCPROC_slcproc_vec_pos_msb : natural := 17;

-- SLc inner vector theta angle
constant HESF_IN_SLCPROC_slcproc_vec_ang_width : natural := 10;
constant HESF_IN_SLCPROC_slcproc_vec_ang_lsb : natural := 18;
constant HESF_IN_SLCPROC_slcproc_vec_ang_msb : natural := 27;

-- SLc Muon Unique Identifier
constant HESF_IN_SLCPROC_SLC_MUID_IN_HESF_width : natural := 20;
constant HESF_IN_SLCPROC_SLC_MUID_IN_HESF_lsb : natural := 28;
constant HESF_IN_SLCPROC_SLC_MUID_IN_HESF_msb : natural := 47;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const HE_IN_TUBEREMAP_width : natural := 68;

-- Tube layer within one station
constant HE_IN_TUBEREMAP_mdt_tube_layer_width : natural := 5;
constant HE_IN_TUBEREMAP_mdt_tube_layer_lsb : natural := 0;
constant HE_IN_TUBEREMAP_mdt_tube_layer_msb : natural := 4;

-- Tube number within one station
constant HE_IN_TUBEREMAP_mdt_tube_num_width : natural := 9;
constant HE_IN_TUBEREMAP_mdt_tube_num_lsb : natural := 5;
constant HE_IN_TUBEREMAP_mdt_tube_num_msb : natural := 13;

-- Tube radial position
constant HE_IN_TUBEREMAP_mdt_tube_rho_width : natural := 18;
constant HE_IN_TUBEREMAP_mdt_tube_rho_lsb : natural := 14;
constant HE_IN_TUBEREMAP_mdt_tube_rho_msb : natural := 31;

-- Tube position along z
constant HE_IN_TUBEREMAP_mdt_tube_z_width : natural := 19;
constant HE_IN_TUBEREMAP_mdt_tube_z_lsb : natural := 32;
constant HE_IN_TUBEREMAP_mdt_tube_z_msb : natural := 50;

-- Tube (uncalibrated) time
constant HE_IN_TUBEREMAP_mdt_tube_time_width : natural := 17;
constant HE_IN_TUBEREMAP_mdt_tube_time_lsb : natural := 51;
constant HE_IN_TUBEREMAP_mdt_tube_time_msb : natural := 67;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const LSF_IN_HE_width : natural := 39;

-- Hit Valid bit
constant LSF_IN_HE_mdt_hit_valid_width : natural := 1;
constant LSF_IN_HE_mdt_hit_valid_lsb : natural := 0;
constant LSF_IN_HE_mdt_hit_valid_msb : natural := 0;

-- Data Valid bit
constant LSF_IN_HE_data_valid_width : natural := 1;
constant LSF_IN_HE_data_valid_lsb : natural := 1;
constant LSF_IN_HE_data_valid_msb : natural := 1;

-- Tube local position along precision coord
constant LSF_IN_HE_lsf_mdt_tube_local_x_width : natural := 14;
constant LSF_IN_HE_lsf_mdt_tube_local_x_lsb : natural := 2;
constant LSF_IN_HE_lsf_mdt_tube_local_x_msb : natural := 15;

-- Tube local position along second coord
constant LSF_IN_HE_lsf_mdt_tube_local_y_width : natural := 14;
constant LSF_IN_HE_lsf_mdt_tube_local_y_lsb : natural := 16;
constant LSF_IN_HE_lsf_mdt_tube_local_y_msb : natural := 29;

-- Tube drift radius
constant LSF_IN_HE_lsf_mdt_tube_radius_width : natural := 9;
constant LSF_IN_HE_lsf_mdt_tube_radius_lsb : natural := 30;
constant LSF_IN_HE_lsf_mdt_tube_radius_msb : natural := 38;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const CSF_IN_HE_width : natural := 66;

-- Hit Valid bit
constant CSF_IN_HE_mdt_hit_valid_width : natural := 1;
constant CSF_IN_HE_mdt_hit_valid_lsb : natural := 0;
constant CSF_IN_HE_mdt_hit_valid_msb : natural := 0;

-- Data Valid bit
constant CSF_IN_HE_data_valid_width : natural := 1;
constant CSF_IN_HE_data_valid_lsb : natural := 1;
constant CSF_IN_HE_data_valid_msb : natural := 1;

-- Tube local position along precision coord
constant CSF_IN_HE_csf_mdt_tube_local_x_width : natural := 16;
constant CSF_IN_HE_csf_mdt_tube_local_x_lsb : natural := 2;
constant CSF_IN_HE_csf_mdt_tube_local_x_msb : natural := 17;

-- Tube local position along second coord
constant CSF_IN_HE_csf_mdt_tube_local_y_width : natural := 16;
constant CSF_IN_HE_csf_mdt_tube_local_y_lsb : natural := 18;
constant CSF_IN_HE_csf_mdt_tube_local_y_msb : natural := 33;

-- Tube drift radius
constant CSF_IN_HE_csf_mdt_tube_radius_width : natural := 32;
constant CSF_IN_HE_csf_mdt_tube_radius_lsb : natural := 34;
constant CSF_IN_HE_csf_mdt_tube_radius_msb : natural := 65;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const PTCALC_IN_SLCPIPE_width : natural := 61;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const PTCALC_IN_SF_width : natural := 55;

-- SF MDT segment valid bit
constant PTCALC_IN_SF_sf_seg_valid_width : natural := 1;
constant PTCALC_IN_SF_sf_seg_valid_lsb : natural := 26;
constant PTCALC_IN_SF_sf_seg_valid_msb : natural := 26;

-- SF MDT segment position along the precision coord
constant PTCALC_IN_SF_sf_seg_pos_width : natural := 16;
constant PTCALC_IN_SF_sf_seg_pos_lsb : natural := 27;
constant PTCALC_IN_SF_sf_seg_pos_msb : natural := 42;

-- SF MDT segment angle along the precision coord
constant PTCALC_IN_SF_sf_seg_angle_width : natural := 11;
constant PTCALC_IN_SF_sf_seg_angle_lsb : natural := 43;
constant PTCALC_IN_SF_sf_seg_angle_msb : natural := 53;

-- SF MDT segment qualiry
constant PTCALC_IN_SF_sf_seg_quality_width : natural := 1;
constant PTCALC_IN_SF_sf_seg_quality_lsb : natural := 54;
constant PTCALC_IN_SF_sf_seg_quality_msb : natural := 54;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const MTCBUILD_IN_PTCALC_ENDCAP_width : natural := 100;

-- pT threshold satisfied by the MDT TC
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_width : natural := 4;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_lsb : natural := 80;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_msb : natural := 83;

-- pT calculated by the pT Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_width : natural := 8;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_lsb : natural := 84;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_msb : natural := 91;

-- MDT processing flags
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_width : natural := 4;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_lsb : natural := 92;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_msb : natural := 95;

-- charge determined from the pT calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_width : natural := 1;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_lsb : natural := 96;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_msb : natural := 96;

-- # of segments used for calculating the pT
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_width : natural := 2;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_lsb : natural := 97;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_msb : natural := 98;

-- quality of the MDT TC (TBC how this is defined)
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_width : natural := 1;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_lsb : natural := 99;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_msb : natural := 99;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const MTCBUILD_IN_PTCALC_BARREL_width : natural := 104;

-- pT threshold satisfied by the MDT TC
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_width : natural := 4;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_lsb : natural := 84;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_msb : natural := 87;

-- pT calculated by the pT Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_width : natural := 8;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_lsb : natural := 88;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_msb : natural := 95;

-- MDT processing flags
constant MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_width : natural := 4;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_lsb : natural := 96;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_msb : natural := 99;

-- charge determined from the pT calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_charge_width : natural := 1;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_charge_lsb : natural := 100;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_charge_msb : natural := 100;

-- # of segments used for calculating the pT
constant MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_width : natural := 2;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_lsb : natural := 101;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_msb : natural := 102;

-- quality of the MDT TC (TBC how this is defined)
constant MTCBUILD_IN_PTCALC_BARREL_mtc_quality_width : natural := 1;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_quality_lsb : natural := 103;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_quality_msb : natural := 103;

-----------------------------------------------------------------------------------------------------------------------------

