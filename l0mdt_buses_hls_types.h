// -------------------------------------------------------------------------------------------------
// Auto-generated from:
// https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
// -------------------------------------------------------------------------------------------------
#ifndef L0MDT_BUSES_HLS_TYPES_H
#define L0MDT_BUSES_HLS_TYPES_H


#include <ap_fixed.h>
#include <ap_int.h>

// -------------------------------------------------------------------
typedef ap_uint<SLC_MUID_LEN> slc_muid_uint_t;
typedef ap_uint<SLC_MUID_SLCID_LEN> slc_muid_slcid_uint_t;
typedef ap_uint<SLC_MUID_SLID_LEN> slc_muid_slid_uint_t;
typedef ap_uint<SLC_MUID_BCID_LEN> slc_muid_bcid_uint_t;
typedef ap_uint<17> slc_muid_bcid_uint_scaled_t;

// -------------------------------------------------------------------
typedef ap_uint<SLC_COMMON_LEN> slc_common_uint_t;
typedef ap_uint<SLC_COMMON_SLCID_LEN> slc_common_slcid_uint_t;
typedef ap_uint<SLC_COMMON_TCSENT_LEN> slc_common_tcsent_uint_t;
typedef ap_fixed<SLC_COMMON_POSETA_LEN, SLC_COMMON_POSETA_IW> slc_common_poseta_fixed_t;
typedef ap_uint<SLC_COMMON_POSPHI_LEN> slc_common_posphi_uint_t;
typedef ap_uint<13> slc_common_posphi_uint_scaled_t;
typedef ap_uint<SLC_COMMON_PTTHRESH_LEN> slc_common_ptthresh_uint_t;
typedef ap_uint<7> slc_common_ptthresh_uint_scaled_t;
typedef ap_uint<SLC_COMMON_CHARGE_LEN> slc_common_charge_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLC_ENDCAP_LEN> slc_endcap_uint_t;
typedef ap_int<SLC_ENDCAP_SEG_ANGDTHETA_LEN> slc_endcap_seg_angdtheta_int_t;
typedef ap_int<9> slc_endcap_seg_angdtheta_int_scaled_t;
typedef ap_int<SLC_ENDCAP_SEG_ANGDPHI_LEN> slc_endcap_seg_angdphi_int_t;
typedef ap_int<7> slc_endcap_seg_angdphi_int_scaled_t;
typedef ap_ufixed<SLC_ENDCAP_NSWSEG_POSETA_LEN, SLC_ENDCAP_NSWSEG_POSETA_IW> slc_endcap_nswseg_poseta_ufixed_t;
typedef ap_uint<SLC_ENDCAP_NSWSEG_POSPHI_LEN> slc_endcap_nswseg_posphi_uint_t;
typedef ap_uint<13> slc_endcap_nswseg_posphi_uint_scaled_t;
typedef ap_int<SLC_ENDCAP_NSWSEG_ANGDTHETA_LEN> slc_endcap_nswseg_angdtheta_int_t;

