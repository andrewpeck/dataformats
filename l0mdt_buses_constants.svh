// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------

`define DF_HASH a34aee13;

// -------------------------------------------------------------------
`define SLC_MUID_LEN 20

// SLc Identification (up to 3)
`define SLC_MUID_slcidslcid_LEN 2
`define SLC_MUID_slcidslcid_MSB 19
`define SLC_MUID_slcidslcid_LSB 18
`define SLC_MUID_slcidslcid_DECB 0

// SL board ID (based on the fiber ID)
`define SLC_MUID_slidslid_LEN 6
`define SLC_MUID_slidslid_MSB 17
`define SLC_MUID_slidslid_LSB 12
`define SLC_MUID_slidslid_DECB 0

// BCID from SLC
`define SLC_MUID_bcidbcid_LEN 12
`define SLC_MUID_bcidbcid_MSB 11
`define SLC_MUID_bcidbcid_LSB 0
`define SLC_MUID_bcidbcid_DECB 0

// -------------------------------------------------------------------
`define SLC_COMMON_LEN 31

// SLc Identification (up to 3)
`define SLC_COMMON_slcidslcid_LEN 2
`define SLC_COMMON_slcidslcid_MSB 30
`define SLC_COMMON_slcidslcid_LSB 29
`define SLC_COMMON_slcidslcid_DECB 0

// TC sent to MDT TP
`define SLC_COMMON_tcsenttcsent_LEN 1
`define SLC_COMMON_tcsenttcsent_MSB 28
`define SLC_COMMON_tcsenttcsent_LSB 28
`define SLC_COMMON_tcsenttcsent_DECB 0

// SLc Eta Position
`define SLC_COMMON_posetaposeta_LEN 14
`define SLC_COMMON_posetaposeta_MSB 27
`define SLC_COMMON_posetaposeta_LSB 14
`define SLC_COMMON_posetaposeta_DECB 12

// SLc Phi Position
`define SLC_COMMON_posphiposphi_LEN 9
`define SLC_COMMON_posphiposphi_MSB 13
`define SLC_COMMON_posphiposphi_LSB 5
`define SLC_COMMON_posphiposphi_DECB 0

// SLc highest pT threshold passed
`define SLC_COMMON_ptthreshptthresh_LEN 4
`define SLC_COMMON_ptthreshptthresh_MSB 4
`define SLC_COMMON_ptthreshptthresh_LSB 1
`define SLC_COMMON_ptthreshptthresh_DECB 0

// SLc charge
`define SLC_COMMON_chargecharge_LEN 1
`define SLC_COMMON_chargecharge_MSB 0
`define SLC_COMMON_chargecharge_LSB 0
`define SLC_COMMON_chargecharge_DECB 0

// -------------------------------------------------------------------
`define SLC_ENDCAP_LEN 69

// SLc Segment Angle wrt Eta position
`define SLC_ENDCAP_seg_angdthetaseg_angdtheta_LEN 7
`define SLC_ENDCAP_seg_angdthetaseg_angdtheta_MSB 37
`define SLC_ENDCAP_seg_angdthetaseg_angdtheta_LSB 31
`define SLC_ENDCAP_seg_angdthetaseg_angdtheta_DECB 0

// SLc Segment Angle wrt Phi position
`define SLC_ENDCAP_seg_angdphiseg_angdphi_LEN 4
`define SLC_ENDCAP_seg_angdphiseg_angdphi_MSB 30
`define SLC_ENDCAP_seg_angdphiseg_angdphi_LSB 27
`define SLC_ENDCAP_seg_angdphiseg_angdphi_DECB 0

// NSW segment eta position
`define SLC_ENDCAP_nswseg_posetanswseg_poseta_LEN 14
`define SLC_ENDCAP_nswseg_posetanswseg_poseta_MSB 26
`define SLC_ENDCAP_nswseg_posetanswseg_poseta_LSB 13
`define SLC_ENDCAP_nswseg_posetanswseg_poseta_DECB 13

// NSW segment phi position
`define SLC_ENDCAP_nswseg_posphinswseg_posphi_LEN 8
`define SLC_ENDCAP_nswseg_posphinswseg_posphi_MSB 12
`define SLC_ENDCAP_nswseg_posphinswseg_posphi_LSB 5
`define SLC_ENDCAP_nswseg_posphinswseg_posphi_DECB 0

// NSW segment angle wrt Eta position
`define SLC_ENDCAP_nswseg_angdthetanswseg_angdtheta_LEN 5
`define SLC_ENDCAP_nswseg_angdthetanswseg_angdtheta_MSB 4
`define SLC_ENDCAP_nswseg_angdthetanswseg_angdtheta_LSB 0
`define SLC_ENDCAP_nswseg_angdthetanswseg_angdtheta_DECB 0

