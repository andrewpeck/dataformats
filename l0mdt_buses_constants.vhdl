--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
-- Date : 04/02/2020 14:24:08 CET
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- SLc Identification (up to 3)
constant slc_id_width : natural := 2;
constant slc_id_lsb : natural := 0;
constant slc_id_msb : natural := 1;

-- SLc Segment Eta Position in outermost TGC layer
constant slc_seg_pos_eta_width : natural := 14;
constant slc_seg_pos_eta_lsb : natural := 2;
constant slc_seg_pos_eta_msb : natural := 15;

-- SLc Segment Phi Position in outermost TGC layer
constant slc_seg_pos_phi_width : natural := 9;
constant slc_seg_pos_phi_lsb : natural := 16;
constant slc_seg_pos_phi_msb : natural := 24;

-- SLc highest pT threshold passed
constant slc_pt_thresh_width : natural := 4;
constant slc_pt_thresh_lsb : natural := 25;
constant slc_pt_thresh_msb : natural := 28;

-- SLc charge
constant slc_charge_width : natural := 1;
constant slc_charge_lsb : natural := 29;
constant slc_charge_msb : natural := 29;

-- SLc BCID
constant slc_bcid_width : natural := 12;
constant slc_bcid_lsb : natural := 30;
constant slc_bcid_msb : natural := 41;

-- SLc Segment Angle wrt Eta position
constant slc_seg_ang_dtheta_width : natural := 7;
constant slc_seg_ang_dtheta_lsb : natural := 42;
constant slc_seg_ang_dtheta_msb : natural := 48;

-- SLc Segment Angle wrt Phi position
constant slc_seg_ang_dphi_width : natural := 4;
constant slc_seg_ang_dphi_lsb : natural := 49;
constant slc_seg_ang_dphi_msb : natural := 52;

-- NSW segment eta position
constant nsw_seg_pos_eta_width : natural := 14;
constant nsw_seg_pos_eta_lsb : natural := 53;
constant nsw_seg_pos_eta_msb : natural := 66;

-- NSW segment phi position
constant nsw_seg_pos_phi_width : natural := 8;
constant nsw_seg_pos_phi_lsb : natural := 67;
constant nsw_seg_pos_phi_msb : natural := 74;

-- NSW segment angle wrt Eta position
constant nsw_seg_ang_dtheta_width : natural := 5;
constant nsw_seg_ang_dtheta_lsb : natural := 75;
constant nsw_seg_ang_dtheta_msb : natural := 79;

-- SLc Hit Z Position in RPC0
constant slc_rpc0_pos_z_width : natural := 10;
constant slc_rpc0_pos_z_lsb : natural := 42;
constant slc_rpc0_pos_z_msb : natural := 51;

-- SLc Hit Z Position in RPC1
constant slc_rpc1_pos_z_width : natural := 10;
constant slc_rpc1_pos_z_lsb : natural := 52;
constant slc_rpc1_pos_z_msb : natural := 61;

-- SLc Hit Z Position in RPC2
constant slc_rpc2_pos_z_width : natural := 10;
constant slc_rpc2_pos_z_lsb : natural := 62;
constant slc_rpc2_pos_z_msb : natural := 71;

-- SLc Hit Z Position in RPC3
constant slc_rpc3_pos_z_width : natural := 10;
constant slc_rpc3_pos_z_lsb : natural := 72;
constant slc_rpc3_pos_z_msb : natural := 81;

-- SLc coincidence type
constant slc_coin_type_width : natural := 2;
constant slc_coin_type_lsb : natural := 82;
constant slc_coin_type_msb : natural := 83;

-- SLc Muon Unique Identifier
constant slc_mu_id_width : natural := 20;
constant slc_mu_id_lsb : natural := 0;
constant slc_mu_id_msb : natural := 19;

-- SLc Inner Vector MDT chamber ID
constant slc_vec_mdt_id_width : natural := 6;
constant slc_vec_mdt_id_lsb : natural := 20;
constant slc_vec_mdt_id_msb : natural := 25;

-- SLc Middle Vector MDT chamber ID
constant slc_vec_mdt_id_width : natural := 6;
constant slc_vec_mdt_id_lsb : natural := 26;
constant slc_vec_mdt_id_msb : natural := 31;

-- SLc Outer Vector MDT chamber ID
constant slc_vec_mdt_id_width : natural := 6;
constant slc_vec_mdt_id_lsb : natural := 32;
constant slc_vec_mdt_id_msb : natural := 37;

