//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
// Date : 09/02/2020 23:00:01 UTC
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//---------------------------------------------------------------------------------------------------------------------------
const int SLC_MU_ID_width = 20;

// 
const int SLC_MU_ID_slc_id_width = 2;
const int SLC_MU_ID_slc_id_lsb = 0;
const int SLC_MU_ID_slc_id_msb = 1;

// 
const int SLC_MU_ID_sl_id_width = 6;
const int SLC_MU_ID_sl_id_lsb = 2;
const int SLC_MU_ID_sl_id_msb = 7;

// 
const int SLC_MU_ID_slc_bcid_width = 12;
const int SLC_MU_ID_slc_bcid_lsb = 8;
const int SLC_MU_ID_slc_bcid_msb = 19;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int SLCPROC_IN_COMMON_width = 42;

// SLc Identification (up to 3)
const int SLCPROC_IN_COMMON_slc_id_width = 2;
const int SLCPROC_IN_COMMON_slc_id_lsb = 0;
const int SLCPROC_IN_COMMON_slc_id_msb = 1;

// SLc Segment Eta Position in outermost TGC layer
const int SLCPROC_IN_COMMON_slc_seg_pos_eta_width = 14;
const int SLCPROC_IN_COMMON_slc_seg_pos_eta_lsb = 2;
const int SLCPROC_IN_COMMON_slc_seg_pos_eta_msb = 15;

// SLc Segment Phi Position in outermost TGC layer
const int SLCPROC_IN_COMMON_slc_seg_pos_phi_width = 9;
const int SLCPROC_IN_COMMON_slc_seg_pos_phi_lsb = 16;
const int SLCPROC_IN_COMMON_slc_seg_pos_phi_msb = 24;

// SLc highest pT threshold passed
const int SLCPROC_IN_COMMON_slc_pt_thresh_width = 4;
const int SLCPROC_IN_COMMON_slc_pt_thresh_lsb = 25;
const int SLCPROC_IN_COMMON_slc_pt_thresh_msb = 28;

// SLc charge
const int SLCPROC_IN_COMMON_slc_charge_width = 1;
const int SLCPROC_IN_COMMON_slc_charge_lsb = 29;
const int SLCPROC_IN_COMMON_slc_charge_msb = 29;

// SLc BCID
const int SLCPROC_IN_COMMON_slc_bcid_width = 12;
const int SLCPROC_IN_COMMON_slc_bcid_lsb = 30;
const int SLCPROC_IN_COMMON_slc_bcid_msb = 41;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int SLCPROC_IN_ENDCAP_width = 80;

// SLc Segment Angle wrt Eta position
const int SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_width = 7;
const int SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_lsb = 42;
const int SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dtheta_msb = 48;

// SLc Segment Angle wrt Phi position
const int SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_width = 4;
const int SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_lsb = 49;
const int SLCPROC_IN_ENDCAP_slc_endcap_seg_ang_dphi_msb = 52;

// NSW segment eta position
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_width = 14;
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_lsb = 53;
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_eta_msb = 66;

// NSW segment phi position
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_width = 8;
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_lsb = 67;
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_pos_phi_msb = 74;

// NSW segment angle wrt Eta position
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_width = 5;
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_lsb = 75;
const int SLCPROC_IN_ENDCAP_sbc_endcap_nsw_seg_ang_dtheta_msb = 79;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int SLCPROC_IN_BARREL_width = 84;

// SLc Hit Z Position in RPC0
const int SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_width = 10;
const int SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_lsb = 42;
const int SLCPROC_IN_BARREL_slc_barrel_rpc0_pos_z_msb = 51;

// SLc Hit Z Position in RPC1
const int SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_width = 10;
const int SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_lsb = 52;
const int SLCPROC_IN_BARREL_slc_barrel_rpc1_pos_z_msb = 61;

// SLc Hit Z Position in RPC2
const int SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_width = 10;
const int SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_lsb = 62;
const int SLCPROC_IN_BARREL_slc_barrel_rpc2_pos_z_msb = 71;

// SLc Hit Z Position in RPC3
const int SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_width = 10;
const int SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_lsb = 72;
const int SLCPROC_IN_BARREL_slc_barrel_rpc3_pos_z_msb = 81;

