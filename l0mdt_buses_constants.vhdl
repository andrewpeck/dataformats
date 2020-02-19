--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Auto-generated from https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-----------------------------------------------------------------------------------------------------------------------------
constant SLC_MUID_width : natural := 20;

-- SLc Identification (up to 3)
constant SLC_MUID_slcid_width : natural := 2;
constant SLC_MUID_slcid_lsb : natural := 18;
constant SLC_MUID_slcid_decb : natural := 0;

-- SL board ID (based on the fiber ID)
constant SLC_MUID_slid_width : natural := 6;
constant SLC_MUID_slid_lsb : natural := 12;
constant SLC_MUID_slid_decb : natural := 0;

-- BCID from SLC
constant SLC_MUID_bcid_width : natural := 12;
constant SLC_MUID_bcid_lsb : natural := 0;
constant SLC_MUID_bcid_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLC_COMMON_width : natural := 42;

-- SLc Identification (up to 3)
constant SLC_COMMON_slcid_width : natural := 2;
constant SLC_COMMON_slcid_lsb : natural := 40;
constant SLC_COMMON_slcid_decb : natural := 0;

-- SLc Eta Position
constant SLC_COMMON_poseta_width : natural := 14;
constant SLC_COMMON_poseta_lsb : natural := 26;
constant SLC_COMMON_poseta_decb : natural := 11;

-- SLc Phi Position
constant SLC_COMMON_posphi_width : natural := 9;
constant SLC_COMMON_posphi_lsb : natural := 17;
constant SLC_COMMON_posphi_decb : natural := 0;

-- SLc highest pT threshold passed
constant SLC_COMMON_ptthresh_width : natural := 4;
constant SLC_COMMON_ptthresh_lsb : natural := 13;
constant SLC_COMMON_ptthresh_decb : natural := 0;

-- SLc charge
constant SLC_COMMON_charge_width : natural := 1;
constant SLC_COMMON_charge_lsb : natural := 12;
constant SLC_COMMON_charge_decb : natural := 0;

-- SLc BCID
constant SLC_COMMON_bcid_width : natural := 12;
constant SLC_COMMON_bcid_lsb : natural := 0;
constant SLC_COMMON_bcid_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLC_ENDCAP_width : natural := 80;

-- SLc Segment Angle wrt Eta position
constant SLC_ENDCAP_seg_angdtheta_width : natural := 7;
constant SLC_ENDCAP_seg_angdtheta_lsb : natural := 31;
constant SLC_ENDCAP_seg_angdtheta_decb : natural := 0;

-- SLc Segment Angle wrt Phi position
constant SLC_ENDCAP_seg_angdphi_width : natural := 4;
constant SLC_ENDCAP_seg_angdphi_lsb : natural := 27;
constant SLC_ENDCAP_seg_angdphi_decb : natural := 0;

-- NSW segment eta position
constant SLC_ENDCAP_nswseg_poseta_width : natural := 14;
constant SLC_ENDCAP_nswseg_poseta_lsb : natural := 13;
constant SLC_ENDCAP_nswseg_poseta_decb : natural := 13;

-- NSW segment phi position
constant SLC_ENDCAP_nswseg_posphi_width : natural := 8;
constant SLC_ENDCAP_nswseg_posphi_lsb : natural := 5;
constant SLC_ENDCAP_nswseg_posphi_decb : natural := 0;

-- NSW segment angle wrt Eta position
constant SLC_ENDCAP_nswseg_angdtheta_width : natural := 5;
constant SLC_ENDCAP_nswseg_angdtheta_lsb : natural := 0;
constant SLC_ENDCAP_nswseg_angdtheta_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLC_BARREL_width : natural := 84;

-- SLc Hit Z Position in RPC0
constant SLC_BARREL_rpc0_posz_width : natural := 10;
constant SLC_BARREL_rpc0_posz_lsb : natural := 32;
constant SLC_BARREL_rpc0_posz_decb : natural := 0;

-- SLc Hit Z Position in RPC1
constant SLC_BARREL_rpc1_posz_width : natural := 10;
constant SLC_BARREL_rpc1_posz_lsb : natural := 22;
constant SLC_BARREL_rpc1_posz_decb : natural := 0;

