// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

#ifndef LOMDT_BUSES_CONSTANTS_H
#define LOMDT_BUSES_CONSTANTS_H

const char df_hash[] = "4b00b0c8";

// -------------------------------------------------------------------
const int SLC_MUID_width = 20;

// SLc Identification (up to 3)
const int SLC_MUID_slcid_width = 2;
const int SLC_MUID_slcid_lsb = 18;
const int SLC_MUID_slcid_decb = 0;

// SL board ID (based on the fiber ID)
const int SLC_MUID_slid_width = 6;
const int SLC_MUID_slid_lsb = 12;
const int SLC_MUID_slid_decb = 0;

// BCID from SLC
const int SLC_MUID_bcid_width = 12;
const int SLC_MUID_bcid_lsb = 0;
const int SLC_MUID_bcid_decb = 0;

// -------------------------------------------------------------------
const int SLC_COMMON_width = 31;

// SLc Identification (up to 3)
const int SLC_COMMON_slcid_width = 2;
const int SLC_COMMON_slcid_lsb = 29;
const int SLC_COMMON_slcid_decb = 0;

// TC sent to MDT TP
const int SLC_COMMON_tcsent_width = 1;
const int SLC_COMMON_tcsent_lsb = 28;
const int SLC_COMMON_tcsent_decb = 0;

// SLc Eta Position
const int SLC_COMMON_poseta_width = 14;
const int SLC_COMMON_poseta_lsb = 14;
const int SLC_COMMON_poseta_decb = 11;

// SLc Phi Position
const int SLC_COMMON_posphi_width = 9;
const int SLC_COMMON_posphi_lsb = 5;
const int SLC_COMMON_posphi_decb = 0;

// SLc highest pT threshold passed
const int SLC_COMMON_ptthresh_width = 4;
const int SLC_COMMON_ptthresh_lsb = 1;
const int SLC_COMMON_ptthresh_decb = 0;

// SLc charge
const int SLC_COMMON_charge_width = 1;
const int SLC_COMMON_charge_lsb = 0;
const int SLC_COMMON_charge_decb = 0;

// -------------------------------------------------------------------
const int SLC_ENDCAP_width = 69;

// SLc Segment Angle wrt Eta position
const int SLC_ENDCAP_seg_angdtheta_width = 7;
const int SLC_ENDCAP_seg_angdtheta_lsb = 31;
const int SLC_ENDCAP_seg_angdtheta_decb = 0;

// SLc Segment Angle wrt Phi position
const int SLC_ENDCAP_seg_angdphi_width = 4;
const int SLC_ENDCAP_seg_angdphi_lsb = 27;
const int SLC_ENDCAP_seg_angdphi_decb = 0;

// NSW segment eta position
const int SLC_ENDCAP_nswseg_poseta_width = 14;
const int SLC_ENDCAP_nswseg_poseta_lsb = 13;
const int SLC_ENDCAP_nswseg_poseta_decb = 13;

// NSW segment phi position
const int SLC_ENDCAP_nswseg_posphi_width = 8;
const int SLC_ENDCAP_nswseg_posphi_lsb = 5;
const int SLC_ENDCAP_nswseg_posphi_decb = 0;

// NSW segment angle wrt Eta position
const int SLC_ENDCAP_nswseg_angdtheta_width = 5;
const int SLC_ENDCAP_nswseg_angdtheta_lsb = 0;
const int SLC_ENDCAP_nswseg_angdtheta_decb = 0;

// -------------------------------------------------------------------
const int SLC_BARREL_width = 74;

// SLc Hit Z Position in RPC0
const int SLC_BARREL_rpc0_posz_width = 10;
const int SLC_BARREL_rpc0_posz_lsb = 33;
const int SLC_BARREL_rpc0_posz_decb = 0;

// SLc Hit Z Position in RPC1
const int SLC_BARREL_rpc1_posz_width = 10;
const int SLC_BARREL_rpc1_posz_lsb = 23;
const int SLC_BARREL_rpc1_posz_decb = 0;

