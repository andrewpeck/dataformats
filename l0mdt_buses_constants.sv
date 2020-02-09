//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
// Date : 09/02/2020 22:50:47 UTC
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//---------------------------------------------------------------------------------------------------------------------------
'define SLC_MU_ID_width 20;

// 
'define SLC_MU_ID_slc_id_width 2;
'define SLC_MU_ID_slc_id_lsb 0;
'define SLC_MU_ID_slc_id_msb 1;

// 
'define SLC_MU_ID_sl_id_width 6;
'define SLC_MU_ID_sl_id_lsb 2;
'define SLC_MU_ID_sl_id_msb 7;

// 
'define SLC_MU_ID_slc_bcid_width 12;
'define SLC_MU_ID_slc_bcid_lsb 8;
'define SLC_MU_ID_slc_bcid_msb 19;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_IN_COMMON_width 42;

// SLc Identification (up to 3)
'define SLCPROC_IN_COMMON_slc_id_width 2;
'define SLCPROC_IN_COMMON_slc_id_lsb 0;
'define SLCPROC_IN_COMMON_slc_id_msb 1;

// SLc Segment Eta Position in outermost TGC layer
'define SLCPROC_IN_COMMON_slc_seg_pos_eta_width 14;
'define SLCPROC_IN_COMMON_slc_seg_pos_eta_lsb 2;
'define SLCPROC_IN_COMMON_slc_seg_pos_eta_msb 15;

// SLc Segment Phi Position in outermost TGC layer
'define SLCPROC_IN_COMMON_slc_seg_pos_phi_width 9;
'define SLCPROC_IN_COMMON_slc_seg_pos_phi_lsb 16;
'define SLCPROC_IN_COMMON_slc_seg_pos_phi_msb 24;

// SLc highest pT threshold passed
'define SLCPROC_IN_COMMON_slc_pt_thresh_width 4;
'define SLCPROC_IN_COMMON_slc_pt_thresh_lsb 25;
'define SLCPROC_IN_COMMON_slc_pt_thresh_msb 28;

// SLc charge
'define SLCPROC_IN_COMMON_slc_charge_width 1;
'define SLCPROC_IN_COMMON_slc_charge_lsb 29;
'define SLCPROC_IN_COMMON_slc_charge_msb 29;

// SLc BCID
'define SLCPROC_IN_COMMON_slc_bcid_width 12;
'define SLCPROC_IN_COMMON_slc_bcid_lsb 30;
'define SLCPROC_IN_COMMON_slc_bcid_msb 41;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_IN_ENDCAP_width 80;

// SLc Segment Angle wrt Eta position
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_width 7;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_lsb 42;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_msb 48;

// SLc Segment Angle wrt Phi position
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_width 4;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_lsb 49;
'define SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_msb 52;

// NSW segment eta position
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_width 14;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_lsb 53;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_msb 66;

// NSW segment phi position
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_width 8;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_lsb 67;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_msb 74;

// NSW segment angle wrt Eta position
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_width 5;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_lsb 75;
'define SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_msb 79;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_IN_BARREL_width 84;

// SLc Hit Z Position in RPC0
'define SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_lsb 42;
'define SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_msb 51;

// SLc Hit Z Position in RPC1
'define SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_lsb 52;
'define SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_msb 61;

// SLc Hit Z Position in RPC2
'define SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_lsb 62;
'define SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_msb 71;

// SLc Hit Z Position in RPC3
'define SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_width 10;
'define SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_lsb 72;
'define SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_msb 81;

// SLc coincidence type
'define SLCPROC_IN_BARREL_slc_barrel_coin_type_width 2;
'define SLCPROC_IN_BARREL_slc_barrel_coin_type_lsb 82;
'define SLCPROC_IN_BARREL_slc_barrel_coin_type_msb 83;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPIPE_IN_COMMON_width 62;

// SLc Inner Vector MDT chamber ID
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 20;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 25;

// SLc Middle Vector MDT chamber ID
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 26;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 31;

// SLc Outer Vector MDT chamber ID
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 32;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 37;

// SLc Extra Vector MDT chamber ID
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width 6;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb 38;
'define SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb 43;

// SLc phimod
'define SLCPIPE_IN_COMMON_slcproc_phimod_width 16;
'define SLCPIPE_IN_COMMON_slcproc_phimod_lsb 44;
'define SLCPIPE_IN_COMMON_slcproc_phimod_msb 59;

// SLc board destination
'define SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_width 2;
'define SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_lsb 60;
'define SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_msb 61;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define TDCFORMAT_IN_width 32;

// Channel number within TDC
'define TDCFORMAT_IN_csm_tdc_chan_id_width 5;
'define TDCFORMAT_IN_csm_tdc_chan_id_lsb 0;
'define TDCFORMAT_IN_csm_tdc_chan_id_msb 4;

// Edge or pair mode
'define TDCFORMAT_IN_csm_tdc_edge_mode_width 2;
'define TDCFORMAT_IN_csm_tdc_edge_mode_lsb 5;
'define TDCFORMAT_IN_csm_tdc_edge_mode_msb 6;

