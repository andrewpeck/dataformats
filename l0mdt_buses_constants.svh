// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

`define DF_HASH a04a67a6;

// -------------------------------------------------------------------
`define SLC_MUID_width 20

// SLc Identification (up to 3)
`define SLC_MUID_slcid_width 2
`define SLC_MUID_slcid_lsb 18
`define SLC_MUID_slcid_decb 0

// SL board ID (based on the fiber ID)
`define SLC_MUID_slid_width 6
`define SLC_MUID_slid_lsb 12
`define SLC_MUID_slid_decb 0

// BCID from SLC
`define SLC_MUID_bcid_width 12
`define SLC_MUID_bcid_lsb 0
`define SLC_MUID_bcid_decb 0

// -------------------------------------------------------------------
`define SLC_COMMON_width 31

// SLc Identification (up to 3)
`define SLC_COMMON_slcid_width 2
`define SLC_COMMON_slcid_lsb 28
`define SLC_COMMON_slcid_decb 0

// TC sent to MDT TP
`define SLC_COMMON_tcsent_width 1
`define SLC_COMMON_tcsent_lsb 28
`define SLC_COMMON_tcsent_decb 0

// SLc Eta Position
`define SLC_COMMON_poseta_width 14
`define SLC_COMMON_poseta_lsb 14
`define SLC_COMMON_poseta_decb 11

// SLc Phi Position
`define SLC_COMMON_posphi_width 9
`define SLC_COMMON_posphi_lsb 5
`define SLC_COMMON_posphi_decb 0

// SLc highest pT threshold passed
`define SLC_COMMON_ptthresh_width 4
`define SLC_COMMON_ptthresh_lsb 1
`define SLC_COMMON_ptthresh_decb 0

// SLc charge
`define SLC_COMMON_charge_width 1
`define SLC_COMMON_charge_lsb 0
`define SLC_COMMON_charge_decb 0

// -------------------------------------------------------------------
`define SLC_ENDCAP_width 69

// SLc Segment Angle wrt Eta position
`define SLC_ENDCAP_seg_angdtheta_width 7
`define SLC_ENDCAP_seg_angdtheta_lsb 31
`define SLC_ENDCAP_seg_angdtheta_decb 0

// SLc Segment Angle wrt Phi position
`define SLC_ENDCAP_seg_angdphi_width 4
`define SLC_ENDCAP_seg_angdphi_lsb 27
`define SLC_ENDCAP_seg_angdphi_decb 0

// NSW segment eta position
`define SLC_ENDCAP_nswseg_poseta_width 14
`define SLC_ENDCAP_nswseg_poseta_lsb 13
`define SLC_ENDCAP_nswseg_poseta_decb 13

// NSW segment phi position
`define SLC_ENDCAP_nswseg_posphi_width 8
`define SLC_ENDCAP_nswseg_posphi_lsb 5
`define SLC_ENDCAP_nswseg_posphi_decb 0

// NSW segment angle wrt Eta position
`define SLC_ENDCAP_nswseg_angdtheta_width 5
`define SLC_ENDCAP_nswseg_angdtheta_lsb 0
`define SLC_ENDCAP_nswseg_angdtheta_decb 0

// -------------------------------------------------------------------
`define SLC_BARREL_width 74

// SLc Hit Z Position in RPC0
`define SLC_BARREL_rpc0_posz_width 10
`define SLC_BARREL_rpc0_posz_lsb 33
`define SLC_BARREL_rpc0_posz_decb 0

// SLc Hit Z Position in RPC1
`define SLC_BARREL_rpc1_posz_width 10
`define SLC_BARREL_rpc1_posz_lsb 23
`define SLC_BARREL_rpc1_posz_decb 0

// SLc Hit Z Position in RPC2
`define SLC_BARREL_rpc2_posz_width 10
`define SLC_BARREL_rpc2_posz_lsb 13
`define SLC_BARREL_rpc2_posz_decb 0

// SLc Hit Z Position in RPC3
`define SLC_BARREL_rpc3_posz_width 10
`define SLC_BARREL_rpc3_posz_lsb 3
`define SLC_BARREL_rpc3_posz_decb 0

// SLc coincidence type
`define SLC_BARREL_cointype_width 3
`define SLC_BARREL_cointype_lsb 0
`define SLC_BARREL_cointype_decb 0

// -------------------------------------------------------------------
`define SLCPROC_PIPELINE_COMMON_width 35

// SLc busy flag
`define SLCPROC_PIPELINE_COMMON_busy_width 1
`define SLCPROC_PIPELINE_COMMON_busy_lsb 34
`define SLCPROC_PIPELINE_COMMON_busy_decb 0