// SLc Hit Z Position in RPC2
const int SLC_BARREL_rpc2_posz_width = 10;
const int SLC_BARREL_rpc2_posz_lsb = 13;
const int SLC_BARREL_rpc2_posz_decb = 0;

// SLc Hit Z Position in RPC3
const int SLC_BARREL_rpc3_posz_width = 10;
const int SLC_BARREL_rpc3_posz_lsb = 3;
const int SLC_BARREL_rpc3_posz_decb = 0;

// SLc coincidence type
const int SLC_BARREL_cointype_width = 3;
const int SLC_BARREL_cointype_lsb = 0;
const int SLC_BARREL_cointype_decb = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPELINE_COMMON_width = 35;

// SLc busy flag
const int SLCPROC_PIPELINE_COMMON_busy_width = 1;
const int SLCPROC_PIPELINE_COMMON_busy_lsb = 34;
const int SLCPROC_PIPELINE_COMMON_busy_decb = 0;

// SLc board destination
const int SLCPROC_PIPELINE_COMMON_destsl_width = 2;
const int SLCPROC_PIPELINE_COMMON_destsl_lsb = 32;
const int SLCPROC_PIPELINE_COMMON_destsl_decb = 0;

// SLc phimod
const int SLCPROC_PIPELINE_COMMON_phimod_width = 8;
const int SLCPROC_PIPELINE_COMMON_phimod_lsb = 24;
const int SLCPROC_PIPELINE_COMMON_phimod_decb = 0;

// SLc Inner Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_width = 6;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb = 18;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_decb = 0;

// SLc Middle Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_width = 6;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb = 12;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_decb = 0;

// SLc Outer Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_width = 6;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb = 6;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_decb = 0;

// SLc Extra Vector MDT chamber ID
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_width = 6;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_lsb = 0;
const int SLCPROC_PIPELINE_COMMON_vec_mdtid_decb = 0;

// -------------------------------------------------------------------
const int SLCPROC_PIPELINE_ENDCAP_width = 124;

// -------------------------------------------------------------------
const int SLCPROC_PIPELINE_BARREL_width = 129;

// -------------------------------------------------------------------
const int CSM_width = 32;

// Channel number within TDC
const int CSM_chanid_width = 5;
const int CSM_chanid_lsb = 27;
const int CSM_chanid_decb = 0;

// Edge or pair mode
const int CSM_edgemode_width = 2;
const int CSM_edgemode_lsb = 25;
const int CSM_edgemode_decb = 0;

// TDC BCID
const int CSM_coarsetime_width = 12;
const int CSM_coarsetime_lsb = 13;
const int CSM_coarsetime_decb = 0;

// TDC fine time with BCID
const int CSM_finetime_width = 5;
const int CSM_finetime_lsb = 8;
const int CSM_finetime_decb = 0;

// Pulse width
const int CSM_pulsewidth_width = 8;
const int CSM_pulsewidth_lsb = 0;
const int CSM_pulsewidth_decb = 0;

// -------------------------------------------------------------------
const int TDCFORMAT_width = 44;

// Fiber ID within board
const int TDCFORMAT_fiberid_width = 5;
const int TDCFORMAT_fiberid_lsb = 7;
const int TDCFORMAT_fiberid_decb = 0;

// Elink ID within fiber
const int TDCFORMAT_elinkid_width = 4;
const int TDCFORMAT_elinkid_lsb = 3;
const int TDCFORMAT_elinkid_decb = 0;

// Valid bit
const int TDCFORMAT_datavalid_width = 1;
const int TDCFORMAT_datavalid_lsb = 2;
const int TDCFORMAT_datavalid_decb = 0;

// MDT Station Type (Inner, Middle, Outer, Extra)
const int TDCFORMAT_stationid_width = 2;
const int TDCFORMAT_stationid_lsb = 0;
const int TDCFORMAT_stationid_decb = 0;

