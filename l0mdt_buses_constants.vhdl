--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
-- Date : 11/02/2020 04:21:36 UTC
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-----------------------------------------------------------------------------------------------------------------------------
const SLC_MU_ID_width : natural := 20;

-- SLc Processor
constant SLC_MU_ID_slc_bcid_width : natural := 12;
constant SLC_MU_ID_slc_bcid_lsb : natural := 19;
constant SLC_MU_ID_slc_bcid_msb : natural := 8;

-- SLc Processor
constant SLC_MU_ID_sl_id_width : natural := 6;
constant SLC_MU_ID_sl_id_lsb : natural := 7;
constant SLC_MU_ID_sl_id_msb : natural := 2;

-- SLc Processor
constant SLC_MU_ID_slc_id_width : natural := 2;
constant SLC_MU_ID_slc_id_lsb : natural := 1;
constant SLC_MU_ID_slc_id_msb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPROC_IN_COMMON_width : natural := 42;

-- Endcap SL
constant SLCPROC_IN_COMMON_slc_bcid_width : natural := 12;
constant SLCPROC_IN_COMMON_slc_bcid_lsb : natural := 41;
constant SLCPROC_IN_COMMON_slc_bcid_msb : natural := 30;

-- Endcap SL
constant SLCPROC_IN_COMMON_slc_charge_width : natural := 1;
constant SLCPROC_IN_COMMON_slc_charge_lsb : natural := 29;
constant SLCPROC_IN_COMMON_slc_charge_msb : natural := 29;

-- Endcap SL
constant SLCPROC_IN_COMMON_slc_pt_thresh_width : natural := 4;
constant SLCPROC_IN_COMMON_slc_pt_thresh_lsb : natural := 28;
constant SLCPROC_IN_COMMON_slc_pt_thresh_msb : natural := 25;

-- Endcap SL
constant SLCPROC_IN_COMMON_slc_pos_phi_width : natural := 9;
constant SLCPROC_IN_COMMON_slc_pos_phi_lsb : natural := 24;
constant SLCPROC_IN_COMMON_slc_pos_phi_msb : natural := 16;

-- Endcap SL
constant SLCPROC_IN_COMMON_slc_pos_eta_width : natural := 14;
constant SLCPROC_IN_COMMON_slc_pos_eta_lsb : natural := 15;
constant SLCPROC_IN_COMMON_slc_pos_eta_msb : natural := 2;

-- Endcap SL
constant SLCPROC_IN_COMMON_slc_id_width : natural := 2;
constant SLCPROC_IN_COMMON_slc_id_lsb : natural := 1;
constant SLCPROC_IN_COMMON_slc_id_msb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPROC_IN_ENDCAP_width : natural := 80;

-- Endcap SL
constant SLCPROC_IN_ENDCAP_SLCPROC_IN_COMMON_ENDCAP_width : natural := 42;
constant SLCPROC_IN_ENDCAP_SLCPROC_IN_COMMON_ENDCAP_lsb : natural := 41;
constant SLCPROC_IN_ENDCAP_SLCPROC_IN_COMMON_ENDCAP_msb : natural := 0;

-- Endcap SL
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_width : natural := 7;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_lsb : natural := 48;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_msb : natural := 42;

-- Endcap SL
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_width : natural := 4;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_lsb : natural := 52;
constant SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_msb : natural := 49;

-- Endcap SL
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_width : natural := 14;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_lsb : natural := 66;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_msb : natural := 53;

-- Endcap SL
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_width : natural := 8;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_lsb : natural := 74;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_msb : natural := 67;

-- Endcap SL
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_width : natural := 5;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_lsb : natural := 79;
constant SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_msb : natural := 75;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPROC_IN_BARREL_width : natural := 84;

-- Barrel SL
constant SLCPROC_IN_BARREL_SLCPROC_IN_COMMON_BARREL_width : natural := 42;
constant SLCPROC_IN_BARREL_SLCPROC_IN_COMMON_BARREL_lsb : natural := 41;
constant SLCPROC_IN_BARREL_SLCPROC_IN_COMMON_BARREL_msb : natural := 0;

