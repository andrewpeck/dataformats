//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
// Date : 11/02/2020 04:21:36 UTC
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//---------------------------------------------------------------------------------------------------------------------------
'define SLC_MU_ID_width 20;

// SLc Processor
'define SLC_MU_ID_slc_bcid_width 12;
'define SLC_MU_ID_slc_bcid_lsb 19;
'define SLC_MU_ID_slc_bcid_msb 8;

// SLc Processor
'define SLC_MU_ID_sl_id_width 6;
'define SLC_MU_ID_sl_id_lsb 7;
'define SLC_MU_ID_sl_id_msb 2;

// SLc Processor
'define SLC_MU_ID_slc_id_width 2;
'define SLC_MU_ID_slc_id_lsb 1;
'define SLC_MU_ID_slc_id_msb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_IN_COMMON_width 42;

// Endcap SL
'define SLCPROC_IN_COMMON_slc_bcid_width 12;
'define SLCPROC_IN_COMMON_slc_bcid_lsb 41;
'define SLCPROC_IN_COMMON_slc_bcid_msb 30;

// Endcap SL
'define SLCPROC_IN_COMMON_slc_charge_width 1;
'define SLCPROC_IN_COMMON_slc_charge_lsb 29;
'define SLCPROC_IN_COMMON_slc_charge_msb 29;

// Endcap SL
'define SLCPROC_IN_COMMON_slc_pt_thresh_width 4;
'define SLCPROC_IN_COMMON_slc_pt_thresh_lsb 28;
'define SLCPROC_IN_COMMON_slc_pt_thresh_msb 25;

// Endcap SL
'define SLCPROC_IN_COMMON_slc_pos_phi_width 9;
'define SLCPROC_IN_COMMON_slc_pos_phi_lsb 24;
'define SLCPROC_IN_COMMON_slc_pos_phi_msb 16;

// Endcap SL
'define SLCPROC_IN_COMMON_slc_pos_eta_width 14;
'define SLCPROC_IN_COMMON_slc_pos_eta_lsb 15;
'define SLCPROC_IN_COMMON_slc_pos_eta_msb 2;

// Endcap SL
'define SLCPROC_IN_COMMON_slc_id_width 2;
'define SLCPROC_IN_COMMON_slc_id_lsb 1;
'define SLCPROC_IN_COMMON_slc_id_msb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_IN_ENDCAP_width 80;

// Endcap SL
'define SLCPROC_IN_ENDCAP_SLCPROC_IN_COMMON_ENDCAP_width 42;
'define SLCPROC_IN_ENDCAP_SLCPROC_IN_COMMON_ENDCAP_lsb 41;
'define SLCPROC_IN_ENDCAP_SLCPROC_IN_COMMON_ENDCAP_msb 0;

// Endcap SL
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_width 7;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_lsb 48;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_msb 42;

// Endcap SL
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_width 4;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_lsb 52;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_msb 49;

// Endcap SL
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_width 14;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_lsb 66;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_msb 53;

// Endcap SL
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_width 8;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_lsb 74;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_msb 67;

// Endcap SL
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_width 5;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_lsb 79;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_msb 75;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_IN_BARREL_width 84;

// Barrel SL
'define SLCPROC_IN_BARREL_SLCPROC_IN_COMMON_BARREL_width 42;
'define SLCPROC_IN_BARREL_SLCPROC_IN_COMMON_BARREL_lsb 41;
'define SLCPROC_IN_BARREL_SLCPROC_IN_COMMON_BARREL_msb 0;

// Barrel SL
'define SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_lsb 51;
'define SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_msb 42;

// Barrel SL
'define SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_lsb 61;
'define SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_msb 52;

// Barrel SL
'define SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_lsb 71;
'define SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_msb 62;

// Barrel SL
'define SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_lsb 81;
'define SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_msb 72;

// Barrel SL
'define SLCPROC_IN_BARREL_slc_barrel_coin_type_width 2;
'define SLCPROC_IN_BARREL_slc_barrel_coin_type_lsb 83;
'define SLCPROC_IN_BARREL_slc_barrel_coin_type_msb 82;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPIPE_IN_COMMON_width 62;

// SLc Processor
'define SLCPIPE_IN_COMMON_SLC_MU_ID_SLCPIPE_width 20;
'define SLCPIPE_IN_COMMON_SLC_MU_ID_SLCPIPE_lsb 19;
'define SLCPIPE_IN_COMMON_SLC_MU_ID_SLCPIPE_msb 0;

