//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
// Date : 04/02/2020 14:24:08 CET
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


// SLc Identification (up to 3)
const int slc_id_width = 2;
const int slc_id_lsb = 0;
const int slc_id_msb = 1;

// SLc Segment Eta Position in outermost TGC layer
const int slc_seg_pos_eta_width = 14;
const int slc_seg_pos_eta_lsb = 2;
const int slc_seg_pos_eta_msb = 15;

// SLc Segment Phi Position in outermost TGC layer
const int slc_seg_pos_phi_width = 9;
const int slc_seg_pos_phi_lsb = 16;
const int slc_seg_pos_phi_msb = 24;

// SLc highest pT threshold passed
const int slc_pt_thresh_width = 4;
const int slc_pt_thresh_lsb = 25;
const int slc_pt_thresh_msb = 28;

// SLc charge
const int slc_charge_width = 1;
const int slc_charge_lsb = 29;
const int slc_charge_msb = 29;

// SLc BCID
const int slc_bcid_width = 12;
const int slc_bcid_lsb = 30;
const int slc_bcid_msb = 41;

// SLc Segment Angle wrt Eta position
const int slc_seg_ang_dtheta_width = 7;
const int slc_seg_ang_dtheta_lsb = 42;
const int slc_seg_ang_dtheta_msb = 48;

// SLc Segment Angle wrt Phi position
const int slc_seg_ang_dphi_width = 4;
const int slc_seg_ang_dphi_lsb = 49;
const int slc_seg_ang_dphi_msb = 52;

// NSW segment eta position
const int nsw_seg_pos_eta_width = 14;
const int nsw_seg_pos_eta_lsb = 53;
const int nsw_seg_pos_eta_msb = 66;

// NSW segment phi position
const int nsw_seg_pos_phi_width = 8;
const int nsw_seg_pos_phi_lsb = 67;
const int nsw_seg_pos_phi_msb = 74;

// NSW segment angle wrt Eta position
const int nsw_seg_ang_dtheta_width = 5;
const int nsw_seg_ang_dtheta_lsb = 75;
const int nsw_seg_ang_dtheta_msb = 79;

// SLc Hit Z Position in RPC0
const int slc_rpc0_pos_z_width = 10;
const int slc_rpc0_pos_z_lsb = 42;
const int slc_rpc0_pos_z_msb = 51;

// SLc Hit Z Position in RPC1
const int slc_rpc1_pos_z_width = 10;
const int slc_rpc1_pos_z_lsb = 52;
const int slc_rpc1_pos_z_msb = 61;

// SLc Hit Z Position in RPC2
const int slc_rpc2_pos_z_width = 10;
const int slc_rpc2_pos_z_lsb = 62;
const int slc_rpc2_pos_z_msb = 71;

// SLc Hit Z Position in RPC3
const int slc_rpc3_pos_z_width = 10;
const int slc_rpc3_pos_z_lsb = 72;
const int slc_rpc3_pos_z_msb = 81;

// SLc coincidence type
const int slc_coin_type_width = 2;
const int slc_coin_type_lsb = 82;
const int slc_coin_type_msb = 83;

// SLc Muon Unique Identifier
const int slc_mu_id_width = 20;
const int slc_mu_id_lsb = 0;
const int slc_mu_id_msb = 19;

// SLc Inner Vector MDT chamber ID
const int slc_vec_mdt_id_width = 6;
const int slc_vec_mdt_id_lsb = 20;
const int slc_vec_mdt_id_msb = 25;

// SLc Middle Vector MDT chamber ID
const int slc_vec_mdt_id_width = 6;
const int slc_vec_mdt_id_lsb = 26;
const int slc_vec_mdt_id_msb = 31;

// SLc Outer Vector MDT chamber ID
const int slc_vec_mdt_id_width = 6;
const int slc_vec_mdt_id_lsb = 32;
const int slc_vec_mdt_id_msb = 37;