-- Barrel SL
constant SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_lsb : natural := 51;
constant SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_msb : natural := 42;

-- Barrel SL
constant SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_lsb : natural := 61;
constant SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_msb : natural := 52;

-- Barrel SL
constant SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_lsb : natural := 71;
constant SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_msb : natural := 62;

-- Barrel SL
constant SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_width : natural := 10;
constant SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_lsb : natural := 81;
constant SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_msb : natural := 72;

-- Barrel SL
constant SLCPROC_IN_BARREL_slc_barrel_coin_type_width : natural := 2;
constant SLCPROC_IN_BARREL_slc_barrel_coin_type_lsb : natural := 83;
constant SLCPROC_IN_BARREL_slc_barrel_coin_type_msb : natural := 82;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const SLCPIPE_IN_COMMON_width : natural := 62;

-- SLc Processor
constant SLCPIPE_IN_COMMON_SLC_MU_ID_SLCPIPE_width : natural := 20;
constant SLCPIPE_IN_COMMON_SLC_MU_ID_SLCPIPE_lsb : natural := 19;
constant SLCPIPE_IN_COMMON_SLC_MU_ID_SLCPIPE_msb : natural := 0;

-- SLc Processor
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 25;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 20;

-- SLc Processor
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 31;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 26;

-- SLc Processor
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 37;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 32;

-- SLc Processor
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width : natural := 6;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb : natural := 43;
constant SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb : natural := 38;

-- SLc Processor
constant SLCPIPE_IN_COMMON_slcproc_phimod_width : natural := 16;
constant SLCPIPE_IN_COMMON_slcproc_phimod_lsb : natural := 59;
constant SLCPIPE_IN_COMMON_slcproc_phimod_msb : natural := 44;

-- SLc Processor
constant SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_width : natural := 2;
constant SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_lsb : natural := 61;
constant SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_msb : natural := 60;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const TDCFORMAT_IN_width : natural := 32;

-- CSM
constant TDCFORMAT_IN_csm_tdc_chan_id_width : natural := 5;
constant TDCFORMAT_IN_csm_tdc_chan_id_lsb : natural := 4;
constant TDCFORMAT_IN_csm_tdc_chan_id_msb : natural := 0;

-- CSM
constant TDCFORMAT_IN_csm_tdc_edge_mode_width : natural := 2;
constant TDCFORMAT_IN_csm_tdc_edge_mode_lsb : natural := 6;
constant TDCFORMAT_IN_csm_tdc_edge_mode_msb : natural := 5;

-- CSM
constant TDCFORMAT_IN_csm_tdc_coarse_time_width : natural := 12;
constant TDCFORMAT_IN_csm_tdc_coarse_time_lsb : natural := 18;
constant TDCFORMAT_IN_csm_tdc_coarse_time_msb : natural := 7;

-- CSM
constant TDCFORMAT_IN_csm_tdc_fine_time_width : natural := 5;
constant TDCFORMAT_IN_csm_tdc_fine_time_lsb : natural := 23;
constant TDCFORMAT_IN_csm_tdc_fine_time_msb : natural := 19;

-- CSM
constant TDCFORMAT_IN_csm_tdc_pulse_width_width : natural := 8;
constant TDCFORMAT_IN_csm_tdc_pulse_width_lsb : natural := 31;
constant TDCFORMAT_IN_csm_tdc_pulse_width_msb : natural := 24;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const TUBEREMAP_IN_width : natural := 44;

-- CSM
constant TUBEREMAP_IN_TDCFORMAT_IN_TUBEREMAP_width : natural := 32;
constant TUBEREMAP_IN_TDCFORMAT_IN_TUBEREMAP_lsb : natural := 31;
constant TUBEREMAP_IN_TDCFORMAT_IN_TUBEREMAP_msb : natural := 0;

-- TDC Formatter
constant TUBEREMAP_IN_fiber_id_width : natural := 5;
constant TUBEREMAP_IN_fiber_id_lsb : natural := 36;
constant TUBEREMAP_IN_fiber_id_msb : natural := 32;