-- SLc Extra Vector MDT chamber ID
constant slc_vec_mdt_id_width : natural := 6;
constant slc_vec_mdt_id_lsb : natural := 38;
constant slc_vec_mdt_id_msb : natural := 43;

-- SLc phimod
constant slc_phimod_width : natural := 16;
constant slc_phimod_lsb : natural := 44;
constant slc_phimod_msb : natural := 59;

-- SLc board destination
constant mtc_dest_sl_width : natural := 2;
constant mtc_dest_sl_lsb : natural := 60;
constant mtc_dest_sl_msb : natural := 61;

-- Channel number within TDC
constant tdc_chan_id_width : natural := 5;
constant tdc_chan_id_lsb : natural := 0;
constant tdc_chan_id_msb : natural := 4;

-- Edge or pair mode
constant tdc_edge_mode_width : natural := 2;
constant tdc_edge_mode_lsb : natural := 5;
constant tdc_edge_mode_msb : natural := 6;

-- TDC BCID
constant tdc_coarse_time_width : natural := 12;
constant tdc_coarse_time_lsb : natural := 7;
constant tdc_coarse_time_msb : natural := 18;

-- TDC fine time with BCID
constant tdc_fine_time_width : natural := 5;
constant tdc_fine_time_lsb : natural := 19;
constant tdc_fine_time_msb : natural := 23;

-- Pulse width
constant tdc_pulse_width_width : natural := 8;
constant tdc_pulse_width_lsb : natural := 24;
constant tdc_pulse_width_msb : natural := 31;

-- Fiber ID within board
constant fiber_id_width : natural := 5;
constant fiber_id_lsb : natural := 32;
constant fiber_id_msb : natural := 36;

-- Elink ID within fiber
constant elink_id_width : natural := 4;
constant elink_id_lsb : natural := 37;
constant elink_id_msb : natural := 40;

-- Valid bit
constant data_valid_width : natural := 1;
constant data_valid_lsb : natural := 41;
constant data_valid_msb : natural := 41;

-- 
constant station_id_width : natural := 2;
constant station_id_lsb : natural := 42;
constant station_id_msb : natural := 43;

-- inner MDT segment chip destination
constant mdt_seg_dest_c_width : natural := 2;
constant mdt_seg_dest_c_lsb : natural := 0;
constant mdt_seg_dest_c_msb : natural := 1;

-- SLc Inner Vector MDT chamber ID
constant slc_vec_mdt_id_width : natural := 6;
constant slc_vec_mdt_id_lsb : natural := 2;
constant slc_vec_mdt_id_msb : natural := 7;

-- SLc inner vector rho position
constant slc_vec_pos_width : natural := 10;
constant slc_vec_pos_lsb : natural := 8;
constant slc_vec_pos_msb : natural := 17;

-- SLc inner vector theta angle
constant slc_vec_ang_width : natural := 10;
constant slc_vec_ang_lsb : natural := 18;
constant slc_vec_ang_msb : natural := 27;

-- SLc Muon Unique Identifier
constant slc_mu_id_width : natural := 20;
constant slc_mu_id_lsb : natural := 28;
constant slc_mu_id_msb : natural := 47;

-- Tube layer within one station
constant tube_layer_width : natural := 5;
constant tube_layer_lsb : natural := 0;
constant tube_layer_msb : natural := 4;

-- Tube number within one station
constant tube_num_width : natural := 9;
constant tube_num_lsb : natural := 5;
constant tube_num_msb : natural := 13;

-- Tube radial position
constant tube_rho_width : natural := 18;
constant tube_rho_lsb : natural := 14;
constant tube_rho_msb : natural := 31;

-- Tube position along z
constant tube_z_width : natural := 19;
constant tube_z_lsb : natural := 32;
constant tube_z_msb : natural := 50;

-- Tube (uncalibrated) time
constant tube_time_width : natural := 17;
constant tube_time_lsb : natural := 51;
constant tube_time_msb : natural := 67;

-- Hit Valid bit
constant mdt_hit_valid_width : natural := 1;
constant mdt_hit_valid_lsb : natural := 0;
constant mdt_hit_valid_msb : natural := 0;

-- Data Valid bit
constant data_valid_width : natural := 1;
constant data_valid_lsb : natural := 1;
constant data_valid_msb : natural := 1;

-- Tube local position along precision coord
constant tube_local_x_lsf_width : natural := 14;
constant tube_local_x_lsf_lsb : natural := 2;
constant tube_local_x_lsf_msb : natural := 15;