// SLc Extra Vector MDT chamber ID
const int slc_vec_mdt_id_width = 6;
const int slc_vec_mdt_id_lsb = 38;
const int slc_vec_mdt_id_msb = 43;

// SLc phimod
const int slc_phimod_width = 16;
const int slc_phimod_lsb = 44;
const int slc_phimod_msb = 59;

// SLc board destination
const int mtc_dest_sl_width = 2;
const int mtc_dest_sl_lsb = 60;
const int mtc_dest_sl_msb = 61;

// Channel number within TDC
const int tdc_chan_id_width = 5;
const int tdc_chan_id_lsb = 0;
const int tdc_chan_id_msb = 4;

// Edge or pair mode
const int tdc_edge_mode_width = 2;
const int tdc_edge_mode_lsb = 5;
const int tdc_edge_mode_msb = 6;

// TDC BCID
const int tdc_coarse_time_width = 12;
const int tdc_coarse_time_lsb = 7;
const int tdc_coarse_time_msb = 18;

// TDC fine time with BCID
const int tdc_fine_time_width = 5;
const int tdc_fine_time_lsb = 19;
const int tdc_fine_time_msb = 23;

// Pulse width
const int tdc_pulse_width_width = 8;
const int tdc_pulse_width_lsb = 24;
const int tdc_pulse_width_msb = 31;

// Fiber ID within board
const int fiber_id_width = 5;
const int fiber_id_lsb = 32;
const int fiber_id_msb = 36;

// Elink ID within fiber
const int elink_id_width = 4;
const int elink_id_lsb = 37;
const int elink_id_msb = 40;

// Valid bit
const int data_valid_width = 1;
const int data_valid_lsb = 41;
const int data_valid_msb = 41;

// 
const int station_id_width = 2;
const int station_id_lsb = 42;
const int station_id_msb = 43;

// inner MDT segment chip destination
const int mdt_seg_dest_c_width = 2;
const int mdt_seg_dest_c_lsb = 0;
const int mdt_seg_dest_c_msb = 1;

// SLc Inner Vector MDT chamber ID
const int slc_vec_mdt_id_width = 6;
const int slc_vec_mdt_id_lsb = 2;
const int slc_vec_mdt_id_msb = 7;

// SLc inner vector rho position
const int slc_vec_pos_width = 10;
const int slc_vec_pos_lsb = 8;
const int slc_vec_pos_msb = 17;

// SLc inner vector theta angle
const int slc_vec_ang_width = 10;
const int slc_vec_ang_lsb = 18;
const int slc_vec_ang_msb = 27;

// SLc Muon Unique Identifier
const int slc_mu_id_width = 20;
const int slc_mu_id_lsb = 28;
const int slc_mu_id_msb = 47;

// Tube layer within one station
const int tube_layer_width = 5;
const int tube_layer_lsb = 0;
const int tube_layer_msb = 4;

// Tube number within one station
const int tube_num_width = 9;
const int tube_num_lsb = 5;
const int tube_num_msb = 13;

// Tube radial position
const int tube_rho_width = 18;
const int tube_rho_lsb = 14;
const int tube_rho_msb = 31;

// Tube position along z
const int tube_z_width = 19;
const int tube_z_lsb = 32;
const int tube_z_msb = 50;

// Tube (uncalibrated) time
const int tube_time_width = 17;
const int tube_time_lsb = 51;
const int tube_time_msb = 67;

// Hit Valid bit
const int mdt_hit_valid_width = 1;
const int mdt_hit_valid_lsb = 0;
const int mdt_hit_valid_msb = 0;

// Data Valid bit
const int data_valid_width = 1;
const int data_valid_lsb = 1;
const int data_valid_msb = 1;

// Tube local position along precision coord
const int tube_local_x_lsf_width = 14;
const int tube_local_x_lsf_lsb = 2;
const int tube_local_x_lsf_msb = 15;