// SLc Processor
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 25;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 20;

// SLc Processor
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 31;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 26;

// SLc Processor
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 37;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 32;

// SLc Processor
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 43;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 38;

// SLc Processor
'define SLCPIPE_IN_COMMON_slcproc_phimod_width 16;
'define SLCPIPE_IN_COMMON_slcproc_phimod_lsb 59;
'define SLCPIPE_IN_COMMON_slcproc_phimod_msb 44;

// SLc Processor
'define SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_width 2;
'define SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_lsb 61;
'define SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_msb 60;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define TDCFORMAT_IN_width 32;

// CSM
'define TDCFORMAT_IN_csm_tdc_chan_id_width 5;
'define TDCFORMAT_IN_csm_tdc_chan_id_lsb 4;
'define TDCFORMAT_IN_csm_tdc_chan_id_msb 0;

// CSM
'define TDCFORMAT_IN_csm_tdc_edge_mode_width 2;
'define TDCFORMAT_IN_csm_tdc_edge_mode_lsb 6;
'define TDCFORMAT_IN_csm_tdc_edge_mode_msb 5;

// CSM
'define TDCFORMAT_IN_csm_tdc_coarse_time_width 12;
'define TDCFORMAT_IN_csm_tdc_coarse_time_lsb 18;
'define TDCFORMAT_IN_csm_tdc_coarse_time_msb 7;

// CSM
'define TDCFORMAT_IN_csm_tdc_fine_time_width 5;
'define TDCFORMAT_IN_csm_tdc_fine_time_lsb 23;
'define TDCFORMAT_IN_csm_tdc_fine_time_msb 19;

// CSM
'define TDCFORMAT_IN_csm_tdc_pulse_width_width 8;
'define TDCFORMAT_IN_csm_tdc_pulse_width_lsb 31;
'define TDCFORMAT_IN_csm_tdc_pulse_width_msb 24;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define TUBEREMAP_IN_width 44;

// CSM
'define TUBEREMAP_IN_TDCFORMAT_IN_TUBEREMAP_width 32;
'define TUBEREMAP_IN_TDCFORMAT_IN_TUBEREMAP_lsb 31;
'define TUBEREMAP_IN_TDCFORMAT_IN_TUBEREMAP_msb 0;

// TDC Formatter
'define TUBEREMAP_IN_fiber_id_width 5;
'define TUBEREMAP_IN_fiber_id_lsb 36;
'define TUBEREMAP_IN_fiber_id_msb 32;

// TDC Formatter
'define TUBEREMAP_IN_elink_id_width 4;
'define TUBEREMAP_IN_elink_id_lsb 40;
'define TUBEREMAP_IN_elink_id_msb 37;

// TDC Formatter
'define TUBEREMAP_IN_data_valid_width 1;
'define TUBEREMAP_IN_data_valid_lsb 41;
'define TUBEREMAP_IN_data_valid_msb 41;

// TDC Formatter
'define TUBEREMAP_IN_station_id_width 2;
'define TUBEREMAP_IN_station_id_lsb 43;
'define TUBEREMAP_IN_station_id_msb 42;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define HESF_IN_SLCPROC_width 48;

// SLc Processor
'define HESF_IN_SLCPROC_mdt_seg_dest_c_width 2;
'define HESF_IN_SLCPROC_mdt_seg_dest_c_lsb 1;
'define HESF_IN_SLCPROC_mdt_seg_dest_c_msb 0;

// SLc Processor
'define HESF_IN_SLCPROC_slcproc_vec_mdt_id_width 6;
'define HESF_IN_SLCPROC_slcproc_vec_mdt_id_lsb 7;
'define HESF_IN_SLCPROC_slcproc_vec_mdt_id_msb 2;

// SLc Processor
'define HESF_IN_SLCPROC_slcproc_vec_pos_width 10;
'define HESF_IN_SLCPROC_slcproc_vec_pos_lsb 17;
'define HESF_IN_SLCPROC_slcproc_vec_pos_msb 8;

// SLc Processor
'define HESF_IN_SLCPROC_slcproc_vec_ang_width 10;
'define HESF_IN_SLCPROC_slcproc_vec_ang_lsb 27;
'define HESF_IN_SLCPROC_slcproc_vec_ang_msb 18;

