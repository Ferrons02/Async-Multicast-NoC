Deserializer: one complete ACTSIM reference round, PTM65 TT raw prs2net baseline
* Sixteen input nibbles, three output words; concurrent four-phase handshakes.
* VDD=1.1 V, T=27 C, lambda=32.5 nm; no additional fork RC.
* Reset PRS initializes the circuit: no .ic, .nodeset or UIC.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=2u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/block/Deserializer/Deserializer.sp"
.hdl "tb/block/Deserializer/Deserializer_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6
+ O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6
+ O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6
+ O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6
+ O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6
+ O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6
+ O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6
+ O_af_531_6 O_aa Deserializer
XENV reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6
+ O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6
+ O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6
+ O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6
+ O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6
+ O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6
+ O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6
+ O_af_531_6 O_aa tb_done tb_failed deserializer_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE' STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
.option post=2 probe
.probe tran v(reset) v(I_at_50_6) v(I_at_51_6) v(I_at_52_6) v(I_at_53_6) v(I_af_50_6) v(I_af_51_6)
+ v(I_af_52_6) v(I_af_53_6) v(I_aa) v(O_at_50_6) v(O_at_51_6) v(O_at_52_6) v(O_at_53_6) v(O_at_54_6)
+ v(O_at_55_6) v(O_at_56_6) v(O_at_57_6) v(O_at_58_6) v(O_at_59_6) v(O_at_510_6) v(O_at_511_6)
+ v(O_at_512_6) v(O_at_513_6) v(O_at_514_6) v(O_at_515_6) v(O_at_516_6) v(O_at_517_6) v(O_at_518_6)
+ v(O_at_519_6) v(O_at_520_6) v(O_at_521_6) v(O_at_522_6) v(O_at_523_6) v(O_at_524_6) v(O_at_525_6)
+ v(O_at_526_6) v(O_at_527_6) v(O_at_528_6) v(O_at_529_6) v(O_at_530_6) v(O_at_531_6) v(O_af_50_6)
+ v(O_af_51_6) v(O_af_52_6) v(O_af_53_6) v(O_af_54_6) v(O_af_55_6) v(O_af_56_6) v(O_af_57_6)
+ v(O_af_58_6) v(O_af_59_6) v(O_af_510_6) v(O_af_511_6) v(O_af_512_6) v(O_af_513_6) v(O_af_514_6)
+ v(O_af_515_6) v(O_af_516_6) v(O_af_517_6) v(O_af_518_6) v(O_af_519_6) v(O_af_520_6) v(O_af_521_6)
+ v(O_af_522_6) v(O_af_523_6) v(O_af_524_6) v(O_af_525_6) v(O_af_526_6) v(O_af_527_6) v(O_af_528_6)
+ v(O_af_529_6) v(O_af_530_6) v(O_af_531_6) v(O_aa) v(tb_done) v(tb_failed)
+ v(Vdd) i(VPOWER)
.probe tran v(xdut.i_aa) v(xdut.i_af_50_6) v(xdut.i_af_53_6) v(xdut.i_at_50_6) v(xdut.i_at_53_6) v(xdut.low__gnd)
.probe tran v(xdut.o_aa) v(xdut.o_af_50_6) v(xdut.o_af_524_6) v(xdut.o_af_527_6) v(xdut.o_af_528_6) v(xdut.o_af_531_6)
.probe tran v(xdut.o_af_53_6) v(xdut.o_at_50_6) v(xdut.o_at_524_6) v(xdut.o_at_527_6) v(xdut.o_at_528_6) v(xdut.o_at_531_6)
.probe tran v(xdut.o_at_53_6) v(xdut.qb0_ai_af_50_6) v(xdut.qb0_al_aa) v(xdut.qb0_al_areq) v(xdut.qb0_ar_aa) v(xdut.qb0_ar_areq)
.probe tran v(xdut.qb1_ai_af_50_6) v(xdut.qb1_ai_af_53_6) v(xdut.qb1_ai_areq) v(xdut.qb1_ai_at_50_6) v(xdut.qb1_ai_at_53_6) v(xdut.qb2_ai_af_50_6)
.probe tran v(xdut.qb2_ai_af_53_6) v(xdut.qb2_ai_areq) v(xdut.qb2_ai_at_50_6) v(xdut.qb2_ai_at_53_6) v(xdut.qb3_ai_af_50_6) v(xdut.qb3_ai_af_53_6)
.probe tran v(xdut.qb3_ai_areq) v(xdut.qb3_ai_at_50_6) v(xdut.qb3_ai_at_53_6) v(xdut.qb4_ai_af_50_6) v(xdut.qb4_ai_af_53_6) v(xdut.qb4_ai_areq)
.probe tran v(xdut.qb4_ai_at_50_6) v(xdut.qb4_ai_at_53_6) v(xdut.qb5_ai_af_50_6) v(xdut.qb5_ai_af_53_6) v(xdut.qb5_ai_areq) v(xdut.qb5_ai_at_50_6)
.probe tran v(xdut.qb5_ai_at_53_6) v(xdut.qb5_al_aa) v(xdut.qb5_al_areq) v(xdut.qb6_ai_af_50_6) v(xdut.qb6_ai_af_53_6) v(xdut.qb6_ai_areq)
.probe tran v(xdut.qb6_ai_at_50_6) v(xdut.qb6_ai_at_53_6) v(xdut.qb6_al_aa) v(xdut.qb6_al_areq) v(xdut.qb7_ai_af_50_6) v(xdut.qb7_ai_af_53_6)
.probe tran v(xdut.qb7_ai_areq) v(xdut.qb7_ai_at_50_6) v(xdut.qb7_ai_at_53_6) v(xdut.qb7_al_aa) v(xdut.qb7_al_areq) v(xdut.split_ai_af_50_6)
.probe tran v(xdut.split_ai_af_53_6) v(xdut.split_ai_areq) v(xdut.split_ai_at_50_6) v(xdut.split_ai_at_53_6) v(xdut.xanalyzer.__f) v(xdut.xanalyzer.__if_50_6)
.probe tran v(xdut.xanalyzer.__if_53_6) v(xdut.xanalyzer.__it_50_6) v(xdut.xanalyzer.__it_53_6) v(xdut.xanalyzer.__k) v(xdut.xanalyzer.__lr) v(xdut.xanalyzer.__m)
.probe tran v(xdut.xanalyzer.__of_50_6) v(xdut.xanalyzer.__of_51_6) v(xdut.xanalyzer.__of_52_6) v(xdut.xanalyzer.__of_53_6) v(xdut.xanalyzer.__or) v(xdut.xanalyzer.__ot_50_6)
.probe tran v(xdut.xanalyzer.__ot_53_6) v(xdut.xanalyzer.__r) v(xdut.xanalyzer.__rr) v(xdut.xanalyzer.__s) v(xdut.xanalyzer.__v) v(xdut.xanalyzer.k)
.probe tran v(xdut.xanalyzer.m) v(xdut.xanalyzer.v) v(xdut.xqb0.__a) v(xdut.xqb0.__b) v(xdut.xqb0.__c) v(xdut.xqb0.__lr)
.probe tran v(xdut.xqb0.__oa) v(xdut.xqb0.__pa) v(xdut.xqb0.__r) v(xdut.xqb0.__ra) v(xdut.xqb0.a) v(xdut.xqb0.b)
.probe tran v(xdut.xqb0.c) v(xdut.xqb0.p__a) v(xdut.xqb0.q__r) v(xdut.xqb0.xreg.__pt_50_6) v(xdut.xqb0.xreg.__pt_53_6) v(xdut.xqb0.xreg.__qr)
.probe tran v(xdut.xqb0.xreg.__reg__pa) v(xdut.xqb0.xreg.__x_50_6) v(xdut.xqb0.xreg.__x_53_6) v(xdut.xqb0.xreg.x_50_6) v(xdut.xqb0.xreg.x_53_6) v(xdut.xqb6.__a)
.probe tran v(xdut.xqb6.__b) v(xdut.xqb6.__c) v(xdut.xqb6.__lr) v(xdut.xqb6.__oa) v(xdut.xqb6.__pa) v(xdut.xqb6.__r)
.probe tran v(xdut.xqb6.__ra) v(xdut.xqb6.a) v(xdut.xqb6.b) v(xdut.xqb6.c) v(xdut.xqb6.p__a) v(xdut.xqb6.q__r)
.probe tran v(xdut.xqb6.xreg.__pt_50_6) v(xdut.xqb6.xreg.__pt_53_6) v(xdut.xqb6.xreg.__qr) v(xdut.xqb6.xreg.__reg__pa) v(xdut.xqb6.xreg.__x_50_6) v(xdut.xqb6.xreg.__x_53_6)
.probe tran v(xdut.xqb6.xreg.x_50_6) v(xdut.xqb6.xreg.x_53_6) v(xdut.xqb7.__a) v(xdut.xqb7.__b) v(xdut.xqb7.__c) v(xdut.xqb7.__lr)
.probe tran v(xdut.xqb7.__oa) v(xdut.xqb7.__pa) v(xdut.xqb7.__r) v(xdut.xqb7.__ra) v(xdut.xqb7.a) v(xdut.xqb7.b)
.probe tran v(xdut.xqb7.c) v(xdut.xqb7.p__a) v(xdut.xqb7.q__r) v(xdut.xqb7.xreg.__pt_50_6) v(xdut.xqb7.xreg.__pt_53_6) v(xdut.xqb7.xreg.__qr)
.probe tran v(xdut.xqb7.xreg.__reg__pa) v(xdut.xqb7.xreg.__x_50_6) v(xdut.xqb7.xreg.__x_53_6) v(xdut.xqb7.xreg.x_50_6) v(xdut.xqb7.xreg.x_53_6) v(xdut.xsplit.hi_ai_af_50_6)
.probe tran v(xdut.xsplit.hi_ai_af_53_6) v(xdut.xsplit.hi_ai_areq) v(xdut.xsplit.hi_ai_at_50_6) v(xdut.xsplit.hi_ai_at_53_6) v(xdut.xsplit.hi_ao0_af_50_6) v(xdut.xsplit.hi_ao0_af_53_6)
.probe tran v(xdut.xsplit.hi_ao0_areq) v(xdut.xsplit.hi_ao0_at_50_6) v(xdut.xsplit.hi_ao0_at_53_6) v(xdut.xsplit.hi_ao1_af_50_6) v(xdut.xsplit.hi_ao1_af_53_6) v(xdut.xsplit.hi_ao1_areq)
.probe tran v(xdut.xsplit.hi_ao1_at_50_6) v(xdut.xsplit.hi_ao1_at_53_6) v(xdut.xsplit.lo_ai_af_50_6) v(xdut.xsplit.lo_ai_af_53_6) v(xdut.xsplit.lo_ai_areq) v(xdut.xsplit.lo_ai_at_50_6)
.probe tran v(xdut.xsplit.lo_ai_at_53_6) v(xdut.xsplit.lo_ao0_af_50_6) v(xdut.xsplit.lo_ao0_af_53_6) v(xdut.xsplit.lo_ao0_areq) v(xdut.xsplit.lo_ao0_at_50_6) v(xdut.xsplit.lo_ao0_at_53_6)
.probe tran v(xdut.xsplit.xhi.__ir) v(xdut.xsplit.xhi.__o0f_50_6) v(xdut.xsplit.xhi.__o0f_51_6) v(xdut.xsplit.xhi.__o0f_52_6) v(xdut.xsplit.xhi.__o0f_53_6) v(xdut.xsplit.xhi.__o0t_50_6)
.probe tran v(xdut.xsplit.xhi.__o0t_53_6) v(xdut.xsplit.xhi.__o1f_50_6) v(xdut.xsplit.xhi.__o1f_51_6) v(xdut.xsplit.xhi.__o1f_52_6) v(xdut.xsplit.xhi.__o1f_53_6) v(xdut.xsplit.xhi.__o1t_50_6)
.probe tran v(xdut.xsplit.xhi.__o1t_53_6) v(xdut.xsplit.xlo.__ir) v(xdut.xsplit.xlo.__o0f_50_6) v(xdut.xsplit.xlo.__o0f_51_6) v(xdut.xsplit.xlo.__o0f_52_6) v(xdut.xsplit.xlo.__o0f_53_6)
.probe tran v(xdut.xsplit.xlo.__o0t_50_6) v(xdut.xsplit.xlo.__o0t_53_6) v(xdut.xsplit.xlo.__o1f_50_6) v(xdut.xsplit.xlo.__o1f_51_6) v(xdut.xsplit.xlo.__o1f_52_6) v(xdut.xsplit.xlo.__o1f_53_6)
.probe tran v(xdut.xsplit.xlo.__o1t_50_6) v(xdut.xsplit.xlo.__o1t_53_6) v(xdut.xsplit.xroot.__ir) v(xdut.xsplit.xroot.__o0f_50_6) v(xdut.xsplit.xroot.__o0f_51_6) v(xdut.xsplit.xroot.__o0f_52_6)
.probe tran v(xdut.xsplit.xroot.__o0f_53_6) v(xdut.xsplit.xroot.__o0t_50_6) v(xdut.xsplit.xroot.__o0t_53_6) v(xdut.xsplit.xroot.__o1f_50_6) v(xdut.xsplit.xroot.__o1f_51_6) v(xdut.xsplit.xroot.__o1f_52_6)
.probe tran v(xdut.xsplit.xroot.__o1f_53_6) v(xdut.xsplit.xroot.__o1t_50_6) v(xdut.xsplit.xroot.__o1t_53_6) v(xdut.xsplit.xs32.__ir) v(xdut.xsplit.xs32.__o0f_50_6) v(xdut.xsplit.xs32.__o0f_51_6)
.probe tran v(xdut.xsplit.xs32.__o0f_52_6) v(xdut.xsplit.xs32.__o0f_53_6) v(xdut.xsplit.xs32.__o0t_50_6) v(xdut.xsplit.xs32.__o0t_53_6) v(xdut.xsplit.xs32.__o1f_50_6) v(xdut.xsplit.xs32.__o1f_51_6)
.probe tran v(xdut.xsplit.xs32.__o1f_52_6) v(xdut.xsplit.xs32.__o1f_53_6) v(xdut.xsplit.xs32.__o1t_50_6) v(xdut.xsplit.xs32.__o1t_53_6) v(xdut.xsplit.xs54.__ir) v(xdut.xsplit.xs54.__o0f_50_6)
.probe tran v(xdut.xsplit.xs54.__o0f_51_6) v(xdut.xsplit.xs54.__o0f_52_6) v(xdut.xsplit.xs54.__o0f_53_6) v(xdut.xsplit.xs54.__o0t_50_6) v(xdut.xsplit.xs54.__o0t_53_6) v(xdut.xsplit.xs54.__o1f_50_6)
.probe tran v(xdut.xsplit.xs54.__o1f_51_6) v(xdut.xsplit.xs54.__o1f_52_6) v(xdut.xsplit.xs54.__o1f_53_6) v(xdut.xsplit.xs54.__o1t_50_6) v(xdut.xsplit.xs54.__o1t_53_6) v(xdut.xsplit.xs76.__ir)
.probe tran v(xdut.xsplit.xs76.__o0f_50_6) v(xdut.xsplit.xs76.__o0f_51_6) v(xdut.xsplit.xs76.__o0f_52_6) v(xdut.xsplit.xs76.__o0f_53_6) v(xdut.xsplit.xs76.__o0t_50_6) v(xdut.xsplit.xs76.__o0t_53_6)
.probe tran v(xdut.xsplit.xs76.__o1f_50_6) v(xdut.xsplit.xs76.__o1f_51_6) v(xdut.xsplit.xs76.__o1f_52_6) v(xdut.xsplit.xs76.__o1f_53_6) v(xdut.xsplit.xs76.__o1t_50_6) v(xdut.xsplit.xs76.__o1t_53_6)
.tran 'TB_TICK' 'TB_STOP'
.end