// SLc board destination
`define SLCPROC_PIPELINE_COMMON_destsl_width 2
`define SLCPROC_PIPELINE_COMMON_destsl_lsb 32
`define SLCPROC_PIPELINE_COMMON_destsl_decb 0

// SLc phimod
`define SLCPROC_PIPELINE_COMMON_phimod_width 8
`define SLCPROC_PIPELINE_COMMON_phimod_lsb 24
`define SLCPROC_PIPELINE_COMMON_phimod_decb 0

// SLc Inner Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_width 6
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb 18
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_decb 0

// SLc Middle Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_width 6
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb 12
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_decb 0

// SLc Outer Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_width 6
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb 6
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_decb 0

// SLc Extra Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_width 6
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb 0
`define SLCPROC_PIPELINE_COMMON_vec_mdtid_decb 0

// -------------------------------------------------------------------
`define SLCPROC_PIPELINE_ENDCAP_width 124

// -------------------------------------------------------------------
`define SLCPROC_PIPELINE_BARREL_width 129

// -------------------------------------------------------------------
`define CSM_width 32

// Channel number within TDC
`define CSM_chanid_width 5
`define CSM_chanid_lsb 27
`define CSM_chanid_decb 0

// Edge or pair mode
`define CSM_edgemode_width 2
`define CSM_edgemode_lsb 25
`define CSM_edgemode_decb 0

// TDC BCID
`define CSM_coarsetime_width 12
`define CSM_coarsetime_lsb 13
`define CSM_coarsetime_decb 0

// TDC fine time with BCID
`define CSM_finetime_width 5
`define CSM_finetime_lsb 8
`define CSM_finetime_decb 0

// Pulse width
`define CSM_pulsewidth_width 8
`define CSM_pulsewidth_lsb 0
`define CSM_pulsewidth_decb 0

// -------------------------------------------------------------------
`define TDCFORMAT_width 44

// Fiber ID within board
`define TDCFORMAT_fiberid_width 5
`define TDCFORMAT_fiberid_lsb 7
`define TDCFORMAT_fiberid_decb 0

// Elink ID within fiber
`define TDCFORMAT_elinkid_width 4
`define TDCFORMAT_elinkid_lsb 3
`define TDCFORMAT_elinkid_decb 0

// Valid bit
`define TDCFORMAT_datavalid_width 1
`define TDCFORMAT_datavalid_lsb 2
`define TDCFORMAT_datavalid_decb 0

// MDT Station Type (Inner, Middle, Outer, Extra)
`define TDCFORMAT_stationid_width 2
`define TDCFORMAT_stationid_lsb 0
`define TDCFORMAT_stationid_decb 0

// -------------------------------------------------------------------
`define SLCPROC_HESF_width 48

// SLc Muon Unique Identifier
`define SLCPROC_HESF_SLC_MUID_width 20
`define SLCPROC_HESF_SLC_MUID_lsb 28
`define SLCPROC_HESF_SLC_MUID_decb 0

// inner MDT segment chip destination
`define SLCPROC_HESF_mdtseg_dest_width 2
`define SLCPROC_HESF_mdtseg_dest_lsb 26
`define SLCPROC_HESF_mdtseg_dest_decb 0

// SLc Inner Vector MDT chamber ID
`define SLCPROC_HESF_vec_mdtid_width 6
`define SLCPROC_HESF_vec_mdtid_lsb 20
`define SLCPROC_HESF_vec_mdtid_decb 0

// SLc inner vector rho position
`define SLCPROC_HESF_vec_pos_width 10
`define SLCPROC_HESF_vec_pos_lsb 10
`define SLCPROC_HESF_vec_pos_decb 0

// SLc inner vector theta angle
`define SLCPROC_HESF_vec_ang_width 10
`define SLCPROC_HESF_vec_ang_lsb 0
`define SLCPROC_HESF_vec_ang_decb 0

// -------------------------------------------------------------------
`define TUBEREMAP_width 74

// Tube layer within one station
`define TUBEREMAP_mdt_tube_layer_width 6
`define TUBEREMAP_mdt_tube_layer_lsb 68
`define TUBEREMAP_mdt_tube_layer_decb 0

// Tube number within one station
`define TUBEREMAP_mdt_tube_num_width 10
`define TUBEREMAP_mdt_tube_num_lsb 58
`define TUBEREMAP_mdt_tube_num_decb 0

// Tube radial position
`define TUBEREMAP_mdt_tube_rho_width 18
`define TUBEREMAP_mdt_tube_rho_lsb 40
`define TUBEREMAP_mdt_tube_rho_decb 4

