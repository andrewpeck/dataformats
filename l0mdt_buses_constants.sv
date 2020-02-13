//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//---------------------------------------------------------------------------------------------------------------------------
'define SLC_MUID_width 20;

// 
'define SLC_MUID_bcid_width 12;
'define SLC_MUID_bcid_lsb 8;
'define SLC_MUID_bcid_msb 19;
'define SLC_MUID_bcid_decb 0;

// 
'define SLC_MUID_slid_width 6;
'define SLC_MUID_slid_lsb 2;
'define SLC_MUID_slid_msb 7;
'define SLC_MUID_slid_decb 0;

// 
'define SLC_MUID_slcid_width 2;
'define SLC_MUID_slcid_lsb 0;
'define SLC_MUID_slcid_msb 1;
'define SLC_MUID_slcid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLC_COMMON_width 42;

// SLc BCID
'define SLC_COMMON_bcid_width 12;
'define SLC_COMMON_bcid_lsb 30;
'define SLC_COMMON_bcid_msb 41;
'define SLC_COMMON_bcid_decb 0;

// SLc charge
'define SLC_COMMON_charge_width 1;
'define SLC_COMMON_charge_lsb 29;
'define SLC_COMMON_charge_msb 29;
'define SLC_COMMON_charge_decb 0;

// SLc highest pT threshold passed
'define SLC_COMMON_ptthresh_width 4;
'define SLC_COMMON_ptthresh_lsb 25;
'define SLC_COMMON_ptthresh_msb 28;
'define SLC_COMMON_ptthresh_decb 0;

// SLc Phi Position
'define SLC_COMMON_posphi_width 9;
'define SLC_COMMON_posphi_lsb 16;
'define SLC_COMMON_posphi_msb 24;
'define SLC_COMMON_posphi_decb 0;

// SLc Eta Position
'define SLC_COMMON_poseta_width 14;
'define SLC_COMMON_poseta_lsb 2;
'define SLC_COMMON_poseta_msb 15;
'define SLC_COMMON_poseta_decb 11;

// SLc Identification (up to 3)
'define SLC_COMMON_slcid_width 2;
'define SLC_COMMON_slcid_lsb 0;
'define SLC_COMMON_slcid_msb 1;
'define SLC_COMMON_slcid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLC_ENDCAP_width 80;

// NSW segment angle wrt Eta position
'define SLC_ENDCAP_nswseg_angdtheta_width 5;
'define SLC_ENDCAP_nswseg_angdtheta_lsb 75;
'define SLC_ENDCAP_nswseg_angdtheta_msb 79;
'define SLC_ENDCAP_nswseg_angdtheta_decb 0;

// NSW segment phi position
'define SLC_ENDCAP_nswseg_posphi_width 8;
'define SLC_ENDCAP_nswseg_posphi_lsb 67;
'define SLC_ENDCAP_nswseg_posphi_msb 74;
'define SLC_ENDCAP_nswseg_posphi_decb 0;

// NSW segment eta position
'define SLC_ENDCAP_nswseg_poseta_width 14;
'define SLC_ENDCAP_nswseg_poseta_lsb 53;
'define SLC_ENDCAP_nswseg_poseta_msb 66;
'define SLC_ENDCAP_nswseg_poseta_decb 13;

// SLc Segment Angle wrt Phi position
'define SLC_ENDCAP_seg_angdphi_width 4;
'define SLC_ENDCAP_seg_angdphi_lsb 49;
'define SLC_ENDCAP_seg_angdphi_msb 52;
'define SLC_ENDCAP_seg_angdphi_decb 0;

// SLc Segment Angle wrt Eta position
'define SLC_ENDCAP_seg_angdtheta_width 7;
'define SLC_ENDCAP_seg_angdtheta_lsb 42;
'define SLC_ENDCAP_seg_angdtheta_msb 48;
'define SLC_ENDCAP_seg_angdtheta_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLC_BARREL_width 84;