// -------------------------------------------------------------------
typedef ap_uint<SLC_BARREL_LEN> slc_barrel_uint_t;
typedef ap_uint<SLC_BARREL_RPC0_POSZ_LEN> slc_barrel_rpc0_posz_uint_t;
typedef ap_uint<14> slc_barrel_rpc0_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_RPC1_POSZ_LEN> slc_barrel_rpc1_posz_uint_t;
typedef ap_uint<14> slc_barrel_rpc1_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_RPC2_POSZ_LEN> slc_barrel_rpc2_posz_uint_t;
typedef ap_uint<14> slc_barrel_rpc2_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_RPC3_POSZ_LEN> slc_barrel_rpc3_posz_uint_t;
typedef ap_uint<14> slc_barrel_rpc3_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_COINTYPE_LEN> slc_barrel_cointype_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_PIPE_COMMON_LEN> slcproc_pipe_common_uint_t;
typedef ap_uint<SLCPROC_PIPE_COMMON_BUSY_LEN> slcproc_pipe_common_busy_uint_t;
typedef ap_uint<SLCPROC_PIPE_COMMON_DESTSL_LEN> slcproc_pipe_common_destsl_uint_t;
typedef ap_int<SLCPROC_PIPE_COMMON_PHIMOD_LEN> slcproc_pipe_common_phimod_int_t;
typedef ap_int<10> slcproc_pipe_common_phimod_int_scaled_t;
typedef ap_uint<SLCPROC_PIPE_COMMON_INN_VEC_MDTID_LEN> slcproc_pipe_common_inn_vec_mdtid_uint_t;
typedef ap_uint<SLCPROC_PIPE_COMMON_MID_VEC_MDTID_LEN> slcproc_pipe_common_mid_vec_mdtid_uint_t;
typedef ap_uint<SLCPROC_PIPE_COMMON_OUT_VEC_MDTID_LEN> slcproc_pipe_common_out_vec_mdtid_uint_t;
typedef ap_uint<SLCPROC_PIPE_COMMON_EXT_VEC_MDTID_LEN> slcproc_pipe_common_ext_vec_mdtid_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_PIPE_ENDCAP_LEN> slcproc_pipe_endcap_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_PIPE_BARREL_LEN> slcproc_pipe_barrel_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<TDC_LEN> tdc_uint_t;
typedef ap_uint<TDC_CHANID_LEN> tdc_chanid_uint_t;
typedef ap_uint<TDC_EDGEMODE_LEN> tdc_edgemode_uint_t;
typedef ap_uint<TDC_COARSETIME_LEN> tdc_coarsetime_uint_t;
typedef ap_uint<17> tdc_coarsetime_uint_scaled_t;
typedef ap_ufixed<TDC_FINETIME_LEN, TDC_FINETIME_IW> tdc_finetime_ufixed_t;
typedef ap_ufixed<TDC_PULSEWIDTH_LEN, TDC_PULSEWIDTH_IW> tdc_pulsewidth_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<TDCPOLMUX_LEN> tdcpolmux_uint_t;
typedef ap_uint<TDCPOLMUX_FIBERID_LEN> tdcpolmux_fiberid_uint_t;
typedef ap_uint<TDCPOLMUX_ELINKID_LEN> tdcpolmux_elinkid_uint_t;
typedef ap_uint<TDCPOLMUX_DATAVALID_LEN> tdcpolmux_datavalid_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_HPS_SF_LEN> slcproc_hps_sf_uint_t;
typedef ap_uint<SLCPROC_HPS_SF_SLC_VALID_LEN> slcproc_hps_sf_slc_valid_uint_t;
typedef ap_uint<SLCPROC_HPS_SF_SLC_MUID_LEN> slcproc_hps_sf_slc_muid_uint_t;
typedef ap_uint<SLCPROC_HPS_SF_MDTSEG_DEST_LEN> slcproc_hps_sf_mdtseg_dest_uint_t;
typedef ap_uint<SLCPROC_HPS_SF_VEC_MDTID_LEN> slcproc_hps_sf_vec_mdtid_uint_t;
typedef ap_uint<SLCPROC_HPS_SF_VEC_POS_LEN> slcproc_hps_sf_vec_pos_uint_t;
typedef ap_uint<14> slcproc_hps_sf_vec_pos_uint_scaled_t;
typedef ap_uint<SLCPROC_HPS_SF_VEC_ANG_LEN> slcproc_hps_sf_vec_ang_uint_t;
typedef ap_uint<11> slcproc_hps_sf_vec_ang_uint_scaled_t;

