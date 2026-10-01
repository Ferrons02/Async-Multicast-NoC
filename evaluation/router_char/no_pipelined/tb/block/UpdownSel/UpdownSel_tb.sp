UpdownSel bubble reshuffled: existing ACTSIM sequences, four-phase feedback
* Prepared once; run tb/run_suite.py UpdownSel from Roulette.
* Technology selected on Caddy: Customized PTM65 TT (65 nm selected by user).
* Model README specifies VDD=1.1 V and SCMOS lambda=32.5 nm.
* Models use BSIM4 level=54, version=4.0, tnom=27 C.
* Retain installed model parameters; known NMOS Acde warning is reported by HSPICE.
* No .ic / .nodeset / UIC: reset must initialize the supplied PRS itself.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=2u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/block/UpdownSel/UpdownSel.sp"
.hdl "tb/block/UpdownSel/UpdownSel_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
* HSPICE treats GND as node 0; no redundant zero-volt source is needed.
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6
+ I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6
+ I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6
+ I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6
+ I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6
+ I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6
+ I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6
+ O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6
+ O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6
+ O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6
+ O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6
+ O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6
+ O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6
+ O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6
+ O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6
+ O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6
+ O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6
+ O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6
+ O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6
+ O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6
+ O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6
+ O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6
+ O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6
+ O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6
+ O1_af_531_6 O1_aa UpdownSel
XENV reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6
+ I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6
+ I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6
+ I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6
+ I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6
+ I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6
+ I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6
+ O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6
+ O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6
+ O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6
+ O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6
+ O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6
+ O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6
+ O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6
+ O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6
+ O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6
+ O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6
+ O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6
+ O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6
+ O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6
+ O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6
+ O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6
+ O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6
+ O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6
+ O1_af_531_6 O1_aa tb_done tb_failed updownsel_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE'
+ STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
.option post=2 probe
.probe tran v(reset) v(I_aa) v(O0_aa) v(O1_aa) v(tb_done) v(tb_failed)
+ v(I_at_50_6) v(I_at_51_6) v(I_at_52_6) v(I_at_53_6) v(I_at_54_6) v(I_at_55_6) v(I_at_56_6)
+ v(I_at_57_6) v(I_at_58_6) v(I_at_59_6) v(I_at_510_6) v(I_at_511_6) v(I_at_512_6) v(I_at_513_6)
+ v(I_at_514_6) v(I_at_515_6) v(I_at_516_6) v(I_at_517_6) v(I_at_518_6) v(I_at_519_6)
+ v(I_at_520_6) v(I_at_521_6) v(I_at_522_6) v(I_at_523_6) v(I_at_524_6) v(I_at_525_6)
+ v(I_at_526_6) v(I_at_527_6) v(I_at_528_6) v(I_at_529_6) v(I_at_530_6) v(I_at_531_6)
+ v(I_af_50_6) v(I_af_51_6) v(I_af_52_6) v(I_af_53_6) v(I_af_54_6) v(I_af_55_6) v(I_af_56_6)
+ v(I_af_57_6) v(I_af_58_6) v(I_af_59_6) v(I_af_510_6) v(I_af_511_6) v(I_af_512_6) v(I_af_513_6)
+ v(I_af_514_6) v(I_af_515_6) v(I_af_516_6) v(I_af_517_6) v(I_af_518_6) v(I_af_519_6)
+ v(I_af_520_6) v(I_af_521_6) v(I_af_522_6) v(I_af_523_6) v(I_af_524_6) v(I_af_525_6)
+ v(I_af_526_6) v(I_af_527_6) v(I_af_528_6) v(I_af_529_6) v(I_af_530_6) v(I_af_531_6)
+ v(O0_at_50_6) v(O0_at_51_6) v(O0_at_52_6) v(O0_at_53_6) v(O0_at_54_6) v(O0_at_55_6)
+ v(O0_at_56_6) v(O0_at_57_6) v(O0_at_58_6) v(O0_at_59_6) v(O0_at_510_6) v(O0_at_511_6)
+ v(O0_at_512_6) v(O0_at_513_6) v(O0_at_514_6) v(O0_at_515_6) v(O0_at_516_6) v(O0_at_517_6)
+ v(O0_at_518_6) v(O0_at_519_6) v(O0_at_520_6) v(O0_at_521_6) v(O0_at_522_6) v(O0_at_523_6)
+ v(O0_at_524_6) v(O0_at_525_6) v(O0_at_526_6) v(O0_at_527_6) v(O0_at_528_6) v(O0_at_529_6)
+ v(O0_at_530_6) v(O0_at_531_6) v(O0_af_50_6) v(O0_af_51_6) v(O0_af_52_6) v(O0_af_53_6)
+ v(O0_af_54_6) v(O0_af_55_6) v(O0_af_56_6) v(O0_af_57_6) v(O0_af_58_6) v(O0_af_59_6)
+ v(O0_af_510_6) v(O0_af_511_6) v(O0_af_512_6) v(O0_af_513_6) v(O0_af_514_6) v(O0_af_515_6)
+ v(O0_af_516_6) v(O0_af_517_6) v(O0_af_518_6) v(O0_af_519_6) v(O0_af_520_6) v(O0_af_521_6)
+ v(O0_af_522_6) v(O0_af_523_6) v(O0_af_524_6) v(O0_af_525_6) v(O0_af_526_6) v(O0_af_527_6)
+ v(O0_af_528_6) v(O0_af_529_6) v(O0_af_530_6) v(O0_af_531_6) v(O1_at_50_6) v(O1_at_51_6)
+ v(O1_at_52_6) v(O1_at_53_6) v(O1_at_54_6) v(O1_at_55_6) v(O1_at_56_6) v(O1_at_57_6)
+ v(O1_at_58_6) v(O1_at_59_6) v(O1_at_510_6) v(O1_at_511_6) v(O1_at_512_6) v(O1_at_513_6)
+ v(O1_at_514_6) v(O1_at_515_6) v(O1_at_516_6) v(O1_at_517_6) v(O1_at_518_6) v(O1_at_519_6)
+ v(O1_at_520_6) v(O1_at_521_6) v(O1_at_522_6) v(O1_at_523_6) v(O1_at_524_6) v(O1_at_525_6)
+ v(O1_at_526_6) v(O1_at_527_6) v(O1_at_528_6) v(O1_at_529_6) v(O1_at_530_6) v(O1_at_531_6)
+ v(O1_af_50_6) v(O1_af_51_6) v(O1_af_52_6) v(O1_af_53_6) v(O1_af_54_6) v(O1_af_55_6)
+ v(O1_af_56_6) v(O1_af_57_6) v(O1_af_58_6) v(O1_af_59_6) v(O1_af_510_6) v(O1_af_511_6)
+ v(O1_af_512_6) v(O1_af_513_6) v(O1_af_514_6) v(O1_af_515_6) v(O1_af_516_6) v(O1_af_517_6)
+ v(O1_af_518_6) v(O1_af_519_6) v(O1_af_520_6) v(O1_af_521_6) v(O1_af_522_6) v(O1_af_523_6)
+ v(O1_af_524_6) v(O1_af_525_6) v(O1_af_526_6) v(O1_af_527_6) v(O1_af_528_6) v(O1_af_529_6)
+ v(O1_af_530_6) v(O1_af_531_6)
+ v(Vdd) i(VPOWER)
.tran 'TB_TICK' 'TB_STOP'
.end
