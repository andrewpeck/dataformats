//++++++++++++++++++++++++++SLCPROC_IN_COMMON+++++++++++++++++++++
typedef struct {
logic [1 : 0] slc_id;
logic [15 : 2] slc_seg_pos_eta;
logic [24 : 16] slc_seg_pos_phi;
logic [28 : 25] slc_pt_thresh;
logic [29 : 29] slc_charge;
logic [41 : 30] slc_bcid;
} SLCPROC_IN_COMMON;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_ENDCAP+++++++++++++++++++++
typedef struct {
SLCPROC_IN_COMMON SLCPROC_IN_COMMON_ENDCAP;
logic [48 : 42] slc_seg_ang_dtheta;
logic [52 : 49] slc_seg_ang_dphi;
logic [66 : 53] nsw_seg_pos_eta;
logic [74 : 67] nsw_seg_pos_phi;
logic [79 : 75] nsw_seg_ang_dtheta;
} SLCPROC_IN_ENDCAP;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_BARREL+++++++++++++++++++++
typedef struct {
SLCPROC_IN_COMMON SLCPROC_IN_COMMON_BARREL;
logic [51 : 42] slc_rpc0_pos_z;
logic [61 : 52] slc_rpc1_pos_z;
logic [71 : 62] slc_rpc2_pos_z;
logic [81 : 72] slc_rpc3_pos_z;
logic [83 : 82] slc_coin_type;
} SLCPROC_IN_BARREL;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPIPE_IN_COMMON+++++++++++++++++++++
typedef struct {
logic [19 : 0] slc_mu_id;
logic [25 : 20] slc_vec_mdt_id;
logic [31 : 26] slc_vec_mdt_id;
logic [37 : 32] slc_vec_mdt_id;
logic [43 : 38] slc_vec_mdt_id;
logic [59 : 44] slc_phimod;
logic [61 : 60] mtc_dest_sl;
} SLCPIPE_IN_COMMON;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++TDCFORMAT_IN+++++++++++++++++++++
typedef struct {
logic [4 : 0] tdc_chan_id;
logic [6 : 5] tdc_edge_mode;
logic [18 : 7] tdc_coarse_time;
logic [23 : 19] tdc_fine_time;
logic [31 : 24] tdc_pulse_width;
} TDCFORMAT_IN;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++TUBEREMAP_IN+++++++++++++++++++++
typedef struct {
TDCFORMAT_IN TDCFORMAT_IN_TUBEREMAP;
logic [36 : 32] fiber_id;
logic [40 : 37] elink_id;
logic [41 : 41] data_valid;
logic [43 : 42] station_id;
} TUBEREMAP_IN;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++HESF_IN_SLCPROC+++++++++++++++++++++
typedef struct {
logic [1 : 0] mdt_seg_dest_c;
logic [7 : 2] slc_vec_mdt_id;
logic [17 : 8] slc_vec_pos;
logic [27 : 18] slc_vec_ang;
logic [47 : 28] slc_mu_id;
} HESF_IN_SLCPROC;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++HE_IN_TUBEREMAP+++++++++++++++++++++
typedef struct {
logic [4 : 0] tube_layer;
logic [13 : 5] tube_num;
logic [31 : 14] tube_rho;
logic [50 : 32] tube_z;
logic [67 : 51] tube_time;
} HE_IN_TUBEREMAP;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++LSF_IN_HE+++++++++++++++++++++
typedef struct {
logic [0 : 0] mdt_hit_valid;
logic [1 : 1] data_valid;
logic [15 : 2] tube_local_x_lsf;
logic [29 : 16] tube_local_y_lsf;
logic [38 : 30] tube_radius_lsf;
} LSF_IN_HE;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++CSF_IN_HE+++++++++++++++++++++
typedef struct {
logic [0 : 0] mdt_hit_valid;
logic [1 : 1] data_valid;
logic [17 : 2] tube_local_x_csf;
logic [33 : 18] tube_local_y_csf;
logic [65 : 34] tube_radius_csf;
} CSF_IN_HE;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++PTCALC_IN_SLCPIPE+++++++++++++++++++++
typedef struct {
logic [19 : 0] slc_mu_id;
logic [25 : 20] slc_vec_mdt_id;
logic [31 : 26] slc_vec_mdt_id;
logic [37 : 32] slc_vec_mdt_id;
logic [43 : 38] slc_vec_mdt_id;
logic [59 : 44] slc_phimod;
logic [60 : 60] slc_charge;
} PTCALC_IN_SLCPIPE;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++PTCALC_IN_SF+++++++++++++++++++++
typedef struct {
logic [19 : 0] slc_mu_id;
logic [25 : 20] slc_vec_mdt_id;
logic [26 : 26] sf_seg_valid;
logic [42 : 27] sf_seg_pos;
logic [53 : 43] sf_seg_angle;
logic [54 : 54] sf_seg_quality;
} PTCALC_IN_SF;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_ENDCAP+++++++++++++++++++++
typedef struct {
SLCPROC_IN_ENDCAP SLCPROC_IN_ENDCAP_MTCBUILD;
logic [83 : 80] mdt_pt_thresh;
logic [91 : 84] mdt_pt;
logic [95 : 92] mdt_processing_flags;
logic [96 : 96] mdt_charge;
logic [98 : 97] mdt_n_segments;
logic [99 : 99] mdt_quality;
} MTCBUILD_IN_PTCALC_ENDCAP;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_BARREL+++++++++++++++++++++
typedef struct {
SLCPROC_IN_BARREL SLCPROC_IN_BARREL_MTCBUILD;
logic [87 : 84] mdt_pt_thresh;
logic [95 : 88] mdt_pt;
logic [99 : 96] mdt_processing_flags;
logic [100 : 100] mdt_charge;
logic [102 : 101] mdt_n_segments;
logic [103 : 103] mdt_quality;
} MTCBUILD_IN_PTCALC_BARREL;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

