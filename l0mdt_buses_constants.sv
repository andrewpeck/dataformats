//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
// Date : 04/02/2020 14:24:08 CET
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


// SLc Identification (up to 3)
'define slc_id_width 2;
'define slc_id_lsb 0;
'define slc_id_msb 1;

// SLc Segment Eta Position in outermost TGC layer
'define slc_seg_pos_eta_width 14;
'define slc_seg_pos_eta_lsb 2;
'define slc_seg_pos_eta_msb 15;

// SLc Segment Phi Position in outermost TGC layer
'define slc_seg_pos_phi_width 9;
'define slc_seg_pos_phi_lsb 16;
'define slc_seg_pos_phi_msb 24;

// SLc highest pT threshold passed
'define slc_pt_thresh_width 4;
'define slc_pt_thresh_lsb 25;
'define slc_pt_thresh_msb 28;

// SLc charge
'define slc_charge_width 1;
'define slc_charge_lsb 29;
'define slc_charge_msb 29;

// SLc BCID
'define slc_bcid_width 12;
'define slc_bcid_lsb 30;
'define slc_bcid_msb 41;

// SLc Segment Angle wrt Eta position
'define slc_seg_ang_dtheta_width 7;
'define slc_seg_ang_dtheta_lsb 42;
'define slc_seg_ang_dtheta_msb 48;

// SLc Segment Angle wrt Phi position
'define slc_seg_ang_dphi_width 4;
'define slc_seg_ang_dphi_lsb 49;
'define slc_seg_ang_dphi_msb 52;

// NSW segment eta position
'define nsw_seg_pos_eta_width 14;
'define nsw_seg_pos_eta_lsb 53;
'define nsw_seg_pos_eta_msb 66;

// NSW segment phi position
'define nsw_seg_pos_phi_width 8;
'define nsw_seg_pos_phi_lsb 67;
'define nsw_seg_pos_phi_msb 74;

// NSW segment angle wrt Eta position
'define nsw_seg_ang_dtheta_width 5;
'define nsw_seg_ang_dtheta_lsb 75;
'define nsw_seg_ang_dtheta_msb 79;

// SLc Hit Z Position in RPC0
'define slc_rpc0_pos_z_width 10;
'define slc_rpc0_pos_z_lsb 42;
'define slc_rpc0_pos_z_msb 51;

// SLc Hit Z Position in RPC1
'define slc_rpc1_pos_z_width 10;
'define slc_rpc1_pos_z_lsb 52;
'define slc_rpc1_pos_z_msb 61;

// SLc Hit Z Position in RPC2
'define slc_rpc2_pos_z_width 10;
'define slc_rpc2_pos_z_lsb 62;
'define slc_rpc2_pos_z_msb 71;

// SLc Hit Z Position in RPC3
'define slc_rpc3_pos_z_width 10;
'define slc_rpc3_pos_z_lsb 72;
'define slc_rpc3_pos_z_msb 81;

// SLc coincidence type
'define slc_coin_type_width 2;
'define slc_coin_type_lsb 82;
'define slc_coin_type_msb 83;

// SLc Muon Unique Identifier
'define slc_mu_id_width 20;
'define slc_mu_id_lsb 0;
'define slc_mu_id_msb 19;

// SLc Inner Vector MDT chamber ID
'define slc_vec_mdt_id_width 6;
'define slc_vec_mdt_id_lsb 20;
'define slc_vec_mdt_id_msb 25;

// SLc Middle Vector MDT chamber ID
'define slc_vec_mdt_id_width 6;
'define slc_vec_mdt_id_lsb 26;
'define slc_vec_mdt_id_msb 31;

// SLc Outer Vector MDT chamber ID
'define slc_vec_mdt_id_width 6;
'define slc_vec_mdt_id_lsb 32;
'define slc_vec_mdt_id_msb 37;

// SLc Extra Vector MDT chamber ID
'define slc_vec_mdt_id_width 6;
'define slc_vec_mdt_id_lsb 38;
'define slc_vec_mdt_id_msb 43;

// SLc phimod
'define slc_phimod_width 16;
'define slc_phimod_lsb 44;
'define slc_phimod_msb 59;

// SLc board destination
'define mtc_dest_sl_width 2;
'define mtc_dest_sl_lsb 60;
'define mtc_dest_sl_msb 61;

// Channel number within TDC
'define tdc_chan_id_width 5;
'define tdc_chan_id_lsb 0;
'define tdc_chan_id_msb 4;

// Edge or pair mode
'define tdc_edge_mode_width 2;
'define tdc_edge_mode_lsb 5;
'define tdc_edge_mode_msb 6;

// TDC BCID
'define tdc_coarse_time_width 12;
'define tdc_coarse_time_lsb 7;
'define tdc_coarse_time_msb 18;

// TDC fine time with BCID
'define tdc_fine_time_width 5;
'define tdc_fine_time_lsb 19;
'define tdc_fine_time_msb 23;

// Pulse width
'define tdc_pulse_width_width 8;
'define tdc_pulse_width_lsb 24;
'define tdc_pulse_width_msb 31;

// Fiber ID within board
'define fiber_id_width 5;
'define fiber_id_lsb 32;
'define fiber_id_msb 36;

// Elink ID within fiber
'define elink_id_width 4;
'define elink_id_lsb 37;
'define elink_id_msb 40;

// Valid bit
'define data_valid_width 1;
'define data_valid_lsb 41;
'define data_valid_msb 41;

// 
'define station_id_width 2;
'define station_id_lsb 42;
'define station_id_msb 43;