-- TDC Formatter
constant TUBEREMAP_IN_elink_id_width : natural := 4;
constant TUBEREMAP_IN_elink_id_lsb : natural := 40;
constant TUBEREMAP_IN_elink_id_msb : natural := 37;

-- TDC Formatter
constant TUBEREMAP_IN_data_valid_width : natural := 1;
constant TUBEREMAP_IN_data_valid_lsb : natural := 41;
constant TUBEREMAP_IN_data_valid_msb : natural := 41;

-- TDC Formatter
constant TUBEREMAP_IN_station_id_width : natural := 2;
constant TUBEREMAP_IN_station_id_lsb : natural := 43;
constant TUBEREMAP_IN_station_id_msb : natural := 42;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const HESF_IN_SLCPROC_width : natural := 48;

-- SLc Processor
constant HESF_IN_SLCPROC_mdt_seg_dest_c_width : natural := 2;
constant HESF_IN_SLCPROC_mdt_seg_dest_c_lsb : natural := 1;
constant HESF_IN_SLCPROC_mdt_seg_dest_c_msb : natural := 0;

-- SLc Processor
constant HESF_IN_SLCPROC_slcproc_vec_mdt_id_width : natural := 6;
constant HESF_IN_SLCPROC_slcproc_vec_mdt_id_lsb : natural := 7;
constant HESF_IN_SLCPROC_slcproc_vec_mdt_id_msb : natural := 2;

-- SLc Processor
constant HESF_IN_SLCPROC_slcproc_vec_pos_width : natural := 10;
constant HESF_IN_SLCPROC_slcproc_vec_pos_lsb : natural := 17;
constant HESF_IN_SLCPROC_slcproc_vec_pos_msb : natural := 8;

-- SLc Processor
constant HESF_IN_SLCPROC_slcproc_vec_ang_width : natural := 10;
constant HESF_IN_SLCPROC_slcproc_vec_ang_lsb : natural := 27;
constant HESF_IN_SLCPROC_slcproc_vec_ang_msb : natural := 18;

-- SLc Processor
constant HESF_IN_SLCPROC_SLC_MUID_IN_HESF_width : natural := 20;
constant HESF_IN_SLCPROC_SLC_MUID_IN_HESF_lsb : natural := 47;
constant HESF_IN_SLCPROC_SLC_MUID_IN_HESF_msb : natural := 28;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const HE_IN_TUBEREMAP_width : natural := 68;

-- Tube Remap
constant HE_IN_TUBEREMAP_mdt_tube_layer_width : natural := 5;
constant HE_IN_TUBEREMAP_mdt_tube_layer_lsb : natural := 4;
constant HE_IN_TUBEREMAP_mdt_tube_layer_msb : natural := 0;

-- Tube Remap
constant HE_IN_TUBEREMAP_mdt_tube_num_width : natural := 9;
constant HE_IN_TUBEREMAP_mdt_tube_num_lsb : natural := 13;
constant HE_IN_TUBEREMAP_mdt_tube_num_msb : natural := 5;

-- Tube Remap
constant HE_IN_TUBEREMAP_mdt_tube_rho_width : natural := 18;
constant HE_IN_TUBEREMAP_mdt_tube_rho_lsb : natural := 31;
constant HE_IN_TUBEREMAP_mdt_tube_rho_msb : natural := 14;

-- Tube Remap
constant HE_IN_TUBEREMAP_mdt_tube_z_width : natural := 19;
constant HE_IN_TUBEREMAP_mdt_tube_z_lsb : natural := 50;
constant HE_IN_TUBEREMAP_mdt_tube_z_msb : natural := 32;

-- Tube Remap
constant HE_IN_TUBEREMAP_mdt_tube_time_width : natural := 17;
constant HE_IN_TUBEREMAP_mdt_tube_time_lsb : natural := 67;
constant HE_IN_TUBEREMAP_mdt_tube_time_msb : natural := 51;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const LSF_IN_HE_width : natural := 39;