// SLc coincidence type
const int SLCPROC_IN_BARREL_slc_barrel_coin_type_width = 2;
const int SLCPROC_IN_BARREL_slc_barrel_coin_type_lsb = 82;
const int SLCPROC_IN_BARREL_slc_barrel_coin_type_msb = 83;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int SLCPIPE_IN_COMMON_width = 62;

// SLc Inner Vector MDT chamber ID
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width = 6;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb = 20;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb = 25;

// SLc Middle Vector MDT chamber ID
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width = 6;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb = 26;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb = 31;

// SLc Outer Vector MDT chamber ID
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width = 6;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb = 32;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb = 37;

// SLc Extra Vector MDT chamber ID
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_width = 6;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_lsb = 38;
const int SLCPIPE_IN_COMMON_slcproc_vec_mdt_id_msb = 43;

// SLc phimod
const int SLCPIPE_IN_COMMON_slcproc_phimod_width = 16;
const int SLCPIPE_IN_COMMON_slcproc_phimod_lsb = 44;
const int SLCPIPE_IN_COMMON_slcproc_phimod_msb = 59;

// SLc board destination
const int SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_width = 2;
const int SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_lsb = 60;
const int SLCPIPE_IN_COMMON_slcproc_mtc_dest_sl_msb = 61;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int TDCFORMAT_IN_width = 32;

// Channel number within TDC
const int TDCFORMAT_IN_csm_tdc_chan_id_width = 5;
const int TDCFORMAT_IN_csm_tdc_chan_id_lsb = 0;
const int TDCFORMAT_IN_csm_tdc_chan_id_msb = 4;

// Edge or pair mode
const int TDCFORMAT_IN_csm_tdc_edge_mode_width = 2;
const int TDCFORMAT_IN_csm_tdc_edge_mode_lsb = 5;
const int TDCFORMAT_IN_csm_tdc_edge_mode_msb = 6;

// TDC BCID
const int TDCFORMAT_IN_csm_tdc_coarse_time_width = 12;
const int TDCFORMAT_IN_csm_tdc_coarse_time_lsb = 7;
const int TDCFORMAT_IN_csm_tdc_coarse_time_msb = 18;

// TDC fine time with BCID
const int TDCFORMAT_IN_csm_tdc_fine_time_width = 5;
const int TDCFORMAT_IN_csm_tdc_fine_time_lsb = 19;
const int TDCFORMAT_IN_csm_tdc_fine_time_msb = 23;

// Pulse width
const int TDCFORMAT_IN_csm_tdc_pulse_width_width = 8;
const int TDCFORMAT_IN_csm_tdc_pulse_width_lsb = 24;
const int TDCFORMAT_IN_csm_tdc_pulse_width_msb = 31;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int TUBEREMAP_IN_width = 44;

// Fiber ID within board
const int TUBEREMAP_IN_fiber_id_width = 5;
const int TUBEREMAP_IN_fiber_id_lsb = 32;
const int TUBEREMAP_IN_fiber_id_msb = 36;

// Elink ID within fiber
const int TUBEREMAP_IN_elink_id_width = 4;
const int TUBEREMAP_IN_elink_id_lsb = 37;
const int TUBEREMAP_IN_elink_id_msb = 40;

// Valid bit
const int TUBEREMAP_IN_data_valid_width = 1;
const int TUBEREMAP_IN_data_valid_lsb = 41;
const int TUBEREMAP_IN_data_valid_msb = 41;

// 
const int TUBEREMAP_IN_station_id_width = 2;
const int TUBEREMAP_IN_station_id_lsb = 42;
const int TUBEREMAP_IN_station_id_msb = 43;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int HESF_IN_SLCPROC_width = 48;

// inner MDT segment chip destination
const int HESF_IN_SLCPROC_mdt_seg_dest_c_width = 2;
const int HESF_IN_SLCPROC_mdt_seg_dest_c_lsb = 0;
const int HESF_IN_SLCPROC_mdt_seg_dest_c_msb = 1;

