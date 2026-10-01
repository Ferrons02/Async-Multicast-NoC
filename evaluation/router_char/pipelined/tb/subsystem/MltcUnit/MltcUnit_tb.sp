MltcUnit: direct parsing handshakes and payload PCFB32, functional reference plus payload performance, PTM65 TT
* Concurrent handshake-controlled producers and receivers; full-word golden checking.
* No added fork RC, .ic, .nodeset or UIC.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=0 TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=5u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/subsystem/MltcUnit.sp"
.hdl "tb/subsystem/MltcUnit/MltcUnit_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6
+ I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6
+ I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6
+ I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6
+ I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6
+ I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6
+ I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa C0_at_50_6 C0_at_51_6
+ C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6
+ C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6
+ C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6
+ C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6
+ C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6
+ C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6
+ C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa
+ C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6
+ C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6 C1_at_517_6
+ C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6
+ C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6
+ C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6
+ C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6
+ C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6
+ C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6
+ C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6
+ C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6
+ C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6
+ C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6
+ C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6
+ C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6
+ C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6
+ C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6
+ C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6
+ C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6
+ C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6
+ C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6
+ C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa MltcUnit
XENV reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6
+ I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6
+ I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6
+ I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6
+ I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6
+ I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6
+ I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa C0_at_50_6 C0_at_51_6
+ C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6
+ C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6
+ C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6
+ C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6
+ C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6
+ C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6
+ C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa
+ C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6
+ C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6 C1_at_517_6
+ C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6
+ C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6
+ C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6
+ C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6
+ C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6
+ C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6
+ C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6
+ C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6
+ C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6
+ C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6
+ C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6
+ C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6
+ C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6
+ C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6
+ C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6
+ C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6
+ C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6
+ C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6
+ C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa tb_done tb_failed mltcunit_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE' STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
+ CHECK_START='RESET_HOLD+TB_TICK'
.option post=2 probe
.probe tran v(reset) v(I_at_50_6) v(I_at_51_6) v(I_at_52_6) v(I_at_53_6) v(I_at_54_6) v(I_at_55_6)
+ v(I_at_56_6) v(I_at_57_6) v(I_at_58_6) v(I_at_59_6) v(I_at_510_6) v(I_at_511_6) v(I_at_512_6) v(I_at_513_6)
+ v(I_at_514_6) v(I_at_515_6) v(I_at_516_6) v(I_at_517_6) v(I_at_518_6) v(I_at_519_6) v(I_at_520_6)
+ v(I_at_521_6) v(I_at_522_6) v(I_at_523_6) v(I_at_524_6) v(I_at_525_6) v(I_at_526_6) v(I_at_527_6)
+ v(I_at_528_6) v(I_at_529_6) v(I_at_530_6) v(I_at_531_6) v(I_af_50_6) v(I_af_51_6) v(I_af_52_6) v(I_af_53_6)
+ v(I_af_54_6) v(I_af_55_6) v(I_af_56_6) v(I_af_57_6) v(I_af_58_6) v(I_af_59_6) v(I_af_510_6) v(I_af_511_6)
+ v(I_af_512_6) v(I_af_513_6) v(I_af_514_6) v(I_af_515_6) v(I_af_516_6) v(I_af_517_6) v(I_af_518_6)
+ v(I_af_519_6) v(I_af_520_6) v(I_af_521_6) v(I_af_522_6) v(I_af_523_6) v(I_af_524_6) v(I_af_525_6)
+ v(I_af_526_6) v(I_af_527_6) v(I_af_528_6) v(I_af_529_6) v(I_af_530_6) v(I_af_531_6) v(I_aa) v(C0_at_50_6)
+ v(C0_at_51_6) v(C0_at_52_6) v(C0_at_53_6) v(C0_at_54_6) v(C0_at_55_6) v(C0_at_56_6) v(C0_at_57_6)
+ v(C0_at_58_6) v(C0_at_59_6) v(C0_at_510_6) v(C0_at_511_6) v(C0_at_512_6) v(C0_at_513_6) v(C0_at_514_6)
+ v(C0_at_515_6) v(C0_at_516_6) v(C0_at_517_6) v(C0_at_518_6) v(C0_at_519_6) v(C0_at_520_6) v(C0_at_521_6)
+ v(C0_at_522_6) v(C0_at_523_6) v(C0_at_524_6) v(C0_at_525_6) v(C0_at_526_6) v(C0_at_527_6) v(C0_at_528_6)
+ v(C0_at_529_6) v(C0_at_530_6) v(C0_at_531_6) v(C0_af_50_6) v(C0_af_51_6) v(C0_af_52_6) v(C0_af_53_6)
+ v(C0_af_54_6) v(C0_af_55_6) v(C0_af_56_6) v(C0_af_57_6) v(C0_af_58_6) v(C0_af_59_6) v(C0_af_510_6)
+ v(C0_af_511_6) v(C0_af_512_6) v(C0_af_513_6) v(C0_af_514_6) v(C0_af_515_6) v(C0_af_516_6) v(C0_af_517_6)
+ v(C0_af_518_6) v(C0_af_519_6) v(C0_af_520_6) v(C0_af_521_6) v(C0_af_522_6) v(C0_af_523_6) v(C0_af_524_6)
+ v(C0_af_525_6) v(C0_af_526_6) v(C0_af_527_6) v(C0_af_528_6) v(C0_af_529_6) v(C0_af_530_6) v(C0_af_531_6)
+ v(C0_aa) v(C1_at_50_6) v(C1_at_51_6) v(C1_at_52_6) v(C1_at_53_6) v(C1_at_54_6) v(C1_at_55_6) v(C1_at_56_6)
+ v(C1_at_57_6) v(C1_at_58_6) v(C1_at_59_6) v(C1_at_510_6) v(C1_at_511_6) v(C1_at_512_6) v(C1_at_513_6)
+ v(C1_at_514_6) v(C1_at_515_6) v(C1_at_516_6) v(C1_at_517_6) v(C1_at_518_6) v(C1_at_519_6) v(C1_at_520_6)
+ v(C1_at_521_6) v(C1_at_522_6) v(C1_at_523_6) v(C1_at_524_6) v(C1_at_525_6) v(C1_at_526_6) v(C1_at_527_6)
+ v(C1_at_528_6) v(C1_at_529_6) v(C1_at_530_6) v(C1_at_531_6) v(C1_af_50_6) v(C1_af_51_6) v(C1_af_52_6)
+ v(C1_af_53_6) v(C1_af_54_6) v(C1_af_55_6) v(C1_af_56_6) v(C1_af_57_6) v(C1_af_58_6) v(C1_af_59_6)
+ v(C1_af_510_6) v(C1_af_511_6) v(C1_af_512_6) v(C1_af_513_6) v(C1_af_514_6) v(C1_af_515_6) v(C1_af_516_6)
+ v(C1_af_517_6) v(C1_af_518_6) v(C1_af_519_6) v(C1_af_520_6) v(C1_af_521_6) v(C1_af_522_6) v(C1_af_523_6)
+ v(C1_af_524_6) v(C1_af_525_6) v(C1_af_526_6) v(C1_af_527_6) v(C1_af_528_6) v(C1_af_529_6) v(C1_af_530_6)
+ v(C1_af_531_6) v(C1_aa) v(C2_at_50_6) v(C2_at_51_6) v(C2_at_52_6) v(C2_at_53_6) v(C2_at_54_6) v(C2_at_55_6)
+ v(C2_at_56_6) v(C2_at_57_6) v(C2_at_58_6) v(C2_at_59_6) v(C2_at_510_6) v(C2_at_511_6) v(C2_at_512_6)
+ v(C2_at_513_6) v(C2_at_514_6) v(C2_at_515_6) v(C2_at_516_6) v(C2_at_517_6) v(C2_at_518_6) v(C2_at_519_6)
+ v(C2_at_520_6) v(C2_at_521_6) v(C2_at_522_6) v(C2_at_523_6) v(C2_at_524_6) v(C2_at_525_6) v(C2_at_526_6)
+ v(C2_at_527_6) v(C2_at_528_6) v(C2_at_529_6) v(C2_at_530_6) v(C2_at_531_6) v(C2_af_50_6) v(C2_af_51_6)
+ v(C2_af_52_6) v(C2_af_53_6) v(C2_af_54_6) v(C2_af_55_6) v(C2_af_56_6) v(C2_af_57_6) v(C2_af_58_6)
+ v(C2_af_59_6) v(C2_af_510_6) v(C2_af_511_6) v(C2_af_512_6) v(C2_af_513_6) v(C2_af_514_6) v(C2_af_515_6)
+ v(C2_af_516_6) v(C2_af_517_6) v(C2_af_518_6) v(C2_af_519_6) v(C2_af_520_6) v(C2_af_521_6) v(C2_af_522_6)
+ v(C2_af_523_6) v(C2_af_524_6) v(C2_af_525_6) v(C2_af_526_6) v(C2_af_527_6) v(C2_af_528_6) v(C2_af_529_6)
+ v(C2_af_530_6) v(C2_af_531_6) v(C2_aa) v(C3_at_50_6) v(C3_at_51_6) v(C3_at_52_6) v(C3_at_53_6) v(C3_at_54_6)
+ v(C3_at_55_6) v(C3_at_56_6) v(C3_at_57_6) v(C3_at_58_6) v(C3_at_59_6) v(C3_at_510_6) v(C3_at_511_6)
+ v(C3_at_512_6) v(C3_at_513_6) v(C3_at_514_6) v(C3_at_515_6) v(C3_at_516_6) v(C3_at_517_6) v(C3_at_518_6)
+ v(C3_at_519_6) v(C3_at_520_6) v(C3_at_521_6) v(C3_at_522_6) v(C3_at_523_6) v(C3_at_524_6) v(C3_at_525_6)
+ v(C3_at_526_6) v(C3_at_527_6) v(C3_at_528_6) v(C3_at_529_6) v(C3_at_530_6) v(C3_at_531_6) v(C3_af_50_6)
+ v(C3_af_51_6) v(C3_af_52_6) v(C3_af_53_6) v(C3_af_54_6) v(C3_af_55_6) v(C3_af_56_6) v(C3_af_57_6)
+ v(C3_af_58_6) v(C3_af_59_6) v(C3_af_510_6) v(C3_af_511_6) v(C3_af_512_6) v(C3_af_513_6) v(C3_af_514_6)
+ v(C3_af_515_6) v(C3_af_516_6) v(C3_af_517_6) v(C3_af_518_6) v(C3_af_519_6) v(C3_af_520_6) v(C3_af_521_6)
+ v(C3_af_522_6) v(C3_af_523_6) v(C3_af_524_6) v(C3_af_525_6) v(C3_af_526_6) v(C3_af_527_6) v(C3_af_528_6)
+ v(C3_af_529_6) v(C3_af_530_6) v(C3_af_531_6) v(C3_aa) v(tb_done) v(tb_failed)
+ v(Vdd) i(VPOWER)
.tran 1n 'TB_STOP'
* TICK still forces 10 ps observations after reset; adaptive solver steps resolve all edges.