// -------------------------------------------------------------------
`define SLC_BARREL_LEN 74

// SLc Hit Z Position in RPC0
`define SLC_BARREL_rpc0_poszrpc0_posz_LEN 10
`define SLC_BARREL_rpc0_poszrpc0_posz_MSB 42
`define SLC_BARREL_rpc0_poszrpc0_posz_LSB 33
`define SLC_BARREL_rpc0_poszrpc0_posz_DECB 0

// SLc Hit Z Position in RPC1
`define SLC_BARREL_rpc1_poszrpc1_posz_LEN 10
`define SLC_BARREL_rpc1_poszrpc1_posz_MSB 32
`define SLC_BARREL_rpc1_poszrpc1_posz_LSB 23
`define SLC_BARREL_rpc1_poszrpc1_posz_DECB 0

// SLc Hit Z Position in RPC2
`define SLC_BARREL_rpc2_poszrpc2_posz_LEN 10
`define SLC_BARREL_rpc2_poszrpc2_posz_MSB 22
`define SLC_BARREL_rpc2_poszrpc2_posz_LSB 13
`define SLC_BARREL_rpc2_poszrpc2_posz_DECB 0

// SLc Hit Z Position in RPC3
`define SLC_BARREL_rpc3_poszrpc3_posz_LEN 10
`define SLC_BARREL_rpc3_poszrpc3_posz_MSB 12
`define SLC_BARREL_rpc3_poszrpc3_posz_LSB 3
`define SLC_BARREL_rpc3_poszrpc3_posz_DECB 0

// SLc coincidence type
`define SLC_BARREL_cointypecointype_LEN 3
`define SLC_BARREL_cointypecointype_MSB 2
`define SLC_BARREL_cointypecointype_LSB 0
`define SLC_BARREL_cointypecointype_DECB 0

// -------------------------------------------------------------------
`define SLCPROC_PIPELINE_COMMON_LEN 35

// SLc busy flag
`define SLCPROC_PIPELINE_COMMON_busybusy_LEN 1
`define SLCPROC_PIPELINE_COMMON_busybusy_MSB 34
`define SLCPROC_PIPELINE_COMMON_busybusy_LSB 34
`define SLCPROC_PIPELINE_COMMON_busybusy_DECB 0

// SLc board destination
`define SLCPROC_PIPELINE_COMMON_destsldestsl_LEN 2
`define SLCPROC_PIPELINE_COMMON_destsldestsl_MSB 33
`define SLCPROC_PIPELINE_COMMON_destsldestsl_LSB 32
`define SLCPROC_PIPELINE_COMMON_destsldestsl_DECB 0

// SLc phimod
`define SLCPROC_PIPELINE_COMMON_phimodphimod_LEN 8
`define SLCPROC_PIPELINE_COMMON_phimodphimod_MSB 31
`define SLCPROC_PIPELINE_COMMON_phimodphimod_LSB 24
`define SLCPROC_PIPELINE_COMMON_phimodphimod_DECB 0

// SLc Inner Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_INN_vec_mdtid_LEN 6
`define SLCPROC_PIPELINE_COMMON_INN_vec_mdtid_MSB 23
`define SLCPROC_PIPELINE_COMMON_INN_vec_mdtid_LSB 18
`define SLCPROC_PIPELINE_COMMON_INN_vec_mdtid_DECB 0

// SLc Middle Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_MID_vec_mdtid_LEN 6
`define SLCPROC_PIPELINE_COMMON_MID_vec_mdtid_MSB 17
`define SLCPROC_PIPELINE_COMMON_MID_vec_mdtid_LSB 12
`define SLCPROC_PIPELINE_COMMON_MID_vec_mdtid_DECB 0

// SLc Outer Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_OUT_vec_mdtid_LEN 6
`define SLCPROC_PIPELINE_COMMON_OUT_vec_mdtid_MSB 11
`define SLCPROC_PIPELINE_COMMON_OUT_vec_mdtid_LSB 6
`define SLCPROC_PIPELINE_COMMON_OUT_vec_mdtid_DECB 0

// SLc Extra Vector MDT chamber ID
`define SLCPROC_PIPELINE_COMMON_EXT_vec_mdtid_LEN 6
`define SLCPROC_PIPELINE_COMMON_EXT_vec_mdtid_MSB 5
`define SLCPROC_PIPELINE_COMMON_EXT_vec_mdtid_LSB 0
`define SLCPROC_PIPELINE_COMMON_EXT_vec_mdtid_DECB 0

// -------------------------------------------------------------------
`define SLCPROC_PIPELINE_ENDCAP_LEN 124