// Tube position along z
`define TUBEREMAP_mdt_tube_z_width 19
`define TUBEREMAP_mdt_tube_z_lsb 21
`define TUBEREMAP_mdt_tube_z_decb 4

// Tube (uncalibrated) time
`define TUBEREMAP_mdt_tube_time_width 21
`define TUBEREMAP_mdt_tube_time_lsb 0
`define TUBEREMAP_mdt_tube_time_decb 4

// -------------------------------------------------------------------
`define HE_LSF_width 39

// Hit Valid bit
`define HE_LSF_mdt_valid_width 1
`define HE_LSF_mdt_valid_lsb 38
`define HE_LSF_mdt_valid_decb 0

// Data Valid bit
`define HE_LSF_data_valid_width 1
`define HE_LSF_data_valid_lsb 37
`define HE_LSF_data_valid_decb 0

// Tube local position along precision coord
`define HE_LSF_mdt_localx_width 14
`define HE_LSF_mdt_localx_lsb 0
`define HE_LSF_mdt_localx_decb 4

// Tube local position along second coord
`define HE_LSF_mdt_localy_width 14
`define HE_LSF_mdt_localy_lsb 14
`define HE_LSF_mdt_localy_decb 4

// Tube drift radius
`define HE_LSF_mdt_radius_width 9
`define HE_LSF_mdt_radius_lsb 28
`define HE_LSF_mdt_radius_decb 5

// -------------------------------------------------------------------
`define HE_CSF_width 41

// Hit Valid bit
`define HE_CSF_mdt_valid_width 1
`define HE_CSF_mdt_valid_lsb 40
`define HE_CSF_mdt_valid_decb 0

// Data Valid bit
`define HE_CSF_data_valid_width 1
`define HE_CSF_data_valid_lsb 39
`define HE_CSF_data_valid_decb 0

// Tube local position along precision coord
`define HE_CSF_mdt_localx_width 15
`define HE_CSF_mdt_localx_lsb 24
`define HE_CSF_mdt_localx_decb 4

// Tube local position along second coord
`define HE_CSF_mdt_localy_width 15
`define HE_CSF_mdt_localy_lsb 9
`define HE_CSF_mdt_localy_decb 4

// Tube drift radius
`define HE_CSF_mdt_radius_width 9
`define HE_CSF_mdt_radius_lsb 0
`define HE_CSF_mdt_radius_decb 4

// -------------------------------------------------------------------
`define SLCPIPELINE_PTCALC_width 53

// -------------------------------------------------------------------
`define SF_width 55

// SF MDT segment valid bit
`define SF_segvalid_width 1
`define SF_segvalid_lsb 28
`define SF_segvalid_decb 0

// SF MDT segment position along the precision coord
`define SF_segpos_width 16
`define SF_segpos_lsb 12
`define SF_segpos_decb 2

// SF MDT segment angle along the precision coord
`define SF_segangle_width 11
`define SF_segangle_lsb 1
`define SF_segangle_decb 0

// SF MDT segment quality
`define SF_segquality_width 1
`define SF_segquality_lsb 0
`define SF_segquality_decb 0

// -------------------------------------------------------------------
`define PTCALC_width 52

// eta of the innermost MDT station segment position
`define PTCALC_mtc_eta_width 14
`define PTCALC_mtc_eta_lsb 22
`define PTCALC_mtc_eta_decb 11

// pT calculated by the pT Calc
`define PTCALC_mtc_pt_width 8
`define PTCALC_mtc_pt_lsb 14
`define PTCALC_mtc_pt_decb 1

// pT threshold satisfied by the MDT TC
`define PTCALC_mtc_ptthresh_width 4
`define PTCALC_mtc_ptthresh_lsb 10
`define PTCALC_mtc_ptthresh_decb 0

// charge determined from the pT calc
`define PTCALC_mtc_charge_width 1
`define PTCALC_mtc_charge_lsb 9
`define PTCALC_mtc_charge_decb 0

// # of segments used for calculating the pT
`define PTCALC_mtc_nsegments_width 2
`define PTCALC_mtc_nsegments_lsb 3
`define PTCALC_mtc_nsegments_decb 0

// quality of the MDT TC (TBC how this is defined)
`define PTCALC_mtc_quality_width 3
`define PTCALC_mtc_quality_lsb 0
`define PTCALC_mtc_quality_decb 0

// -------------------------------------------------------------------
`define SLCPIPELINE_MTC_ENDCAP_width 34

// -------------------------------------------------------------------
`define SLCPIPELINE_MTC_BARREL_width 34

// -------------------------------------------------------------------
`define MTC_width 67

// MDT processing flags
`define MTC_mtc_procflags_width 4
`define MTC_mtc_procflags_lsb 5
`define MTC_mtc_procflags_decb 0