// -------------------------------------------------------------------
typedef ap_uint<TAR_LEN> tar_uint_t;
typedef ap_uint<TAR_MDT_TUBE_LAYER_LEN> tar_mdt_tube_layer_uint_t;
typedef ap_uint<TAR_MDT_TUBE_NUM_LEN> tar_mdt_tube_num_uint_t;
typedef ap_ufixed<TAR_MDT_TUBE_RHO_LEN, TAR_MDT_TUBE_RHO_IW> tar_mdt_tube_rho_ufixed_t;
typedef ap_ufixed<TAR_MDT_TUBE_Z_LEN, TAR_MDT_TUBE_Z_IW> tar_mdt_tube_z_ufixed_t;
typedef ap_ufixed<TAR_MDT_TUBE_TIME_LEN, TAR_MDT_TUBE_TIME_IW> tar_mdt_tube_time_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<HPS_LSF_LEN> hps_lsf_uint_t;
typedef ap_uint<HPS_LSF_DATA_VALID_LEN> hps_lsf_data_valid_uint_t;
typedef ap_ufixed<HPS_LSF_MDT_LOCALX_LEN, HPS_LSF_MDT_LOCALX_IW> hps_lsf_mdt_localx_ufixed_t;
typedef ap_ufixed<HPS_LSF_MDT_LOCALY_LEN, HPS_LSF_MDT_LOCALY_IW> hps_lsf_mdt_localy_ufixed_t;
typedef ap_ufixed<HPS_LSF_MDT_RADIUS_LEN, HPS_LSF_MDT_RADIUS_IW> hps_lsf_mdt_radius_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<HPS_CSF_LEN> hps_csf_uint_t;
typedef ap_uint<HPS_CSF_DATA_VALID_LEN> hps_csf_data_valid_uint_t;
typedef ap_ufixed<HPS_CSF_MDT_LOCALX_LEN, HPS_CSF_MDT_LOCALX_IW> hps_csf_mdt_localx_ufixed_t;
typedef ap_fixed<HPS_CSF_MDT_LOCALY_LEN, HPS_CSF_MDT_LOCALY_IW> hps_csf_mdt_localy_fixed_t;
typedef ap_ufixed<HPS_CSF_MDT_RADIUS_LEN, HPS_CSF_MDT_RADIUS_IW> hps_csf_mdt_radius_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPIPE_PTCALC_LEN> slcpipe_ptcalc_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SF_LEN> sf_uint_t;
typedef ap_uint<SF_SEGVALID_LEN> sf_segvalid_uint_t;
typedef ap_ufixed<SF_SEGPOS_LEN, SF_SEGPOS_IW> sf_segpos_ufixed_t;
typedef ap_uint<SF_SEGANGLE_LEN> sf_segangle_uint_t;
typedef ap_uint<SF_SEGQUALITY_LEN> sf_segquality_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<PTCALC_LEN> ptcalc_uint_t;
typedef ap_fixed<PTCALC_ETA_LEN, PTCALC_ETA_IW> ptcalc_eta_fixed_t;
typedef ap_ufixed<PTCALC_PT_LEN, PTCALC_PT_IW> ptcalc_pt_ufixed_t;
typedef ap_uint<PTCALC_PTTHRESH_LEN> ptcalc_ptthresh_uint_t;
typedef ap_uint<7> ptcalc_ptthresh_uint_scaled_t;
typedef ap_uint<PTCALC_CHARGE_LEN> ptcalc_charge_uint_t;
typedef ap_uint<PTCALC_NSEGMENTS_LEN> ptcalc_nsegments_uint_t;
typedef ap_uint<PTCALC_QUALITY_LEN> ptcalc_quality_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPIPE_MTC_ENDCAP_LEN> slcpipe_mtc_endcap_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPIPE_MTC_BARREL_LEN> slcpipe_mtc_barrel_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<MTC_LEN> mtc_uint_t;
typedef ap_uint<MTC_PROCFLAGS_LEN> mtc_procflags_uint_t;

// -------------------------------------------------------------------

#endif // L0MDT_BUSES_HLS_TYPES_H