-- SLc Hit Z Position in RPC2
constant SLC_BARREL_rpc2_posz_width : natural := 10;
constant SLC_BARREL_rpc2_posz_lsb : natural := 12;
constant SLC_BARREL_rpc2_posz_decb : natural := 0;

-- SLc Hit Z Position in RPC3
constant SLC_BARREL_rpc3_posz_width : natural := 10;
constant SLC_BARREL_rpc3_posz_lsb : natural := 2;
constant SLC_BARREL_rpc3_posz_decb : natural := 0;

-- SLc coincidence type
constant SLC_BARREL_cointype_width : natural := 2;
constant SLC_BARREL_cointype_lsb : natural := 0;
constant SLC_BARREL_cointype_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLCPROC_CAND_COMMON_width : natural := 34;

-- SLc board destination
constant SLCPROC_CAND_COMMON_destsl_width : natural := 2;
constant SLCPROC_CAND_COMMON_destsl_lsb : natural := 32;
constant SLCPROC_CAND_COMMON_destsl_decb : natural := 0;

-- SLc phimod
constant SLCPROC_CAND_COMMON_phimod_width : natural := 8;
constant SLCPROC_CAND_COMMON_phimod_lsb : natural := 24;
constant SLCPROC_CAND_COMMON_phimod_decb : natural := 0;

-- SLc Inner Vector MDT chamber ID
constant SLCPROC_CAND_COMMON_vec_mdtid_width : natural := 6;
constant SLCPROC_CAND_COMMON_vec_mdtid_lsb : natural := 18;
constant SLCPROC_CAND_COMMON_vec_mdtid_decb : natural := 0;

-- SLc Middle Vector MDT chamber ID
constant SLCPROC_CAND_COMMON_vec_mdtid_width : natural := 6;
constant SLCPROC_CAND_COMMON_vec_mdtid_lsb : natural := 12;
constant SLCPROC_CAND_COMMON_vec_mdtid_decb : natural := 0;

-- SLc Outer Vector MDT chamber ID
constant SLCPROC_CAND_COMMON_vec_mdtid_width : natural := 6;
constant SLCPROC_CAND_COMMON_vec_mdtid_lsb : natural := 6;
constant SLCPROC_CAND_COMMON_vec_mdtid_decb : natural := 0;

-- SLc Extra Vector MDT chamber ID
constant SLCPROC_CAND_COMMON_vec_mdtid_width : natural := 6;
constant SLCPROC_CAND_COMMON_vec_mdtid_lsb : natural := 0;
constant SLCPROC_CAND_COMMON_vec_mdtid_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLCPROC_CAND_ENDCAP_width : natural := 134;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLCPROC_CAND_BARREL_width : natural := 138;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant CSM_width : natural := 32;

-- Channel number within TDC
constant CSM_chanid_width : natural := 5;
constant CSM_chanid_lsb : natural := 27;
constant CSM_chanid_decb : natural := 0;

-- Edge or pair mode
constant CSM_edgemode_width : natural := 2;
constant CSM_edgemode_lsb : natural := 25;
constant CSM_edgemode_decb : natural := 0;

-- TDC BCID
constant CSM_coarsetime_width : natural := 12;
constant CSM_coarsetime_lsb : natural := 13;
constant CSM_coarsetime_decb : natural := 0;

-- TDC fine time with BCID
constant CSM_finetime_width : natural := 5;
constant CSM_finetime_lsb : natural := 8;
constant CSM_finetime_decb : natural := 0;

-- Pulse width
constant CSM_pulsewidth_width : natural := 8;
constant CSM_pulsewidth_lsb : natural := 0;
constant CSM_pulsewidth_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant TDCFORMAT_width : natural := 44;

-- Fiber ID within board
constant TDCFORMAT_fiberid_width : natural := 5;
constant TDCFORMAT_fiberid_lsb : natural := 7;
constant TDCFORMAT_fiberid_decb : natural := 0;