// inner MDT segment chip destination
'define mdt_seg_dest_c_width 2;
'define mdt_seg_dest_c_lsb 0;
'define mdt_seg_dest_c_msb 1;

// SLc Inner Vector MDT chamber ID
'define slc_vec_mdt_id_width 6;
'define slc_vec_mdt_id_lsb 2;
'define slc_vec_mdt_id_msb 7;

// SLc inner vector rho position
'define slc_vec_pos_width 10;
'define slc_vec_pos_lsb 8;
'define slc_vec_pos_msb 17;

// SLc inner vector theta angle
'define slc_vec_ang_width 10;
'define slc_vec_ang_lsb 18;
'define slc_vec_ang_msb 27;

// SLc Muon Unique Identifier
'define slc_mu_id_width 20;
'define slc_mu_id_lsb 28;
'define slc_mu_id_msb 47;

// Tube layer within one station
'define tube_layer_width 5;
'define tube_layer_lsb 0;
'define tube_layer_msb 4;

// Tube number within one station
'define tube_num_width 9;
'define tube_num_lsb 5;
'define tube_num_msb 13;

// Tube radial position
'define tube_rho_width 18;
'define tube_rho_lsb 14;
'define tube_rho_msb 31;

// Tube position along z
'define tube_z_width 19;
'define tube_z_lsb 32;
'define tube_z_msb 50;

// Tube (uncalibrated) time
'define tube_time_width 17;
'define tube_time_lsb 51;
'define tube_time_msb 67;

// Hit Valid bit
'define mdt_hit_valid_width 1;
'define mdt_hit_valid_lsb 0;
'define mdt_hit_valid_msb 0;

// Data Valid bit
'define data_valid_width 1;
'define data_valid_lsb 1;
'define data_valid_msb 1;

// Tube local position along precision coord
'define tube_local_x_lsf_width 14;
'define tube_local_x_lsf_lsb 2;
'define tube_local_x_lsf_msb 15;

// Tube local position along second coord
'define tube_local_y_lsf_width 14;
'define tube_local_y_lsf_lsb 16;
'define tube_local_y_lsf_msb 29;

// Tube drift radius
'define tube_radius_lsf_width 9;
'define tube_radius_lsf_lsb 30;
'define tube_radius_lsf_msb 38;

// Hit Valid bit
'define mdt_hit_valid_width 1;
'define mdt_hit_valid_lsb 0;
'define mdt_hit_valid_msb 0;

// Data Valid bit
'define data_valid_width 1;
'define data_valid_lsb 1;
'define data_valid_msb 1;

// Tube local position along precision coord
'define tube_local_x_csf_width 16;
'define tube_local_x_csf_lsb 2;
'define tube_local_x_csf_msb 17;

// Tube local position along second coord
'define tube_local_y_csf_width 16;
'define tube_local_y_csf_lsb 18;
'define tube_local_y_csf_msb 33;

// Tube drift radius
'define tube_radius_csf_width 32;
'define tube_radius_csf_lsb 34;
'define tube_radius_csf_msb 65;

// SF MDT segment valid bit
'define sf_seg_valid_width 1;
'define sf_seg_valid_lsb 26;
'define sf_seg_valid_msb 26;

// SF MDT segment position along the precision coord
'define sf_seg_pos_width 16;
'define sf_seg_pos_lsb 27;
'define sf_seg_pos_msb 42;

// SF MDT segment angle along the precision coord
'define sf_seg_angle_width 11;
'define sf_seg_angle_lsb 43;
'define sf_seg_angle_msb 53;

// SF MDT segment qualiry
'define sf_seg_quality_width 1;
'define sf_seg_quality_lsb 54;
'define sf_seg_quality_msb 54;

// pT threshold satisfied by the MDT TC
'define mdt_pt_thresh_width 4;
'define mdt_pt_thresh_lsb 80;
'define mdt_pt_thresh_msb 83;

// pT calculated by the pT Calc
'define mdt_pt_width 8;
'define mdt_pt_lsb 84;
'define mdt_pt_msb 91;

// MDT processing flags
'define mdt_processing_flags_width 4;
'define mdt_processing_flags_lsb 92;
'define mdt_processing_flags_msb 95;

// charge determined from the pT calc
'define mdt_charge_width 1;
'define mdt_charge_lsb 96;
'define mdt_charge_msb 96;

// # of segments used for calculating the pT
'define mdt_n_segments_width 2;
'define mdt_n_segments_lsb 97;
'define mdt_n_segments_msb 98;

// quality of the MDT TC (TBC how this is defined)
'define mdt_quality_width 1;
'define mdt_quality_lsb 99;
'define mdt_quality_msb 99;

// pT threshold satisfied by the MDT TC
'define mdt_pt_thresh_width 4;
'define mdt_pt_thresh_lsb 84;
'define mdt_pt_thresh_msb 87;

// pT calculated by the pT Calc
'define mdt_pt_width 8;
'define mdt_pt_lsb 88;
'define mdt_pt_msb 95;

// MDT processing flags
'define mdt_processing_flags_width 4;
'define mdt_processing_flags_lsb 96;
'define mdt_processing_flags_msb 99;

// charge determined from the pT calc
'define mdt_charge_width 1;
'define mdt_charge_lsb 100;
'define mdt_charge_msb 100;

// # of segments used for calculating the pT
'define mdt_n_segments_width 2;
'define mdt_n_segments_lsb 101;
'define mdt_n_segments_msb 102;

// quality of the MDT TC (TBC how this is defined)
'define mdt_quality_width 1;
'define mdt_quality_lsb 103;
'define mdt_quality_msb 103;

