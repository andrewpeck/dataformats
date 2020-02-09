//++++++++++++++++++++++++++SLC_MU_ID+++++++++++++++++++++
typedef struct {
logic [2 : 0] slc_id;
logic [6 : 0] sl_id;
logic [12 : 0] slc_bcid;
} SLC_MU_ID;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_COMMON+++++++++++++++++++++
typedef struct {
logic [2 : 0] slc_id;
logic [14 : 0] slc_seg_pos_eta;
logic [9 : 0] slc_seg_pos_phi;
logic [4 : 0] slc_pt_thresh;
logic [1 : 0] slc_charge;
logic [12 : 0] slc_bcid;
} SLCPROC_IN_COMMON;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_ENDCAP+++++++++++++++++++++
typedef struct {
SLCPROC_IN_COMMON SLCPROC_IN_COMMON_ENDCAP;
logic [7 : 0] slc_endcap_seg_ang_dtheta;
logic [4 : 0] slc_endcap_seg_ang_dphi;
logic [14 : 0] sbc_endcap_nsw_seg_pos_eta;
logic [8 : 0] sbc_endcap_nsw_seg_pos_phi;
logic [5 : 0] sbc_endcap_nsw_seg_ang_dtheta;
} SLCPROC_IN_ENDCAP;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_BARREL+++++++++++++++++++++
typedef struct {
SLCPROC_IN_COMMON SLCPROC_IN_COMMON_BARREL;
logic [10 : 0] slc_barrel_rpc0_pos_z;
logic [10 : 0] slc_barrel_rpc1_pos_z;
logic [10 : 0] slc_barrel_rpc2_pos_z;
logic [10 : 0] slc_barrel_rpc3_pos_z;
logic [2 : 0] slc_barrel_coin_type;
} SLCPROC_IN_BARREL;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPIPE_IN_COMMON+++++++++++++++++++++
typedef struct {
SLC_MU_ID SLC_MU_ID_SLCPIPE;
logic [6 : 0] slcproc_vec_mdt_id;
logic [6 : 0] slcproc_vec_mdt_id;
logic [6 : 0] slcproc_vec_mdt_id;
logic [6 : 0] slcproc_vec_mdt_id;
logic [16 : 0] slcproc_phimod;
logic [2 : 0] slcproc_mtc_dest_sl;
} SLCPIPE_IN_COMMON;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++TDCFORMAT_IN+++++++++++++++++++++
typedef struct {
logic [5 : 0] csm_tdc_chan_id;
logic [2 : 0] csm_tdc_edge_mode;
logic [12 : 0] csm_tdc_coarse_time;
logic [5 : 0] csm_tdc_fine_time;
logic [8 : 0] csm_tdc_pulse_width;
} TDCFORMAT_IN;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++TUBEREMAP_IN+++++++++++++++++++++
typedef struct {
TDCFORMAT_IN TDCFORMAT_IN_TUBEREMAP;
logic [5 : 0] fiber_id;
logic [4 : 0] elink_id;
logic [1 : 0] data_valid;
logic [2 : 0] station_id;
} TUBEREMAP_IN;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++HESF_IN_SLCPROC+++++++++++++++++++++
typedef struct {
logic [2 : 0] mdt_seg_dest_c;
logic [6 : 0] slcproc_vec_mdt_id;
logic [10 : 0] slcproc_vec_pos;
logic [10 : 0] slcproc_vec_ang;
logic [20 : 0] slc_mu_id;
} HESF_IN_SLCPROC;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++HE_IN_TUBEREMAP+++++++++++++++++++++
typedef struct {
logic [5 : 0] mdt_tube_layer;
logic [9 : 0] mdt_tube_num;
logic [18 : 0] mdt_tube_rho;
logic [19 : 0] mdt_tube_z;
logic [17 : 0] mdt_tube_time;
} HE_IN_TUBEREMAP;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++LSF_IN_HE+++++++++++++++++++++
typedef struct {
logic [1 : 0] mdt_hit_valid;
logic [1 : 0] data_valid;
logic [14 : 0] lsf_mdt_tube_local_x;
logic [14 : 0] lsf_mdt_tube_local_y;
logic [9 : 0] lsf_mdt_tube_radius;
} LSF_IN_HE;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++CSF_IN_HE+++++++++++++++++++++
typedef struct {
logic [1 : 0] mdt_hit_valid;
logic [1 : 0] data_valid;
logic [16 : 0] csf_mdt_tube_local_x;
logic [16 : 0] csf_mdt_tube_local_y;
logic [32 : 0] csf_mdt_tube_radius;
} CSF_IN_HE;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++PTCALC_IN_SLCPIPE+++++++++++++++++++++
typedef struct {
logic [20 : 0] SLC_MU_ID_SLCPIPE;
logic [6 : 0] slcproc_vec_mdt_id;
logic [6 : 0] slcproc_vec_mdt_id;
logic [6 : 0] slcproc_vec_mdt_id;
logic [6 : 0] slcproc_vec_mdt_id;
logic [16 : 0] slcproc_phimod;
logic [1 : 0] slc_charge;
} PTCALC_IN_SLCPIPE;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++PTCALC_IN_SF+++++++++++++++++++++
typedef struct {
logic [20 : 0] SLC_MU_ID_SLCPIPE;
logic [6 : 0] slcproc_vec_mdt_id;
logic [1 : 0] sf_seg_valid;
logic [16 : 0] sf_seg_pos;
logic [11 : 0] sf_seg_angle;
logic [1 : 0] sf_seg_quality;
} PTCALC_IN_SF;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_ENDCAP+++++++++++++++++++++
typedef struct {
SLCPROC_IN_ENDCAP SLCPROC_IN_ENDCAP_MTCBUILD;
logic [4 : 0] mtc_pt_thresh;
logic [8 : 0] mtc_pt;
logic [4 : 0] mtc_processing_flags;
logic [1 : 0] mtc_charge;
logic [2 : 0] mtc_n_segments;
logic [1 : 0] mtc_quality;
} MTCBUILD_IN_PTCALC_ENDCAP;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_BARREL+++++++++++++++++++++
typedef struct {
SLCPROC_IN_BARREL SLCPROC_IN_BARREL_MTCBUILD;
logic [4 : 0] mtc_pt_thresh;
logic [8 : 0] mtc_pt;
logic [4 : 0] mtc_processing_flags;
logic [1 : 0] mtc_charge;
logic [2 : 0] mtc_n_segments;
logic [1 : 0] mtc_quality;
} MTCBUILD_IN_PTCALC_BARREL;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