// SLc coincidence type
'define SLC_BARREL_cointype_width 2;
'define SLC_BARREL_cointype_lsb 82;
'define SLC_BARREL_cointype_msb 83;
'define SLC_BARREL_cointype_decb 0;

// SLc Hit Z Position in RPC3
'define SLC_BARREL_rpc3_posz_width 10;
'define SLC_BARREL_rpc3_posz_lsb 72;
'define SLC_BARREL_rpc3_posz_msb 81;
'define SLC_BARREL_rpc3_posz_decb 0;

// SLc Hit Z Position in RPC2
'define SLC_BARREL_rpc2_posz_width 10;
'define SLC_BARREL_rpc2_posz_lsb 62;
'define SLC_BARREL_rpc2_posz_msb 71;
'define SLC_BARREL_rpc2_posz_decb 0;

// SLc Hit Z Position in RPC1
'define SLC_BARREL_rpc1_posz_width 10;
'define SLC_BARREL_rpc1_posz_lsb 52;
'define SLC_BARREL_rpc1_posz_msb 61;
'define SLC_BARREL_rpc1_posz_decb 0;

// SLc Hit Z Position in RPC0
'define SLC_BARREL_rpc0_posz_width 10;
'define SLC_BARREL_rpc0_posz_lsb 42;
'define SLC_BARREL_rpc0_posz_msb 51;
'define SLC_BARREL_rpc0_posz_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_CAND_width 54;

// SLc board destination
'define SLCPROC_CAND_destsl_width 2;
'define SLCPROC_CAND_destsl_lsb 52;
'define SLCPROC_CAND_destsl_msb 53;
'define SLCPROC_CAND_destsl_decb 0;

// SLc phimod
'define SLCPROC_CAND_phimod_width 8;
'define SLCPROC_CAND_phimod_lsb 44;
'define SLCPROC_CAND_phimod_msb 51;
'define SLCPROC_CAND_phimod_decb 0;

// SLc Extra Vector MDT chamber ID
'define SLCPROC_CAND_vec_mdtid_width 6;
'define SLCPROC_CAND_vec_mdtid_lsb 38;
'define SLCPROC_CAND_vec_mdtid_msb 43;
'define SLCPROC_CAND_vec_mdtid_decb 0;

// SLc Outer Vector MDT chamber ID
'define SLCPROC_CAND_vec_mdtid_width 6;
'define SLCPROC_CAND_vec_mdtid_lsb 32;
'define SLCPROC_CAND_vec_mdtid_msb 37;
'define SLCPROC_CAND_vec_mdtid_decb 0;

// SLc Middle Vector MDT chamber ID
'define SLCPROC_CAND_vec_mdtid_width 6;
'define SLCPROC_CAND_vec_mdtid_lsb 26;
'define SLCPROC_CAND_vec_mdtid_msb 31;
'define SLCPROC_CAND_vec_mdtid_decb 0;

// SLc Inner Vector MDT chamber ID
'define SLCPROC_CAND_vec_mdtid_width 6;
'define SLCPROC_CAND_vec_mdtid_lsb 20;
'define SLCPROC_CAND_vec_mdtid_msb 25;
'define SLCPROC_CAND_vec_mdtid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define CSM_width 32;

// Pulse width
'define CSM_pulsewidth_width 8;
'define CSM_pulsewidth_lsb 24;
'define CSM_pulsewidth_msb 31;
'define CSM_pulsewidth_decb 0;

// TDC fine time with BCID
'define CSM_finetime_width 5;
'define CSM_finetime_lsb 19;
'define CSM_finetime_msb 23;
'define CSM_finetime_decb 0;

// TDC BCID
'define CSM_coarsetime_width 12;
'define CSM_coarsetime_lsb 7;
'define CSM_coarsetime_msb 18;
'define CSM_coarsetime_decb 0;