// -------------------------------------------------------------------
`define SLCPROC_PIPELINE_BARREL_LEN 129

// -------------------------------------------------------------------
`define TDC_LEN 32

// Channel number within TDC
`define TDC_chanidchanid_LEN 5
`define TDC_chanidchanid_MSB 31
`define TDC_chanidchanid_LSB 27
`define TDC_chanidchanid_DECB 0

// Edge or pair mode
`define TDC_edgemodeedgemode_LEN 2
`define TDC_edgemodeedgemode_MSB 26
`define TDC_edgemodeedgemode_LSB 25
`define TDC_edgemodeedgemode_DECB 0

// TDC BCID
`define TDC_coarsetimecoarsetime_LEN 12
`define TDC_coarsetimecoarsetime_MSB 24
`define TDC_coarsetimecoarsetime_LSB 13
`define TDC_coarsetimecoarsetime_DECB 0

// TDC fine time with BCID
`define TDC_finetimefinetime_LEN 5
`define TDC_finetimefinetime_MSB 12
`define TDC_finetimefinetime_LSB 8
`define TDC_finetimefinetime_DECB 1

// Pulse width
`define TDC_pulsewidthpulsewidth_LEN 8
`define TDC_pulsewidthpulsewidth_MSB 7
`define TDC_pulsewidthpulsewidth_LSB 0
`define TDC_pulsewidthpulsewidth_DECB 1

// -------------------------------------------------------------------
`define TDCFORMAT_LEN 44

// Fiber ID within board
`define TDCFORMAT_fiberidfiberid_LEN 5
`define TDCFORMAT_fiberidfiberid_MSB 11
`define TDCFORMAT_fiberidfiberid_LSB 7
`define TDCFORMAT_fiberidfiberid_DECB 0

// Elink ID within fiber
`define TDCFORMAT_elinkidelinkid_LEN 4
`define TDCFORMAT_elinkidelinkid_MSB 6
`define TDCFORMAT_elinkidelinkid_LSB 3
`define TDCFORMAT_elinkidelinkid_DECB 0

// Valid bit
`define TDCFORMAT_datavaliddatavalid_LEN 1
`define TDCFORMAT_datavaliddatavalid_MSB 2
`define TDCFORMAT_datavaliddatavalid_LSB 2
`define TDCFORMAT_datavaliddatavalid_DECB 0

// MDT Station Type (Inner, Middle, Outer, Extra)
`define TDCFORMAT_stationidstationid_LEN 2
`define TDCFORMAT_stationidstationid_MSB 1
`define TDCFORMAT_stationidstationid_LSB 0
`define TDCFORMAT_stationidstationid_DECB 0

// -------------------------------------------------------------------
`define SLCPROC_HESF_LEN 48

// SLc Muon Unique Identifier
`define SLCPROC_HESF_SLC_MUIDSLC_MUID_LEN 20
`define SLCPROC_HESF_SLC_MUIDSLC_MUID_MSB 47
`define SLCPROC_HESF_SLC_MUIDSLC_MUID_LSB 28
`define SLCPROC_HESF_SLC_MUIDSLC_MUID_DECB 0

// inner MDT segment chip destination
`define SLCPROC_HESF_mdtseg_destmdtseg_dest_LEN 2
`define SLCPROC_HESF_mdtseg_destmdtseg_dest_MSB 27
`define SLCPROC_HESF_mdtseg_destmdtseg_dest_LSB 26
`define SLCPROC_HESF_mdtseg_destmdtseg_dest_DECB 0

// SLc Inner Vector MDT chamber ID
`define SLCPROC_HESF_vec_mdtidvec_mdtid_LEN 6
`define SLCPROC_HESF_vec_mdtidvec_mdtid_MSB 25
`define SLCPROC_HESF_vec_mdtidvec_mdtid_LSB 20
`define SLCPROC_HESF_vec_mdtidvec_mdtid_DECB 0

// SLc inner vector rho position
`define SLCPROC_HESF_vec_posvec_pos_LEN 10
`define SLCPROC_HESF_vec_posvec_pos_MSB 19
`define SLCPROC_HESF_vec_posvec_pos_LSB 10
`define SLCPROC_HESF_vec_posvec_pos_DECB 0

// SLc inner vector theta angle
`define SLCPROC_HESF_vec_angvec_ang_LEN 10
`define SLCPROC_HESF_vec_angvec_ang_MSB 9
`define SLCPROC_HESF_vec_angvec_ang_LSB 0
`define SLCPROC_HESF_vec_angvec_ang_DECB 0