// -------------------------------------------------------------------
const int SLCPROC_HESF_width = 48;

// SLc Muon Unique Identifier
const int SLCPROC_HESF_SLC_MUID_width = 20;
const int SLCPROC_HESF_SLC_MUID_lsb = 28;
const int SLCPROC_HESF_SLC_MUID_decb = 0;

// inner MDT segment chip destination
const int SLCPROC_HESF_mdtseg_dest_width = 2;
const int SLCPROC_HESF_mdtseg_dest_lsb = 26;
const int SLCPROC_HESF_mdtseg_dest_decb = 0;

// SLc Inner Vector MDT chamber ID
const int SLCPROC_HESF_vec_mdtid_width = 6;
const int SLCPROC_HESF_vec_mdtid_lsb = 20;
const int SLCPROC_HESF_vec_mdtid_decb = 0;

// SLc inner vector rho position
const int SLCPROC_HESF_vec_pos_width = 10;
const int SLCPROC_HESF_vec_pos_lsb = 10;
const int SLCPROC_HESF_vec_pos_decb = 0;

// SLc inner vector theta angle
const int SLCPROC_HESF_vec_ang_width = 10;
const int SLCPROC_HESF_vec_ang_lsb = 0;
const int SLCPROC_HESF_vec_ang_decb = 0;

// -------------------------------------------------------------------
const int TUBEREMAP_width = 74;

// Tube layer within one station
const int TUBEREMAP_mdt_tube_layer_width = 6;
const int TUBEREMAP_mdt_tube_layer_lsb = 68;
const int TUBEREMAP_mdt_tube_layer_decb = 0;

// Tube number within one station
const int TUBEREMAP_mdt_tube_num_width = 10;
const int TUBEREMAP_mdt_tube_num_lsb = 58;
const int TUBEREMAP_mdt_tube_num_decb = 0;

// Tube radial position
const int TUBEREMAP_mdt_tube_rho_width = 18;
const int TUBEREMAP_mdt_tube_rho_lsb = 40;
const int TUBEREMAP_mdt_tube_rho_decb = 4;

// Tube position along z
const int TUBEREMAP_mdt_tube_z_width = 19;
const int TUBEREMAP_mdt_tube_z_lsb = 21;
const int TUBEREMAP_mdt_tube_z_decb = 4;

// Tube (uncalibrated) time
const int TUBEREMAP_mdt_tube_time_width = 21;
const int TUBEREMAP_mdt_tube_time_lsb = 0;
const int TUBEREMAP_mdt_tube_time_decb = 4;

// -------------------------------------------------------------------
const int HE_LSF_width = 39;

// Hit Valid bit
const int HE_LSF_mdt_valid_width = 1;
const int HE_LSF_mdt_valid_lsb = 38;
const int HE_LSF_mdt_valid_decb = 0;

// Data Valid bit
const int HE_LSF_data_valid_width = 1;
const int HE_LSF_data_valid_lsb = 37;
const int HE_LSF_data_valid_decb = 0;

// Tube local position along precision coord
const int HE_LSF_mdt_localx_width = 14;
const int HE_LSF_mdt_localx_lsb = 0;
const int HE_LSF_mdt_localx_decb = 4;

// Tube local position along second coord
const int HE_LSF_mdt_localy_width = 14;
const int HE_LSF_mdt_localy_lsb = 14;
const int HE_LSF_mdt_localy_decb = 4;

// Tube drift radius
const int HE_LSF_mdt_radius_width = 9;
const int HE_LSF_mdt_radius_lsb = 28;
const int HE_LSF_mdt_radius_decb = 5;

// -------------------------------------------------------------------
const int HE_CSF_width = 41;

// Hit Valid bit
const int HE_CSF_mdt_valid_width = 1;
const int HE_CSF_mdt_valid_lsb = 40;
const int HE_CSF_mdt_valid_decb = 0;

// Data Valid bit
const int HE_CSF_data_valid_width = 1;
const int HE_CSF_data_valid_lsb = 39;
const int HE_CSF_data_valid_decb = 0;

