//++++++++++++++++++++++++++SLCPROC_IN_COMMON+++++++++++++++++++++
type SLCPROC_IN_COMMONis record
slc_id : std::logic_vector(1 downto 0;
slc_seg_pos_eta : std::logic_vector(15 downto 2;
slc_seg_pos_phi : std::logic_vector(24 downto 16;
slc_pt_thresh : std::logic_vector(28 downto 25;
slc_charge : std::logic_vector(29 downto 29;
slc_bcid : std::logic_vector(41 downto 30;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPROC_IN_ENDCAP+++++++++++++++++++++
type SLCPROC_IN_ENDCAPis record
SLCPROC_IN_COMMON_ENDCAP : std::logic_vector(41 downto 0;
slc_seg_ang_dtheta : std::logic_vector(48 downto 42;
slc_seg_ang_dphi : std::logic_vector(52 downto 49;
nsw_seg_pos_eta : std::logic_vector(66 downto 53;
nsw_seg_pos_phi : std::logic_vector(74 downto 67;
nsw_seg_ang_dtheta : std::logic_vector(79 downto 75;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPROC_IN_BARREL+++++++++++++++++++++
type SLCPROC_IN_BARRELis record
SLCPROC_IN_COMMON_BARREL : std::logic_vector(41 downto 0;
slc_rpc0_pos_z : std::logic_vector(51 downto 42;
slc_rpc1_pos_z : std::logic_vector(61 downto 52;
slc_rpc2_pos_z : std::logic_vector(71 downto 62;
slc_rpc3_pos_z : std::logic_vector(81 downto 72;
slc_coin_type : std::logic_vector(83 downto 82;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++SLCPIPE_IN_COMMON+++++++++++++++++++++
type SLCPIPE_IN_COMMONis record
slc_mu_id : std::logic_vector(19 downto 0;
slc_vec_mdt_id : std::logic_vector(25 downto 20;
slc_vec_mdt_id : std::logic_vector(31 downto 26;
slc_vec_mdt_id : std::logic_vector(37 downto 32;
slc_vec_mdt_id : std::logic_vector(43 downto 38;
slc_phimod : std::logic_vector(59 downto 44;
mtc_dest_sl : std::logic_vector(61 downto 60;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++TDCFORMAT_IN+++++++++++++++++++++
type TDCFORMAT_INis record
tdc_chan_id : std::logic_vector(4 downto 0;
tdc_edge_mode : std::logic_vector(6 downto 5;
tdc_coarse_time : std::logic_vector(18 downto 7;
tdc_fine_time : std::logic_vector(23 downto 19;
tdc_pulse_width : std::logic_vector(31 downto 24;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++TUBEREMAP_IN+++++++++++++++++++++
type TUBEREMAP_INis record
TDCFORMAT_IN_TUBEREMAP : std::logic_vector(31 downto 0;
fiber_id : std::logic_vector(36 downto 32;
elink_id : std::logic_vector(40 downto 37;
data_valid : std::logic_vector(41 downto 41;
station_id : std::logic_vector(43 downto 42;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++HESF_IN_SLCPROC+++++++++++++++++++++
type HESF_IN_SLCPROCis record
mdt_seg_dest_c : std::logic_vector(1 downto 0;
slc_vec_mdt_id : std::logic_vector(7 downto 2;
slc_vec_pos : std::logic_vector(17 downto 8;
slc_vec_ang : std::logic_vector(27 downto 18;
slc_mu_id : std::logic_vector(47 downto 28;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++HE_IN_TUBEREMAP+++++++++++++++++++++
type HE_IN_TUBEREMAPis record
tube_layer : std::logic_vector(4 downto 0;
tube_num : std::logic_vector(13 downto 5;
tube_rho : std::logic_vector(31 downto 14;
tube_z : std::logic_vector(50 downto 32;
tube_time : std::logic_vector(67 downto 51;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++LSF_IN_HE+++++++++++++++++++++
type LSF_IN_HEis record
mdt_hit_valid : std::logic_vector(0 downto 0;
data_valid : std::logic_vector(1 downto 1;
tube_local_x_lsf : std::logic_vector(15 downto 2;
tube_local_y_lsf : std::logic_vector(29 downto 16;
tube_radius_lsf : std::logic_vector(38 downto 30;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++CSF_IN_HE+++++++++++++++++++++
type CSF_IN_HEis record
mdt_hit_valid : std::logic_vector(0 downto 0;
data_valid : std::logic_vector(1 downto 1;
tube_local_x_csf : std::logic_vector(17 downto 2;
tube_local_y_csf : std::logic_vector(33 downto 18;
tube_radius_csf : std::logic_vector(65 downto 34;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++PTCALC_IN_SLCPIPE+++++++++++++++++++++
type PTCALC_IN_SLCPIPEis record
slc_mu_id : std::logic_vector(19 downto 0;
slc_vec_mdt_id : std::logic_vector(25 downto 20;
slc_vec_mdt_id : std::logic_vector(31 downto 26;
slc_vec_mdt_id : std::logic_vector(37 downto 32;
slc_vec_mdt_id : std::logic_vector(43 downto 38;
slc_phimod : std::logic_vector(59 downto 44;
slc_charge : std::logic_vector(60 downto 60;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++PTCALC_IN_SF+++++++++++++++++++++
type PTCALC_IN_SFis record
slc_mu_id : std::logic_vector(19 downto 0;
slc_vec_mdt_id : std::logic_vector(25 downto 20;
sf_seg_valid : std::logic_vector(26 downto 26;
sf_seg_pos : std::logic_vector(42 downto 27;
sf_seg_angle : std::logic_vector(53 downto 43;
sf_seg_quality : std::logic_vector(54 downto 54;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_ENDCAP+++++++++++++++++++++
type MTCBUILD_IN_PTCALC_ENDCAPis record
SLCPROC_IN_ENDCAP_MTCBUILD : std::logic_vector(79 downto 0;
mdt_pt_thresh : std::logic_vector(83 downto 80;
mdt_pt : std::logic_vector(91 downto 84;
mdt_processing_flags : std::logic_vector(95 downto 92;
mdt_charge : std::logic_vector(96 downto 96;
mdt_n_segments : std::logic_vector(98 downto 97;
mdt_quality : std::logic_vector(99 downto 99;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//++++++++++++++++++++++++++MTCBUILD_IN_PTCALC_BARREL+++++++++++++++++++++
type MTCBUILD_IN_PTCALC_BARRELis record
SLCPROC_IN_BARREL_MTCBUILD : std::logic_vector(83 downto 0;
mdt_pt_thresh : std::logic_vector(87 downto 84;
mdt_pt : std::logic_vector(95 downto 88;
mdt_processing_flags : std::logic_vector(99 downto 96;
mdt_charge : std::logic_vector(100 downto 100;
mdt_n_segments : std::logic_vector(102 downto 101;
mdt_quality : std::logic_vector(103 downto 103;
end record;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
