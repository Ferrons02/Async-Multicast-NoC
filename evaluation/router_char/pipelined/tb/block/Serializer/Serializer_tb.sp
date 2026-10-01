Serializer: one complete ACTSIM reference round, raw prs2net PTM65 TT baseline
* VDD=1.1 V, T=27 C, lambda=32.5 nm; no artificial fork RC.
* No .ic, .nodeset or UIC: initialization comes from the supplied reset PRS.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=2u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/block/Serializer/Serializer.sp"
.hdl "tb/block/Serializer/Serializer_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6
+ I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6
+ I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6
+ I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6
+ I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6
+ I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6
+ I_af_531_6 I_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6
+ O_aa Serializer
XENV reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6
+ I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6
+ I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6
+ I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6
+ I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6
+ I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6
+ I_af_531_6 I_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6
+ O_aa tb_done tb_failed serializer_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE' STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
.option post=2 probe
.probe tran v(reset) v(I_at_50_6) v(I_at_51_6) v(I_at_52_6) v(I_at_53_6) v(I_at_54_6) v(I_at_55_6)
+ v(I_at_56_6) v(I_at_57_6) v(I_at_58_6) v(I_at_59_6) v(I_at_510_6) v(I_at_511_6) v(I_at_512_6)
+ v(I_at_513_6) v(I_at_514_6) v(I_at_515_6) v(I_at_516_6) v(I_at_517_6) v(I_at_518_6) v(I_at_519_6)
+ v(I_at_520_6) v(I_at_521_6) v(I_at_522_6) v(I_at_523_6) v(I_at_524_6) v(I_at_525_6) v(I_at_526_6)
+ v(I_at_527_6) v(I_at_528_6) v(I_at_529_6) v(I_at_530_6) v(I_at_531_6) v(I_af_50_6) v(I_af_51_6)
+ v(I_af_52_6) v(I_af_53_6) v(I_af_54_6) v(I_af_55_6) v(I_af_56_6) v(I_af_57_6) v(I_af_58_6)
+ v(I_af_59_6) v(I_af_510_6) v(I_af_511_6) v(I_af_512_6) v(I_af_513_6) v(I_af_514_6) v(I_af_515_6)
+ v(I_af_516_6) v(I_af_517_6) v(I_af_518_6) v(I_af_519_6) v(I_af_520_6) v(I_af_521_6) v(I_af_522_6)
+ v(I_af_523_6) v(I_af_524_6) v(I_af_525_6) v(I_af_526_6) v(I_af_527_6) v(I_af_528_6) v(I_af_529_6)
+ v(I_af_530_6) v(I_af_531_6) v(I_aa) v(O_at_50_6) v(O_at_51_6) v(O_at_52_6) v(O_at_53_6)
+ v(O_af_50_6) v(O_af_51_6) v(O_af_52_6) v(O_af_53_6) v(O_aa) v(tb_done) v(tb_failed)
+ v(Vdd) i(VPOWER)
.probe tran v(xdut.i_aa) v(xdut.i_af_50_6) v(xdut.i_af_531_6) v(xdut.i_af_53_6) v(xdut.i_af_57_6) v(xdut.i_at_50_6)
.probe tran v(xdut.i_at_531_6) v(xdut.i_at_53_6) v(xdut.i_at_57_6) v(xdut.o_aa) v(xdut.o_af_50_6) v(xdut.o_af_53_6)
.probe tran v(xdut.o_at_50_6) v(xdut.o_at_53_6) v(xdut.qs1_aa_areq) v(xdut.qs1_ao_af_50_6) v(xdut.qs1_ao_af_53_6) v(xdut.qs1_ao_at_50_6)
.probe tran v(xdut.qs1_ao_at_53_6) v(xdut.qs2_aa_areq) v(xdut.qs2_ao_af_50_6) v(xdut.qs2_ao_af_53_6) v(xdut.qs2_ao_at_50_6) v(xdut.qs2_ao_at_53_6)
.probe tran v(xdut.qs3_aa_areq) v(xdut.qs3_ao_af_50_6) v(xdut.qs3_ao_af_53_6) v(xdut.qs3_ao_at_50_6) v(xdut.qs3_ao_at_53_6) v(xdut.qs4_aa_areq)
.probe tran v(xdut.qs4_ao_af_50_6) v(xdut.qs4_ao_af_53_6) v(xdut.qs4_ao_at_50_6) v(xdut.qs4_ao_at_53_6) v(xdut.qs5_aa_areq) v(xdut.qs5_ao_af_50_6)
.probe tran v(xdut.qs5_ao_af_53_6) v(xdut.qs5_ao_at_50_6) v(xdut.qs5_ao_at_53_6) v(xdut.qs6_aa_areq) v(xdut.qs6_ao_af_50_6) v(xdut.qs6_ao_af_53_6)
.probe tran v(xdut.qs6_ao_at_50_6) v(xdut.qs6_ao_at_53_6) v(xdut.qs7_aa_areq) v(xdut.qs7_ao_af_50_6) v(xdut.qs7_ao_af_53_6) v(xdut.qs7_ao_at_50_6)
.probe tran v(xdut.qs7_ao_at_53_6) v(xdut.wb_ao1_aa) v(xdut.wb_ao1_af_50_6) v(xdut.wb_ao1_af_53_6) v(xdut.wb_ao1_at_50_6) v(xdut.wb_ao1_at_53_6)
.probe tran v(xdut.wb_ao2_aa) v(xdut.wb_ao2_af_50_6) v(xdut.wb_ao2_af_53_6) v(xdut.wb_ao2_at_50_6) v(xdut.wb_ao2_at_53_6) v(xdut.wb_ao3_aa)
.probe tran v(xdut.wb_ao3_af_50_6) v(xdut.wb_ao3_af_53_6) v(xdut.wb_ao3_at_50_6) v(xdut.wb_ao3_at_53_6) v(xdut.wb_ao4_aa) v(xdut.wb_ao4_af_50_6)
.probe tran v(xdut.wb_ao4_af_53_6) v(xdut.wb_ao4_at_50_6) v(xdut.wb_ao4_at_53_6) v(xdut.wb_ao5_aa) v(xdut.wb_ao5_af_50_6) v(xdut.wb_ao5_af_53_6)
.probe tran v(xdut.wb_ao5_at_50_6) v(xdut.wb_ao5_at_53_6) v(xdut.wb_ao6_aa) v(xdut.wb_ao6_af_50_6) v(xdut.wb_ao6_af_53_6) v(xdut.wb_ao6_at_50_6)
.probe tran v(xdut.wb_ao6_at_53_6) v(xdut.wb_ao7_aa) v(xdut.wb_ao7_af_50_6) v(xdut.wb_ao7_af_53_6) v(xdut.wb_ao7_at_50_6) v(xdut.wb_ao7_at_53_6)
.probe tran v(xdut.xmerge.merge12_ao_aa) v(xdut.xmerge.merge12_ao_af_50_6) v(xdut.xmerge.merge12_ao_af_53_6) v(xdut.xmerge.merge12_ao_at_50_6) v(xdut.xmerge.merge12_ao_at_53_6) v(xdut.xmerge.merge34_ao_aa)
.probe tran v(xdut.xmerge.merge34_ao_af_50_6) v(xdut.xmerge.merge34_ao_af_53_6) v(xdut.xmerge.merge34_ao_at_50_6) v(xdut.xmerge.merge34_ao_at_53_6) v(xdut.xmerge.merge56_ao_aa) v(xdut.xmerge.merge56_ao_af_50_6)
.probe tran v(xdut.xmerge.merge56_ao_af_53_6) v(xdut.xmerge.merge56_ao_at_50_6) v(xdut.xmerge.merge56_ao_at_53_6) v(xdut.xmerge.root_ai0_aa) v(xdut.xmerge.root_ai0_af_50_6) v(xdut.xmerge.root_ai0_af_53_6)
.probe tran v(xdut.xmerge.root_ai0_at_50_6) v(xdut.xmerge.root_ai0_at_53_6) v(xdut.xmerge.root_ai1_aa) v(xdut.xmerge.root_ai1_af_50_6) v(xdut.xmerge.root_ai1_af_53_6) v(xdut.xmerge.root_ai1_at_50_6)
.probe tran v(xdut.xmerge.root_ai1_at_53_6) v(xdut.xmerge.xmerge12.n__i0__a) v(xdut.xmerge.xmerge12.n__i1__a) v(xdut.xmerge.xmerge12.n__o__f_50_6) v(xdut.xmerge.xmerge12.n__o__f_53_6) v(xdut.xmerge.xmerge12.n__o__t_50_6)
.probe tran v(xdut.xmerge.xmerge12.n__o__t_53_6) v(xdut.xmerge.xmerge1234.n__i0__a) v(xdut.xmerge.xmerge1234.n__i1__a) v(xdut.xmerge.xmerge1234.n__o__f_50_6) v(xdut.xmerge.xmerge1234.n__o__f_53_6) v(xdut.xmerge.xmerge1234.n__o__t_50_6)
.probe tran v(xdut.xmerge.xmerge1234.n__o__t_53_6) v(xdut.xmerge.xmerge34.n__i0__a) v(xdut.xmerge.xmerge34.n__i1__a) v(xdut.xmerge.xmerge34.n__o__f_50_6) v(xdut.xmerge.xmerge34.n__o__f_53_6) v(xdut.xmerge.xmerge34.n__o__t_50_6)
.probe tran v(xdut.xmerge.xmerge34.n__o__t_53_6) v(xdut.xmerge.xmerge56.n__i0__a) v(xdut.xmerge.xmerge56.n__i1__a) v(xdut.xmerge.xmerge56.n__o__f_50_6) v(xdut.xmerge.xmerge56.n__o__f_53_6) v(xdut.xmerge.xmerge56.n__o__t_50_6)
.probe tran v(xdut.xmerge.xmerge56.n__o__t_53_6) v(xdut.xmerge.xmerge567.n__i0__a) v(xdut.xmerge.xmerge567.n__i1__a) v(xdut.xmerge.xmerge567.n__o__f_50_6) v(xdut.xmerge.xmerge567.n__o__f_53_6) v(xdut.xmerge.xmerge567.n__o__t_50_6)
.probe tran v(xdut.xmerge.xmerge567.n__o__t_53_6) v(xdut.xmerge.xroot.n__i0__a) v(xdut.xmerge.xroot.n__i1__a) v(xdut.xmerge.xroot.n__o__f_50_6) v(xdut.xmerge.xroot.n__o__f_53_6) v(xdut.xmerge.xroot.n__o__t_50_6)
.probe tran v(xdut.xmerge.xroot.n__o__t_53_6) v(xdut.xqs1.__o__f_50_6) v(xdut.xqs1.__o__f_53_6) v(xdut.xqs1.__o__t_50_6) v(xdut.xqs1.__o__t_53_6) v(xdut.xqs7.__o__f_50_6)
.probe tran v(xdut.xqs7.__o__f_53_6) v(xdut.xqs7.__o__t_50_6) v(xdut.xqs7.__o__t_53_6) v(xdut.xseq.__a_50_6) v(xdut.xseq.__a_51_6) v(xdut.xseq.__a_52_6)
.probe tran v(xdut.xseq.__a_53_6) v(xdut.xseq.__a_54_6) v(xdut.xseq.__a_55_6) v(xdut.xseq.__a_56_6) v(xdut.xseq.__q1) v(xdut.xseq.__q2)
.probe tran v(xdut.xseq.__q3) v(xdut.xseq.__q4) v(xdut.xseq.__q5) v(xdut.xseq.__q6) v(xdut.xseq.__q7) v(xdut.xseq.__r)
.probe tran v(xdut.xseq.q1) v(xdut.xseq.q2) v(xdut.xseq.q3) v(xdut.xseq.q4) v(xdut.xseq.q5) v(xdut.xseq.q6)
.probe tran v(xdut.xseq.q7) v(xdut.xwb.__b_50_6) v(xdut.xwb.__b_531_6) v(xdut.xwb.__b_53_6) v(xdut.xwb.__b_57_6) v(xdut.xwb.__c_50_6)
.probe tran v(xdut.xwb.__c_53_6) v(xdut.xwb.__c_57_6) v(xdut.xwb.__e_50_6) v(xdut.xwb.__i__a) v(xdut.xwb.__i__t_50_6) v(xdut.xwb.__i__t_531_6)
.probe tran v(xdut.xwb.__i__t_53_6) v(xdut.xwb.__i__t_57_6) v(xdut.xwb.__o1a) v(xdut.xwb.__o1t_50_6) v(xdut.xwb.__o1t_53_6) v(xdut.xwb.__o2t_50_6)
.probe tran v(xdut.xwb.__o2t_53_6) v(xdut.xwb.__o3t_50_6) v(xdut.xwb.__o3t_53_6) v(xdut.xwb.__o4t_50_6) v(xdut.xwb.__o4t_53_6) v(xdut.xwb.__o5t_50_6)
.probe tran v(xdut.xwb.__o5t_53_6) v(xdut.xwb.__o6t_50_6) v(xdut.xwb.__o6t_53_6) v(xdut.xwb.__o7t_50_6) v(xdut.xwb.__o7t_53_6) v(xdut.xwb.__r)
.probe tran v(xdut.xwb.__u1) v(xdut.xwb.__u2) v(xdut.xwb.__u3) v(xdut.xwb.__u4) v(xdut.xwb.__u5) v(xdut.xwb.__u6)
.probe tran v(xdut.xwb.__u7) v(xdut.xwb.__v) v(xdut.xwb.b_50_6) v(xdut.xwb.b_531_6) v(xdut.xwb.b_53_6) v(xdut.xwb.b_57_6)
.probe tran v(xdut.xwb.c) v(xdut.xwb.d_50_6) v(xdut.xwb.d_53_6) v(xdut.xwb.u1) v(xdut.xwb.u2) v(xdut.xwb.u3)
.probe tran v(xdut.xwb.u4) v(xdut.xwb.u5) v(xdut.xwb.u6) v(xdut.xwb.u7) v(xdut.xwb.v)
.tran 'TB_TICK' 'TB_STOP'
.end