// Edge or pair mode
'define CSM_edgemode_width 2;
'define CSM_edgemode_lsb 5;
'define CSM_edgemode_msb 6;
'define CSM_edgemode_decb 0;

// Channel number within TDC
'define CSM_chanid_width 5;
'define CSM_chanid_lsb 0;
'define CSM_chanid_msb 4;
'define CSM_chanid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define TUBEREMAP_IN_width 44;

// 
'define TUBEREMAP_IN_station_id_width 2;
'define TUBEREMAP_IN_station_id_lsb 42;
'define TUBEREMAP_IN_station_id_msb 43;
'define TUBEREMAP_IN_station_id_decb 0;

// Valid bit
'define TUBEREMAP_IN_data_valid_width 1;
'define TUBEREMAP_IN_data_valid_lsb 41;
'define TUBEREMAP_IN_data_valid_msb 41;
'define TUBEREMAP_IN_data_valid_decb 0;

// Elink ID within fiber
'define TUBEREMAP_IN_elink_id_width 4;
'define TUBEREMAP_IN_elink_id_lsb 37;
'define TUBEREMAP_IN_elink_id_msb 40;
'define TUBEREMAP_IN_elink_id_decb 0;

// Fiber ID within board
'define TUBEREMAP_IN_fiber_id_width 5;
'define TUBEREMAP_IN_fiber_id_lsb 32;
'define TUBEREMAP_IN_fiber_id_msb 36;
'define TUBEREMAP_IN_fiber_id_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPROC_SEG_width 48;

// SLc inner vector theta angle
'define SLCPROC_SEG_vec_ang_width 10;
'define SLCPROC_SEG_vec_ang_lsb 38;
'define SLCPROC_SEG_vec_ang_msb 47;
'define SLCPROC_SEG_vec_ang_decb 0;

// SLc inner vector rho position
'define SLCPROC_SEG_vec_pos_width 10;
'define SLCPROC_SEG_vec_pos_lsb 28;
'define SLCPROC_SEG_vec_pos_msb 37;
'define SLCPROC_SEG_vec_pos_decb 0;

// SLc Inner Vector MDT chamber ID
'define SLCPROC_SEG_vec_mdtid_width 6;
'define SLCPROC_SEG_vec_mdtid_lsb 22;
'define SLCPROC_SEG_vec_mdtid_msb 27;
'define SLCPROC_SEG_vec_mdtid_decb 0;

// inner MDT segment chip destination
'define SLCPROC_SEG_mdtseg_dest_width 2;
'define SLCPROC_SEG_mdtseg_dest_lsb 20;
'define SLCPROC_SEG_mdtseg_dest_msb 21;
'define SLCPROC_SEG_mdtseg_dest_decb 0;

// SLc Muon Unique Identifier
'define SLCPROC_SEG_SLC_MUID_width 20;
'define SLCPROC_SEG_SLC_MUID_lsb 0;
'define SLCPROC_SEG_SLC_MUID_msb 19;
'define SLCPROC_SEG_SLC_MUID_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define TUBEREMAP_width 74;

// Tube (uncalibrated) time
'define TUBEREMAP_mdt_tube_time_width 21;
'define TUBEREMAP_mdt_tube_time_lsb 53;
'define TUBEREMAP_mdt_tube_time_msb 73;
'define TUBEREMAP_mdt_tube_time_decb 4;

// Tube position along z
'define TUBEREMAP_mdt_tube_z_width 19;
'define TUBEREMAP_mdt_tube_z_lsb 34;
'define TUBEREMAP_mdt_tube_z_msb 52;
'define TUBEREMAP_mdt_tube_z_decb 4;

// Tube radial position
'define TUBEREMAP_mdt_tube_rho_width 18;
'define TUBEREMAP_mdt_tube_rho_lsb 16;
'define TUBEREMAP_mdt_tube_rho_msb 33;
'define TUBEREMAP_mdt_tube_rho_decb 4;