-- HE
constant LSF_IN_HE_mdt_hit_valid_width : natural := 1;
constant LSF_IN_HE_mdt_hit_valid_lsb : natural := 0;
constant LSF_IN_HE_mdt_hit_valid_msb : natural := 0;

-- HE
constant LSF_IN_HE_data_valid_width : natural := 1;
constant LSF_IN_HE_data_valid_lsb : natural := 1;
constant LSF_IN_HE_data_valid_msb : natural := 1;

-- HE
constant LSF_IN_HE_lsf_mdt_tube_local_x_width : natural := 14;
constant LSF_IN_HE_lsf_mdt_tube_local_x_lsb : natural := 15;
constant LSF_IN_HE_lsf_mdt_tube_local_x_msb : natural := 2;

-- HE
constant LSF_IN_HE_lsf_mdt_tube_local_y_width : natural := 14;
constant LSF_IN_HE_lsf_mdt_tube_local_y_lsb : natural := 29;
constant LSF_IN_HE_lsf_mdt_tube_local_y_msb : natural := 16;

-- HE
constant LSF_IN_HE_lsf_mdt_tube_radius_width : natural := 9;
constant LSF_IN_HE_lsf_mdt_tube_radius_lsb : natural := 38;
constant LSF_IN_HE_lsf_mdt_tube_radius_msb : natural := 30;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const CSF_IN_HE_width : natural := 66;

-- HE
constant CSF_IN_HE_mdt_hit_valid_width : natural := 1;
constant CSF_IN_HE_mdt_hit_valid_lsb : natural := 0;
constant CSF_IN_HE_mdt_hit_valid_msb : natural := 0;

-- HE
constant CSF_IN_HE_data_valid_width : natural := 1;
constant CSF_IN_HE_data_valid_lsb : natural := 1;
constant CSF_IN_HE_data_valid_msb : natural := 1;

-- HE
constant CSF_IN_HE_csf_mdt_tube_local_x_width : natural := 16;
constant CSF_IN_HE_csf_mdt_tube_local_x_lsb : natural := 17;
constant CSF_IN_HE_csf_mdt_tube_local_x_msb : natural := 2;

-- HE
constant CSF_IN_HE_csf_mdt_tube_local_y_width : natural := 16;
constant CSF_IN_HE_csf_mdt_tube_local_y_lsb : natural := 33;
constant CSF_IN_HE_csf_mdt_tube_local_y_msb : natural := 18;

-- HE
constant CSF_IN_HE_csf_mdt_tube_radius_width : natural := 32;
constant CSF_IN_HE_csf_mdt_tube_radius_lsb : natural := 65;
constant CSF_IN_HE_csf_mdt_tube_radius_msb : natural := 34;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const PTCALC_IN_SLCPIPE_width : natural := 61;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_SLC_MU_ID_SLCPIPE_width : natural := 20;
constant PTCALC_IN_SLCPIPE_SLC_MU_ID_SLCPIPE_lsb : natural := 19;
constant PTCALC_IN_SLCPIPE_SLC_MU_ID_SLCPIPE_msb : natural := 0;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width : natural := 6;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb : natural := 25;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb : natural := 20;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width : natural := 6;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb : natural := 31;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb : natural := 26;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width : natural := 6;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb : natural := 37;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb : natural := 32;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width : natural := 6;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb : natural := 43;
constant PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb : natural := 38;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_slcproc_phimod_width : natural := 16;
constant PTCALC_IN_SLCPIPE_slcproc_phimod_lsb : natural := 59;
constant PTCALC_IN_SLCPIPE_slcproc_phimod_msb : natural := 44;

-- SLC Pipeline
constant PTCALC_IN_SLCPIPE_slc_charge_width : natural := 1;
constant PTCALC_IN_SLCPIPE_slc_charge_lsb : natural := 60;
constant PTCALC_IN_SLCPIPE_slc_charge_msb : natural := 60;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const PTCALC_IN_SF_width : natural := 55;