// TDC BCID
'define TDCFORMAT_IN_csm_tdc_coarse_time_width 12;
'define TDCFORMAT_IN_csm_tdc_coarse_time_lsb 7;
'define TDCFORMAT_IN_csm_tdc_coarse_time_msb 18;

// TDC fine time with BCID
'define TDCFORMAT_IN_csm_tdc_fine_time_width 5;
'define TDCFORMAT_IN_csm_tdc_fine_time_lsb 19;
'define TDCFORMAT_IN_csm_tdc_fine_time_msb 23;

// Pulse width
'define TDCFORMAT_IN_csm_tdc_pulse_width_width 8;
'define TDCFORMAT_IN_csm_tdc_pulse_width_lsb 24;
'define TDCFORMAT_IN_csm_tdc_pulse_width_msb 31;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define TUBEREMAP_IN_width 44;

// Fiber ID within board
'define TUBEREMAP_IN_fiber_id_width 5;
'define TUBEREMAP_IN_fiber_id_lsb 32;
'define TUBEREMAP_IN_fiber_id_msb 36;

// Elink ID within fiber
'define TUBEREMAP_IN_elink_id_width 4;
'define TUBEREMAP_IN_elink_id_lsb 37;
'define TUBEREMAP_IN_elink_id_msb 40;

// Valid bit
'define TUBEREMAP_IN_data_valid_width 1;
'define TUBEREMAP_IN_data_valid_lsb 41;
'define TUBEREMAP_IN_data_valid_msb 41;

// 
'define TUBEREMAP_IN_station_id_width 2;
'define TUBEREMAP_IN_station_id_lsb 42;
'define TUBEREMAP_IN_station_id_msb 43;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define HESF_IN_SLCPROC_width 48;

// inner MDT segment chip destination
'define HESF_IN_SLCPROC_mdt_seg_dest_c_width 2;
'define HESF_IN_SLCPROC_mdt_seg_dest_c_lsb 0;
'define HESF_IN_SLCPROC_mdt_seg_dest_c_msb 1;

// SLc Inner Vector MDT chamber ID
'define HESF_IN_SLCPROC_slcproc_vec_mdt_id_width 6;
'define HESF_IN_SLCPROC_slcproc_vec_mdt_id_lsb 2;
'define HESF_IN_SLCPROC_slcproc_vec_mdt_id_msb 7;

// SLc inner vector rho position
'define HESF_IN_SLCPROC_slcproc_vec_pos_width 10;
'define HESF_IN_SLCPROC_slcproc_vec_pos_lsb 8;
'define HESF_IN_SLCPROC_slcproc_vec_pos_msb 17;

// SLc inner vector theta angle
'define HESF_IN_SLCPROC_slcproc_vec_ang_width 10;
'define HESF_IN_SLCPROC_slcproc_vec_ang_lsb 18;
'define HESF_IN_SLCPROC_slcproc_vec_ang_msb 27;

// SLc Muon Unique Identifier
'define HESF_IN_SLCPROC_slc_mu_id_width 20;
'define HESF_IN_SLCPROC_slc_mu_id_lsb 28;
'define HESF_IN_SLCPROC_slc_mu_id_msb 47;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define HE_IN_TUBEREMAP_width 68;

// Tube layer within one station
'define HE_IN_TUBEREMAP_mdt_tube_layer_width 5;
'define HE_IN_TUBEREMAP_mdt_tube_layer_lsb 0;
'define HE_IN_TUBEREMAP_mdt_tube_layer_msb 4;

// Tube number within one station
'define HE_IN_TUBEREMAP_mdt_tube_num_width 9;
'define HE_IN_TUBEREMAP_mdt_tube_num_lsb 5;
'define HE_IN_TUBEREMAP_mdt_tube_num_msb 13;

// Tube radial position
'define HE_IN_TUBEREMAP_mdt_tube_rho_width 18;
'define HE_IN_TUBEREMAP_mdt_tube_rho_lsb 14;
'define HE_IN_TUBEREMAP_mdt_tube_rho_msb 31;

// Tube position along z
'define HE_IN_TUBEREMAP_mdt_tube_z_width 19;
'define HE_IN_TUBEREMAP_mdt_tube_z_lsb 32;
'define HE_IN_TUBEREMAP_mdt_tube_z_msb 50;

// Tube (uncalibrated) time
'define HE_IN_TUBEREMAP_mdt_tube_time_width 17;
'define HE_IN_TUBEREMAP_mdt_tube_time_lsb 51;
'define HE_IN_TUBEREMAP_mdt_tube_time_msb 67;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define LSF_IN_HE_width 39;

// Hit Valid bit
'define LSF_IN_HE_mdt_hit_valid_width 1;
'define LSF_IN_HE_mdt_hit_valid_lsb 0;
'define LSF_IN_HE_mdt_hit_valid_msb 0;