// -------------------------------------------------------------------
`define TUBEREMAP_LEN 69

// Tube layer within one station
`define TUBEREMAP_mdt_tube_layermdt_tube_layer_LEN 5
`define TUBEREMAP_mdt_tube_layermdt_tube_layer_MSB 68
`define TUBEREMAP_mdt_tube_layermdt_tube_layer_LSB 64
`define TUBEREMAP_mdt_tube_layermdt_tube_layer_DECB 0

// Tube number within one station
`define TUBEREMAP_mdt_tube_nummdt_tube_num_LEN 9
`define TUBEREMAP_mdt_tube_nummdt_tube_num_MSB 63
`define TUBEREMAP_mdt_tube_nummdt_tube_num_LSB 55
`define TUBEREMAP_mdt_tube_nummdt_tube_num_DECB 0

// Tube radial position
`define TUBEREMAP_mdt_tube_rhomdt_tube_rho_LEN 18
`define TUBEREMAP_mdt_tube_rhomdt_tube_rho_MSB 54
`define TUBEREMAP_mdt_tube_rhomdt_tube_rho_LSB 37
`define TUBEREMAP_mdt_tube_rhomdt_tube_rho_DECB 5

// Tube position along z
`define TUBEREMAP_mdt_tube_zmdt_tube_z_LEN 19
`define TUBEREMAP_mdt_tube_zmdt_tube_z_MSB 36
`define TUBEREMAP_mdt_tube_zmdt_tube_z_LSB 18
`define TUBEREMAP_mdt_tube_zmdt_tube_z_DECB 5

// Tube (uncalibrated) time
`define TUBEREMAP_mdt_tube_timemdt_tube_time_LEN 18
`define TUBEREMAP_mdt_tube_timemdt_tube_time_MSB 17
`define TUBEREMAP_mdt_tube_timemdt_tube_time_LSB 0
`define TUBEREMAP_mdt_tube_timemdt_tube_time_DECB 1

// -------------------------------------------------------------------
`define HE_LSF_LEN 39

// Hit Valid bit
`define HE_LSF_mdt_validmdt_valid_LEN 1
`define HE_LSF_mdt_validmdt_valid_MSB 38
`define HE_LSF_mdt_validmdt_valid_LSB 38
`define HE_LSF_mdt_validmdt_valid_DECB 0

// Data Valid bit
`define HE_LSF_data_validdata_valid_LEN 1
`define HE_LSF_data_validdata_valid_MSB 37
`define HE_LSF_data_validdata_valid_LSB 37
`define HE_LSF_data_validdata_valid_DECB 0

// Tube local position along precision coord
`define HE_LSF_mdt_localxmdt_localx_LEN 14
`define HE_LSF_mdt_localxmdt_localx_MSB 36
`define HE_LSF_mdt_localxmdt_localx_LSB 23
`define HE_LSF_mdt_localxmdt_localx_DECB 5

// Tube local position along second coord
`define HE_LSF_mdt_localymdt_localy_LEN 14
`define HE_LSF_mdt_localymdt_localy_MSB 22
`define HE_LSF_mdt_localymdt_localy_LSB 9
`define HE_LSF_mdt_localymdt_localy_DECB 5

// Tube drift radius
`define HE_LSF_mdt_radiusmdt_radius_LEN 9
`define HE_LSF_mdt_radiusmdt_radius_MSB 8
`define HE_LSF_mdt_radiusmdt_radius_LSB 0
`define HE_LSF_mdt_radiusmdt_radius_DECB 5

// -------------------------------------------------------------------
`define HE_CSF_LEN 39

// Hit Valid bit
`define HE_CSF_mdt_validmdt_valid_LEN 1
`define HE_CSF_mdt_validmdt_valid_MSB 38
`define HE_CSF_mdt_validmdt_valid_LSB 38
`define HE_CSF_mdt_validmdt_valid_DECB 0

// Data Valid bit
`define HE_CSF_data_validdata_valid_LEN 1
`define HE_CSF_data_validdata_valid_MSB 37
`define HE_CSF_data_validdata_valid_LSB 37
`define HE_CSF_data_validdata_valid_DECB 0

// Tube local position along precision coord
`define HE_CSF_mdt_localxmdt_localx_LEN 14
`define HE_CSF_mdt_localxmdt_localx_MSB 36
`define HE_CSF_mdt_localxmdt_localx_LSB 23
`define HE_CSF_mdt_localxmdt_localx_DECB 4

// Tube local position along second coord
`define HE_CSF_mdt_localymdt_localy_LEN 14
`define HE_CSF_mdt_localymdt_localy_MSB 22
`define HE_CSF_mdt_localymdt_localy_LSB 9
`define HE_CSF_mdt_localymdt_localy_DECB 4

// Tube drift radius
`define HE_CSF_mdt_radiusmdt_radius_LEN 9
`define HE_CSF_mdt_radiusmdt_radius_MSB 8
`define HE_CSF_mdt_radiusmdt_radius_LSB 0
`define HE_CSF_mdt_radiusmdt_radius_DECB 5

// -------------------------------------------------------------------
`define SLCPIPE_PTCALC_LEN 53

