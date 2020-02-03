//++++++++++++++++++++++++++SLCPROC_IN_COMMON+++++++++++++++++++++
type SLCPROC_IN_COMMON is record
slc_id : std::logic_vector(2 downto 0);
slc_seg_pos_eta : std::logic_vector(14 downto 0);
slc_seg_pos_phi : std::logic_vector(9 downto 0);
slc_pt_thresh : std::logic_vector(4 downto 0);
slc_charge : std::logic_vector(1 downto 0);
slc_bcid : std::logic_vector(12 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_ENDCAP+++++++++++++++++++++
type SLCPROC_IN_ENDCAP is record
SLCPROC_IN_COMMON : SLCPROC_IN_COMMON_ENDCAP;
slc_seg_ang_dtheta : std::logic_vector(7 downto 0);
slc_seg_ang_dphi : std::logic_vector(4 downto 0);
nsw_seg_pos_eta : std::logic_vector(14 downto 0);
nsw_seg_pos_phi : std::logic_vector(8 downto 0);
nsw_seg_ang_dtheta : std::logic_vector(5 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPROC_IN_BARREL+++++++++++++++++++++
type SLCPROC_IN_BARREL is record
SLCPROC_IN_COMMON : SLCPROC_IN_COMMON_BARREL;
slc_rpc0_pos_z : std::logic_vector(10 downto 0);
slc_rpc1_pos_z : std::logic_vector(10 downto 0);
slc_rpc2_pos_z : std::logic_vector(10 downto 0);
slc_rpc3_pos_z : std::logic_vector(10 downto 0);
slc_coin_type : std::logic_vector(2 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++SLCPIPE_IN_COMMON+++++++++++++++++++++
type SLCPIPE_IN_COMMON is record
slc_mu_id : std::logic_vector(20 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_phimod : std::logic_vector(16 downto 0);
mtc_dest_sl : std::logic_vector(2 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++TDCFORMAT_IN+++++++++++++++++++++
type TDCFORMAT_IN is record
tdc_chan_id : std::logic_vector(5 downto 0);
tdc_edge_mode : std::logic_vector(2 downto 0);
tdc_coarse_time : std::logic_vector(12 downto 0);
tdc_fine_time : std::logic_vector(5 downto 0);
tdc_pulse_width : std::logic_vector(8 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++TUBEREMAP_IN+++++++++++++++++++++
type TUBEREMAP_IN is record
TDCFORMAT_IN : TDCFORMAT_IN_TUBEREMAP;
fiber_id : std::logic_vector(5 downto 0);
elink_id : std::logic_vector(4 downto 0);
data_valid : std::logic_vector(1 downto 0);
station_id : std::logic_vector(2 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++HESF_IN_SLCPROC+++++++++++++++++++++
type HESF_IN_SLCPROC is record
mdt_seg_dest_c : std::logic_vector(2 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_pos : std::logic_vector(10 downto 0);
slc_vec_ang : std::logic_vector(10 downto 0);
slc_mu_id : std::logic_vector(20 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++HE_IN_TUBEREMAP+++++++++++++++++++++
type HE_IN_TUBEREMAP is record
tube_layer : std::logic_vector(5 downto 0);
tube_num : std::logic_vector(9 downto 0);
tube_rho : std::logic_vector(18 downto 0);
tube_z : std::logic_vector(19 downto 0);
tube_time : std::logic_vector(17 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++LSF_IN_HE+++++++++++++++++++++
type LSF_IN_HE is record
mdt_hit_valid : std::logic_vector(1 downto 0);
data_valid : std::logic_vector(1 downto 0);
tube_local_x_lsf : std::logic_vector(14 downto 0);
tube_local_y_lsf : std::logic_vector(14 downto 0);
tube_radius_lsf : std::logic_vector(9 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++CSF_IN_HE+++++++++++++++++++++
type CSF_IN_HE is record
mdt_hit_valid : std::logic_vector(1 downto 0);
data_valid : std::logic_vector(1 downto 0);
tube_local_x_csf : std::logic_vector(16 downto 0);
tube_local_y_csf : std::logic_vector(16 downto 0);
tube_radius_csf : std::logic_vector(32 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++PTCALC_IN_SLCPIPE+++++++++++++++++++++
type PTCALC_IN_SLCPIPE is record
slc_mu_id : std::logic_vector(20 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
slc_phimod : std::logic_vector(16 downto 0);
slc_charge : std::logic_vector(1 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++PTCALC_IN_SF+++++++++++++++++++++
type PTCALC_IN_SF is record
slc_mu_id : std::logic_vector(20 downto 0);
slc_vec_mdt_id : std::logic_vector(6 downto 0);
sf_seg_valid : std::logic_vector(1 downto 0);
sf_seg_pos : std::logic_vector(16 downto 0);
sf_seg_angle : std::logic_vector(11 downto 0);
sf_seg_quality : std::logic_vector(1 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_ENDCAP+++++++++++++++++++++
type MTCBUILD_IN_PTCALC_ENDCAP is record
SLCPROC_IN_ENDCAP : SLCPROC_IN_ENDCAP_MTCBUILD;
mdt_pt_thresh : std::logic_vector(4 downto 0);
mdt_pt : std::logic_vector(8 downto 0);
mdt_processing_flags : std::logic_vector(4 downto 0);
mdt_charge : std::logic_vector(1 downto 0);
mdt_n_segments : std::logic_vector(2 downto 0);
mdt_quality : std::logic_vector(1 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_BARREL+++++++++++++++++++++
type MTCBUILD_IN_PTCALC_BARREL is record
SLCPROC_IN_BARREL : SLCPROC_IN_BARREL_MTCBUILD;
mdt_pt_thresh : std::logic_vector(4 downto 0);
mdt_pt : std::logic_vector(8 downto 0);
mdt_processing_flags : std::logic_vector(4 downto 0);
mdt_charge : std::logic_vector(1 downto 0);
mdt_n_segments : std::logic_vector(2 downto 0);
mdt_quality : std::logic_vector(1 downto 0);
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