-- Elink ID within fiber
constant TDCFORMAT_elinkid_width : natural := 4;
constant TDCFORMAT_elinkid_lsb : natural := 3;
constant TDCFORMAT_elinkid_decb : natural := 0;

-- Valid bit
constant TDCFORMAT_datavalid_width : natural := 1;
constant TDCFORMAT_datavalid_lsb : natural := 2;
constant TDCFORMAT_datavalid_decb : natural := 0;

-- MDT Station Type (Inner, Middle, Outer, Extra)
constant TDCFORMAT_stationid_width : natural := 2;
constant TDCFORMAT_stationid_lsb : natural := 0;
constant TDCFORMAT_stationid_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLCPROC_SEG_width : natural := 48;

-- SLc Muon Unique Identifier
constant SLCPROC_SEG_SLC_MUID_width : natural := 20;
constant SLCPROC_SEG_SLC_MUID_lsb : natural := 28;
constant SLCPROC_SEG_SLC_MUID_decb : natural := 0;

-- inner MDT segment chip destination
constant SLCPROC_SEG_mdtseg_dest_width : natural := 2;
constant SLCPROC_SEG_mdtseg_dest_lsb : natural := 26;
constant SLCPROC_SEG_mdtseg_dest_decb : natural := 0;

-- SLc Inner Vector MDT chamber ID
constant SLCPROC_SEG_vec_mdtid_width : natural := 6;
constant SLCPROC_SEG_vec_mdtid_lsb : natural := 20;
constant SLCPROC_SEG_vec_mdtid_decb : natural := 0;

-- SLc inner vector rho position
constant SLCPROC_SEG_vec_pos_width : natural := 10;
constant SLCPROC_SEG_vec_pos_lsb : natural := 10;
constant SLCPROC_SEG_vec_pos_decb : natural := 0;

-- SLc inner vector theta angle
constant SLCPROC_SEG_vec_ang_width : natural := 10;
constant SLCPROC_SEG_vec_ang_lsb : natural := 0;
constant SLCPROC_SEG_vec_ang_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant TUBEREMAP_width : natural := 74;

-- Tube layer within one station
constant TUBEREMAP_mdt_tube_layer_width : natural := 6;
constant TUBEREMAP_mdt_tube_layer_lsb : natural := 68;
constant TUBEREMAP_mdt_tube_layer_decb : natural := 0;

-- Tube number within one station
constant TUBEREMAP_mdt_tube_num_width : natural := 10;
constant TUBEREMAP_mdt_tube_num_lsb : natural := 58;
constant TUBEREMAP_mdt_tube_num_decb : natural := 0;

-- Tube radial position
constant TUBEREMAP_mdt_tube_rho_width : natural := 18;
constant TUBEREMAP_mdt_tube_rho_lsb : natural := 40;
constant TUBEREMAP_mdt_tube_rho_decb : natural := 4;

-- Tube position along z
constant TUBEREMAP_mdt_tube_z_width : natural := 19;
constant TUBEREMAP_mdt_tube_z_lsb : natural := 21;
constant TUBEREMAP_mdt_tube_z_decb : natural := 4;

-- Tube (uncalibrated) time
constant TUBEREMAP_mdt_tube_time_width : natural := 21;
constant TUBEREMAP_mdt_tube_time_lsb : natural := 0;
constant TUBEREMAP_mdt_tube_time_decb : natural := 4;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant HE_LSF_width : natural := 39;

-- Hit Valid bit
constant HE_LSF_mdt_valid_width : natural := 1;
constant HE_LSF_mdt_valid_lsb : natural := 38;
constant HE_LSF_mdt_valid_decb : natural := 0;

-- Data Valid bit
constant HE_LSF_data_valid_width : natural := 1;
constant HE_LSF_data_valid_lsb : natural := 37;
constant HE_LSF_data_valid_decb : natural := 0;

-- Tube local position along precision coord
constant HE_LSF_mdt_localx_width : natural := 14;
constant HE_LSF_mdt_localx_lsb : natural := 0;
constant HE_LSF_mdt_localx_decb : natural := 4;