// Tube number within one station
'define TUBEREMAP_mdt_tube_num_width 10;
'define TUBEREMAP_mdt_tube_num_lsb 6;
'define TUBEREMAP_mdt_tube_num_msb 15;
'define TUBEREMAP_mdt_tube_num_decb 0;

// Tube layer within one station
'define TUBEREMAP_mdt_tube_layer_width 6;
'define TUBEREMAP_mdt_tube_layer_lsb 0;
'define TUBEREMAP_mdt_tube_layer_msb 5;
'define TUBEREMAP_mdt_tube_layer_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define HE_LSF_width 39;

// Tube drift radius
'define HE_LSF_mdt_radius_width 9;
'define HE_LSF_mdt_radius_lsb 30;
'define HE_LSF_mdt_radius_msb 38;
'define HE_LSF_mdt_radius_decb 5;

// Tube local position along second coord
'define HE_LSF_mdt_localy_width 14;
'define HE_LSF_mdt_localy_lsb 16;
'define HE_LSF_mdt_localy_msb 29;
'define HE_LSF_mdt_localy_decb 4;

// Tube local position along precision coord
'define HE_LSF_mdt_localx_width 14;
'define HE_LSF_mdt_localx_lsb 2;
'define HE_LSF_mdt_localx_msb 15;
'define HE_LSF_mdt_localx_decb 4;

// Data Valid bit
'define HE_LSF_data_valid_width 1;
'define HE_LSF_data_valid_lsb 1;
'define HE_LSF_data_valid_msb 1;
'define HE_LSF_data_valid_decb 0;

// Hit Valid bit
'define HE_LSF_mdt_valid_width 1;
'define HE_LSF_mdt_valid_lsb 0;
'define HE_LSF_mdt_valid_msb 0;
'define HE_LSF_mdt_valid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define HE_CSF_width 39;

// Tube drift radius
'define HE_CSF_mdt_radius_width 9;
'define HE_CSF_mdt_radius_lsb 30;
'define HE_CSF_mdt_radius_msb 38;
'define HE_CSF_mdt_radius_decb 4;

// Tube local position along second coord
'define HE_CSF_mdt_localy_width 14;
'define HE_CSF_mdt_localy_lsb 16;
'define HE_CSF_mdt_localy_msb 29;
'define HE_CSF_mdt_localy_decb 4;

// Tube local position along precision coord
'define HE_CSF_mdt_localx_width 14;
'define HE_CSF_mdt_localx_lsb 2;
'define HE_CSF_mdt_localx_msb 15;
'define HE_CSF_mdt_localx_decb 3;

// Data Valid bit
'define HE_CSF_data_valid_width 1;
'define HE_CSF_data_valid_lsb 1;
'define HE_CSF_data_valid_msb 1;
'define HE_CSF_data_valid_decb 0;

// Hit Valid bit
'define HE_CSF_mdt_valid_width 1;
'define HE_CSF_mdt_valid_lsb 0;
'define HE_CSF_mdt_valid_msb 0;
'define HE_CSF_mdt_valid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SLCPIPELINE_width 53;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define SF_width 55;

// SF MDT segment qualiry
'define SF_segquality_width 1;
'define SF_segquality_lsb 54;
'define SF_segquality_msb 54;
'define SF_segquality_decb 0;

// SF MDT segment angle along the precision coord
'define SF_segangle_width 11;
'define SF_segangle_lsb 43;
'define SF_segangle_msb 53;
'define SF_segangle_decb 0;

// SF MDT segment position along the precision coord
'define SF_segpos_width 16;
'define SF_segpos_lsb 27;
'define SF_segpos_msb 42;
'define SF_segpos_decb 2;

// SF MDT segment valid bit
'define SF_segvalid_width 1;
'define SF_segvalid_lsb 26;
'define SF_segvalid_msb 26;
'define SF_segvalid_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define PTCALC_ENDCAP_width 100;