// Tube local position along second coord
const int tube_local_y_lsf_width = 14;
const int tube_local_y_lsf_lsb = 16;
const int tube_local_y_lsf_msb = 29;

// Tube drift radius
const int tube_radius_lsf_width = 9;
const int tube_radius_lsf_lsb = 30;
const int tube_radius_lsf_msb = 38;

// Hit Valid bit
const int mdt_hit_valid_width = 1;
const int mdt_hit_valid_lsb = 0;
const int mdt_hit_valid_msb = 0;

// Data Valid bit
const int data_valid_width = 1;
const int data_valid_lsb = 1;
const int data_valid_msb = 1;

// Tube local position along precision coord
const int tube_local_x_csf_width = 16;
const int tube_local_x_csf_lsb = 2;
const int tube_local_x_csf_msb = 17;

// Tube local position along second coord
const int tube_local_y_csf_width = 16;
const int tube_local_y_csf_lsb = 18;
const int tube_local_y_csf_msb = 33;

// Tube drift radius
const int tube_radius_csf_width = 32;
const int tube_radius_csf_lsb = 34;
const int tube_radius_csf_msb = 65;

// SF MDT segment valid bit
const int sf_seg_valid_width = 1;
const int sf_seg_valid_lsb = 26;
const int sf_seg_valid_msb = 26;

// SF MDT segment position along the precision coord
const int sf_seg_pos_width = 16;
const int sf_seg_pos_lsb = 27;
const int sf_seg_pos_msb = 42;

// SF MDT segment angle along the precision coord
const int sf_seg_angle_width = 11;
const int sf_seg_angle_lsb = 43;
const int sf_seg_angle_msb = 53;

// SF MDT segment qualiry
const int sf_seg_quality_width = 1;
const int sf_seg_quality_lsb = 54;
const int sf_seg_quality_msb = 54;

// pT threshold satisfied by the MDT TC
const int mdt_pt_thresh_width = 4;
const int mdt_pt_thresh_lsb = 80;
const int mdt_pt_thresh_msb = 83;

// pT calculated by the pT Calc
const int mdt_pt_width = 8;
const int mdt_pt_lsb = 84;
const int mdt_pt_msb = 91;

// MDT processing flags
const int mdt_processing_flags_width = 4;
const int mdt_processing_flags_lsb = 92;
const int mdt_processing_flags_msb = 95;

// charge determined from the pT calc
const int mdt_charge_width = 1;
const int mdt_charge_lsb = 96;
const int mdt_charge_msb = 96;

// # of segments used for calculating the pT
const int mdt_n_segments_width = 2;
const int mdt_n_segments_lsb = 97;
const int mdt_n_segments_msb = 98;

// quality of the MDT TC (TBC how this is defined)
const int mdt_quality_width = 1;
const int mdt_quality_lsb = 99;
const int mdt_quality_msb = 99;

// pT threshold satisfied by the MDT TC
const int mdt_pt_thresh_width = 4;
const int mdt_pt_thresh_lsb = 84;
const int mdt_pt_thresh_msb = 87;

// pT calculated by the pT Calc
const int mdt_pt_width = 8;
const int mdt_pt_lsb = 88;
const int mdt_pt_msb = 95;

// MDT processing flags
const int mdt_processing_flags_width = 4;
const int mdt_processing_flags_lsb = 96;
const int mdt_processing_flags_msb = 99;

// charge determined from the pT calc
const int mdt_charge_width = 1;
const int mdt_charge_lsb = 100;
const int mdt_charge_msb = 100;

// # of segments used for calculating the pT
const int mdt_n_segments_width = 2;
const int mdt_n_segments_lsb = 101;
const int mdt_n_segments_msb = 102;

// quality of the MDT TC (TBC how this is defined)
const int mdt_quality_width = 1;
const int mdt_quality_lsb = 103;
const int mdt_quality_msb = 103;