// SLc Processor
'define HESF_IN_SLCPROC_SLC_MUID_IN_HESF_width 20;
'define HESF_IN_SLCPROC_SLC_MUID_IN_HESF_lsb 47;
'define HESF_IN_SLCPROC_SLC_MUID_IN_HESF_msb 28;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define HE_IN_TUBEREMAP_width 68;

// Tube Remap
'define HE_IN_TUBEREMAP_mdt_tube_layer_width 5;
'define HE_IN_TUBEREMAP_mdt_tube_layer_lsb 4;
'define HE_IN_TUBEREMAP_mdt_tube_layer_msb 0;

// Tube Remap
'define HE_IN_TUBEREMAP_mdt_tube_num_width 9;
'define HE_IN_TUBEREMAP_mdt_tube_num_lsb 13;
'define HE_IN_TUBEREMAP_mdt_tube_num_msb 5;

// Tube Remap
'define HE_IN_TUBEREMAP_mdt_tube_rho_width 18;
'define HE_IN_TUBEREMAP_mdt_tube_rho_lsb 31;
'define HE_IN_TUBEREMAP_mdt_tube_rho_msb 14;

// Tube Remap
'define HE_IN_TUBEREMAP_mdt_tube_z_width 19;
'define HE_IN_TUBEREMAP_mdt_tube_z_lsb 50;
'define HE_IN_TUBEREMAP_mdt_tube_z_msb 32;

// Tube Remap
'define HE_IN_TUBEREMAP_mdt_tube_time_width 17;
'define HE_IN_TUBEREMAP_mdt_tube_time_lsb 67;
'define HE_IN_TUBEREMAP_mdt_tube_time_msb 51;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define LSF_IN_HE_width 39;

// HE
'define LSF_IN_HE_mdt_hit_valid_width 1;
'define LSF_IN_HE_mdt_hit_valid_lsb 0;
'define LSF_IN_HE_mdt_hit_valid_msb 0;

// HE
'define LSF_IN_HE_data_valid_width 1;
'define LSF_IN_HE_data_valid_lsb 1;
'define LSF_IN_HE_data_valid_msb 1;

// HE
'define LSF_IN_HE_lsf_mdt_tube_local_x_width 14;
'define LSF_IN_HE_lsf_mdt_tube_local_x_lsb 15;
'define LSF_IN_HE_lsf_mdt_tube_local_x_msb 2;

// HE
'define LSF_IN_HE_lsf_mdt_tube_local_y_width 14;
'define LSF_IN_HE_lsf_mdt_tube_local_y_lsb 29;
'define LSF_IN_HE_lsf_mdt_tube_local_y_msb 16;

// HE
'define LSF_IN_HE_lsf_mdt_tube_radius_width 9;
'define LSF_IN_HE_lsf_mdt_tube_radius_lsb 38;
'define LSF_IN_HE_lsf_mdt_tube_radius_msb 30;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define CSF_IN_HE_width 66;

// HE
'define CSF_IN_HE_mdt_hit_valid_width 1;
'define CSF_IN_HE_mdt_hit_valid_lsb 0;
'define CSF_IN_HE_mdt_hit_valid_msb 0;

// HE
'define CSF_IN_HE_data_valid_width 1;
'define CSF_IN_HE_data_valid_lsb 1;
'define CSF_IN_HE_data_valid_msb 1;

// HE
'define CSF_IN_HE_csf_mdt_tube_local_x_width 16;
'define CSF_IN_HE_csf_mdt_tube_local_x_lsb 17;
'define CSF_IN_HE_csf_mdt_tube_local_x_msb 2;

// HE
'define CSF_IN_HE_csf_mdt_tube_local_y_width 16;
'define CSF_IN_HE_csf_mdt_tube_local_y_lsb 33;
'define CSF_IN_HE_csf_mdt_tube_local_y_msb 18;

