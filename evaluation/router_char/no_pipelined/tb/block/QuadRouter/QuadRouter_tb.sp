QuadRouter: one complete ACTSIM reference round, PTM65 TT raw prs2net baseline
* 26 inputs, 16 pull responses, 58 checked outputs in 12 ordered stages.
* VDD=1.1 V, T=27 C, lambda=32.5 nm; no additional fork RC.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=2u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/block/QuadRouter/QuadRouter.sp"
.hdl "tb/block/QuadRouter/QuadRouter_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Cnt0_areq Cnt0_at_50_6 Cnt0_at_51_6 Cnt0_at_52_6 Cnt0_at_53_6 Cnt0_at_54_6 Cnt0_at_55_6
+ Cnt0_at_56_6 Cnt0_at_57_6 Cnt0_af_50_6 Cnt0_af_51_6 Cnt0_af_52_6 Cnt0_af_53_6 Cnt0_af_54_6
+ Cnt0_af_55_6 Cnt0_af_56_6 Cnt0_af_57_6 Cnt1_areq Cnt1_at_50_6 Cnt1_at_51_6 Cnt1_at_52_6
+ Cnt1_at_53_6 Cnt1_at_54_6 Cnt1_at_55_6 Cnt1_at_56_6 Cnt1_at_57_6 Cnt1_af_50_6 Cnt1_af_51_6
+ Cnt1_af_52_6 Cnt1_af_53_6 Cnt1_af_54_6 Cnt1_af_55_6 Cnt1_af_56_6 Cnt1_af_57_6 Cnt2_areq
+ Cnt2_at_50_6 Cnt2_at_51_6 Cnt2_at_52_6 Cnt2_at_53_6 Cnt2_at_54_6 Cnt2_at_55_6 Cnt2_at_56_6
+ Cnt2_at_57_6 Cnt2_af_50_6 Cnt2_af_51_6 Cnt2_af_52_6 Cnt2_af_53_6 Cnt2_af_54_6 Cnt2_af_55_6
+ Cnt2_af_56_6 Cnt2_af_57_6 Cnt3_areq Cnt3_at_50_6 Cnt3_at_51_6 Cnt3_at_52_6 Cnt3_at_53_6
+ Cnt3_at_54_6 Cnt3_at_55_6 Cnt3_at_56_6 Cnt3_at_57_6 Cnt3_af_50_6 Cnt3_af_51_6 Cnt3_af_52_6
+ Cnt3_af_53_6 Cnt3_af_54_6 Cnt3_af_55_6 Cnt3_af_56_6 Cnt3_af_57_6 OC0_at_50_6 OC0_at_51_6
+ OC0_at_52_6 OC0_at_53_6 OC0_af_50_6 OC0_af_51_6 OC0_af_52_6 OC0_af_53_6 OC0_aa OC1_at_50_6
+ OC1_at_51_6 OC1_at_52_6 OC1_at_53_6 OC1_af_50_6 OC1_af_51_6 OC1_af_52_6 OC1_af_53_6 OC1_aa
+ OC2_at_50_6 OC2_at_51_6 OC2_at_52_6 OC2_at_53_6 OC2_af_50_6 OC2_af_51_6 OC2_af_52_6 OC2_af_53_6
+ OC2_aa OC3_at_50_6 OC3_at_51_6 OC3_at_52_6 OC3_at_53_6 OC3_af_50_6 OC3_af_51_6 OC3_af_52_6
+ OC3_af_53_6 OC3_aa OD0_at_50_6 OD0_at_51_6 OD0_at_52_6 OD0_at_53_6 OD0_af_50_6 OD0_af_51_6
+ OD0_af_52_6 OD0_af_53_6 OD0_aa OD1_at_50_6 OD1_at_51_6 OD1_at_52_6 OD1_at_53_6 OD1_af_50_6
+ OD1_af_51_6 OD1_af_52_6 OD1_af_53_6 OD1_aa OD2_at_50_6 OD2_at_51_6 OD2_at_52_6 OD2_at_53_6
+ OD2_af_50_6 OD2_af_51_6 OD2_af_52_6 OD2_af_53_6 OD2_aa OD3_at_50_6 OD3_at_51_6 OD3_at_52_6
+ OD3_at_53_6 OD3_af_50_6 OD3_af_51_6 OD3_af_52_6 OD3_af_53_6 OD3_aa Ch_at_50_6 Ch_at_51_6
+ Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa QuadRouter
XENV reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Cnt0_areq Cnt0_at_50_6 Cnt0_at_51_6 Cnt0_at_52_6 Cnt0_at_53_6 Cnt0_at_54_6 Cnt0_at_55_6
+ Cnt0_at_56_6 Cnt0_at_57_6 Cnt0_af_50_6 Cnt0_af_51_6 Cnt0_af_52_6 Cnt0_af_53_6 Cnt0_af_54_6
+ Cnt0_af_55_6 Cnt0_af_56_6 Cnt0_af_57_6 Cnt1_areq Cnt1_at_50_6 Cnt1_at_51_6 Cnt1_at_52_6
+ Cnt1_at_53_6 Cnt1_at_54_6 Cnt1_at_55_6 Cnt1_at_56_6 Cnt1_at_57_6 Cnt1_af_50_6 Cnt1_af_51_6
+ Cnt1_af_52_6 Cnt1_af_53_6 Cnt1_af_54_6 Cnt1_af_55_6 Cnt1_af_56_6 Cnt1_af_57_6 Cnt2_areq
+ Cnt2_at_50_6 Cnt2_at_51_6 Cnt2_at_52_6 Cnt2_at_53_6 Cnt2_at_54_6 Cnt2_at_55_6 Cnt2_at_56_6
+ Cnt2_at_57_6 Cnt2_af_50_6 Cnt2_af_51_6 Cnt2_af_52_6 Cnt2_af_53_6 Cnt2_af_54_6 Cnt2_af_55_6
+ Cnt2_af_56_6 Cnt2_af_57_6 Cnt3_areq Cnt3_at_50_6 Cnt3_at_51_6 Cnt3_at_52_6 Cnt3_at_53_6
+ Cnt3_at_54_6 Cnt3_at_55_6 Cnt3_at_56_6 Cnt3_at_57_6 Cnt3_af_50_6 Cnt3_af_51_6 Cnt3_af_52_6
+ Cnt3_af_53_6 Cnt3_af_54_6 Cnt3_af_55_6 Cnt3_af_56_6 Cnt3_af_57_6 OC0_at_50_6 OC0_at_51_6
+ OC0_at_52_6 OC0_at_53_6 OC0_af_50_6 OC0_af_51_6 OC0_af_52_6 OC0_af_53_6 OC0_aa OC1_at_50_6
+ OC1_at_51_6 OC1_at_52_6 OC1_at_53_6 OC1_af_50_6 OC1_af_51_6 OC1_af_52_6 OC1_af_53_6 OC1_aa
+ OC2_at_50_6 OC2_at_51_6 OC2_at_52_6 OC2_at_53_6 OC2_af_50_6 OC2_af_51_6 OC2_af_52_6 OC2_af_53_6
+ OC2_aa OC3_at_50_6 OC3_at_51_6 OC3_at_52_6 OC3_at_53_6 OC3_af_50_6 OC3_af_51_6 OC3_af_52_6
+ OC3_af_53_6 OC3_aa OD0_at_50_6 OD0_at_51_6 OD0_at_52_6 OD0_at_53_6 OD0_af_50_6 OD0_af_51_6
+ OD0_af_52_6 OD0_af_53_6 OD0_aa OD1_at_50_6 OD1_at_51_6 OD1_at_52_6 OD1_at_53_6 OD1_af_50_6
+ OD1_af_51_6 OD1_af_52_6 OD1_af_53_6 OD1_aa OD2_at_50_6 OD2_at_51_6 OD2_at_52_6 OD2_at_53_6
+ OD2_af_50_6 OD2_af_51_6 OD2_af_52_6 OD2_af_53_6 OD2_aa OD3_at_50_6 OD3_at_51_6 OD3_at_52_6
+ OD3_at_53_6 OD3_af_50_6 OD3_af_51_6 OD3_af_52_6 OD3_af_53_6 OD3_aa Ch_at_50_6 Ch_at_51_6
+ Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa tb_done tb_failed
+ quadrouter_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE' STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
.option post=2 probe
.probe tran v(reset) v(I_at_50_6) v(I_at_51_6) v(I_at_52_6) v(I_at_53_6) v(I_af_50_6) v(I_af_51_6)
+ v(I_af_52_6) v(I_af_53_6) v(I_aa) v(Cnt0_areq) v(Cnt0_at_50_6) v(Cnt0_at_51_6) v(Cnt0_at_52_6)
+ v(Cnt0_at_53_6) v(Cnt0_at_54_6) v(Cnt0_at_55_6) v(Cnt0_at_56_6) v(Cnt0_at_57_6) v(Cnt0_af_50_6)
+ v(Cnt0_af_51_6) v(Cnt0_af_52_6) v(Cnt0_af_53_6) v(Cnt0_af_54_6) v(Cnt0_af_55_6) v(Cnt0_af_56_6)
+ v(Cnt0_af_57_6) v(Cnt1_areq) v(Cnt1_at_50_6) v(Cnt1_at_51_6) v(Cnt1_at_52_6) v(Cnt1_at_53_6)
+ v(Cnt1_at_54_6) v(Cnt1_at_55_6) v(Cnt1_at_56_6) v(Cnt1_at_57_6) v(Cnt1_af_50_6) v(Cnt1_af_51_6)
+ v(Cnt1_af_52_6) v(Cnt1_af_53_6) v(Cnt1_af_54_6) v(Cnt1_af_55_6) v(Cnt1_af_56_6) v(Cnt1_af_57_6)
+ v(Cnt2_areq) v(Cnt2_at_50_6) v(Cnt2_at_51_6) v(Cnt2_at_52_6) v(Cnt2_at_53_6) v(Cnt2_at_54_6)
+ v(Cnt2_at_55_6) v(Cnt2_at_56_6) v(Cnt2_at_57_6) v(Cnt2_af_50_6) v(Cnt2_af_51_6) v(Cnt2_af_52_6)
+ v(Cnt2_af_53_6) v(Cnt2_af_54_6) v(Cnt2_af_55_6) v(Cnt2_af_56_6) v(Cnt2_af_57_6) v(Cnt3_areq)
+ v(Cnt3_at_50_6) v(Cnt3_at_51_6) v(Cnt3_at_52_6) v(Cnt3_at_53_6) v(Cnt3_at_54_6) v(Cnt3_at_55_6)
+ v(Cnt3_at_56_6) v(Cnt3_at_57_6) v(Cnt3_af_50_6) v(Cnt3_af_51_6) v(Cnt3_af_52_6) v(Cnt3_af_53_6)
+ v(Cnt3_af_54_6) v(Cnt3_af_55_6) v(Cnt3_af_56_6) v(Cnt3_af_57_6) v(OC0_at_50_6) v(OC0_at_51_6)
+ v(OC0_at_52_6) v(OC0_at_53_6) v(OC0_af_50_6) v(OC0_af_51_6) v(OC0_af_52_6) v(OC0_af_53_6)
+ v(OC0_aa) v(OC1_at_50_6) v(OC1_at_51_6) v(OC1_at_52_6) v(OC1_at_53_6) v(OC1_af_50_6)
+ v(OC1_af_51_6) v(OC1_af_52_6) v(OC1_af_53_6) v(OC1_aa) v(OC2_at_50_6) v(OC2_at_51_6)
+ v(OC2_at_52_6) v(OC2_at_53_6) v(OC2_af_50_6) v(OC2_af_51_6) v(OC2_af_52_6) v(OC2_af_53_6)
+ v(OC2_aa) v(OC3_at_50_6) v(OC3_at_51_6) v(OC3_at_52_6) v(OC3_at_53_6) v(OC3_af_50_6)
+ v(OC3_af_51_6) v(OC3_af_52_6) v(OC3_af_53_6) v(OC3_aa) v(OD0_at_50_6) v(OD0_at_51_6)
+ v(OD0_at_52_6) v(OD0_at_53_6) v(OD0_af_50_6) v(OD0_af_51_6) v(OD0_af_52_6) v(OD0_af_53_6)
+ v(OD0_aa) v(OD1_at_50_6) v(OD1_at_51_6) v(OD1_at_52_6) v(OD1_at_53_6) v(OD1_af_50_6)
+ v(OD1_af_51_6) v(OD1_af_52_6) v(OD1_af_53_6) v(OD1_aa) v(OD2_at_50_6) v(OD2_at_51_6)
+ v(OD2_at_52_6) v(OD2_at_53_6) v(OD2_af_50_6) v(OD2_af_51_6) v(OD2_af_52_6) v(OD2_af_53_6)
+ v(OD2_aa) v(OD3_at_50_6) v(OD3_at_51_6) v(OD3_at_52_6) v(OD3_at_53_6) v(OD3_af_50_6)
+ v(OD3_af_51_6) v(OD3_af_52_6) v(OD3_af_53_6) v(OD3_aa) v(Ch_at_50_6) v(Ch_at_51_6) v(Ch_at_52_6)
+ v(Ch_at_53_6) v(Ch_af_50_6) v(Ch_af_51_6) v(Ch_af_52_6) v(Ch_af_53_6) v(Ch_aa) v(tb_done)
+ v(tb_failed)
+ v(Vdd) i(VPOWER)
.probe tran v(xdut.ch_aa) v(xdut.ch_af_50_6) v(xdut.ch_af_53_6) v(xdut.ch_at_50_6) v(xdut.ch_at_53_6) v(xdut.child1_ai_aa)
.probe tran v(xdut.cnt1_af_50_6) v(xdut.cnt1_af_53_6) v(xdut.cnt1_af_57_6) v(xdut.cnt1_areq) v(xdut.cnt1_at_50_6) v(xdut.cnt1_at_53_6)
.probe tran v(xdut.cnt1_at_57_6) v(xdut.i_af_50_6) v(xdut.i_af_53_6) v(xdut.i_at_50_6) v(xdut.i_at_53_6) v(xdut.oc1_aa)
.probe tran v(xdut.oc1_af_50_6) v(xdut.oc1_af_53_6) v(xdut.oc1_at_50_6) v(xdut.oc1_at_53_6) v(xdut.od0_ai0_aa) v(xdut.od0_ai0_af_50_6)
.probe tran v(xdut.od0_ai0_af_53_6) v(xdut.od0_ai0_at_50_6) v(xdut.od0_ai0_at_53_6) v(xdut.od1_ai0_aa) v(xdut.od1_ai0_af_50_6) v(xdut.od1_ai0_af_53_6)
.probe tran v(xdut.od1_ai0_at_50_6) v(xdut.od1_ai0_at_53_6) v(xdut.od1_ai1_aa) v(xdut.od1_ai1_af_50_6) v(xdut.od1_ai1_af_53_6) v(xdut.od1_ai1_at_50_6)
.probe tran v(xdut.od1_ai1_at_53_6) v(xdut.od2_ai0_aa) v(xdut.od2_ai0_af_50_6) v(xdut.od2_ai0_af_53_6) v(xdut.od2_ai0_at_50_6) v(xdut.od2_ai0_at_53_6)
.probe tran v(xdut.od3_ai0_aa) v(xdut.od3_ai0_af_50_6) v(xdut.od3_ai0_af_53_6) v(xdut.od3_ai0_at_50_6) v(xdut.od3_ai0_at_53_6) v(xdut.q0_aw0_aa)
.probe tran v(xdut.q0_aw0_af_50_6) v(xdut.q0_aw0_af_53_6) v(xdut.q0_aw0_af_57_6) v(xdut.q0_aw0_at_50_6) v(xdut.q0_aw0_at_53_6) v(xdut.q0_aw0_at_57_6)
.probe tran v(xdut.q1_ar_af_50_6) v(xdut.q1_ar_af_53_6) v(xdut.q1_ar_af_57_6) v(xdut.q1_ar_areq) v(xdut.q1_ar_at_50_6) v(xdut.q1_ar_at_53_6)
.probe tran v(xdut.q1_ar_at_57_6) v(xdut.q1_aw0_aa) v(xdut.q1_aw0_af_50_6) v(xdut.q1_aw0_af_53_6) v(xdut.q1_aw0_af_57_6) v(xdut.q1_aw0_at_50_6)
.probe tran v(xdut.q1_aw0_at_53_6) v(xdut.q1_aw0_at_57_6) v(xdut.q1_aw1_aa) v(xdut.q1_aw1_af_50_6) v(xdut.q1_aw1_af_53_6) v(xdut.q1_aw1_af_57_6)
.probe tran v(xdut.q1_aw1_at_50_6) v(xdut.q1_aw1_at_53_6) v(xdut.q1_aw1_at_57_6) v(xdut.q2_aw0_aa) v(xdut.q2_aw0_af_50_6) v(xdut.q2_aw0_af_53_6)
.probe tran v(xdut.q2_aw0_af_57_6) v(xdut.q2_aw0_at_50_6) v(xdut.q2_aw0_at_53_6) v(xdut.q2_aw0_at_57_6) v(xdut.q3_aw0_aa) v(xdut.q3_aw0_af_50_6)
.probe tran v(xdut.q3_aw0_af_53_6) v(xdut.q3_aw0_af_57_6) v(xdut.q3_aw0_at_50_6) v(xdut.q3_aw0_at_53_6) v(xdut.q3_aw0_at_57_6) v(xdut.seq_aa0_aa)
.probe tran v(xdut.seq_aa0_areq) v(xdut.seq_aa1_aa) v(xdut.seq_aa1_areq) v(xdut.seq_aa2_aa) v(xdut.seq_aa2_areq) v(xdut.seq_aa3_aa)
.probe tran v(xdut.seq_aa3_areq) v(xdut.seq_aa4_aa) v(xdut.seq_aa4_areq) v(xdut.seq_aa5_aa) v(xdut.seq_aa6_aa) v(xdut.update_ai_aa)
.probe tran v(xdut.xchild1.__ar) v(xdut.xchild1.__b_50_6) v(xdut.xchild1.__b_53_6) v(xdut.xchild1.__f_50_6) v(xdut.xchild1.__f_53_6) v(xdut.xchild1.__h_50_6)
.probe tran v(xdut.xchild1.__h_53_6) v(xdut.xchild1.__ia) v(xdut.xchild1.__if_50_6) v(xdut.xchild1.__if_53_6) v(xdut.xchild1.__it_50_6) v(xdut.xchild1.__it_53_6)
.probe tran v(xdut.xchild1.__j) v(xdut.xchild1.__m) v(xdut.xchild1.__oca) v(xdut.xchild1.__oda) v(xdut.xchild1.__p0) v(xdut.xchild1.__p1)
.probe tran v(xdut.xchild1.__q_50_6) v(xdut.xchild1.__q_53_6) v(xdut.xchild1.__q_57_6) v(xdut.xchild1.__r) v(xdut.xchild1.__rf_50_6) v(xdut.xchild1.__rf_53_6)
.probe tran v(xdut.xchild1.__rf_57_6) v(xdut.xchild1.__rr) v(xdut.xchild1.__rt_50_6) v(xdut.xchild1.__rt_53_6) v(xdut.xchild1.__rt_57_6) v(xdut.xchild1.__s)
.probe tran v(xdut.xchild1.__u) v(xdut.xchild1.__v_50_6) v(xdut.xchild1.__v_53_6) v(xdut.xchild1.__wa) v(xdut.xchild1.__wf_50_6) v(xdut.xchild1.__wf_51_6)
.probe tran v(xdut.xchild1.__wf_52_6) v(xdut.xchild1.__wf_53_6) v(xdut.xchild1.__wf_54_6) v(xdut.xchild1.__wf_55_6) v(xdut.xchild1.__wf_56_6) v(xdut.xchild1.__wf_57_6)
.probe tran v(xdut.xchild1.__wt_50_6) v(xdut.xchild1.__wt_53_6) v(xdut.xchild1.__wt_57_6) v(xdut.xchild1.__y_50_6) v(xdut.xchild1.__y_51_6) v(xdut.xchild1.__y_52_6)
.probe tran v(xdut.xchild1.__y_53_6) v(xdut.xchild1.b_50_6) v(xdut.xchild1.b_53_6) v(xdut.xchild1.dec_ai_af_50_6) v(xdut.xchild1.dec_ai_af_51_6) v(xdut.xchild1.dec_ai_af_52_6)
.probe tran v(xdut.xchild1.dec_ai_af_53_6) v(xdut.xchild1.dec_ai_af_54_6) v(xdut.xchild1.dec_ai_af_55_6) v(xdut.xchild1.dec_ai_af_56_6) v(xdut.xchild1.dec_ai_af_57_6) v(xdut.xchild1.dec_ai_at_50_6)
.probe tran v(xdut.xchild1.dec_ai_at_51_6) v(xdut.xchild1.dec_ai_at_52_6) v(xdut.xchild1.dec_ai_at_53_6) v(xdut.xchild1.dec_ai_at_54_6) v(xdut.xchild1.dec_ai_at_55_6) v(xdut.xchild1.dec_ai_at_56_6)
.probe tran v(xdut.xchild1.dec_ai_at_57_6) v(xdut.xchild1.dec_ao_af_50_6) v(xdut.xchild1.dec_ao_af_51_6) v(xdut.xchild1.dec_ao_af_52_6) v(xdut.xchild1.dec_ao_af_53_6) v(xdut.xchild1.dec_ao_af_54_6)
.probe tran v(xdut.xchild1.dec_ao_af_55_6) v(xdut.xchild1.dec_ao_af_56_6) v(xdut.xchild1.dec_ao_af_57_6) v(xdut.xchild1.dec_ao_at_50_6) v(xdut.xchild1.dec_ao_at_51_6) v(xdut.xchild1.dec_ao_at_52_6)
.probe tran v(xdut.xchild1.dec_ao_at_53_6) v(xdut.xchild1.dec_ao_at_54_6) v(xdut.xchild1.dec_ao_at_55_6) v(xdut.xchild1.dec_ao_at_56_6) v(xdut.xchild1.dec_ao_at_57_6) v(xdut.xchild1.e_50_6)
.probe tran v(xdut.xchild1.e_53_6) v(xdut.xchild1.e_57_6) v(xdut.xchild1.g_50_6) v(xdut.xchild1.j) v(xdut.xchild1.l_50_6) v(xdut.xchild1.p0)
.probe tran v(xdut.xchild1.p1) v(xdut.xchild1.q_50_6) v(xdut.xchild1.q_53_6) v(xdut.xchild1.q_57_6) v(xdut.xchild1.s) v(xdut.xchild1.t_50_6)
.probe tran v(xdut.xchild1.x_50_6) v(xdut.xchild1.x_53_6) v(xdut.xchild1.x_57_6) v(xdut.xchild1.xdec.fa1_ad_af) v(xdut.xchild1.xdec.fa1_ad_at) v(xdut.xchild1.xdec.fa2_ad_af)
.probe tran v(xdut.xchild1.xdec.fa2_ad_at) v(xdut.xchild1.xdec.fa3_ad_af) v(xdut.xchild1.xdec.fa3_ad_at) v(xdut.xchild1.xdec.fa4_ad_af) v(xdut.xchild1.xdec.fa4_ad_at) v(xdut.xchild1.xdec.fa5_ad_af)
.probe tran v(xdut.xchild1.xdec.fa5_ad_at) v(xdut.xchild1.xdec.fa6_ad_af) v(xdut.xchild1.xdec.fa6_ad_at) v(xdut.xchild1.xdec.fa7_ad_af) v(xdut.xchild1.xdec.fa7_ad_at) v(xdut.xchild1.xdec.ha_ad_af)
.probe tran v(xdut.xchild1.xdec.ha_ad_at) v(xdut.xchild1.xdec.xfa1.__df) v(xdut.xchild1.xdec.xfa1.__dt) v(xdut.xchild1.xdec.xfa1.__sf) v(xdut.xchild1.xdec.xfa1.__st) v(xdut.xchild1.xdec.xfa2.__df)
.probe tran v(xdut.xchild1.xdec.xfa2.__dt) v(xdut.xchild1.xdec.xfa2.__sf) v(xdut.xchild1.xdec.xfa2.__st) v(xdut.xchild1.xdec.xfa3.__df) v(xdut.xchild1.xdec.xfa3.__dt) v(xdut.xchild1.xdec.xfa3.__sf)
.probe tran v(xdut.xchild1.xdec.xfa3.__st) v(xdut.xchild1.xdec.xfa4.__df) v(xdut.xchild1.xdec.xfa4.__dt) v(xdut.xchild1.xdec.xfa4.__sf) v(xdut.xchild1.xdec.xfa4.__st) v(xdut.xchild1.xdec.xfa5.__df)
.probe tran v(xdut.xchild1.xdec.xfa5.__dt) v(xdut.xchild1.xdec.xfa5.__sf) v(xdut.xchild1.xdec.xfa5.__st) v(xdut.xchild1.xdec.xfa6.__df) v(xdut.xchild1.xdec.xfa6.__dt) v(xdut.xchild1.xdec.xfa6.__sf)
.probe tran v(xdut.xchild1.xdec.xfa6.__st) v(xdut.xchild1.xdec.xfa7.__df) v(xdut.xchild1.xdec.xfa7.__dt) v(xdut.xchild1.xdec.xfa7.__sf) v(xdut.xchild1.xdec.xfa7.__st) v(xdut.xchild1.xdec.xha.__df)
.probe tran v(xdut.xchild1.xdec.xha.__dt) v(xdut.xchild1.xdec.xha.__sf) v(xdut.xchild1.xdec.xha.__st) v(xdut.xchild1.z_50_6) v(xdut.xchild1.z_51_6) v(xdut.xq1.reg_aw_aa)
.probe tran v(xdut.xq1.reg_aw_af_50_6) v(xdut.xq1.reg_aw_af_53_6) v(xdut.xq1.reg_aw_af_57_6) v(xdut.xq1.reg_aw_at_50_6) v(xdut.xq1.reg_aw_at_53_6) v(xdut.xq1.reg_aw_at_57_6)
.probe tran v(xdut.xq1.xreg.__c_50_6) v(xdut.xq1.xreg.__c_53_6) v(xdut.xq1.xreg.__c_57_6) v(xdut.xq1.xreg.__e_50_6) v(xdut.xq1.xreg.__p__a) v(xdut.xq1.xreg.__pt_50_6)
.probe tran v(xdut.xq1.xreg.__pt_53_6) v(xdut.xq1.xreg.__pt_57_6) v(xdut.xq1.xreg.__qr) v(xdut.xq1.xreg.__x_50_6) v(xdut.xq1.xreg.__x_53_6) v(xdut.xq1.xreg.__x_57_6)
.probe tran v(xdut.xq1.xreg.d_50_6) v(xdut.xq1.xreg.d_53_6) v(xdut.xq1.xreg.e_50_6) v(xdut.xq1.xreg.x_50_6) v(xdut.xq1.xreg.x_53_6) v(xdut.xq1.xreg.x_57_6)
.probe tran v(xdut.xseq.__a_50_6) v(xdut.xseq.__a_51_6) v(xdut.xseq.__a_52_6) v(xdut.xseq.__a_53_6) v(xdut.xseq.__a_54_6) v(xdut.xseq.__a_55_6)
.probe tran v(xdut.xseq.__a_56_6) v(xdut.xseq.__q1) v(xdut.xseq.__q2) v(xdut.xseq.__q3) v(xdut.xseq.__q4) v(xdut.xseq.__q5)
.probe tran v(xdut.xseq.__q6) v(xdut.xseq.__q7) v(xdut.xseq.__r) v(xdut.xseq.q1) v(xdut.xseq.q2) v(xdut.xseq.q3)
.probe tran v(xdut.xseq.q4) v(xdut.xseq.q5) v(xdut.xseq.q6) v(xdut.xseq.q7) v(xdut.xupdate.__aa) v(xdut.xupdate.__ar)
.probe tran v(xdut.xupdate.__b_50_6) v(xdut.xupdate.__b_53_6) v(xdut.xupdate.__cha) v(xdut.xupdate.__ia) v(xdut.xupdate.__if_50_6) v(xdut.xupdate.__if_53_6)
.probe tran v(xdut.xupdate.__it_50_6) v(xdut.xupdate.__it_53_6) v(xdut.xupdate.__p0) v(xdut.xupdate.__p1) v(xdut.xupdate.__r) v(xdut.xupdate.__s)
.probe tran v(xdut.xupdate.__wa_50_6) v(xdut.xupdate.__wa_51_6) v(xdut.xupdate.__wa_52_6) v(xdut.xupdate.__wa_53_6) v(xdut.xupdate.__x_50_6) v(xdut.xupdate.__x_53_6)
.probe tran v(xdut.xupdate.__z) v(xdut.xupdate.b_50_6) v(xdut.xupdate.b_53_6) v(xdut.xupdate.k) v(xdut.xupdate.p0) v(xdut.xupdate.p1)
.probe tran v(xdut.xupdate.s) v(xdut.xupdate.y_50_6) v(xdut.xupdate.y_51_6)
.tran 'TB_TICK' 'TB_STOP'
.end