-- Tube local position along second coord
constant HE_LSF_mdt_localy_width : natural := 14;
constant HE_LSF_mdt_localy_lsb : natural := 14;
constant HE_LSF_mdt_localy_decb : natural := 4;

-- Tube drift radius
constant HE_LSF_mdt_radius_width : natural := 9;
constant HE_LSF_mdt_radius_lsb : natural := 28;
constant HE_LSF_mdt_radius_decb : natural := 5;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant HE_CSF_width : natural := 39;

-- Hit Valid bit
constant HE_CSF_mdt_valid_width : natural := 1;
constant HE_CSF_mdt_valid_lsb : natural := 38;
constant HE_CSF_mdt_valid_decb : natural := 0;

-- Data Valid bit
constant HE_CSF_data_valid_width : natural := 1;
constant HE_CSF_data_valid_lsb : natural := 37;
constant HE_CSF_data_valid_decb : natural := 0;

-- Tube local position along precision coord
constant HE_CSF_mdt_localx_width : natural := 14;
constant HE_CSF_mdt_localx_lsb : natural := 23;
constant HE_CSF_mdt_localx_decb : natural := 3;

-- Tube local position along second coord
constant HE_CSF_mdt_localy_width : natural := 14;
constant HE_CSF_mdt_localy_lsb : natural := 9;
constant HE_CSF_mdt_localy_decb : natural := 4;

-- Tube drift radius
constant HE_CSF_mdt_radius_width : natural := 9;
constant HE_CSF_mdt_radius_lsb : natural := 0;
constant HE_CSF_mdt_radius_decb : natural := 4;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SLCPIPELINE_PTCALC_width : natural := 53;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant SF_width : natural := 55;

-- SF MDT segment valid bit
constant SF_segvalid_width : natural := 1;
constant SF_segvalid_lsb : natural := 28;
constant SF_segvalid_decb : natural := 0;

-- SF MDT segment position along the precision coord
constant SF_segpos_width : natural := 16;
constant SF_segpos_lsb : natural := 12;
constant SF_segpos_decb : natural := 2;

-- SF MDT segment angle along the precision coord
constant SF_segangle_width : natural := 11;
constant SF_segangle_lsb : natural := 1;
constant SF_segangle_decb : natural := 0;

-- SF MDT segment qualiry
constant SF_segquality_width : natural := 1;
constant SF_segquality_lsb : natural := 0;
constant SF_segquality_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------
constant PTCALC_width : natural := 54;

-- eta of the innermost MDT station segment position
constant PTCALC_mtc_eta_width : natural := 14;
constant PTCALC_mtc_eta_lsb : natural := 20;
constant PTCALC_mtc_eta_decb : natural := 11;

-- pT calculated by the pT Calc
constant PTCALC_mtc_pt_width : natural := 8;
constant PTCALC_mtc_pt_lsb : natural := 12;
constant PTCALC_mtc_pt_decb : natural := 1;

-- pT threshold satisfied by the MDT TC
constant PTCALC_mtc_ptthresh_width : natural := 4;
constant PTCALC_mtc_ptthresh_lsb : natural := 8;
constant PTCALC_mtc_ptthresh_decb : natural := 0;

-- charge determined from the pT calc
constant PTCALC_mtc_charge_width : natural := 1;
constant PTCALC_mtc_charge_lsb : natural := 7;
constant PTCALC_mtc_charge_decb : natural := 0;

-- MDT processing flags
constant PTCALC_mtc_procflags_width : natural := 4;
constant PTCALC_mtc_procflags_lsb : natural := 3;
constant PTCALC_mtc_procflags_decb : natural := 0;

-- # of segments used for calculating the pT
constant PTCALC_mtc_nsegments_width : natural := 2;
constant PTCALC_mtc_nsegments_lsb : natural := 1;
constant PTCALC_mtc_nsegments_decb : natural := 0;

-- quality of the MDT TC (TBC how this is defined)
constant PTCALC_mtc_quality_width : natural := 1;
constant PTCALC_mtc_quality_lsb : natural := 0;
constant PTCALC_mtc_quality_decb : natural := 0;

-----------------------------------------------------------------------------------------------------------------------------