// quality of the MDT TC (TBC how this is defined)
'define PTCALC_ENDCAP_mtc_quality_width 1;
'define PTCALC_ENDCAP_mtc_quality_lsb 99;
'define PTCALC_ENDCAP_mtc_quality_msb 99;
'define PTCALC_ENDCAP_mtc_quality_decb 0;

// # of segments used for calculating the pT
'define PTCALC_ENDCAP_mtc_nsegments_width 2;
'define PTCALC_ENDCAP_mtc_nsegments_lsb 97;
'define PTCALC_ENDCAP_mtc_nsegments_msb 98;
'define PTCALC_ENDCAP_mtc_nsegments_decb 0;

// charge determined from the pT calc
'define PTCALC_ENDCAP_mtc_charge_width 1;
'define PTCALC_ENDCAP_mtc_charge_lsb 96;
'define PTCALC_ENDCAP_mtc_charge_msb 96;
'define PTCALC_ENDCAP_mtc_charge_decb 0;

// MDT processing flags
'define PTCALC_ENDCAP_mtc_procflags_width 4;
'define PTCALC_ENDCAP_mtc_procflags_lsb 92;
'define PTCALC_ENDCAP_mtc_procflags_msb 95;
'define PTCALC_ENDCAP_mtc_procflags_decb 0;

// pT calculated by the pT Calc
'define PTCALC_ENDCAP_mtc_pt_width 8;
'define PTCALC_ENDCAP_mtc_pt_lsb 84;
'define PTCALC_ENDCAP_mtc_pt_msb 91;
'define PTCALC_ENDCAP_mtc_pt_decb 1;

// pT threshold satisfied by the MDT TC
'define PTCALC_ENDCAP_mtc_ptthresh_width 4;
'define PTCALC_ENDCAP_mtc_ptthresh_lsb 80;
'define PTCALC_ENDCAP_mtc_ptthresh_msb 83;
'define PTCALC_ENDCAP_mtc_ptthresh_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------------------------------
'define PTCALC_BARREL_width 104;

// quality of the MDT TC (TBC how this is defined)
'define PTCALC_BARREL_mtc_quality_width 1;
'define PTCALC_BARREL_mtc_quality_lsb 103;
'define PTCALC_BARREL_mtc_quality_msb 103;
'define PTCALC_BARREL_mtc_quality_decb 0;

// # of segments used for calculating the pT
'define PTCALC_BARREL_mtc_nsegments_width 2;
'define PTCALC_BARREL_mtc_nsegments_lsb 101;
'define PTCALC_BARREL_mtc_nsegments_msb 102;
'define PTCALC_BARREL_mtc_nsegments_decb 0;

// charge determined from the pT calc
'define PTCALC_BARREL_mtc_charge_width 1;
'define PTCALC_BARREL_mtc_charge_lsb 100;
'define PTCALC_BARREL_mtc_charge_msb 100;
'define PTCALC_BARREL_mtc_charge_decb 0;

// MDT processing flags
'define PTCALC_BARREL_mtc_procflags_width 4;
'define PTCALC_BARREL_mtc_procflags_lsb 96;
'define PTCALC_BARREL_mtc_procflags_msb 99;
'define PTCALC_BARREL_mtc_procflags_decb 0;

// pT calculated by the pT Calc
'define PTCALC_BARREL_mtc_pt_width 8;
'define PTCALC_BARREL_mtc_pt_lsb 88;
'define PTCALC_BARREL_mtc_pt_msb 95;
'define PTCALC_BARREL_mtc_pt_decb 1;

// pT threshold satisfied by the MDT TC
'define PTCALC_BARREL_mtc_ptthresh_width 4;
'define PTCALC_BARREL_mtc_ptthresh_lsb 84;
'define PTCALC_BARREL_mtc_ptthresh_msb 87;
'define PTCALC_BARREL_mtc_ptthresh_decb 0;

//---------------------------------------------------------------------------------------------------------------------------