.probe tran v(XDUT.xbp.e) v(XDUT.xbp.g) v(XDUT.xbp.n) v(XDUT.xbp.n__L__a) v(XDUT.xbp.inv__R__a)
+ v(XDUT.xbp.L_aa) v(XDUT.xbp.R_aa) v(XDUT.xbo0.e) v(XDUT.xbo0.g) v(XDUT.xbo0.n)
+ v(XDUT.xbo0.n__L__a) v(XDUT.xbo0.inv__R__a) v(XDUT.xbo0.L_aa) v(XDUT.xbo0.R_aa) v(XDUT.xbo1.e)
+ v(XDUT.xbo1.g) v(XDUT.xbo1.n) v(XDUT.xbo1.n__L__a) v(XDUT.xbo1.inv__R__a) v(XDUT.xbo1.L_aa)
+ v(XDUT.xbo1.R_aa) v(XDUT.xbo2.e) v(XDUT.xbo2.g) v(XDUT.xbo2.n) v(XDUT.xbo2.n__L__a)
+ v(XDUT.xbo2.inv__R__a) v(XDUT.xbo2.L_aa) v(XDUT.xbo2.R_aa) v(XDUT.xbo3.e) v(XDUT.xbo3.g)
+ v(XDUT.xbo3.n) v(XDUT.xbo3.n__L__a) v(XDUT.xbo3.inv__R__a) v(XDUT.xbo3.L_aa) v(XDUT.xbo3.R_aa)
.end
