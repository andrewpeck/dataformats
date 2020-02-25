-- -------------------------------------------------------------------------------------------------
-- Auto-generated from:
-- https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s
-- -------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package mdttp_functions_pkg is

  constant DF_HASH : std_logic_vector(11 downto 0) := x"csv"

  -- -----------------------------------------------------------------
  function SLC_MUID_toVector (d: in SLC_MUID_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLC_MUID_msb downto 0);
  begin
    v := d.slcid
         & d.slid
         & d.bcid;
    return v;
  end function SLC_MUID_toVector;

  function SLC_MUID_fromVector (v: in std_logic_vector)
  return SLC_MUID_rt is
    variable b : SLC_MUID_rt;
  begin
    b.slcid := v(19 downto 18);
    b.slid := v(17 downto 12);
    b.bcid := v(11 downto 0);
    return b;
  end function SLC_MUID_fromVector;

  -- -----------------------------------------------------------------
  function SLC_COMMON_toVector (d: in SLC_COMMON_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLC_COMMON_msb downto 0);
  begin
    v := d.slcid
         & d.poseta
         & d.posphi
         & d.ptthresh
         & d.charge;
    return v;
  end function SLC_COMMON_toVector;

  function SLC_COMMON_fromVector (v: in std_logic_vector)
  return SLC_COMMON_rt is
    variable b : SLC_COMMON_rt;
  begin
    b.slcid := v(29 downto 28);
    b.poseta := v(27 downto 14);
    b.posphi := v(13 downto 5);
    b.ptthresh := v(4 downto 1);
    b.charge := v(0 downto 0);
    return b;
  end function SLC_COMMON_fromVector;

  -- -----------------------------------------------------------------
  function SLC_ENDCAP_toVector (d: in SLC_ENDCAP_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLC_ENDCAP_msb downto 0);
  begin
    v := d.SLC_COMMON
         & d.seg_angdtheta
         & d.seg_angdphi
         & d.nswseg_poseta
         & d.nswseg_posphi
         & d.nswseg_angdtheta;
    return v;
  end function SLC_ENDCAP_toVector;

  function SLC_ENDCAP_fromVector (v: in std_logic_vector)
  return SLC_ENDCAP_rt is
    variable b : SLC_ENDCAP_rt;
  begin
    b.SLC_COMMON := v(67 downto 38);
    b.seg_angdtheta := v(37 downto 31);
    b.seg_angdphi := v(30 downto 27);
    b.nswseg_poseta := v(26 downto 13);
    b.nswseg_posphi := v(12 downto 5);
    b.nswseg_angdtheta := v(4 downto 0);
    return b;
  end function SLC_ENDCAP_fromVector;

  -- -----------------------------------------------------------------
  function SLC_BARREL_toVector (d: in SLC_BARREL_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLC_BARREL_msb downto 0);
  begin
    v := d.SLC_COMMON
         & d.rpc0_posz
         & d.rpc1_posz
         & d.rpc2_posz
         & d.rpc3_posz
         & d.cointype;
    return v;
  end function SLC_BARREL_toVector;

  function SLC_BARREL_fromVector (v: in std_logic_vector)
  return SLC_BARREL_rt is
    variable b : SLC_BARREL_rt;
  begin
    b.SLC_COMMON := v(72 downto 43);
    b.rpc0_posz := v(42 downto 33);
    b.rpc1_posz := v(32 downto 23);
    b.rpc2_posz := v(22 downto 13);
    b.rpc3_posz := v(12 downto 3);
    b.cointype := v(2 downto 0);
    return b;
  end function SLC_BARREL_fromVector;

  -- -----------------------------------------------------------------
  function SLCPROC_PIPELINE_COMMON_toVector (d: in SLCPROC_PIPELINE_COMMON_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPROC_PIPELINE_COMMON_msb downto 0);
  begin
    v := d.busy
         & d.destsl
         & d.phimod
         & d.vec_mdtid;
    return v;
  end function SLCPROC_PIPELINE_COMMON_toVector;

  function SLCPROC_PIPELINE_COMMON_fromVector (v: in std_logic_vector)
  return SLCPROC_PIPELINE_COMMON_rt is
    variable b : SLCPROC_PIPELINE_COMMON_rt;
  begin
    b.busy := v(34 downto 34);
    b.destsl := v(33 downto 32);
    b.phimod := v(31 downto 24);
    b.vec_mdtid := v(23 downto 18);
    return b;
  end function SLCPROC_PIPELINE_COMMON_fromVector;

  -- -----------------------------------------------------------------
  function SLCPROC_PIPELINE_ENDCAP_toVector (d: in SLCPROC_PIPELINE_ENDCAP_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPROC_PIPELINE_ENDCAP_msb downto 0);
  begin
    v := d.SLCPROC_PIPELINE_COMMON
         & d.SLC_ENDCAP
         & d.SLC_MUID;
    return v;
  end function SLCPROC_PIPELINE_ENDCAP_toVector;

  function SLCPROC_PIPELINE_ENDCAP_fromVector (v: in std_logic_vector)
  return SLCPROC_PIPELINE_ENDCAP_rt is
    variable b : SLCPROC_PIPELINE_ENDCAP_rt;
  begin
    b.SLCPROC_PIPELINE_COMMON := v(122 downto 88);
    b.SLC_ENDCAP := v(87 downto 20);
    b.SLC_MUID := v(19 downto 0);
    return b;
  end function SLCPROC_PIPELINE_ENDCAP_fromVector;

  -- -----------------------------------------------------------------
  function SLCPROC_PIPELINE_BARREL_toVector (d: in SLCPROC_PIPELINE_BARREL_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPROC_PIPELINE_BARREL_msb downto 0);
  begin
    v := d.SLCPROC_PIPELINE_COMMON
         & d.SLC_BARREL
         & d.SLC_MUID;
    return v;
  end function SLCPROC_PIPELINE_BARREL_toVector;

  function SLCPROC_PIPELINE_BARREL_fromVector (v: in std_logic_vector)
  return SLCPROC_PIPELINE_BARREL_rt is
    variable b : SLCPROC_PIPELINE_BARREL_rt;
  begin
    b.SLCPROC_PIPELINE_COMMON := v(127 downto 93);
    b.SLC_BARREL := v(92 downto 20);
    b.SLC_MUID := v(19 downto 0);
    return b;
  end function SLCPROC_PIPELINE_BARREL_fromVector;

  -- -----------------------------------------------------------------
  function CSM_toVector (d: in CSM_rt)
  return std_logic_vector is
    variable v : std_logic_vector(CSM_msb downto 0);
  begin
    v := d.chanid
         & d.edgemode
         & d.coarsetime
         & d.finetime
         & d.pulsewidth;
    return v;
  end function CSM_toVector;

  function CSM_fromVector (v: in std_logic_vector)
  return CSM_rt is
    variable b : CSM_rt;
  begin
    b.chanid := v(33 downto 27);
    b.edgemode := v(26 downto 25);
    b.coarsetime := v(24 downto 13);
    b.finetime := v(12 downto 8);
    b.pulsewidth := v(7 downto 0);
    return b;
  end function CSM_fromVector;

  -- -----------------------------------------------------------------
  function TDCFORMAT_toVector (d: in TDCFORMAT_rt)
  return std_logic_vector is
    variable v : std_logic_vector(TDCFORMAT_msb downto 0);
  begin
    v := d.CSM
         & d.fiberid
         & d.elinkid
         & d.datavalid
         & d.stationid;
    return v;
  end function TDCFORMAT_toVector;

  function TDCFORMAT_fromVector (v: in std_logic_vector)
  return TDCFORMAT_rt is
    variable b : TDCFORMAT_rt;
  begin
    b.CSM := v(45 downto 12);
    b.fiberid := v(11 downto 7);
    b.elinkid := v(6 downto 3);
    b.datavalid := v(2 downto 2);
    b.stationid := v(1 downto 0);
    return b;
  end function TDCFORMAT_fromVector;

  -- -----------------------------------------------------------------
  function SLCPROC_HESF_toVector (d: in SLCPROC_HESF_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPROC_HESF_msb downto 0);
  begin
    v := d.SLC_MUID
         & d.mdtseg_dest
         & d.vec_mdtid
         & d.vec_pos
         & d.vec_ang;
    return v;
  end function SLCPROC_HESF_toVector;

  function SLCPROC_HESF_fromVector (v: in std_logic_vector)
  return SLCPROC_HESF_rt is
    variable b : SLCPROC_HESF_rt;
  begin
    b.SLC_MUID := v(47 downto 28);
    b.mdtseg_dest := v(27 downto 26);
    b.vec_mdtid := v(25 downto 20);
    b.vec_pos := v(19 downto 10);
    b.vec_ang := v(9 downto 0);
    return b;
  end function SLCPROC_HESF_fromVector;

  -- -----------------------------------------------------------------
  function TUBEREMAP_toVector (d: in TUBEREMAP_rt)
  return std_logic_vector is
    variable v : std_logic_vector(TUBEREMAP_msb downto 0);
  begin
    v := d.mdt_tube_layer
         & d.mdt_tube_num
         & d.mdt_tube_rho
         & d.mdt_tube_z
         & d.mdt_tube_time;
    return v;
  end function TUBEREMAP_toVector;

  function TUBEREMAP_fromVector (v: in std_logic_vector)
  return TUBEREMAP_rt is
    variable b : TUBEREMAP_rt;
  begin
    b.mdt_tube_layer := v(73 downto 68);
    b.mdt_tube_num := v(67 downto 58);
    b.mdt_tube_rho := v(57 downto 40);
    b.mdt_tube_z := v(39 downto 21);
    b.mdt_tube_time := v(20 downto 0);
    return b;
  end function TUBEREMAP_fromVector;

  -- -----------------------------------------------------------------
  function HE_LSF_toVector (d: in HE_LSF_rt)
  return std_logic_vector is
    variable v : std_logic_vector(HE_LSF_msb downto 0);
  begin
    v := d.mdt_valid
         & d.data_valid
         & d.mdt_localx
         & d.mdt_localy
         & d.mdt_radius;
    return v;
  end function HE_LSF_toVector;

  function HE_LSF_fromVector (v: in std_logic_vector)
  return HE_LSF_rt is
    variable b : HE_LSF_rt;
  begin
    b.mdt_valid := v(38 downto 38);
    b.data_valid := v(37 downto 37);
    b.mdt_localx := v(13 downto 0);
    b.mdt_localy := v(27 downto 14);
    b.mdt_radius := v(36 downto 28);
    return b;
  end function HE_LSF_fromVector;

  -- -----------------------------------------------------------------
  function HE_CSF_toVector (d: in HE_CSF_rt)
  return std_logic_vector is
    variable v : std_logic_vector(HE_CSF_msb downto 0);
  begin
    v := d.mdt_valid
         & d.data_valid
         & d.mdt_localx
         & d.mdt_localy
         & d.mdt_radius;
    return v;
  end function HE_CSF_toVector;

  function HE_CSF_fromVector (v: in std_logic_vector)
  return HE_CSF_rt is
    variable b : HE_CSF_rt;
  begin
    b.mdt_valid := v(40 downto 40);
    b.data_valid := v(39 downto 39);
    b.mdt_localx := v(38 downto 24);
    b.mdt_localy := v(23 downto 9);
    b.mdt_radius := v(8 downto 0);
    return b;
  end function HE_CSF_fromVector;

  -- -----------------------------------------------------------------
  function SLCPIPELINE_PTCALC_toVector (d: in SLCPIPELINE_PTCALC_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPIPELINE_PTCALC_msb downto 0);
  begin
    v := d.SLC_MUID
         & d.vec_mdtid
         & d.phimod
         & d.charge;
    return v;
  end function SLCPIPELINE_PTCALC_toVector;

  function SLCPIPELINE_PTCALC_fromVector (v: in std_logic_vector)
  return SLCPIPELINE_PTCALC_rt is
    variable b : SLCPIPELINE_PTCALC_rt;
  begin
    b.SLC_MUID := v(52 downto 33);
    b.vec_mdtid := v(32 downto 27);
    b.phimod := v(8 downto 1);
    b.charge := v(0 downto 0);
    return b;
  end function SLCPIPELINE_PTCALC_fromVector;

  -- -----------------------------------------------------------------
  function SF_toVector (d: in SF_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SF_msb downto 0);
  begin
    v := d.SLC_MUID
         & d.vec_mdtid
         & d.segvalid
         & d.segpos
         & d.segangle
         & d.segquality;
    return v;
  end function SF_toVector;

  function SF_fromVector (v: in std_logic_vector)
  return SF_rt is
    variable b : SF_rt;
  begin
    b.SLC_MUID := v(54 downto 35);
    b.vec_mdtid := v(34 downto 29);
    b.segvalid := v(28 downto 28);
    b.segpos := v(27 downto 12);
    b.segangle := v(11 downto 1);
    b.segquality := v(0 downto 0);
    return b;
  end function SF_fromVector;

  -- -----------------------------------------------------------------
  function PTCALC_toVector (d: in PTCALC_rt)
  return std_logic_vector is
    variable v : std_logic_vector(PTCALC_msb downto 0);
  begin
    v := d.SLC_MUID
         & d.mtc_eta
         & d.mtc_pt
         & d.mtc_ptthresh
         & d.mtc_charge
         & d.mtc_nsegments
         & d.mtc_quality;
    return v;
  end function PTCALC_toVector;

  function PTCALC_fromVector (v: in std_logic_vector)
  return PTCALC_rt is
    variable b : PTCALC_rt;
  begin
    b.SLC_MUID := v(53 downto 34);
    b.mtc_eta := v(33 downto 20);
    b.mtc_pt := v(19 downto 12);
    b.mtc_ptthresh := v(11 downto 8);
    b.mtc_charge := v(7 downto 7);
    b.mtc_nsegments := v(2 downto 1);
    b.mtc_quality := v(0 downto 0);
    return b;
  end function PTCALC_fromVector;

  -- -----------------------------------------------------------------
  function SLCPIPELINE_MTC_ENDCAP_toVector (d: in SLCPIPELINE_MTC_ENDCAP_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPIPELINE_MTC_ENDCAP_msb downto 0);
  begin
    v := d.SLCPROC_PIPELINE_ENDCAP;
    return v;
  end function SLCPIPELINE_MTC_ENDCAP_toVector;

  function SLCPIPELINE_MTC_ENDCAP_fromVector (v: in std_logic_vector)
  return SLCPIPELINE_MTC_ENDCAP_rt is
    variable b : SLCPIPELINE_MTC_ENDCAP_rt;
  begin
    b.SLCPROC_PIPELINE_ENDCAP := v(19 downto 0);
    return b;
  end function SLCPIPELINE_MTC_ENDCAP_fromVector;

  -- -----------------------------------------------------------------
  function SLCPIPELINE_MTC_BARREL_toVector (d: in SLCPIPELINE_MTC_BARREL_rt)
  return std_logic_vector is
    variable v : std_logic_vector(SLCPIPELINE_MTC_BARREL_msb downto 0);
  begin
    v := d.SLCPROC_PIPELINE_BARREL;
    return v;
  end function SLCPIPELINE_MTC_BARREL_toVector;

  function SLCPIPELINE_MTC_BARREL_fromVector (v: in std_logic_vector)
  return SLCPIPELINE_MTC_BARREL_rt is
    variable b : SLCPIPELINE_MTC_BARREL_rt;
  begin
    b.SLCPROC_PIPELINE_BARREL := v(13 downto 0);
    return b;
  end function SLCPIPELINE_MTC_BARREL_fromVector;

  -- -----------------------------------------------------------------
  function MTC_toVector (d: in MTC_rt)
  return std_logic_vector is
    variable v : std_logic_vector(MTC_msb downto 0);
  begin
    v := d.SLC_COMMON
         & d.mtc_eta
         & d.mtc_pt
         & d.mtc_ptthresh
         & d.mtc_charge
         & d.mtc_procflags
         & d.mtc_nsegments
         & d.mtc_quality;
    return v;
  end function MTC_toVector;

  function MTC_fromVector (v: in std_logic_vector)
  return MTC_rt is
    variable b : MTC_rt;
  begin
    b.SLC_COMMON := v(63 downto 34);
    b.mtc_eta := v(33 downto 20);
    b.mtc_pt := v(19 downto 12);
    b.mtc_ptthresh := v(11 downto 8);
    b.mtc_charge := v(7 downto 7);
    b.mtc_procflags := v(6 downto 3);
    b.mtc_nsegments := v(2 downto 1);
    b.mtc_quality := v(0 downto 0);
    return b;
  end function MTC_fromVector;

  -- -------------------------------------------------------------------

end package mdttp_functions_pkg;