-- Tube local position along second coord
constant tube_local_y_lsf_width : natural := 14;
constant tube_local_y_lsf_lsb : natural := 16;
constant tube_local_y_lsf_msb : natural := 29;

-- Tube drift radius
constant tube_radius_lsf_width : natural := 9;
constant tube_radius_lsf_lsb : natural := 30;
constant tube_radius_lsf_msb : natural := 38;

-- Hit Valid bit
constant mdt_hit_valid_width : natural := 1;
constant mdt_hit_valid_lsb : natural := 0;
constant mdt_hit_valid_msb : natural := 0;

-- Data Valid bit
constant data_valid_width : natural := 1;
constant data_valid_lsb : natural := 1;
constant data_valid_msb : natural := 1;

-- Tube local position along precision coord
constant tube_local_x_csf_width : natural := 16;
constant tube_local_x_csf_lsb : natural := 2;
constant tube_local_x_csf_msb : natural := 17;

-- Tube local position along second coord
constant tube_local_y_csf_width : natural := 16;
constant tube_local_y_csf_lsb : natural := 18;
constant tube_local_y_csf_msb : natural := 33;

-- Tube drift radius
constant tube_radius_csf_width : natural := 32;
constant tube_radius_csf_lsb : natural := 34;
constant tube_radius_csf_msb : natural := 65;

-- SF MDT segment valid bit
constant sf_seg_valid_width : natural := 1;
constant sf_seg_valid_lsb : natural := 26;
constant sf_seg_valid_msb : natural := 26;

-- SF MDT segment position along the precision coord
constant sf_seg_pos_width : natural := 16;
constant sf_seg_pos_lsb : natural := 27;
constant sf_seg_pos_msb : natural := 42;

-- SF MDT segment angle along the precision coord
constant sf_seg_angle_width : natural := 11;
constant sf_seg_angle_lsb : natural := 43;
constant sf_seg_angle_msb : natural := 53;

-- SF MDT segment qualiry
constant sf_seg_quality_width : natural := 1;
constant sf_seg_quality_lsb : natural := 54;
constant sf_seg_quality_msb : natural := 54;

-- pT threshold satisfied by the MDT TC
constant mdt_pt_thresh_width : natural := 4;
constant mdt_pt_thresh_lsb : natural := 80;
constant mdt_pt_thresh_msb : natural := 83;

-- pT calculated by the pT Calc
constant mdt_pt_width : natural := 8;
constant mdt_pt_lsb : natural := 84;
constant mdt_pt_msb : natural := 91;

-- MDT processing flags
constant mdt_processing_flags_width : natural := 4;
constant mdt_processing_flags_lsb : natural := 92;
constant mdt_processing_flags_msb : natural := 95;

-- charge determined from the pT calc
constant mdt_charge_width : natural := 1;
constant mdt_charge_lsb : natural := 96;
constant mdt_charge_msb : natural := 96;

-- # of segments used for calculating the pT
constant mdt_n_segments_width : natural := 2;
constant mdt_n_segments_lsb : natural := 97;
constant mdt_n_segments_msb : natural := 98;

-- quality of the MDT TC (TBC how this is defined)
constant mdt_quality_width : natural := 1;
constant mdt_quality_lsb : natural := 99;
constant mdt_quality_msb : natural := 99;

-- pT threshold satisfied by the MDT TC
constant mdt_pt_thresh_width : natural := 4;
constant mdt_pt_thresh_lsb : natural := 84;
constant mdt_pt_thresh_msb : natural := 87;

-- pT calculated by the pT Calc
constant mdt_pt_width : natural := 8;
constant mdt_pt_lsb : natural := 88;
constant mdt_pt_msb : natural := 95;

-- MDT processing flags
constant mdt_processing_flags_width : natural := 4;
constant mdt_processing_flags_lsb : natural := 96;
constant mdt_processing_flags_msb : natural := 99;

-- charge determined from the pT calc
constant mdt_charge_width : natural := 1;
constant mdt_charge_lsb : natural := 100;
constant mdt_charge_msb : natural := 100;

-- # of segments used for calculating the pT
constant mdt_n_segments_width : natural := 2;
constant mdt_n_segments_lsb : natural := 101;
constant mdt_n_segments_msb : natural := 102;

-- quality of the MDT TC (TBC how this is defined)
constant mdt_quality_width : natural := 1;
constant mdt_quality_lsb : natural := 103;
constant mdt_quality_msb : natural := 103;

