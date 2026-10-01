Router: one complete ACTSIM reference round, PTM65 TT raw prs2net baseline
* Concurrent handshake-controlled producers and receivers; full-word golden checking.
* No added fork RC, .ic, .nodeset or UIC.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=20u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/top/Router.sp"
.hdl "tb/top/Router/Router_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset C0i_at_50_6 C0i_at_51_6 C0i_at_52_6 C0i_at_53_6 C0i_at_54_6 C0i_at_55_6 C0i_at_56_6 C0i_at_57_6
+ C0i_at_58_6 C0i_at_59_6 C0i_at_510_6 C0i_at_511_6 C0i_at_512_6 C0i_at_513_6 C0i_at_514_6 C0i_at_515_6
+ C0i_at_516_6 C0i_at_517_6 C0i_at_518_6 C0i_at_519_6 C0i_at_520_6 C0i_at_521_6 C0i_at_522_6 C0i_at_523_6
+ C0i_at_524_6 C0i_at_525_6 C0i_at_526_6 C0i_at_527_6 C0i_at_528_6 C0i_at_529_6 C0i_at_530_6 C0i_at_531_6
+ C0i_af_50_6 C0i_af_51_6 C0i_af_52_6 C0i_af_53_6 C0i_af_54_6 C0i_af_55_6 C0i_af_56_6 C0i_af_57_6 C0i_af_58_6
+ C0i_af_59_6 C0i_af_510_6 C0i_af_511_6 C0i_af_512_6 C0i_af_513_6 C0i_af_514_6 C0i_af_515_6 C0i_af_516_6
+ C0i_af_517_6 C0i_af_518_6 C0i_af_519_6 C0i_af_520_6 C0i_af_521_6 C0i_af_522_6 C0i_af_523_6 C0i_af_524_6
+ C0i_af_525_6 C0i_af_526_6 C0i_af_527_6 C0i_af_528_6 C0i_af_529_6 C0i_af_530_6 C0i_af_531_6 C0i_aa
+ C1i_at_50_6 C1i_at_51_6 C1i_at_52_6 C1i_at_53_6 C1i_at_54_6 C1i_at_55_6 C1i_at_56_6 C1i_at_57_6 C1i_at_58_6
+ C1i_at_59_6 C1i_at_510_6 C1i_at_511_6 C1i_at_512_6 C1i_at_513_6 C1i_at_514_6 C1i_at_515_6 C1i_at_516_6
+ C1i_at_517_6 C1i_at_518_6 C1i_at_519_6 C1i_at_520_6 C1i_at_521_6 C1i_at_522_6 C1i_at_523_6 C1i_at_524_6
+ C1i_at_525_6 C1i_at_526_6 C1i_at_527_6 C1i_at_528_6 C1i_at_529_6 C1i_at_530_6 C1i_at_531_6 C1i_af_50_6
+ C1i_af_51_6 C1i_af_52_6 C1i_af_53_6 C1i_af_54_6 C1i_af_55_6 C1i_af_56_6 C1i_af_57_6 C1i_af_58_6 C1i_af_59_6
+ C1i_af_510_6 C1i_af_511_6 C1i_af_512_6 C1i_af_513_6 C1i_af_514_6 C1i_af_515_6 C1i_af_516_6 C1i_af_517_6
+ C1i_af_518_6 C1i_af_519_6 C1i_af_520_6 C1i_af_521_6 C1i_af_522_6 C1i_af_523_6 C1i_af_524_6 C1i_af_525_6
+ C1i_af_526_6 C1i_af_527_6 C1i_af_528_6 C1i_af_529_6 C1i_af_530_6 C1i_af_531_6 C1i_aa C2i_at_50_6 C2i_at_51_6
+ C2i_at_52_6 C2i_at_53_6 C2i_at_54_6 C2i_at_55_6 C2i_at_56_6 C2i_at_57_6 C2i_at_58_6 C2i_at_59_6 C2i_at_510_6
+ C2i_at_511_6 C2i_at_512_6 C2i_at_513_6 C2i_at_514_6 C2i_at_515_6 C2i_at_516_6 C2i_at_517_6 C2i_at_518_6
+ C2i_at_519_6 C2i_at_520_6 C2i_at_521_6 C2i_at_522_6 C2i_at_523_6 C2i_at_524_6 C2i_at_525_6 C2i_at_526_6
+ C2i_at_527_6 C2i_at_528_6 C2i_at_529_6 C2i_at_530_6 C2i_at_531_6 C2i_af_50_6 C2i_af_51_6 C2i_af_52_6
+ C2i_af_53_6 C2i_af_54_6 C2i_af_55_6 C2i_af_56_6 C2i_af_57_6 C2i_af_58_6 C2i_af_59_6 C2i_af_510_6
+ C2i_af_511_6 C2i_af_512_6 C2i_af_513_6 C2i_af_514_6 C2i_af_515_6 C2i_af_516_6 C2i_af_517_6 C2i_af_518_6
+ C2i_af_519_6 C2i_af_520_6 C2i_af_521_6 C2i_af_522_6 C2i_af_523_6 C2i_af_524_6 C2i_af_525_6 C2i_af_526_6
+ C2i_af_527_6 C2i_af_528_6 C2i_af_529_6 C2i_af_530_6 C2i_af_531_6 C2i_aa C3i_at_50_6 C3i_at_51_6 C3i_at_52_6
+ C3i_at_53_6 C3i_at_54_6 C3i_at_55_6 C3i_at_56_6 C3i_at_57_6 C3i_at_58_6 C3i_at_59_6 C3i_at_510_6
+ C3i_at_511_6 C3i_at_512_6 C3i_at_513_6 C3i_at_514_6 C3i_at_515_6 C3i_at_516_6 C3i_at_517_6 C3i_at_518_6
+ C3i_at_519_6 C3i_at_520_6 C3i_at_521_6 C3i_at_522_6 C3i_at_523_6 C3i_at_524_6 C3i_at_525_6 C3i_at_526_6
+ C3i_at_527_6 C3i_at_528_6 C3i_at_529_6 C3i_at_530_6 C3i_at_531_6 C3i_af_50_6 C3i_af_51_6 C3i_af_52_6
+ C3i_af_53_6 C3i_af_54_6 C3i_af_55_6 C3i_af_56_6 C3i_af_57_6 C3i_af_58_6 C3i_af_59_6 C3i_af_510_6
+ C3i_af_511_6 C3i_af_512_6 C3i_af_513_6 C3i_af_514_6 C3i_af_515_6 C3i_af_516_6 C3i_af_517_6 C3i_af_518_6
+ C3i_af_519_6 C3i_af_520_6 C3i_af_521_6 C3i_af_522_6 C3i_af_523_6 C3i_af_524_6 C3i_af_525_6 C3i_af_526_6
+ C3i_af_527_6 C3i_af_528_6 C3i_af_529_6 C3i_af_530_6 C3i_af_531_6 C3i_aa Pi_at_50_6 Pi_at_51_6 Pi_at_52_6
+ Pi_at_53_6 Pi_at_54_6 Pi_at_55_6 Pi_at_56_6 Pi_at_57_6 Pi_at_58_6 Pi_at_59_6 Pi_at_510_6 Pi_at_511_6
+ Pi_at_512_6 Pi_at_513_6 Pi_at_514_6 Pi_at_515_6 Pi_at_516_6 Pi_at_517_6 Pi_at_518_6 Pi_at_519_6 Pi_at_520_6
+ Pi_at_521_6 Pi_at_522_6 Pi_at_523_6 Pi_at_524_6 Pi_at_525_6 Pi_at_526_6 Pi_at_527_6 Pi_at_528_6 Pi_at_529_6
+ Pi_at_530_6 Pi_at_531_6 Pi_af_50_6 Pi_af_51_6 Pi_af_52_6 Pi_af_53_6 Pi_af_54_6 Pi_af_55_6 Pi_af_56_6
+ Pi_af_57_6 Pi_af_58_6 Pi_af_59_6 Pi_af_510_6 Pi_af_511_6 Pi_af_512_6 Pi_af_513_6 Pi_af_514_6 Pi_af_515_6
+ Pi_af_516_6 Pi_af_517_6 Pi_af_518_6 Pi_af_519_6 Pi_af_520_6 Pi_af_521_6 Pi_af_522_6 Pi_af_523_6 Pi_af_524_6
+ Pi_af_525_6 Pi_af_526_6 Pi_af_527_6 Pi_af_528_6 Pi_af_529_6 Pi_af_530_6 Pi_af_531_6 Pi_aa C0o_at_50_6
+ C0o_at_51_6 C0o_at_52_6 C0o_at_53_6 C0o_at_54_6 C0o_at_55_6 C0o_at_56_6 C0o_at_57_6 C0o_at_58_6 C0o_at_59_6
+ C0o_at_510_6 C0o_at_511_6 C0o_at_512_6 C0o_at_513_6 C0o_at_514_6 C0o_at_515_6 C0o_at_516_6 C0o_at_517_6
+ C0o_at_518_6 C0o_at_519_6 C0o_at_520_6 C0o_at_521_6 C0o_at_522_6 C0o_at_523_6 C0o_at_524_6 C0o_at_525_6
+ C0o_at_526_6 C0o_at_527_6 C0o_at_528_6 C0o_at_529_6 C0o_at_530_6 C0o_at_531_6 C0o_af_50_6 C0o_af_51_6
+ C0o_af_52_6 C0o_af_53_6 C0o_af_54_6 C0o_af_55_6 C0o_af_56_6 C0o_af_57_6 C0o_af_58_6 C0o_af_59_6 C0o_af_510_6
+ C0o_af_511_6 C0o_af_512_6 C0o_af_513_6 C0o_af_514_6 C0o_af_515_6 C0o_af_516_6 C0o_af_517_6 C0o_af_518_6
+ C0o_af_519_6 C0o_af_520_6 C0o_af_521_6 C0o_af_522_6 C0o_af_523_6 C0o_af_524_6 C0o_af_525_6 C0o_af_526_6
+ C0o_af_527_6 C0o_af_528_6 C0o_af_529_6 C0o_af_530_6 C0o_af_531_6 C0o_aa C1o_at_50_6 C1o_at_51_6 C1o_at_52_6
+ C1o_at_53_6 C1o_at_54_6 C1o_at_55_6 C1o_at_56_6 C1o_at_57_6 C1o_at_58_6 C1o_at_59_6 C1o_at_510_6
+ C1o_at_511_6 C1o_at_512_6 C1o_at_513_6 C1o_at_514_6 C1o_at_515_6 C1o_at_516_6 C1o_at_517_6 C1o_at_518_6
+ C1o_at_519_6 C1o_at_520_6 C1o_at_521_6 C1o_at_522_6 C1o_at_523_6 C1o_at_524_6 C1o_at_525_6 C1o_at_526_6
+ C1o_at_527_6 C1o_at_528_6 C1o_at_529_6 C1o_at_530_6 C1o_at_531_6 C1o_af_50_6 C1o_af_51_6 C1o_af_52_6
+ C1o_af_53_6 C1o_af_54_6 C1o_af_55_6 C1o_af_56_6 C1o_af_57_6 C1o_af_58_6 C1o_af_59_6 C1o_af_510_6
+ C1o_af_511_6 C1o_af_512_6 C1o_af_513_6 C1o_af_514_6 C1o_af_515_6 C1o_af_516_6 C1o_af_517_6 C1o_af_518_6
+ C1o_af_519_6 C1o_af_520_6 C1o_af_521_6 C1o_af_522_6 C1o_af_523_6 C1o_af_524_6 C1o_af_525_6 C1o_af_526_6
+ C1o_af_527_6 C1o_af_528_6 C1o_af_529_6 C1o_af_530_6 C1o_af_531_6 C1o_aa C2o_at_50_6 C2o_at_51_6 C2o_at_52_6
+ C2o_at_53_6 C2o_at_54_6 C2o_at_55_6 C2o_at_56_6 C2o_at_57_6 C2o_at_58_6 C2o_at_59_6 C2o_at_510_6
+ C2o_at_511_6 C2o_at_512_6 C2o_at_513_6 C2o_at_514_6 C2o_at_515_6 C2o_at_516_6 C2o_at_517_6 C2o_at_518_6
+ C2o_at_519_6 C2o_at_520_6 C2o_at_521_6 C2o_at_522_6 C2o_at_523_6 C2o_at_524_6 C2o_at_525_6 C2o_at_526_6
+ C2o_at_527_6 C2o_at_528_6 C2o_at_529_6 C2o_at_530_6 C2o_at_531_6 C2o_af_50_6 C2o_af_51_6 C2o_af_52_6
+ C2o_af_53_6 C2o_af_54_6 C2o_af_55_6 C2o_af_56_6 C2o_af_57_6 C2o_af_58_6 C2o_af_59_6 C2o_af_510_6
+ C2o_af_511_6 C2o_af_512_6 C2o_af_513_6 C2o_af_514_6 C2o_af_515_6 C2o_af_516_6 C2o_af_517_6 C2o_af_518_6
+ C2o_af_519_6 C2o_af_520_6 C2o_af_521_6 C2o_af_522_6 C2o_af_523_6 C2o_af_524_6 C2o_af_525_6 C2o_af_526_6
+ C2o_af_527_6 C2o_af_528_6 C2o_af_529_6 C2o_af_530_6 C2o_af_531_6 C2o_aa C3o_at_50_6 C3o_at_51_6 C3o_at_52_6
+ C3o_at_53_6 C3o_at_54_6 C3o_at_55_6 C3o_at_56_6 C3o_at_57_6 C3o_at_58_6 C3o_at_59_6 C3o_at_510_6
+ C3o_at_511_6 C3o_at_512_6 C3o_at_513_6 C3o_at_514_6 C3o_at_515_6 C3o_at_516_6 C3o_at_517_6 C3o_at_518_6
+ C3o_at_519_6 C3o_at_520_6 C3o_at_521_6 C3o_at_522_6 C3o_at_523_6 C3o_at_524_6 C3o_at_525_6 C3o_at_526_6
+ C3o_at_527_6 C3o_at_528_6 C3o_at_529_6 C3o_at_530_6 C3o_at_531_6 C3o_af_50_6 C3o_af_51_6 C3o_af_52_6
+ C3o_af_53_6 C3o_af_54_6 C3o_af_55_6 C3o_af_56_6 C3o_af_57_6 C3o_af_58_6 C3o_af_59_6 C3o_af_510_6
+ C3o_af_511_6 C3o_af_512_6 C3o_af_513_6 C3o_af_514_6 C3o_af_515_6 C3o_af_516_6 C3o_af_517_6 C3o_af_518_6
+ C3o_af_519_6 C3o_af_520_6 C3o_af_521_6 C3o_af_522_6 C3o_af_523_6 C3o_af_524_6 C3o_af_525_6 C3o_af_526_6
+ C3o_af_527_6 C3o_af_528_6 C3o_af_529_6 C3o_af_530_6 C3o_af_531_6 C3o_aa Po_at_50_6 Po_at_51_6 Po_at_52_6
+ Po_at_53_6 Po_at_54_6 Po_at_55_6 Po_at_56_6 Po_at_57_6 Po_at_58_6 Po_at_59_6 Po_at_510_6 Po_at_511_6
+ Po_at_512_6 Po_at_513_6 Po_at_514_6 Po_at_515_6 Po_at_516_6 Po_at_517_6 Po_at_518_6 Po_at_519_6 Po_at_520_6
+ Po_at_521_6 Po_at_522_6 Po_at_523_6 Po_at_524_6 Po_at_525_6 Po_at_526_6 Po_at_527_6 Po_at_528_6 Po_at_529_6
+ Po_at_530_6 Po_at_531_6 Po_af_50_6 Po_af_51_6 Po_af_52_6 Po_af_53_6 Po_af_54_6 Po_af_55_6 Po_af_56_6
+ Po_af_57_6 Po_af_58_6 Po_af_59_6 Po_af_510_6 Po_af_511_6 Po_af_512_6 Po_af_513_6 Po_af_514_6 Po_af_515_6
+ Po_af_516_6 Po_af_517_6 Po_af_518_6 Po_af_519_6 Po_af_520_6 Po_af_521_6 Po_af_522_6 Po_af_523_6 Po_af_524_6
+ Po_af_525_6 Po_af_526_6 Po_af_527_6 Po_af_528_6 Po_af_529_6 Po_af_530_6 Po_af_531_6 Po_aa Router
XENV reset C0i_at_50_6 C0i_at_51_6 C0i_at_52_6 C0i_at_53_6 C0i_at_54_6 C0i_at_55_6 C0i_at_56_6 C0i_at_57_6
+ C0i_at_58_6 C0i_at_59_6 C0i_at_510_6 C0i_at_511_6 C0i_at_512_6 C0i_at_513_6 C0i_at_514_6 C0i_at_515_6
+ C0i_at_516_6 C0i_at_517_6 C0i_at_518_6 C0i_at_519_6 C0i_at_520_6 C0i_at_521_6 C0i_at_522_6 C0i_at_523_6
+ C0i_at_524_6 C0i_at_525_6 C0i_at_526_6 C0i_at_527_6 C0i_at_528_6 C0i_at_529_6 C0i_at_530_6 C0i_at_531_6
+ C0i_af_50_6 C0i_af_51_6 C0i_af_52_6 C0i_af_53_6 C0i_af_54_6 C0i_af_55_6 C0i_af_56_6 C0i_af_57_6 C0i_af_58_6
+ C0i_af_59_6 C0i_af_510_6 C0i_af_511_6 C0i_af_512_6 C0i_af_513_6 C0i_af_514_6 C0i_af_515_6 C0i_af_516_6
+ C0i_af_517_6 C0i_af_518_6 C0i_af_519_6 C0i_af_520_6 C0i_af_521_6 C0i_af_522_6 C0i_af_523_6 C0i_af_524_6
+ C0i_af_525_6 C0i_af_526_6 C0i_af_527_6 C0i_af_528_6 C0i_af_529_6 C0i_af_530_6 C0i_af_531_6 C0i_aa
+ C1i_at_50_6 C1i_at_51_6 C1i_at_52_6 C1i_at_53_6 C1i_at_54_6 C1i_at_55_6 C1i_at_56_6 C1i_at_57_6 C1i_at_58_6
+ C1i_at_59_6 C1i_at_510_6 C1i_at_511_6 C1i_at_512_6 C1i_at_513_6 C1i_at_514_6 C1i_at_515_6 C1i_at_516_6
+ C1i_at_517_6 C1i_at_518_6 C1i_at_519_6 C1i_at_520_6 C1i_at_521_6 C1i_at_522_6 C1i_at_523_6 C1i_at_524_6
+ C1i_at_525_6 C1i_at_526_6 C1i_at_527_6 C1i_at_528_6 C1i_at_529_6 C1i_at_530_6 C1i_at_531_6 C1i_af_50_6
+ C1i_af_51_6 C1i_af_52_6 C1i_af_53_6 C1i_af_54_6 C1i_af_55_6 C1i_af_56_6 C1i_af_57_6 C1i_af_58_6 C1i_af_59_6
+ C1i_af_510_6 C1i_af_511_6 C1i_af_512_6 C1i_af_513_6 C1i_af_514_6 C1i_af_515_6 C1i_af_516_6 C1i_af_517_6
+ C1i_af_518_6 C1i_af_519_6 C1i_af_520_6 C1i_af_521_6 C1i_af_522_6 C1i_af_523_6 C1i_af_524_6 C1i_af_525_6
+ C1i_af_526_6 C1i_af_527_6 C1i_af_528_6 C1i_af_529_6 C1i_af_530_6 C1i_af_531_6 C1i_aa C2i_at_50_6 C2i_at_51_6
+ C2i_at_52_6 C2i_at_53_6 C2i_at_54_6 C2i_at_55_6 C2i_at_56_6 C2i_at_57_6 C2i_at_58_6 C2i_at_59_6 C2i_at_510_6
+ C2i_at_511_6 C2i_at_512_6 C2i_at_513_6 C2i_at_514_6 C2i_at_515_6 C2i_at_516_6 C2i_at_517_6 C2i_at_518_6
+ C2i_at_519_6 C2i_at_520_6 C2i_at_521_6 C2i_at_522_6 C2i_at_523_6 C2i_at_524_6 C2i_at_525_6 C2i_at_526_6
+ C2i_at_527_6 C2i_at_528_6 C2i_at_529_6 C2i_at_530_6 C2i_at_531_6 C2i_af_50_6 C2i_af_51_6 C2i_af_52_6
+ C2i_af_53_6 C2i_af_54_6 C2i_af_55_6 C2i_af_56_6 C2i_af_57_6 C2i_af_58_6 C2i_af_59_6 C2i_af_510_6
+ C2i_af_511_6 C2i_af_512_6 C2i_af_513_6 C2i_af_514_6 C2i_af_515_6 C2i_af_516_6 C2i_af_517_6 C2i_af_518_6
+ C2i_af_519_6 C2i_af_520_6 C2i_af_521_6 C2i_af_522_6 C2i_af_523_6 C2i_af_524_6 C2i_af_525_6 C2i_af_526_6
+ C2i_af_527_6 C2i_af_528_6 C2i_af_529_6 C2i_af_530_6 C2i_af_531_6 C2i_aa C3i_at_50_6 C3i_at_51_6 C3i_at_52_6
+ C3i_at_53_6 C3i_at_54_6 C3i_at_55_6 C3i_at_56_6 C3i_at_57_6 C3i_at_58_6 C3i_at_59_6 C3i_at_510_6
+ C3i_at_511_6 C3i_at_512_6 C3i_at_513_6 C3i_at_514_6 C3i_at_515_6 C3i_at_516_6 C3i_at_517_6 C3i_at_518_6
+ C3i_at_519_6 C3i_at_520_6 C3i_at_521_6 C3i_at_522_6 C3i_at_523_6 C3i_at_524_6 C3i_at_525_6 C3i_at_526_6
+ C3i_at_527_6 C3i_at_528_6 C3i_at_529_6 C3i_at_530_6 C3i_at_531_6 C3i_af_50_6 C3i_af_51_6 C3i_af_52_6
+ C3i_af_53_6 C3i_af_54_6 C3i_af_55_6 C3i_af_56_6 C3i_af_57_6 C3i_af_58_6 C3i_af_59_6 C3i_af_510_6
+ C3i_af_511_6 C3i_af_512_6 C3i_af_513_6 C3i_af_514_6 C3i_af_515_6 C3i_af_516_6 C3i_af_517_6 C3i_af_518_6
+ C3i_af_519_6 C3i_af_520_6 C3i_af_521_6 C3i_af_522_6 C3i_af_523_6 C3i_af_524_6 C3i_af_525_6 C3i_af_526_6
+ C3i_af_527_6 C3i_af_528_6 C3i_af_529_6 C3i_af_530_6 C3i_af_531_6 C3i_aa Pi_at_50_6 Pi_at_51_6 Pi_at_52_6
+ Pi_at_53_6 Pi_at_54_6 Pi_at_55_6 Pi_at_56_6 Pi_at_57_6 Pi_at_58_6 Pi_at_59_6 Pi_at_510_6 Pi_at_511_6
+ Pi_at_512_6 Pi_at_513_6 Pi_at_514_6 Pi_at_515_6 Pi_at_516_6 Pi_at_517_6 Pi_at_518_6 Pi_at_519_6 Pi_at_520_6
+ Pi_at_521_6 Pi_at_522_6 Pi_at_523_6 Pi_at_524_6 Pi_at_525_6 Pi_at_526_6 Pi_at_527_6 Pi_at_528_6 Pi_at_529_6
+ Pi_at_530_6 Pi_at_531_6 Pi_af_50_6 Pi_af_51_6 Pi_af_52_6 Pi_af_53_6 Pi_af_54_6 Pi_af_55_6 Pi_af_56_6
+ Pi_af_57_6 Pi_af_58_6 Pi_af_59_6 Pi_af_510_6 Pi_af_511_6 Pi_af_512_6 Pi_af_513_6 Pi_af_514_6 Pi_af_515_6
+ Pi_af_516_6 Pi_af_517_6 Pi_af_518_6 Pi_af_519_6 Pi_af_520_6 Pi_af_521_6 Pi_af_522_6 Pi_af_523_6 Pi_af_524_6
+ Pi_af_525_6 Pi_af_526_6 Pi_af_527_6 Pi_af_528_6 Pi_af_529_6 Pi_af_530_6 Pi_af_531_6 Pi_aa C0o_at_50_6
+ C0o_at_51_6 C0o_at_52_6 C0o_at_53_6 C0o_at_54_6 C0o_at_55_6 C0o_at_56_6 C0o_at_57_6 C0o_at_58_6 C0o_at_59_6
+ C0o_at_510_6 C0o_at_511_6 C0o_at_512_6 C0o_at_513_6 C0o_at_514_6 C0o_at_515_6 C0o_at_516_6 C0o_at_517_6
+ C0o_at_518_6 C0o_at_519_6 C0o_at_520_6 C0o_at_521_6 C0o_at_522_6 C0o_at_523_6 C0o_at_524_6 C0o_at_525_6
+ C0o_at_526_6 C0o_at_527_6 C0o_at_528_6 C0o_at_529_6 C0o_at_530_6 C0o_at_531_6 C0o_af_50_6 C0o_af_51_6
+ C0o_af_52_6 C0o_af_53_6 C0o_af_54_6 C0o_af_55_6 C0o_af_56_6 C0o_af_57_6 C0o_af_58_6 C0o_af_59_6 C0o_af_510_6
+ C0o_af_511_6 C0o_af_512_6 C0o_af_513_6 C0o_af_514_6 C0o_af_515_6 C0o_af_516_6 C0o_af_517_6 C0o_af_518_6
+ C0o_af_519_6 C0o_af_520_6 C0o_af_521_6 C0o_af_522_6 C0o_af_523_6 C0o_af_524_6 C0o_af_525_6 C0o_af_526_6
+ C0o_af_527_6 C0o_af_528_6 C0o_af_529_6 C0o_af_530_6 C0o_af_531_6 C0o_aa C1o_at_50_6 C1o_at_51_6 C1o_at_52_6
+ C1o_at_53_6 C1o_at_54_6 C1o_at_55_6 C1o_at_56_6 C1o_at_57_6 C1o_at_58_6 C1o_at_59_6 C1o_at_510_6
+ C1o_at_511_6 C1o_at_512_6 C1o_at_513_6 C1o_at_514_6 C1o_at_515_6 C1o_at_516_6 C1o_at_517_6 C1o_at_518_6
+ C1o_at_519_6 C1o_at_520_6 C1o_at_521_6 C1o_at_522_6 C1o_at_523_6 C1o_at_524_6 C1o_at_525_6 C1o_at_526_6
+ C1o_at_527_6 C1o_at_528_6 C1o_at_529_6 C1o_at_530_6 C1o_at_531_6 C1o_af_50_6 C1o_af_51_6 C1o_af_52_6
+ C1o_af_53_6 C1o_af_54_6 C1o_af_55_6 C1o_af_56_6 C1o_af_57_6 C1o_af_58_6 C1o_af_59_6 C1o_af_510_6
+ C1o_af_511_6 C1o_af_512_6 C1o_af_513_6 C1o_af_514_6 C1o_af_515_6 C1o_af_516_6 C1o_af_517_6 C1o_af_518_6
+ C1o_af_519_6 C1o_af_520_6 C1o_af_521_6 C1o_af_522_6 C1o_af_523_6 C1o_af_524_6 C1o_af_525_6 C1o_af_526_6
+ C1o_af_527_6 C1o_af_528_6 C1o_af_529_6 C1o_af_530_6 C1o_af_531_6 C1o_aa C2o_at_50_6 C2o_at_51_6 C2o_at_52_6
+ C2o_at_53_6 C2o_at_54_6 C2o_at_55_6 C2o_at_56_6 C2o_at_57_6 C2o_at_58_6 C2o_at_59_6 C2o_at_510_6
+ C2o_at_511_6 C2o_at_512_6 C2o_at_513_6 C2o_at_514_6 C2o_at_515_6 C2o_at_516_6 C2o_at_517_6 C2o_at_518_6
+ C2o_at_519_6 C2o_at_520_6 C2o_at_521_6 C2o_at_522_6 C2o_at_523_6 C2o_at_524_6 C2o_at_525_6 C2o_at_526_6
+ C2o_at_527_6 C2o_at_528_6 C2o_at_529_6 C2o_at_530_6 C2o_at_531_6 C2o_af_50_6 C2o_af_51_6 C2o_af_52_6
+ C2o_af_53_6 C2o_af_54_6 C2o_af_55_6 C2o_af_56_6 C2o_af_57_6 C2o_af_58_6 C2o_af_59_6 C2o_af_510_6
+ C2o_af_511_6 C2o_af_512_6 C2o_af_513_6 C2o_af_514_6 C2o_af_515_6 C2o_af_516_6 C2o_af_517_6 C2o_af_518_6
+ C2o_af_519_6 C2o_af_520_6 C2o_af_521_6 C2o_af_522_6 C2o_af_523_6 C2o_af_524_6 C2o_af_525_6 C2o_af_526_6
+ C2o_af_527_6 C2o_af_528_6 C2o_af_529_6 C2o_af_530_6 C2o_af_531_6 C2o_aa C3o_at_50_6 C3o_at_51_6 C3o_at_52_6
+ C3o_at_53_6 C3o_at_54_6 C3o_at_55_6 C3o_at_56_6 C3o_at_57_6 C3o_at_58_6 C3o_at_59_6 C3o_at_510_6
+ C3o_at_511_6 C3o_at_512_6 C3o_at_513_6 C3o_at_514_6 C3o_at_515_6 C3o_at_516_6 C3o_at_517_6 C3o_at_518_6
+ C3o_at_519_6 C3o_at_520_6 C3o_at_521_6 C3o_at_522_6 C3o_at_523_6 C3o_at_524_6 C3o_at_525_6 C3o_at_526_6
+ C3o_at_527_6 C3o_at_528_6 C3o_at_529_6 C3o_at_530_6 C3o_at_531_6 C3o_af_50_6 C3o_af_51_6 C3o_af_52_6
+ C3o_af_53_6 C3o_af_54_6 C3o_af_55_6 C3o_af_56_6 C3o_af_57_6 C3o_af_58_6 C3o_af_59_6 C3o_af_510_6
+ C3o_af_511_6 C3o_af_512_6 C3o_af_513_6 C3o_af_514_6 C3o_af_515_6 C3o_af_516_6 C3o_af_517_6 C3o_af_518_6
+ C3o_af_519_6 C3o_af_520_6 C3o_af_521_6 C3o_af_522_6 C3o_af_523_6 C3o_af_524_6 C3o_af_525_6 C3o_af_526_6
+ C3o_af_527_6 C3o_af_528_6 C3o_af_529_6 C3o_af_530_6 C3o_af_531_6 C3o_aa Po_at_50_6 Po_at_51_6 Po_at_52_6
+ Po_at_53_6 Po_at_54_6 Po_at_55_6 Po_at_56_6 Po_at_57_6 Po_at_58_6 Po_at_59_6 Po_at_510_6 Po_at_511_6
+ Po_at_512_6 Po_at_513_6 Po_at_514_6 Po_at_515_6 Po_at_516_6 Po_at_517_6 Po_at_518_6 Po_at_519_6 Po_at_520_6
+ Po_at_521_6 Po_at_522_6 Po_at_523_6 Po_at_524_6 Po_at_525_6 Po_at_526_6 Po_at_527_6 Po_at_528_6 Po_at_529_6
+ Po_at_530_6 Po_at_531_6 Po_af_50_6 Po_af_51_6 Po_af_52_6 Po_af_53_6 Po_af_54_6 Po_af_55_6 Po_af_56_6
+ Po_af_57_6 Po_af_58_6 Po_af_59_6 Po_af_510_6 Po_af_511_6 Po_af_512_6 Po_af_513_6 Po_af_514_6 Po_af_515_6
+ Po_af_516_6 Po_af_517_6 Po_af_518_6 Po_af_519_6 Po_af_520_6 Po_af_521_6 Po_af_522_6 Po_af_523_6 Po_af_524_6
+ Po_af_525_6 Po_af_526_6 Po_af_527_6 Po_af_528_6 Po_af_529_6 Po_af_530_6 Po_af_531_6 Po_aa tb_done tb_failed
+ router_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE' STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
+ CHECK_START='RESET_HOLD+TB_TICK'
.option post=2 probe
.probe tran v(reset) v(C0i_at_50_6) v(C0i_at_51_6) v(C0i_at_52_6) v(C0i_at_53_6) v(C0i_at_54_6) v(C0i_at_55_6)
+ v(C0i_at_56_6) v(C0i_at_57_6) v(C0i_at_58_6) v(C0i_at_59_6) v(C0i_at_510_6) v(C0i_at_511_6) v(C0i_at_512_6)
+ v(C0i_at_513_6) v(C0i_at_514_6) v(C0i_at_515_6) v(C0i_at_516_6) v(C0i_at_517_6) v(C0i_at_518_6)
+ v(C0i_at_519_6) v(C0i_at_520_6) v(C0i_at_521_6) v(C0i_at_522_6) v(C0i_at_523_6) v(C0i_at_524_6)
+ v(C0i_at_525_6) v(C0i_at_526_6) v(C0i_at_527_6) v(C0i_at_528_6) v(C0i_at_529_6) v(C0i_at_530_6)
+ v(C0i_at_531_6) v(C0i_af_50_6) v(C0i_af_51_6) v(C0i_af_52_6) v(C0i_af_53_6) v(C0i_af_54_6) v(C0i_af_55_6)
+ v(C0i_af_56_6) v(C0i_af_57_6) v(C0i_af_58_6) v(C0i_af_59_6) v(C0i_af_510_6) v(C0i_af_511_6) v(C0i_af_512_6)
+ v(C0i_af_513_6) v(C0i_af_514_6) v(C0i_af_515_6) v(C0i_af_516_6) v(C0i_af_517_6) v(C0i_af_518_6)
+ v(C0i_af_519_6) v(C0i_af_520_6) v(C0i_af_521_6) v(C0i_af_522_6) v(C0i_af_523_6) v(C0i_af_524_6)
+ v(C0i_af_525_6) v(C0i_af_526_6) v(C0i_af_527_6) v(C0i_af_528_6) v(C0i_af_529_6) v(C0i_af_530_6)
+ v(C0i_af_531_6) v(C0i_aa) v(C1i_at_50_6) v(C1i_at_51_6) v(C1i_at_52_6) v(C1i_at_53_6) v(C1i_at_54_6)
+ v(C1i_at_55_6) v(C1i_at_56_6) v(C1i_at_57_6) v(C1i_at_58_6) v(C1i_at_59_6) v(C1i_at_510_6) v(C1i_at_511_6)
+ v(C1i_at_512_6) v(C1i_at_513_6) v(C1i_at_514_6) v(C1i_at_515_6) v(C1i_at_516_6) v(C1i_at_517_6)
+ v(C1i_at_518_6) v(C1i_at_519_6) v(C1i_at_520_6) v(C1i_at_521_6) v(C1i_at_522_6) v(C1i_at_523_6)
+ v(C1i_at_524_6) v(C1i_at_525_6) v(C1i_at_526_6) v(C1i_at_527_6) v(C1i_at_528_6) v(C1i_at_529_6)
+ v(C1i_at_530_6) v(C1i_at_531_6) v(C1i_af_50_6) v(C1i_af_51_6) v(C1i_af_52_6) v(C1i_af_53_6) v(C1i_af_54_6)
+ v(C1i_af_55_6) v(C1i_af_56_6) v(C1i_af_57_6) v(C1i_af_58_6) v(C1i_af_59_6) v(C1i_af_510_6) v(C1i_af_511_6)
+ v(C1i_af_512_6) v(C1i_af_513_6) v(C1i_af_514_6) v(C1i_af_515_6) v(C1i_af_516_6) v(C1i_af_517_6)
+ v(C1i_af_518_6) v(C1i_af_519_6) v(C1i_af_520_6) v(C1i_af_521_6) v(C1i_af_522_6) v(C1i_af_523_6)
+ v(C1i_af_524_6) v(C1i_af_525_6) v(C1i_af_526_6) v(C1i_af_527_6) v(C1i_af_528_6) v(C1i_af_529_6)
+ v(C1i_af_530_6) v(C1i_af_531_6) v(C1i_aa) v(C2i_at_50_6) v(C2i_at_51_6) v(C2i_at_52_6) v(C2i_at_53_6)
+ v(C2i_at_54_6) v(C2i_at_55_6) v(C2i_at_56_6) v(C2i_at_57_6) v(C2i_at_58_6) v(C2i_at_59_6) v(C2i_at_510_6)
+ v(C2i_at_511_6) v(C2i_at_512_6) v(C2i_at_513_6) v(C2i_at_514_6) v(C2i_at_515_6) v(C2i_at_516_6)
+ v(C2i_at_517_6) v(C2i_at_518_6) v(C2i_at_519_6) v(C2i_at_520_6) v(C2i_at_521_6) v(C2i_at_522_6)
+ v(C2i_at_523_6) v(C2i_at_524_6) v(C2i_at_525_6) v(C2i_at_526_6) v(C2i_at_527_6) v(C2i_at_528_6)
+ v(C2i_at_529_6) v(C2i_at_530_6) v(C2i_at_531_6) v(C2i_af_50_6) v(C2i_af_51_6) v(C2i_af_52_6) v(C2i_af_53_6)
+ v(C2i_af_54_6) v(C2i_af_55_6) v(C2i_af_56_6) v(C2i_af_57_6) v(C2i_af_58_6) v(C2i_af_59_6) v(C2i_af_510_6)
+ v(C2i_af_511_6) v(C2i_af_512_6) v(C2i_af_513_6) v(C2i_af_514_6) v(C2i_af_515_6) v(C2i_af_516_6)
+ v(C2i_af_517_6) v(C2i_af_518_6) v(C2i_af_519_6) v(C2i_af_520_6) v(C2i_af_521_6) v(C2i_af_522_6)
+ v(C2i_af_523_6) v(C2i_af_524_6) v(C2i_af_525_6) v(C2i_af_526_6) v(C2i_af_527_6) v(C2i_af_528_6)
+ v(C2i_af_529_6) v(C2i_af_530_6) v(C2i_af_531_6) v(C2i_aa) v(C3i_at_50_6) v(C3i_at_51_6) v(C3i_at_52_6)
+ v(C3i_at_53_6) v(C3i_at_54_6) v(C3i_at_55_6) v(C3i_at_56_6) v(C3i_at_57_6) v(C3i_at_58_6) v(C3i_at_59_6)
+ v(C3i_at_510_6) v(C3i_at_511_6) v(C3i_at_512_6) v(C3i_at_513_6) v(C3i_at_514_6) v(C3i_at_515_6)
+ v(C3i_at_516_6) v(C3i_at_517_6) v(C3i_at_518_6) v(C3i_at_519_6) v(C3i_at_520_6) v(C3i_at_521_6)
+ v(C3i_at_522_6) v(C3i_at_523_6) v(C3i_at_524_6) v(C3i_at_525_6) v(C3i_at_526_6) v(C3i_at_527_6)
+ v(C3i_at_528_6) v(C3i_at_529_6) v(C3i_at_530_6) v(C3i_at_531_6) v(C3i_af_50_6) v(C3i_af_51_6) v(C3i_af_52_6)
+ v(C3i_af_53_6) v(C3i_af_54_6) v(C3i_af_55_6) v(C3i_af_56_6) v(C3i_af_57_6) v(C3i_af_58_6) v(C3i_af_59_6)
+ v(C3i_af_510_6) v(C3i_af_511_6) v(C3i_af_512_6) v(C3i_af_513_6) v(C3i_af_514_6) v(C3i_af_515_6)
+ v(C3i_af_516_6) v(C3i_af_517_6) v(C3i_af_518_6) v(C3i_af_519_6) v(C3i_af_520_6) v(C3i_af_521_6)
+ v(C3i_af_522_6) v(C3i_af_523_6) v(C3i_af_524_6) v(C3i_af_525_6) v(C3i_af_526_6) v(C3i_af_527_6)
+ v(C3i_af_528_6) v(C3i_af_529_6) v(C3i_af_530_6) v(C3i_af_531_6) v(C3i_aa) v(Pi_at_50_6) v(Pi_at_51_6)
+ v(Pi_at_52_6) v(Pi_at_53_6) v(Pi_at_54_6) v(Pi_at_55_6) v(Pi_at_56_6) v(Pi_at_57_6) v(Pi_at_58_6)
+ v(Pi_at_59_6) v(Pi_at_510_6) v(Pi_at_511_6) v(Pi_at_512_6) v(Pi_at_513_6) v(Pi_at_514_6) v(Pi_at_515_6)
+ v(Pi_at_516_6) v(Pi_at_517_6) v(Pi_at_518_6) v(Pi_at_519_6) v(Pi_at_520_6) v(Pi_at_521_6) v(Pi_at_522_6)
+ v(Pi_at_523_6) v(Pi_at_524_6) v(Pi_at_525_6) v(Pi_at_526_6) v(Pi_at_527_6) v(Pi_at_528_6) v(Pi_at_529_6)
+ v(Pi_at_530_6) v(Pi_at_531_6) v(Pi_af_50_6) v(Pi_af_51_6) v(Pi_af_52_6) v(Pi_af_53_6) v(Pi_af_54_6)
+ v(Pi_af_55_6) v(Pi_af_56_6) v(Pi_af_57_6) v(Pi_af_58_6) v(Pi_af_59_6) v(Pi_af_510_6) v(Pi_af_511_6)
+ v(Pi_af_512_6) v(Pi_af_513_6) v(Pi_af_514_6) v(Pi_af_515_6) v(Pi_af_516_6) v(Pi_af_517_6) v(Pi_af_518_6)
+ v(Pi_af_519_6) v(Pi_af_520_6) v(Pi_af_521_6) v(Pi_af_522_6) v(Pi_af_523_6) v(Pi_af_524_6) v(Pi_af_525_6)
+ v(Pi_af_526_6) v(Pi_af_527_6) v(Pi_af_528_6) v(Pi_af_529_6) v(Pi_af_530_6) v(Pi_af_531_6) v(Pi_aa)
+ v(C0o_at_50_6) v(C0o_at_51_6) v(C0o_at_52_6) v(C0o_at_53_6) v(C0o_at_54_6) v(C0o_at_55_6) v(C0o_at_56_6)
+ v(C0o_at_57_6) v(C0o_at_58_6) v(C0o_at_59_6) v(C0o_at_510_6) v(C0o_at_511_6) v(C0o_at_512_6) v(C0o_at_513_6)
+ v(C0o_at_514_6) v(C0o_at_515_6) v(C0o_at_516_6) v(C0o_at_517_6) v(C0o_at_518_6) v(C0o_at_519_6)
+ v(C0o_at_520_6) v(C0o_at_521_6) v(C0o_at_522_6) v(C0o_at_523_6) v(C0o_at_524_6) v(C0o_at_525_6)
+ v(C0o_at_526_6) v(C0o_at_527_6) v(C0o_at_528_6) v(C0o_at_529_6) v(C0o_at_530_6) v(C0o_at_531_6)
+ v(C0o_af_50_6) v(C0o_af_51_6) v(C0o_af_52_6) v(C0o_af_53_6) v(C0o_af_54_6) v(C0o_af_55_6) v(C0o_af_56_6)
+ v(C0o_af_57_6) v(C0o_af_58_6) v(C0o_af_59_6) v(C0o_af_510_6) v(C0o_af_511_6) v(C0o_af_512_6) v(C0o_af_513_6)
+ v(C0o_af_514_6) v(C0o_af_515_6) v(C0o_af_516_6) v(C0o_af_517_6) v(C0o_af_518_6) v(C0o_af_519_6)
+ v(C0o_af_520_6) v(C0o_af_521_6) v(C0o_af_522_6) v(C0o_af_523_6) v(C0o_af_524_6) v(C0o_af_525_6)
+ v(C0o_af_526_6) v(C0o_af_527_6) v(C0o_af_528_6) v(C0o_af_529_6) v(C0o_af_530_6) v(C0o_af_531_6) v(C0o_aa)
+ v(C1o_at_50_6) v(C1o_at_51_6) v(C1o_at_52_6) v(C1o_at_53_6) v(C1o_at_54_6) v(C1o_at_55_6) v(C1o_at_56_6)
+ v(C1o_at_57_6) v(C1o_at_58_6) v(C1o_at_59_6) v(C1o_at_510_6) v(C1o_at_511_6) v(C1o_at_512_6) v(C1o_at_513_6)
+ v(C1o_at_514_6) v(C1o_at_515_6) v(C1o_at_516_6) v(C1o_at_517_6) v(C1o_at_518_6) v(C1o_at_519_6)
+ v(C1o_at_520_6) v(C1o_at_521_6) v(C1o_at_522_6) v(C1o_at_523_6) v(C1o_at_524_6) v(C1o_at_525_6)
+ v(C1o_at_526_6) v(C1o_at_527_6) v(C1o_at_528_6) v(C1o_at_529_6) v(C1o_at_530_6) v(C1o_at_531_6)
+ v(C1o_af_50_6) v(C1o_af_51_6) v(C1o_af_52_6) v(C1o_af_53_6) v(C1o_af_54_6) v(C1o_af_55_6) v(C1o_af_56_6)
+ v(C1o_af_57_6) v(C1o_af_58_6) v(C1o_af_59_6) v(C1o_af_510_6) v(C1o_af_511_6) v(C1o_af_512_6) v(C1o_af_513_6)
+ v(C1o_af_514_6) v(C1o_af_515_6) v(C1o_af_516_6) v(C1o_af_517_6) v(C1o_af_518_6) v(C1o_af_519_6)
+ v(C1o_af_520_6) v(C1o_af_521_6) v(C1o_af_522_6) v(C1o_af_523_6) v(C1o_af_524_6) v(C1o_af_525_6)
+ v(C1o_af_526_6) v(C1o_af_527_6) v(C1o_af_528_6) v(C1o_af_529_6) v(C1o_af_530_6) v(C1o_af_531_6) v(C1o_aa)
+ v(C2o_at_50_6) v(C2o_at_51_6) v(C2o_at_52_6) v(C2o_at_53_6) v(C2o_at_54_6) v(C2o_at_55_6) v(C2o_at_56_6)
+ v(C2o_at_57_6) v(C2o_at_58_6) v(C2o_at_59_6) v(C2o_at_510_6) v(C2o_at_511_6) v(C2o_at_512_6) v(C2o_at_513_6)
+ v(C2o_at_514_6) v(C2o_at_515_6) v(C2o_at_516_6) v(C2o_at_517_6) v(C2o_at_518_6) v(C2o_at_519_6)
+ v(C2o_at_520_6) v(C2o_at_521_6) v(C2o_at_522_6) v(C2o_at_523_6) v(C2o_at_524_6) v(C2o_at_525_6)
+ v(C2o_at_526_6) v(C2o_at_527_6) v(C2o_at_528_6) v(C2o_at_529_6) v(C2o_at_530_6) v(C2o_at_531_6)
+ v(C2o_af_50_6) v(C2o_af_51_6) v(C2o_af_52_6) v(C2o_af_53_6) v(C2o_af_54_6) v(C2o_af_55_6) v(C2o_af_56_6)
+ v(C2o_af_57_6) v(C2o_af_58_6) v(C2o_af_59_6) v(C2o_af_510_6) v(C2o_af_511_6) v(C2o_af_512_6) v(C2o_af_513_6)
+ v(C2o_af_514_6) v(C2o_af_515_6) v(C2o_af_516_6) v(C2o_af_517_6) v(C2o_af_518_6) v(C2o_af_519_6)
+ v(C2o_af_520_6) v(C2o_af_521_6) v(C2o_af_522_6) v(C2o_af_523_6) v(C2o_af_524_6) v(C2o_af_525_6)
+ v(C2o_af_526_6) v(C2o_af_527_6) v(C2o_af_528_6) v(C2o_af_529_6) v(C2o_af_530_6) v(C2o_af_531_6) v(C2o_aa)
+ v(C3o_at_50_6) v(C3o_at_51_6) v(C3o_at_52_6) v(C3o_at_53_6) v(C3o_at_54_6) v(C3o_at_55_6) v(C3o_at_56_6)
+ v(C3o_at_57_6) v(C3o_at_58_6) v(C3o_at_59_6) v(C3o_at_510_6) v(C3o_at_511_6) v(C3o_at_512_6) v(C3o_at_513_6)
+ v(C3o_at_514_6) v(C3o_at_515_6) v(C3o_at_516_6) v(C3o_at_517_6) v(C3o_at_518_6) v(C3o_at_519_6)
+ v(C3o_at_520_6) v(C3o_at_521_6) v(C3o_at_522_6) v(C3o_at_523_6) v(C3o_at_524_6) v(C3o_at_525_6)
+ v(C3o_at_526_6) v(C3o_at_527_6) v(C3o_at_528_6) v(C3o_at_529_6) v(C3o_at_530_6) v(C3o_at_531_6)
+ v(C3o_af_50_6) v(C3o_af_51_6) v(C3o_af_52_6) v(C3o_af_53_6) v(C3o_af_54_6) v(C3o_af_55_6) v(C3o_af_56_6)
+ v(C3o_af_57_6) v(C3o_af_58_6) v(C3o_af_59_6) v(C3o_af_510_6) v(C3o_af_511_6) v(C3o_af_512_6) v(C3o_af_513_6)
+ v(C3o_af_514_6) v(C3o_af_515_6) v(C3o_af_516_6) v(C3o_af_517_6) v(C3o_af_518_6) v(C3o_af_519_6)
+ v(C3o_af_520_6) v(C3o_af_521_6) v(C3o_af_522_6) v(C3o_af_523_6) v(C3o_af_524_6) v(C3o_af_525_6)
+ v(C3o_af_526_6) v(C3o_af_527_6) v(C3o_af_528_6) v(C3o_af_529_6) v(C3o_af_530_6) v(C3o_af_531_6) v(C3o_aa)
+ v(Po_at_50_6) v(Po_at_51_6) v(Po_at_52_6) v(Po_at_53_6) v(Po_at_54_6) v(Po_at_55_6) v(Po_at_56_6)
+ v(Po_at_57_6) v(Po_at_58_6) v(Po_at_59_6) v(Po_at_510_6) v(Po_at_511_6) v(Po_at_512_6) v(Po_at_513_6)
+ v(Po_at_514_6) v(Po_at_515_6) v(Po_at_516_6) v(Po_at_517_6) v(Po_at_518_6) v(Po_at_519_6) v(Po_at_520_6)
+ v(Po_at_521_6) v(Po_at_522_6) v(Po_at_523_6) v(Po_at_524_6) v(Po_at_525_6) v(Po_at_526_6) v(Po_at_527_6)
+ v(Po_at_528_6) v(Po_at_529_6) v(Po_at_530_6) v(Po_at_531_6) v(Po_af_50_6) v(Po_af_51_6) v(Po_af_52_6)
+ v(Po_af_53_6) v(Po_af_54_6) v(Po_af_55_6) v(Po_af_56_6) v(Po_af_57_6) v(Po_af_58_6) v(Po_af_59_6)
+ v(Po_af_510_6) v(Po_af_511_6) v(Po_af_512_6) v(Po_af_513_6) v(Po_af_514_6) v(Po_af_515_6) v(Po_af_516_6)
+ v(Po_af_517_6) v(Po_af_518_6) v(Po_af_519_6) v(Po_af_520_6) v(Po_af_521_6) v(Po_af_522_6) v(Po_af_523_6)
+ v(Po_af_524_6) v(Po_af_525_6) v(Po_af_526_6) v(Po_af_527_6) v(Po_af_528_6) v(Po_af_529_6) v(Po_af_530_6)
+ v(Po_af_531_6) v(Po_aa) v(tb_done) v(tb_failed)
+ v(Vdd) i(VPOWER)
.tran 1n 'TB_STOP'
* TICK still forces 10 ps observations after reset; adaptive solver steps resolve all edges.
.end