// Data Valid bit
'define LSF_IN_HE_data_valid_width 1;
'define LSF_IN_HE_data_valid_lsb 1;
'define LSF_IN_HE_data_valid_msb 1;

// Tube local position along precision coord
'define LSF_IN_HE_lsf_mdt_tube_local_x_width 14;
'define LSF_IN_HE_lsf_mdt_tube_local_x_lsb 2;
'define LSF_IN_HE_lsf_mdt_tube_local_x_msb 15;

// Tube local position along second coord
'define LSF_IN_HE_lsf_mdt_tube_local_y_width 14;
'define LSF_IN_HE_lsf_mdt_tube_local_y_lsb 16;
'define LSF_IN_HE_lsf_mdt_tube_local_y_msb 29;

// Tube drift radius
'define LSF_IN_HE_lsf_mdt_tube_radius_width 9;
'define LSF_IN_HE_lsf_mdt_tube_radius_lsb 30;
'define LSF_IN_HE_lsf_mdt_tube_radius_msb 38;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define CSF_IN_HE_width 66;

// Hit Valid bit
'define CSF_IN_HE_mdt_hit_valid_width 1;
'define CSF_IN_HE_mdt_hit_valid_lsb 0;
'define CSF_IN_HE_mdt_hit_valid_msb 0;

// Data Valid bit
'define CSF_IN_HE_data_valid_width 1;
'define CSF_IN_HE_data_valid_lsb 1;
'define CSF_IN_HE_data_valid_msb 1;

// Tube local position along precision coord
'define CSF_IN_HE_csf_mdt_tube_local_x_width 16;
'define CSF_IN_HE_csf_mdt_tube_local_x_lsb 2;
'define CSF_IN_HE_csf_mdt_tube_local_x_msb 17;

// Tube local position along second coord
'define CSF_IN_HE_csf_mdt_tube_local_y_width 16;
'define CSF_IN_HE_csf_mdt_tube_local_y_lsb 18;
'define CSF_IN_HE_csf_mdt_tube_local_y_msb 33;

// Tube drift radius
'define CSF_IN_HE_csf_mdt_tube_radius_width 32;
'define CSF_IN_HE_csf_mdt_tube_radius_lsb 34;
'define CSF_IN_HE_csf_mdt_tube_radius_msb 65;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define PTCALC_IN_SLCPIPE_width 61;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define PTCALC_IN_SF_width 55;

// SF MDT segment valid bit
'define PTCALC_IN_SF_sf_seg_valid_width 1;
'define PTCALC_IN_SF_sf_seg_valid_lsb 26;
'define PTCALC_IN_SF_sf_seg_valid_msb 26;

// SF MDT segment position along the precision coord
'define PTCALC_IN_SF_sf_seg_pos_width 16;
'define PTCALC_IN_SF_sf_seg_pos_lsb 27;
'define PTCALC_IN_SF_sf_seg_pos_msb 42;

// SF MDT segment angle along the precision coord
'define PTCALC_IN_SF_sf_seg_angle_width 11;
'define PTCALC_IN_SF_sf_seg_angle_lsb 43;
'define PTCALC_IN_SF_sf_seg_angle_msb 53;

// SF MDT segment qualiry
'define PTCALC_IN_SF_sf_seg_quality_width 1;
'define PTCALC_IN_SF_sf_seg_quality_lsb 54;
'define PTCALC_IN_SF_sf_seg_quality_msb 54;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define MTCBUILD_IN_PTCALC_ENDCAP_width 100;

// pT threshold satisfied by the MDT TC
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_width 4;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_lsb 80;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_msb 83;

// pT calculated by the pT Calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_width 8;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_lsb 84;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_msb 91;

// MDT processing flags
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_width 4;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_lsb 92;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_msb 95;

// charge determined from the pT calc
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_width 1;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_lsb 96;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_msb 96;

// # of segments used for calculating the pT
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_width 2;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_lsb 97;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_msb 98;

// quality of the MDT TC (TBC how this is defined)
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_width 1;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_lsb 99;
'define MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_msb 99;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define MTCBUILD_IN_PTCALC_BARREL_width 104;

// pT threshold satisfied by the MDT TC
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_width 4;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_lsb 84;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_msb 87;

// pT calculated by the pT Calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_width 8;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_lsb 88;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_pt_msb 95;

// MDT processing flags
'define MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_width 4;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_lsb 96;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_msb 99;

// charge determined from the pT calc
'define MTCBUILD_IN_PTCALC_BARREL_mtc_charge_width 1;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_charge_lsb 100;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_charge_msb 100;

// # of segments used for calculating the pT
'define MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_width 2;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_lsb 101;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_msb 102;

// quality of the MDT TC (TBC how this is defined)
'define MTCBUILD_IN_PTCALC_BARREL_mtc_quality_width 1;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_quality_lsb 103;
'define MTCBUILD_IN_PTCALC_BARREL_mtc_quality_msb 103;

//---------------------------------------------------------------------------------------------------------------------------