-- SF
constant PTCALC_IN_SF_SLC_MU_ID_SLCPIPE_width : natural := 20;
constant PTCALC_IN_SF_SLC_MU_ID_SLCPIPE_lsb : natural := 19;
constant PTCALC_IN_SF_SLC_MU_ID_SLCPIPE_msb : natural := 0;

-- SF
constant PTCALC_IN_SF_slcproc_vec_mdt_id_width : natural := 6;
constant PTCALC_IN_SF_slcproc_vec_mdt_id_lsb : natural := 25;
constant PTCALC_IN_SF_slcproc_vec_mdt_id_msb : natural := 20;

-- SF
constant PTCALC_IN_SF_sf_seg_valid_width : natural := 1;
constant PTCALC_IN_SF_sf_seg_valid_lsb : natural := 26;
constant PTCALC_IN_SF_sf_seg_valid_msb : natural := 26;

-- SF
constant PTCALC_IN_SF_sf_seg_pos_width : natural := 16;
constant PTCALC_IN_SF_sf_seg_pos_lsb : natural := 42;
constant PTCALC_IN_SF_sf_seg_pos_msb : natural := 27;

-- SF
constant PTCALC_IN_SF_sf_seg_angle_width : natural := 11;
constant PTCALC_IN_SF_sf_seg_angle_lsb : natural := 53;
constant PTCALC_IN_SF_sf_seg_angle_msb : natural := 43;

-- SF
constant PTCALC_IN_SF_sf_seg_quality_width : natural := 1;
constant PTCALC_IN_SF_sf_seg_quality_lsb : natural := 54;
constant PTCALC_IN_SF_sf_seg_quality_msb : natural := 54;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const MTCBUILD_IN_PTCALC_ENDCAP_width : natural := 100;

-- SLC Processor
constant MTCBUILD_IN_PTCALC_ENDCAP_SLCPROC_IN_ENDCAP_MTCBUILD_width : natural := 80;
constant MTCBUILD_IN_PTCALC_ENDCAP_SLCPROC_IN_ENDCAP_MTCBUILD_lsb : natural := 79;
constant MTCBUILD_IN_PTCALC_ENDCAP_SLCPROC_IN_ENDCAP_MTCBUILD_msb : natural := 0;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_width : natural := 4;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_lsb : natural := 83;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_msb : natural := 80;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_width : natural := 8;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_lsb : natural := 91;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_msb : natural := 84;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_width : natural := 4;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_lsb : natural := 95;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_msb : natural := 92;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_width : natural := 1;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_lsb : natural := 96;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_msb : natural := 96;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_width : natural := 2;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_lsb : natural := 98;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_msb : natural := 97;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_width : natural := 1;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_lsb : natural := 99;
constant MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_msb : natural := 99;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
const MTCBUILD_IN_PTCALC_BARREL_width : natural := 104;

-- SLC Processor
constant MTCBUILD_IN_PTCALC_BARREL_SLCPROC_IN_BARREL_MTCBUILD_width : natural := 84;
constant MTCBUILD_IN_PTCALC_BARREL_SLCPROC_IN_BARREL_MTCBUILD_lsb : natural := 83;
constant MTCBUILD_IN_PTCALC_BARREL_SLCPROC_IN_BARREL_MTCBUILD_msb : natural := 0;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_width : natural := 4;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_lsb : natural := 87;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_msb : natural := 84;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_width : natural := 8;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_lsb : natural := 95;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_pt_msb : natural := 88;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_width : natural := 4;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_lsb : natural := 99;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_msb : natural := 96;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_charge_width : natural := 1;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_charge_lsb : natural := 100;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_charge_msb : natural := 100;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_width : natural := 2;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_lsb : natural := 102;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_msb : natural := 101;

-- Pt Calc
constant MTCBUILD_IN_PTCALC_BARREL_mtc_quality_width : natural := 1;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_quality_lsb : natural := 103;
constant MTCBUILD_IN_PTCALC_BARREL_mtc_quality_msb : natural := 103;

-----------------------------------------------------------------------------------------------------------------------------