// -------------------------------------------------------------------
`define SF_LEN 55

// SF MDT segment valid bit
`define SF_segvalidsegvalid_LEN 1
`define SF_segvalidsegvalid_MSB 28
`define SF_segvalidsegvalid_LSB 28
`define SF_segvalidsegvalid_DECB 0

// SF MDT segment position along the precision coord
`define SF_segpossegpos_LEN 16
`define SF_segpossegpos_MSB 27
`define SF_segpossegpos_LSB 12
`define SF_segpossegpos_DECB 3

// SF MDT segment angle along the precision coord
`define SF_seganglesegangle_LEN 11
`define SF_seganglesegangle_MSB 11
`define SF_seganglesegangle_LSB 1
`define SF_seganglesegangle_DECB 0

// SF MDT segment qualiry
`define SF_segqualitysegquality_LEN 1
`define SF_segqualitysegquality_MSB 0
`define SF_segqualitysegquality_LSB 0
`define SF_segqualitysegquality_DECB 0

// -------------------------------------------------------------------
`define PTCALC_LEN 52

// eta of the innermost MDT station segment position
`define PTCALC_mtc_etamtc_eta_LEN 14
`define PTCALC_mtc_etamtc_eta_MSB 31
`define PTCALC_mtc_etamtc_eta_LSB 18
`define PTCALC_mtc_etamtc_eta_DECB 12

// pT calculated by the pT Calc
`define PTCALC_mtc_ptmtc_pt_LEN 8
`define PTCALC_mtc_ptmtc_pt_MSB 17
`define PTCALC_mtc_ptmtc_pt_LSB 10
`define PTCALC_mtc_ptmtc_pt_DECB 2

// pT threshold satisfied by the MDT TC
`define PTCALC_mtc_ptthreshmtc_ptthresh_LEN 4
`define PTCALC_mtc_ptthreshmtc_ptthresh_MSB 9
`define PTCALC_mtc_ptthreshmtc_ptthresh_LSB 6
`define PTCALC_mtc_ptthreshmtc_ptthresh_DECB 0

// charge determined from the pT calc
`define PTCALC_mtc_chargemtc_charge_LEN 1
`define PTCALC_mtc_chargemtc_charge_MSB 5
`define PTCALC_mtc_chargemtc_charge_LSB 5
`define PTCALC_mtc_chargemtc_charge_DECB 0

// # of segments used for calculating the pT
`define PTCALC_mtc_nsegmentsmtc_nsegments_LEN 2
`define PTCALC_mtc_nsegmentsmtc_nsegments_MSB 4
`define PTCALC_mtc_nsegmentsmtc_nsegments_LSB 3
`define PTCALC_mtc_nsegmentsmtc_nsegments_DECB 0

// quality of the MDT TC (TBC how this is defined)
`define PTCALC_mtc_qualitymtc_quality_LEN 3
`define PTCALC_mtc_qualitymtc_quality_MSB 2
`define PTCALC_mtc_qualitymtc_quality_LSB 0
`define PTCALC_mtc_qualitymtc_quality_DECB 0

// -------------------------------------------------------------------
`define SLCPIPE_MTC_ENDCAP_LEN 54

// 
`define SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_LEN 20
`define SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_MSB 53
`define SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_LSB 34
`define SLCPIPE_MTC_ENDCAP_SLC_MUIDSLC_MUID_DECB 0

// -------------------------------------------------------------------
`define SLCPIPE_MTC_BARREL_LEN 57

// 
`define SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_LEN 20
`define SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_MSB 53
`define SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_LSB 34
`define SLCPIPE_MTC_BARREL_SLC_MUIDSLC_MUID_DECB 0

// -------------------------------------------------------------------
`define MTC_LEN 67

// MDT processing flags
`define MTC_mtc_procflagsmtc_procflags_LEN 4
`define MTC_mtc_procflagsmtc_procflags_MSB 8
`define MTC_mtc_procflagsmtc_procflags_LSB 5
`define MTC_mtc_procflagsmtc_procflags_DECB 0