// SLc Inner Vector MDT chamber ID
const int HESF_IN_SLCPROC_slcproc_vec_mdt_id_width = 6;
const int HESF_IN_SLCPROC_slcproc_vec_mdt_id_lsb = 2;
const int HESF_IN_SLCPROC_slcproc_vec_mdt_id_msb = 7;

// SLc inner vector rho position
const int HESF_IN_SLCPROC_slcproc_vec_pos_width = 10;
const int HESF_IN_SLCPROC_slcproc_vec_pos_lsb = 8;
const int HESF_IN_SLCPROC_slcproc_vec_pos_msb = 17;

// SLc inner vector theta angle
const int HESF_IN_SLCPROC_slcproc_vec_ang_width = 10;
const int HESF_IN_SLCPROC_slcproc_vec_ang_lsb = 18;
const int HESF_IN_SLCPROC_slcproc_vec_ang_msb = 27;

// SLc Muon Unique Identifier
const int HESF_IN_SLCPROC_slc_mu_id_width = 20;
const int HESF_IN_SLCPROC_slc_mu_id_lsb = 28;
const int HESF_IN_SLCPROC_slc_mu_id_msb = 47;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int HE_IN_TUBEREMAP_width = 68;

// Tube layer within one station
const int HE_IN_TUBEREMAP_mdt_tube_layer_width = 5;
const int HE_IN_TUBEREMAP_mdt_tube_layer_lsb = 0;
const int HE_IN_TUBEREMAP_mdt_tube_layer_msb = 4;

// Tube number within one station
const int HE_IN_TUBEREMAP_mdt_tube_num_width = 9;
const int HE_IN_TUBEREMAP_mdt_tube_num_lsb = 5;
const int HE_IN_TUBEREMAP_mdt_tube_num_msb = 13;

// Tube radial position
const int HE_IN_TUBEREMAP_mdt_tube_rho_width = 18;
const int HE_IN_TUBEREMAP_mdt_tube_rho_lsb = 14;
const int HE_IN_TUBEREMAP_mdt_tube_rho_msb = 31;

// Tube position along z
const int HE_IN_TUBEREMAP_mdt_tube_z_width = 19;
const int HE_IN_TUBEREMAP_mdt_tube_z_lsb = 32;
const int HE_IN_TUBEREMAP_mdt_tube_z_msb = 50;

// Tube (uncalibrated) time
const int HE_IN_TUBEREMAP_mdt_tube_time_width = 17;
const int HE_IN_TUBEREMAP_mdt_tube_time_lsb = 51;
const int HE_IN_TUBEREMAP_mdt_tube_time_msb = 67;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int LSF_IN_HE_width = 39;

// Hit Valid bit
const int LSF_IN_HE_mdt_hit_valid_width = 1;
const int LSF_IN_HE_mdt_hit_valid_lsb = 0;
const int LSF_IN_HE_mdt_hit_valid_msb = 0;

// Data Valid bit
const int LSF_IN_HE_data_valid_width = 1;
const int LSF_IN_HE_data_valid_lsb = 1;
const int LSF_IN_HE_data_valid_msb = 1;

// Tube local position along precision coord
const int LSF_IN_HE_lsf_mdt_tube_local_x_width = 14;
const int LSF_IN_HE_lsf_mdt_tube_local_x_lsb = 2;
const int LSF_IN_HE_lsf_mdt_tube_local_x_msb = 15;

// Tube local position along second coord
const int LSF_IN_HE_lsf_mdt_tube_local_y_width = 14;
const int LSF_IN_HE_lsf_mdt_tube_local_y_lsb = 16;
const int LSF_IN_HE_lsf_mdt_tube_local_y_msb = 29;

// Tube drift radius
const int LSF_IN_HE_lsf_mdt_tube_radius_width = 9;
const int LSF_IN_HE_lsf_mdt_tube_radius_lsb = 30;
const int LSF_IN_HE_lsf_mdt_tube_radius_msb = 38;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int CSF_IN_HE_width = 66;

// Hit Valid bit
const int CSF_IN_HE_mdt_hit_valid_width = 1;
const int CSF_IN_HE_mdt_hit_valid_lsb = 0;
const int CSF_IN_HE_mdt_hit_valid_msb = 0;

