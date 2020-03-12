
#ifndef LOMDT_BUSES_HLS_TYPES_H
#define LOMDT_BUSES_HLS_TYPES_H

const char df_hash_hls_types[] = "7221817b";

// -------------------------------------------------------------------
typedef ap_uint<SLC_MUID_LEN> slc_muid_uint_t;
typedef ap_uint<SLC_MUID_SLCID_LEN> SLC_MUID_SLCID_uint_t;
typedef ap_uint<SLC_MUID_SLID_LEN> SLC_MUID_SLID_uint_t;
typedef ap_uint<SLC_MUID_BCID_LEN> SLC_MUID_BCID_uint_t;
typedef ap_uint<17> slc_muid_bcid_uint_scaled_t;

// -------------------------------------------------------------------
typedef ap_uint<SLC_COMMON_LEN> slc_common_uint_t;
typedef ap_uint<SLC_COMMON_SLCID_LEN> SLC_COMMON_SLCID_uint_t;
typedef ap_uint<SLC_COMMON_TCSENT_LEN> SLC_COMMON_TCSENT_uint_t;
typedef ap_fixed<SLC_COMMON_POSETA_LEN, SLC_COMMON_POSETA_IW> SLC_COMMON_POSETA_fixed_t;
typedef ap_uint<SLC_COMMON_POSPHI_LEN> SLC_COMMON_POSPHI_uint_t;
typedef ap_uint<13> slc_common_posphi_uint_scaled_t;
typedef ap_uint<SLC_COMMON_PTTHRESH_LEN> SLC_COMMON_PTTHRESH_uint_t;
typedef ap_uint<7> slc_common_ptthresh_uint_scaled_t;
typedef ap_uint<SLC_COMMON_CHARGE_LEN> SLC_COMMON_CHARGE_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLC_ENDCAP_LEN> slc_endcap_uint_t;
typedef ap_int<SLC_ENDCAP_SEG_ANGDTHETA_LEN> SLC_ENDCAP_SEG_ANGDTHETA_int_t;
typedef ap_int<9> slc_endcap_seg_angdtheta_int_scaled_t;
typedef ap_int<SLC_ENDCAP_SEG_ANGDPHI_LEN> SLC_ENDCAP_SEG_ANGDPHI_int_t;
typedef ap_int<7> slc_endcap_seg_angdphi_int_scaled_t;
typedef ap_ufixed<SLC_ENDCAP_NSWSEG_POSETA_LEN, SLC_ENDCAP_NSWSEG_POSETA_IW> SLC_ENDCAP_NSWSEG_POSETA_ufixed_t;
typedef ap_uint<SLC_ENDCAP_NSWSEG_POSPHI_LEN> SLC_ENDCAP_NSWSEG_POSPHI_uint_t;
typedef ap_uint<13> slc_endcap_nswseg_posphi_uint_scaled_t;
typedef ap_int<SLC_ENDCAP_NSWSEG_ANGDTHETA_LEN> SLC_ENDCAP_NSWSEG_ANGDTHETA_int_t;

