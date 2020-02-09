//++++++++++++++++++++++++++SLC_MU_ID+++++++++++++++++++++
type SLC_MU_IDis record
slc_id : std::logic_vector(2 downto 0;
sl_id : std::logic_vector(6 downto 0;
slc_bcid : std::logic_vector(12 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPROC_IN_COMMON+++++++++++++++++++++
type SLCPROC_IN_COMMONis record
slc_id : std::logic_vector(2 downto 0;
slc_seg_pos_eta : std::logic_vector(14 downto 0;
slc_seg_pos_phi : std::logic_vector(9 downto 0;
slc_pt_thresh : std::logic_vector(4 downto 0;
slc_charge : std::logic_vector(1 downto 0;
slc_bcid : std::logic_vector(12 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPROC_IN_ENDCAP+++++++++++++++++++++
type SLCPROC_IN_ENDCAPis record
SLCPROC_IN_COMMON_ENDCAP : std::logic_vector(42 downto 0;
slc_endcap_seg_ang_dtheta : std::logic_vector(7 downto 0;
slc_endcap_seg_ang_dphi : std::logic_vector(4 downto 0;
sbc_endcap_nsw_seg_pos_eta : std::logic_vector(14 downto 0;
sbc_endcap_nsw_seg_pos_phi : std::logic_vector(8 downto 0;
sbc_endcap_nsw_seg_ang_dtheta : std::logic_vector(5 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPROC_IN_BARREL+++++++++++++++++++++
type SLCPROC_IN_BARRELis record
SLCPROC_IN_COMMON_BARREL : std::logic_vector(42 downto 0;
slc_barrel_rpc0_pos_z : std::logic_vector(10 downto 0;
slc_barrel_rpc1_pos_z : std::logic_vector(10 downto 0;
slc_barrel_rpc2_pos_z : std::logic_vector(10 downto 0;
slc_barrel_rpc3_pos_z : std::logic_vector(10 downto 0;
slc_barrel_coin_type : std::logic_vector(2 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPIPE_IN_COMMON+++++++++++++++++++++
type SLCPIPE_IN_COMMONis record
SLC_MU_ID_SLCPIPE : std::logic_vector(20 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_phimod : std::logic_vector(16 downto 0;
slcproc_mtc_dest_sl : std::logic_vector(2 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++TDCFORMAT_IN+++++++++++++++++++++
type TDCFORMAT_INis record
csm_tdc_chan_id : std::logic_vector(5 downto 0;
csm_tdc_edge_mode : std::logic_vector(2 downto 0;
csm_tdc_coarse_time : std::logic_vector(12 downto 0;
csm_tdc_fine_time : std::logic_vector(5 downto 0;
csm_tdc_pulse_width : std::logic_vector(8 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++TUBEREMAP_IN+++++++++++++++++++++
type TUBEREMAP_INis record
TDCFORMAT_IN_TUBEREMAP : std::logic_vector(32 downto 0;
fiber_id : std::logic_vector(5 downto 0;
elink_id : std::logic_vector(4 downto 0;
data_valid : std::logic_vector(1 downto 0;
station_id : std::logic_vector(2 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++HESF_IN_SLCPROC+++++++++++++++++++++
type HESF_IN_SLCPROCis record
mdt_seg_dest_c : std::logic_vector(2 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_pos : std::logic_vector(10 downto 0;
slcproc_vec_ang : std::logic_vector(10 downto 0;
slc_mu_id : std::logic_vector(20 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++HE_IN_TUBEREMAP+++++++++++++++++++++
type HE_IN_TUBEREMAPis record
mdt_tube_layer : std::logic_vector(5 downto 0;
mdt_tube_num : std::logic_vector(9 downto 0;
mdt_tube_rho : std::logic_vector(18 downto 0;
mdt_tube_z : std::logic_vector(19 downto 0;
mdt_tube_time : std::logic_vector(17 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++LSF_IN_HE+++++++++++++++++++++
type LSF_IN_HEis record
mdt_hit_valid : std::logic_vector(1 downto 0;
data_valid : std::logic_vector(1 downto 0;
lsf_mdt_tube_local_x : std::logic_vector(14 downto 0;
lsf_mdt_tube_local_y : std::logic_vector(14 downto 0;
lsf_mdt_tube_radius : std::logic_vector(9 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++CSF_IN_HE+++++++++++++++++++++
type CSF_IN_HEis record
mdt_hit_valid : std::logic_vector(1 downto 0;
data_valid : std::logic_vector(1 downto 0;
csf_mdt_tube_local_x : std::logic_vector(16 downto 0;
csf_mdt_tube_local_y : std::logic_vector(16 downto 0;
csf_mdt_tube_radius : std::logic_vector(32 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++PTCALC_IN_SLCPIPE+++++++++++++++++++++
type PTCALC_IN_SLCPIPEis record
SLC_MU_ID_SLCPIPE : std::logic_vector(20 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
slcproc_phimod : std::logic_vector(16 downto 0;
slc_charge : std::logic_vector(1 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++PTCALC_IN_SF+++++++++++++++++++++
type PTCALC_IN_SFis record
SLC_MU_ID_SLCPIPE : std::logic_vector(20 downto 0;
slcproc_vec_mdt_id : std::logic_vector(6 downto 0;
sf_seg_valid : std::logic_vector(1 downto 0;
sf_seg_pos : std::logic_vector(16 downto 0;
sf_seg_angle : std::logic_vector(11 downto 0;
sf_seg_quality : std::logic_vector(1 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_ENDCAP+++++++++++++++++++++
type MTCBUILD_IN_PTCALC_ENDCAPis record
SLCPROC_IN_ENDCAP_MTCBUILD : std::logic_vector(80 downto 0;
mtc_pt_thresh : std::logic_vector(4 downto 0;
mtc_pt : std::logic_vector(8 downto 0;
mtc_processing_flags : std::logic_vector(4 downto 0;
mtc_charge : std::logic_vector(1 downto 0;
mtc_n_segments : std::logic_vector(2 downto 0;
mtc_quality : std::logic_vector(1 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_BARREL+++++++++++++++++++++
type MTCBUILD_IN_PTCALC_BARRELis record
SLCPROC_IN_BARREL_MTCBUILD : std::logic_vector(84 downto 0;
mtc_pt_thresh : std::logic_vector(4 downto 0;
mtc_pt : std::logic_vector(8 downto 0;
mtc_processing_flags : std::logic_vector(4 downto 0;
mtc_charge : std::logic_vector(1 downto 0;
mtc_n_segments : std::logic_vector(2 downto 0;
mtc_quality : std::logic_vector(1 downto 0;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