// Data Valid bit
const int CSF_IN_HE_data_valid_width = 1;
const int CSF_IN_HE_data_valid_lsb = 1;
const int CSF_IN_HE_data_valid_msb = 1;

// Tube local position along precision coord
const int CSF_IN_HE_csf_mdt_tube_local_x_width = 16;
const int CSF_IN_HE_csf_mdt_tube_local_x_lsb = 2;
const int CSF_IN_HE_csf_mdt_tube_local_x_msb = 17;

// Tube local position along second coord
const int CSF_IN_HE_csf_mdt_tube_local_y_width = 16;
const int CSF_IN_HE_csf_mdt_tube_local_y_lsb = 18;
const int CSF_IN_HE_csf_mdt_tube_local_y_msb = 33;

// Tube drift radius
const int CSF_IN_HE_csf_mdt_tube_radius_width = 32;
const int CSF_IN_HE_csf_mdt_tube_radius_lsb = 34;
const int CSF_IN_HE_csf_mdt_tube_radius_msb = 65;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int PTCALC_IN_SLCPIPE_width = 61;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int PTCALC_IN_SF_width = 55;

// SF MDT segment valid bit
const int PTCALC_IN_SF_sf_seg_valid_width = 1;
const int PTCALC_IN_SF_sf_seg_valid_lsb = 26;
const int PTCALC_IN_SF_sf_seg_valid_msb = 26;

// SF MDT segment position along the precision coord
const int PTCALC_IN_SF_sf_seg_pos_width = 16;
const int PTCALC_IN_SF_sf_seg_pos_lsb = 27;
const int PTCALC_IN_SF_sf_seg_pos_msb = 42;

// SF MDT segment angle along the precision coord
const int PTCALC_IN_SF_sf_seg_angle_width = 11;
const int PTCALC_IN_SF_sf_seg_angle_lsb = 43;
const int PTCALC_IN_SF_sf_seg_angle_msb = 53;

// SF MDT segment qualiry
const int PTCALC_IN_SF_sf_seg_quality_width = 1;
const int PTCALC_IN_SF_sf_seg_quality_lsb = 54;
const int PTCALC_IN_SF_sf_seg_quality_msb = 54;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int MTCBUILD_IN_PTCALC_ENDCAP_width = 100;

// pT threshold satisfied by the MDT TC
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_width = 4;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_lsb = 80;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_thresh_msb = 83;

// pT calculated by the pT Calc
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_width = 8;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_lsb = 84;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_pt_msb = 91;

// MDT processing flags
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_width = 4;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_lsb = 92;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_processing_flags_msb = 95;

// charge determined from the pT calc
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_width = 1;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_lsb = 96;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_charge_msb = 96;

// # of segments used for calculating the pT
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_width = 2;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_lsb = 97;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_n_segments_msb = 98;

// quality of the MDT TC (TBC how this is defined)
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_width = 1;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_lsb = 99;
const int MTCBUILD_IN_PTCALC_ENDCAP_mtc_quality_msb = 99;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
const int MTCBUILD_IN_PTCALC_BARREL_width = 104;

// pT threshold satisfied by the MDT TC
const int MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_width = 4;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_lsb = 84;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_pt_thresh_msb = 87;

// pT calculated by the pT Calc
const int MTCBUILD_IN_PTCALC_BARREL_mtc_pt_width = 8;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_pt_lsb = 88;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_pt_msb = 95;

// MDT processing flags
const int MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_width = 4;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_lsb = 96;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_processing_flags_msb = 99;

// charge determined from the pT calc
const int MTCBUILD_IN_PTCALC_BARREL_mtc_charge_width = 1;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_charge_lsb = 100;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_charge_msb = 100;

// # of segments used for calculating the pT
const int MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_width = 2;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_lsb = 101;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_n_segments_msb = 102;

// quality of the MDT TC (TBC how this is defined)
const int MTCBUILD_IN_PTCALC_BARREL_mtc_quality_width = 1;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_quality_lsb = 103;
const int MTCBUILD_IN_PTCALC_BARREL_mtc_quality_msb = 103;

//---------------------------------------------------------------------------------------------------------------------------