// -------------------------------------------------------------------
typedef ap_uint<SLC_BARREL_LEN> slc_barrel_uint_t;
typedef ap_uint<SLC_BARREL_RPC0_POSZ_LEN> SLC_BARREL_RPC0_POSZ_uint_t;
typedef ap_uint<14> slc_barrel_rpc0_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_RPC1_POSZ_LEN> SLC_BARREL_RPC1_POSZ_uint_t;
typedef ap_uint<14> slc_barrel_rpc1_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_RPC2_POSZ_LEN> SLC_BARREL_RPC2_POSZ_uint_t;
typedef ap_uint<14> slc_barrel_rpc2_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_RPC3_POSZ_LEN> SLC_BARREL_RPC3_POSZ_uint_t;
typedef ap_uint<14> slc_barrel_rpc3_posz_uint_scaled_t;
typedef ap_uint<SLC_BARREL_COINTYPE_LEN> SLC_BARREL_COINTYPE_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_PIPELINE_COMMON_LEN> slcproc_pipeline_common_uint_t;
typedef ap_uint<SLCPROC_PIPELINE_COMMON_BUSY_LEN> SLCPROC_PIPELINE_COMMON_BUSY_uint_t;
typedef ap_uint<SLCPROC_PIPELINE_COMMON_DESTSL_LEN> SLCPROC_PIPELINE_COMMON_DESTSL_uint_t;
typedef ap_int<SLCPROC_PIPELINE_COMMON_PHIMOD_LEN> SLCPROC_PIPELINE_COMMON_PHIMOD_int_t;
typedef ap_int<10> slcproc_pipeline_common_phimod_int_scaled_t;
typedef ap_uint<SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_LEN> SLCPROC_PIPELINE_COMMON_INN_VEC_MDTID_uint_t;
typedef ap_uint<SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_LEN> SLCPROC_PIPELINE_COMMON_MID_VEC_MDTID_uint_t;
typedef ap_uint<SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_LEN> SLCPROC_PIPELINE_COMMON_OUT_VEC_MDTID_uint_t;
typedef ap_uint<SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_LEN> SLCPROC_PIPELINE_COMMON_EXT_VEC_MDTID_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_PIPELINE_ENDCAP_LEN> slcproc_pipeline_endcap_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_PIPELINE_BARREL_LEN> slcproc_pipeline_barrel_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<TDC_LEN> tdc_uint_t;
typedef ap_uint<TDC_CHANID_LEN> TDC_CHANID_uint_t;
typedef ap_uint<TDC_EDGEMODE_LEN> TDC_EDGEMODE_uint_t;
typedef ap_uint<TDC_COARSETIME_LEN> TDC_COARSETIME_uint_t;
typedef ap_uint<17> tdc_coarsetime_uint_scaled_t;
typedef ap_ufixed<TDC_FINETIME_LEN, TDC_FINETIME_IW> TDC_FINETIME_ufixed_t;
typedef ap_ufixed<TDC_PULSEWIDTH_LEN, TDC_PULSEWIDTH_IW> TDC_PULSEWIDTH_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<TDCPOLMUX_LEN> tdcpolmux_uint_t;
typedef ap_uint<TDCPOLMUX_FIBERID_LEN> TDCPOLMUX_FIBERID_uint_t;
typedef ap_uint<TDCPOLMUX_ELINKID_LEN> TDCPOLMUX_ELINKID_uint_t;
typedef ap_uint<TDCPOLMUX_DATAVALID_LEN> TDCPOLMUX_DATAVALID_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPROC_HPS_LEN> slcproc_hps_uint_t;
typedef ap_uint<SLCPROC_HPS_SLC_MUID_LEN> SLCPROC_HPS_SLC_MUID_uint_t;
typedef ap_uint<SLCPROC_HPS_MDTSEG_DEST_LEN> SLCPROC_HPS_MDTSEG_DEST_uint_t;
typedef ap_uint<SLCPROC_HPS_VEC_MDTID_LEN> SLCPROC_HPS_VEC_MDTID_uint_t;
typedef ap_uint<SLCPROC_HPS_VEC_POS_LEN> SLCPROC_HPS_VEC_POS_uint_t;
typedef ap_uint<14> slcproc_hps_vec_pos_uint_scaled_t;
typedef ap_uint<SLCPROC_HPS_VEC_ANG_LEN> SLCPROC_HPS_VEC_ANG_uint_t;
typedef ap_uint<11> slcproc_hps_vec_ang_uint_scaled_t;