// HE
'define CSF_IN_HE_csf_mdt_tube_radius_width 32;
'define CSF_IN_HE_csf_mdt_tube_radius_lsb 65;
'define CSF_IN_HE_csf_mdt_tube_radius_msb 34;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define PTCALC_IN_SLCPIPE_width 61;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_SLC_MU_ID_SLCPIPE_width 20;
'define PTCALC_IN_SLCPIPE_SLC_MU_ID_SLCPIPE_lsb 19;
'define PTCALC_IN_SLCPIPE_SLC_MU_ID_SLCPIPE_msb 0;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width 6;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb 25;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb 20;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width 6;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb 31;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb 26;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width 6;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb 37;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb 32;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_width 6;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_lsb 43;
'define PTCALC_IN_SLCPIPE_slcproc_vec_mdt_id_msb 38;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_slcproc_phimod_width 16;
'define PTCALC_IN_SLCPIPE_slcproc_phimod_lsb 59;
'define PTCALC_IN_SLCPIPE_slcproc_phimod_msb 44;

// SLC Pipeline
'define PTCALC_IN_SLCPIPE_slc_charge_width 1;
'define PTCALC_IN_SLCPIPE_slc_charge_lsb 60;
'define PTCALC_IN_SLCPIPE_slc_charge_msb 60;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define PTCALC_IN_SF_width 55;

// SF
'define PTCALC_IN_SF_SLC_MU_ID_SLCPIPE_width 20;
'define PTCALC_IN_SF_SLC_MU_ID_SLCPIPE_lsb 19;
'define PTCALC_IN_SF_SLC_MU_ID_SLCPIPE_msb 0;

// SF
'define PTCALC_IN_SF_slcproc_vec_mdt_id_width 6;
'define PTCALC_IN_SF_slcproc_vec_mdt_id_lsb 25;
'define PTCALC_IN_SF_slcproc_vec_mdt_id_msb 20;

// SF
'define PTCALC_IN_SF_sf_seg_valid_width 1;
'define PTCALC_IN_SF_sf_seg_valid_lsb 26;
'define PTCALC_IN_SF_sf_seg_valid_msb 26;

// SF
'define PTCALC_IN_SF_sf_seg_pos_width 16;
'define PTCALC_IN_SF_sf_seg_pos_lsb 42;
'define PTCALC_IN_SF_sf_seg_pos_msb 27;

// SF
'define PTCALC_IN_SF_sf_seg_angle_width 11;
'define PTCALC_IN_SF_sf_seg_angle_lsb 53;
'define PTCALC_IN_SF_sf_seg_angle_msb 43;

// SF
'define PTCALC_IN_SF_sf_seg_quality_width 1;
'define PTCALC_IN_SF_sf_seg_quality_lsb 54;
'define PTCALC_IN_SF_sf_seg_quality_msb 54;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define MTCBUILD_IN_PTCALC_ENDCAP_width 100;

// SLC Processor
'define MTCBUILD_IN_PTCALC_ENDCAP_SLCPROC_IN_ENDCAP_MTCBUILD_width 80;
'define MTCBUILD_IN_PTCALC_ENDCAP_SLCPROC_IN_ENDCAP_MTCBUILD_lsb 79;
'define MTCBUILD_IN_PTCALC_ENDCAP_SLCPROC_IN_ENDCAP_MTCBUILD_msb 0;

// Pt Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_width 4;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_lsb 83;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_msb 80;

// Pt Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_width 8;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_lsb 91;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_msb 84;

// Pt Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_width 4;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_lsb 95;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_msb 92;

// Pt Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_width 1;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_lsb 96;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_msb 96;

// Pt Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_width 2;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_lsb 98;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_msb 97;

// Pt Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_width 1;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_lsb 99;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_msb 99;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define MTCBUILD_IN_PTCALC_BARREL_width 104;

// SLC Processor
'define MTCBUILD_IN_PTCALC_BARREL_SLCPROC_IN_BARREL_MTCBUILD_width 84;
'define MTCBUILD_IN_PTCALC_BARREL_SLCPROC_IN_BARREL_MTCBUILD_lsb 83;
'define MTCBUILD_IN_PTCALC_BARREL_SLCPROC_IN_BARREL_MTCBUILD_msb 0;

// Pt Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_width 4;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_lsb 87;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_msb 84;

// Pt Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_width 8;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_lsb 95;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_msb 88;

// Pt Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_width 4;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_lsb 99;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_msb 96;

// Pt Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_charge_width 1;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_charge_lsb 100;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_charge_msb 100;

// Pt Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_width 2;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_lsb 102;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_msb 101;

// Pt Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_quality_width 1;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_quality_lsb 103;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_quality_msb 103;

//---------------------------------------------------------------------------------------------------------------------------