// Tube local position along precision coord
const int HE_CSF_mdt_localx_width = 15;
const int HE_CSF_mdt_localx_lsb = 24;
const int HE_CSF_mdt_localx_decb = 4;

// Tube local position along second coord
const int HE_CSF_mdt_localy_width = 15;
const int HE_CSF_mdt_localy_lsb = 9;
const int HE_CSF_mdt_localy_decb = 4;

// Tube drift radius
const int HE_CSF_mdt_radius_width = 9;
const int HE_CSF_mdt_radius_lsb = 0;
const int HE_CSF_mdt_radius_decb = 4;

// -------------------------------------------------------------------
const int SLCPIPELINE_PTCALC_width = 53;

// -------------------------------------------------------------------
const int SF_width = 55;

// SF MDT segment valid bit
const int SF_segvalid_width = 1;
const int SF_segvalid_lsb = 28;
const int SF_segvalid_decb = 0;

// SF MDT segment position along the precision coord
const int SF_segpos_width = 16;
const int SF_segpos_lsb = 12;
const int SF_segpos_decb = 2;

// SF MDT segment angle along the precision coord
const int SF_segangle_width = 11;
const int SF_segangle_lsb = 1;
const int SF_segangle_decb = 0;

// SF MDT segment qualiry
const int SF_segquality_width = 1;
const int SF_segquality_lsb = 0;
const int SF_segquality_decb = 0;

// -------------------------------------------------------------------
const int PTCALC_width = 52;

// eta of the innermost MDT station segment position
const int PTCALC_mtc_eta_width = 14;
const int PTCALC_mtc_eta_lsb = 22;
const int PTCALC_mtc_eta_decb = 11;

// pT calculated by the pT Calc
const int PTCALC_mtc_pt_width = 8;
const int PTCALC_mtc_pt_lsb = 14;
const int PTCALC_mtc_pt_decb = 1;

// pT threshold satisfied by the MDT TC
const int PTCALC_mtc_ptthresh_width = 4;
const int PTCALC_mtc_ptthresh_lsb = 10;
const int PTCALC_mtc_ptthresh_decb = 0;

// charge determined from the pT calc
const int PTCALC_mtc_charge_width = 1;
const int PTCALC_mtc_charge_lsb = 9;
const int PTCALC_mtc_charge_decb = 0;

// # of segments used for calculating the pT
const int PTCALC_mtc_nsegments_width = 2;
const int PTCALC_mtc_nsegments_lsb = 3;
const int PTCALC_mtc_nsegments_decb = 0;

// quality of the MDT TC (TBC how this is defined)
const int PTCALC_mtc_quality_width = 3;
const int PTCALC_mtc_quality_lsb = 0;
const int PTCALC_mtc_quality_decb = 0;

// -------------------------------------------------------------------
const int SLCPIPELINE_MTC_ENDCAP_width = 54;

// 
const int SLCPIPELINE_MTC_ENDCAP_SLC_MUID_width = 20;
const int SLCPIPELINE_MTC_ENDCAP_SLC_MUID_lsb = 34;
const int SLCPIPELINE_MTC_ENDCAP_SLC_MUID_decb = 0;

// -------------------------------------------------------------------
const int SLCPIPELINE_MTC_BARREL_width = 57;

// 
const int SLCPIPELINE_MTC_BARREL_SLC_MUID_width = 20;
const int SLCPIPELINE_MTC_BARREL_SLC_MUID_lsb = 34;
const int SLCPIPELINE_MTC_BARREL_SLC_MUID_decb = 0;

// -------------------------------------------------------------------
const int MTC_width = 67;

// MDT processing flags
const int MTC_mtc_procflags_width = 4;
const int MTC_mtc_procflags_lsb = 5;
const int MTC_mtc_procflags_decb = 0;

// -------------------------------------------------------------------

#endif // LOMDT_BUSES_CONSTANTS_H