// -------------------------------------------------------------------
typedef ap_uint<TAR_LEN> tar_uint_t;
typedef ap_uint<TAR_MDT_TUBE_LAYER_LEN> TAR_MDT_TUBE_LAYER_uint_t;
typedef ap_uint<TAR_MDT_TUBE_NUM_LEN> TAR_MDT_TUBE_NUM_uint_t;
typedef ap_ufixed<TAR_MDT_TUBE_RHO_LEN, TAR_MDT_TUBE_RHO_IW> TAR_MDT_TUBE_RHO_ufixed_t;
typedef ap_ufixed<TAR_MDT_TUBE_Z_LEN, TAR_MDT_TUBE_Z_IW> TAR_MDT_TUBE_Z_ufixed_t;
typedef ap_ufixed<TAR_MDT_TUBE_TIME_LEN, TAR_MDT_TUBE_TIME_IW> TAR_MDT_TUBE_TIME_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<HP_LSF_LEN> hp_lsf_uint_t;
typedef ap_uint<HP_LSF_MDT_VALID_LEN> HP_LSF_MDT_VALID_uint_t;
typedef ap_uint<HP_LSF_DATA_VALID_LEN> HP_LSF_DATA_VALID_uint_t;
typedef ap_ufixed<HP_LSF_MDT_LOCALX_LEN, HP_LSF_MDT_LOCALX_IW> HP_LSF_MDT_LOCALX_ufixed_t;
typedef ap_ufixed<HP_LSF_MDT_LOCALY_LEN, HP_LSF_MDT_LOCALY_IW> HP_LSF_MDT_LOCALY_ufixed_t;
typedef ap_ufixed<HP_LSF_MDT_RADIUS_LEN, HP_LSF_MDT_RADIUS_IW> HP_LSF_MDT_RADIUS_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<HP_CSF_LEN> hp_csf_uint_t;
typedef ap_uint<HP_CSF_MDT_VALID_LEN> HP_CSF_MDT_VALID_uint_t;
typedef ap_uint<HP_CSF_DATA_VALID_LEN> HP_CSF_DATA_VALID_uint_t;
typedef ap_ufixed<HP_CSF_MDT_LOCALX_LEN, HP_CSF_MDT_LOCALX_IW> HP_CSF_MDT_LOCALX_ufixed_t;
typedef ap_fixed<HP_CSF_MDT_LOCALY_LEN, HP_CSF_MDT_LOCALY_IW> HP_CSF_MDT_LOCALY_fixed_t;
typedef ap_ufixed<HP_CSF_MDT_RADIUS_LEN, HP_CSF_MDT_RADIUS_IW> HP_CSF_MDT_RADIUS_ufixed_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPIPE_PTCALC_LEN> slcpipe_ptcalc_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SF_LEN> sf_uint_t;
typedef ap_uint<SF_SEGVALID_LEN> SF_SEGVALID_uint_t;
typedef ap_ufixed<SF_SEGPOS_LEN, SF_SEGPOS_IW> SF_SEGPOS_ufixed_t;
typedef ap_uint<SF_SEGANGLE_LEN> SF_SEGANGLE_uint_t;
typedef ap_uint<SF_SEGQUALITY_LEN> SF_SEGQUALITY_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<PTCALC_LEN> ptcalc_uint_t;
typedef ap_fixed<PTCALC_ETA_LEN, PTCALC_ETA_IW> PTCALC_ETA_fixed_t;
typedef ap_ufixed<PTCALC_PT_LEN, PTCALC_PT_IW> PTCALC_PT_ufixed_t;
typedef ap_uint<PTCALC_PTTHRESH_LEN> PTCALC_PTTHRESH_uint_t;
typedef ap_uint<7> ptcalc_ptthresh_uint_scaled_t;
typedef ap_uint<PTCALC_CHARGE_LEN> PTCALC_CHARGE_uint_t;
typedef ap_uint<PTCALC_NSEGMENTS_LEN> PTCALC_NSEGMENTS_uint_t;
typedef ap_uint<PTCALC_QUALITY_LEN> PTCALC_QUALITY_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPIPE_MTC_ENDCAP_LEN> slcpipe_mtc_endcap_uint_t;
typedef ap_uint<SLCPIPE_MTC_ENDCAP_SLC_MUID_LEN> SLCPIPE_MTC_ENDCAP_SLC_MUID_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<SLCPIPE_MTC_BARREL_LEN> slcpipe_mtc_barrel_uint_t;
typedef ap_uint<SLCPIPE_MTC_BARREL_SLC_MUID_LEN> SLCPIPE_MTC_BARREL_SLC_MUID_uint_t;

// -------------------------------------------------------------------
typedef ap_uint<MTC_LEN> mtc_uint_t;
typedef ap_uint<MTC_PROCFLAGS_LEN> MTC_PROCFLAGS_uint_t;

// -------------------------------------------------------------------

#endif // LOMDT_BUSES_HLS_TYPES_H
