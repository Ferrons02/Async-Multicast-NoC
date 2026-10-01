Router: heavy pipeline red bars, original unbuffered Arb, accepted transistor sizing
* Generated minimal LUT cases: isolated flits, legal bursts, parser fit/held-out cases.
* No added fork RC, .ic, .nodeset or UIC.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=0p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=20u
.param TB_IDLE_SETTLE=5n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
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
XENV reset tb_ready C0i_at_50_6 C0i_at_51_6 C0i_at_52_6 C0i_at_53_6 C0i_at_54_6 C0i_at_55_6 C0i_at_56_6 C0i_at_57_6
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
* LUT readiness probes
.probe tran v(xdut.xcrt3.xcs.xbl.e) v(xdut.xcrt3.xcs.xbl.g) v(xdut.xcrt3.xcs.xbl.n__l__a) v(xdut.xcrt3.xcs.xbl.inv__r__a)
+ v(xdut.xcrt3.xcs.xbr.e) v(xdut.xcrt3.xcs.xbr.g) v(xdut.xcrt3.xcs.xbr.n__l__a) v(xdut.xcrt3.xcs.xbr.inv__r__a)
+ v(xdut.xcrt3.xbc0.e) v(xdut.xcrt3.xbc0.g) v(xdut.xcrt3.xbc0.n__l__a) v(xdut.xcrt3.xbc0.inv__r__a)
+ v(xdut.xcrt3.xbm.e) v(xdut.xcrt3.xbm.g) v(xdut.xcrt3.xbm.n__l__a) v(xdut.xcrt3.xbm.inv__r__a)
+ v(xdut.xcrt3.xbc3.e) v(xdut.xcrt3.xbc3.g) v(xdut.xcrt3.xbc3.n__l__a) v(xdut.xcrt3.xbc3.inv__r__a)
+ v(xdut.xcrt3.xbsu.e) v(xdut.xcrt3.xbsu.g) v(xdut.xcrt3.xbsu.n__l__a) v(xdut.xcrt3.xbsu.inv__r__a)
+ v(xdut.xcrt3.xbp.e) v(xdut.xcrt3.xbp.g) v(xdut.xcrt3.xbp.n__l__a) v(xdut.xcrt3.xbp.inv__r__a)
+ v(xdut.xcrt3.xbc2.e) v(xdut.xcrt3.xbc2.g) v(xdut.xcrt3.xbc2.n__l__a) v(xdut.xcrt3.xbc2.inv__r__a)
+ v(xdut.xcrt3.xbuc.e) v(xdut.xcrt3.xbuc.g) v(xdut.xcrt3.xbuc.n__l__a) v(xdut.xcrt3.xbuc.inv__r__a)
+ v(xdut.xcrt3.xbc1.e) v(xdut.xcrt3.xbc1.g) v(xdut.xcrt3.xbc1.n__l__a) v(xdut.xcrt3.xbc1.inv__r__a)
+ v(xdut.xbmc3.e) v(xdut.xbmc3.g) v(xdut.xbmc3.n__l__a) v(xdut.xbmc3.inv__r__a)
+ v(xdut.xcrt1.xcs.xbl.e) v(xdut.xcrt1.xcs.xbl.g) v(xdut.xcrt1.xcs.xbl.n__l__a) v(xdut.xcrt1.xcs.xbl.inv__r__a)
+ v(xdut.xcrt1.xcs.xbr.e) v(xdut.xcrt1.xcs.xbr.g) v(xdut.xcrt1.xcs.xbr.n__l__a) v(xdut.xcrt1.xcs.xbr.inv__r__a)
+ v(xdut.xcrt1.xbc0.e) v(xdut.xcrt1.xbc0.g) v(xdut.xcrt1.xbc0.n__l__a) v(xdut.xcrt1.xbc0.inv__r__a)
+ v(xdut.xcrt1.xbm.e) v(xdut.xcrt1.xbm.g) v(xdut.xcrt1.xbm.n__l__a) v(xdut.xcrt1.xbm.inv__r__a)
+ v(xdut.xcrt1.xbc3.e) v(xdut.xcrt1.xbc3.g) v(xdut.xcrt1.xbc3.n__l__a) v(xdut.xcrt1.xbc3.inv__r__a)
+ v(xdut.xcrt1.xbsu.e) v(xdut.xcrt1.xbsu.g) v(xdut.xcrt1.xbsu.n__l__a) v(xdut.xcrt1.xbsu.inv__r__a)
+ v(xdut.xcrt1.xbp.e) v(xdut.xcrt1.xbp.g) v(xdut.xcrt1.xbp.n__l__a) v(xdut.xcrt1.xbp.inv__r__a)
+ v(xdut.xcrt1.xbc2.e) v(xdut.xcrt1.xbc2.g) v(xdut.xcrt1.xbc2.n__l__a) v(xdut.xcrt1.xbc2.inv__r__a)
+ v(xdut.xcrt1.xbuc.e) v(xdut.xcrt1.xbuc.g) v(xdut.xcrt1.xbuc.n__l__a) v(xdut.xcrt1.xbuc.inv__r__a)
+ v(xdut.xcrt1.xbc1.e) v(xdut.xcrt1.xbc1.g) v(xdut.xcrt1.xbc1.n__l__a) v(xdut.xcrt1.xbc1.inv__r__a)
+ v(xdut.xbmc2.e) v(xdut.xbmc2.g) v(xdut.xbmc2.n__l__a) v(xdut.xbmc2.inv__r__a)
+ v(xdut.xprt.xcs.xbl.e) v(xdut.xprt.xcs.xbl.g) v(xdut.xprt.xcs.xbl.n__l__a) v(xdut.xprt.xcs.xbl.inv__r__a)
+ v(xdut.xprt.xcs.xbr.e) v(xdut.xprt.xcs.xbr.g) v(xdut.xprt.xcs.xbr.n__l__a) v(xdut.xprt.xcs.xbr.inv__r__a)
+ v(xdut.xprt.xbc0.e) v(xdut.xprt.xbc0.g) v(xdut.xprt.xbc0.n__l__a) v(xdut.xprt.xbc0.inv__r__a)
+ v(xdut.xprt.xbc3.e) v(xdut.xprt.xbc3.g) v(xdut.xprt.xbc3.n__l__a) v(xdut.xprt.xbc3.inv__r__a)
+ v(xdut.xprt.xbm.e) v(xdut.xprt.xbm.g) v(xdut.xprt.xbm.n__l__a) v(xdut.xprt.xbm.inv__r__a)
+ v(xdut.xprt.xbm1.e) v(xdut.xprt.xbm1.g) v(xdut.xprt.xbm1.n__l__a) v(xdut.xprt.xbm1.inv__r__a)
+ v(xdut.xprt.xbsc.e) v(xdut.xprt.xbsc.g) v(xdut.xprt.xbsc.n__l__a) v(xdut.xprt.xbsc.inv__r__a)
+ v(xdut.xprt.xbus.e) v(xdut.xprt.xbus.g) v(xdut.xprt.xbus.n__l__a) v(xdut.xprt.xbus.inv__r__a)
+ v(xdut.xprt.xbc2.e) v(xdut.xprt.xbc2.g) v(xdut.xprt.xbc2.n__l__a) v(xdut.xprt.xbc2.inv__r__a)
+ v(xdut.xprt.xbc1.e) v(xdut.xprt.xbc1.g) v(xdut.xprt.xbc1.n__l__a) v(xdut.xprt.xbc1.inv__r__a)
+ v(xdut.xprt.xbm0.e) v(xdut.xprt.xbm0.g) v(xdut.xprt.xbm0.n__l__a) v(xdut.xprt.xbm0.inv__r__a)
+ v(xdut.xbam.e) v(xdut.xbam.g) v(xdut.xbam.n__l__a) v(xdut.xbam.inv__r__a)
+ v(xdut.xbmc1.e) v(xdut.xbmc1.g) v(xdut.xbmc1.n__l__a) v(xdut.xbmc1.inv__r__a)
+ v(xdut.xcrt2.xcs.xbl.e) v(xdut.xcrt2.xcs.xbl.g) v(xdut.xcrt2.xcs.xbl.n__l__a) v(xdut.xcrt2.xcs.xbl.inv__r__a)
+ v(xdut.xcrt2.xcs.xbr.e) v(xdut.xcrt2.xcs.xbr.g) v(xdut.xcrt2.xcs.xbr.n__l__a) v(xdut.xcrt2.xcs.xbr.inv__r__a)
+ v(xdut.xcrt2.xbc0.e) v(xdut.xcrt2.xbc0.g) v(xdut.xcrt2.xbc0.n__l__a) v(xdut.xcrt2.xbc0.inv__r__a)
+ v(xdut.xcrt2.xbm.e) v(xdut.xcrt2.xbm.g) v(xdut.xcrt2.xbm.n__l__a) v(xdut.xcrt2.xbm.inv__r__a)
+ v(xdut.xcrt2.xbc3.e) v(xdut.xcrt2.xbc3.g) v(xdut.xcrt2.xbc3.n__l__a) v(xdut.xcrt2.xbc3.inv__r__a)
+ v(xdut.xcrt2.xbsu.e) v(xdut.xcrt2.xbsu.g) v(xdut.xcrt2.xbsu.n__l__a) v(xdut.xcrt2.xbsu.inv__r__a)
+ v(xdut.xcrt2.xbp.e) v(xdut.xcrt2.xbp.g) v(xdut.xcrt2.xbp.n__l__a) v(xdut.xcrt2.xbp.inv__r__a)
+ v(xdut.xcrt2.xbc2.e) v(xdut.xcrt2.xbc2.g) v(xdut.xcrt2.xbc2.n__l__a) v(xdut.xcrt2.xbc2.inv__r__a)
+ v(xdut.xcrt2.xbuc.e) v(xdut.xcrt2.xbuc.g) v(xdut.xcrt2.xbuc.n__l__a) v(xdut.xcrt2.xbuc.inv__r__a)
+ v(xdut.xcrt2.xbc1.e) v(xdut.xcrt2.xbc1.g) v(xdut.xcrt2.xbc1.n__l__a) v(xdut.xcrt2.xbc1.inv__r__a)
+ v(xdut.xmu.xbo0.e) v(xdut.xmu.xbo0.g) v(xdut.xmu.xbo0.n__l__a) v(xdut.xmu.xbo0.inv__r__a)
+ v(xdut.xmu.xbo3.e) v(xdut.xmu.xbo3.g) v(xdut.xmu.xbo3.n__l__a) v(xdut.xmu.xbo3.inv__r__a)
+ v(xdut.xmu.xbo2.e) v(xdut.xmu.xbo2.g) v(xdut.xmu.xbo2.n__l__a) v(xdut.xmu.xbo2.inv__r__a)
+ v(xdut.xmu.xbo1.e) v(xdut.xmu.xbo1.g) v(xdut.xmu.xbo1.n__l__a) v(xdut.xmu.xbo1.inv__r__a)
+ v(xdut.xmu.xbp.e) v(xdut.xmu.xbp.g) v(xdut.xmu.xbp.n__l__a) v(xdut.xmu.xbp.inv__r__a)
+ v(xdut.xbmc0.e) v(xdut.xbmc0.g) v(xdut.xbmc0.n__l__a) v(xdut.xbmc0.inv__r__a)
+ v(xdut.xcrt0.xcs.xbl.e) v(xdut.xcrt0.xcs.xbl.g) v(xdut.xcrt0.xcs.xbl.n__l__a) v(xdut.xcrt0.xcs.xbl.inv__r__a)
+ v(xdut.xcrt0.xcs.xbr.e) v(xdut.xcrt0.xcs.xbr.g) v(xdut.xcrt0.xcs.xbr.n__l__a) v(xdut.xcrt0.xcs.xbr.inv__r__a)
+ v(xdut.xcrt0.xbc0.e) v(xdut.xcrt0.xbc0.g) v(xdut.xcrt0.xbc0.n__l__a) v(xdut.xcrt0.xbc0.inv__r__a)
+ v(xdut.xcrt0.xbm.e) v(xdut.xcrt0.xbm.g) v(xdut.xcrt0.xbm.n__l__a) v(xdut.xcrt0.xbm.inv__r__a)
+ v(xdut.xcrt0.xbc3.e) v(xdut.xcrt0.xbc3.g) v(xdut.xcrt0.xbc3.n__l__a) v(xdut.xcrt0.xbc3.inv__r__a)
+ v(xdut.xcrt0.xbsu.e) v(xdut.xcrt0.xbsu.g) v(xdut.xcrt0.xbsu.n__l__a) v(xdut.xcrt0.xbsu.inv__r__a)
+ v(xdut.xcrt0.xbp.e) v(xdut.xcrt0.xbp.g) v(xdut.xcrt0.xbp.n__l__a) v(xdut.xcrt0.xbp.inv__r__a)
+ v(xdut.xcrt0.xbc2.e) v(xdut.xcrt0.xbc2.g) v(xdut.xcrt0.xbc2.n__l__a) v(xdut.xcrt0.xbc2.inv__r__a)
+ v(xdut.xcrt0.xbuc.e) v(xdut.xcrt0.xbuc.g) v(xdut.xcrt0.xbuc.n__l__a) v(xdut.xcrt0.xbuc.inv__r__a)
+ v(xdut.xcrt0.xbc1.e) v(xdut.xcrt0.xbc1.g) v(xdut.xcrt0.xbc1.n__l__a) v(xdut.xcrt0.xbc1.inv__r__a)
+ v(xdut.xmu.ir_ao0_at_50_6) v(xdut.xmu.ir_ao0_at_51_6) v(xdut.xmu.ir_ao0_at_52_6) v(xdut.xmu.ir_ao0_at_53_6) v(xdut.xmu.ir_ao0_at_54_6) v(xdut.xmu.ir_ao0_at_55_6) v(xdut.xmu.ir_ao0_at_56_6) v(xdut.xmu.ir_ao0_at_57_6)
+ v(xdut.xmu.ir_ao0_at_58_6) v(xdut.xmu.ir_ao0_at_59_6) v(xdut.xmu.ir_ao0_at_510_6) v(xdut.xmu.ir_ao0_at_511_6) v(xdut.xmu.ir_ao0_at_512_6) v(xdut.xmu.ir_ao0_at_513_6) v(xdut.xmu.ir_ao0_at_514_6) v(xdut.xmu.ir_ao0_at_515_6)
+ v(xdut.xmu.ir_ao0_at_516_6) v(xdut.xmu.ir_ao0_at_517_6) v(xdut.xmu.ir_ao0_at_518_6) v(xdut.xmu.ir_ao0_at_519_6) v(xdut.xmu.ir_ao0_at_520_6) v(xdut.xmu.ir_ao0_at_521_6) v(xdut.xmu.ir_ao0_at_522_6) v(xdut.xmu.ir_ao0_at_523_6)
+ v(xdut.xmu.ir_ao0_at_524_6) v(xdut.xmu.ir_ao0_at_525_6) v(xdut.xmu.ir_ao0_at_526_6) v(xdut.xmu.ir_ao0_at_527_6) v(xdut.xmu.ir_ao0_at_528_6) v(xdut.xmu.ir_ao0_at_529_6) v(xdut.xmu.ir_ao0_at_530_6) v(xdut.xmu.ir_ao0_at_531_6)
+ v(xdut.xmu.ir_ao0_af_50_6) v(xdut.xmu.ir_ao0_af_51_6) v(xdut.xmu.ir_ao0_af_52_6) v(xdut.xmu.ir_ao0_af_53_6) v(xdut.xmu.ir_ao0_af_54_6) v(xdut.xmu.ir_ao0_af_55_6) v(xdut.xmu.ir_ao0_af_56_6) v(xdut.xmu.ir_ao0_af_57_6)
+ v(xdut.xmu.ir_ao0_af_58_6) v(xdut.xmu.ir_ao0_af_59_6) v(xdut.xmu.ir_ao0_af_510_6) v(xdut.xmu.ir_ao0_af_511_6) v(xdut.xmu.ir_ao0_af_512_6) v(xdut.xmu.ir_ao0_af_513_6) v(xdut.xmu.ir_ao0_af_514_6) v(xdut.xmu.ir_ao0_af_515_6)
+ v(xdut.xmu.ir_ao0_af_516_6) v(xdut.xmu.ir_ao0_af_517_6) v(xdut.xmu.ir_ao0_af_518_6) v(xdut.xmu.ir_ao0_af_519_6) v(xdut.xmu.ir_ao0_af_520_6) v(xdut.xmu.ir_ao0_af_521_6) v(xdut.xmu.ir_ao0_af_522_6) v(xdut.xmu.ir_ao0_af_523_6)
+ v(xdut.xmu.ir_ao0_af_524_6) v(xdut.xmu.ir_ao0_af_525_6) v(xdut.xmu.ir_ao0_af_526_6) v(xdut.xmu.ir_ao0_af_527_6) v(xdut.xmu.ir_ao0_af_528_6) v(xdut.xmu.ir_ao0_af_529_6) v(xdut.xmu.ir_ao0_af_530_6) v(xdut.xmu.ir_ao0_af_531_6)
+ v(xdut.xmu.ir_ao0_aa)
* DUT quiescence monitor (sense-only; no DUT loading)
XQUIET tb_ready xdut.xcrt3.xcs.xbl.e xdut.xcrt3.xcs.xbl.g xdut.xcrt3.xcs.xbl.n__l__a xdut.xcrt3.xcs.xbl.inv__r__a xdut.xcrt3.xcs.xbr.e xdut.xcrt3.xcs.xbr.g
+ xdut.xcrt3.xcs.xbr.n__l__a xdut.xcrt3.xcs.xbr.inv__r__a xdut.xcrt3.xbc0.e xdut.xcrt3.xbc0.g xdut.xcrt3.xbc0.n__l__a xdut.xcrt3.xbc0.inv__r__a
+ xdut.xcrt3.xbm.e xdut.xcrt3.xbm.g xdut.xcrt3.xbm.n__l__a xdut.xcrt3.xbm.inv__r__a xdut.xcrt3.xbc3.e xdut.xcrt3.xbc3.g
+ xdut.xcrt3.xbc3.n__l__a xdut.xcrt3.xbc3.inv__r__a xdut.xcrt3.xbsu.e xdut.xcrt3.xbsu.g xdut.xcrt3.xbsu.n__l__a xdut.xcrt3.xbsu.inv__r__a
+ xdut.xcrt3.xbp.e xdut.xcrt3.xbp.g xdut.xcrt3.xbp.n__l__a xdut.xcrt3.xbp.inv__r__a xdut.xcrt3.xbc2.e xdut.xcrt3.xbc2.g
+ xdut.xcrt3.xbc2.n__l__a xdut.xcrt3.xbc2.inv__r__a xdut.xcrt3.xbuc.e xdut.xcrt3.xbuc.g xdut.xcrt3.xbuc.n__l__a xdut.xcrt3.xbuc.inv__r__a
+ xdut.xcrt3.xbc1.e xdut.xcrt3.xbc1.g xdut.xcrt3.xbc1.n__l__a xdut.xcrt3.xbc1.inv__r__a xdut.xbmc3.e xdut.xbmc3.g
+ xdut.xbmc3.n__l__a xdut.xbmc3.inv__r__a xdut.xcrt1.xcs.xbl.e xdut.xcrt1.xcs.xbl.g xdut.xcrt1.xcs.xbl.n__l__a xdut.xcrt1.xcs.xbl.inv__r__a
+ xdut.xcrt1.xcs.xbr.e xdut.xcrt1.xcs.xbr.g xdut.xcrt1.xcs.xbr.n__l__a xdut.xcrt1.xcs.xbr.inv__r__a xdut.xcrt1.xbc0.e xdut.xcrt1.xbc0.g
+ xdut.xcrt1.xbc0.n__l__a xdut.xcrt1.xbc0.inv__r__a xdut.xcrt1.xbm.e xdut.xcrt1.xbm.g xdut.xcrt1.xbm.n__l__a xdut.xcrt1.xbm.inv__r__a
+ xdut.xcrt1.xbc3.e xdut.xcrt1.xbc3.g xdut.xcrt1.xbc3.n__l__a xdut.xcrt1.xbc3.inv__r__a xdut.xcrt1.xbsu.e xdut.xcrt1.xbsu.g
+ xdut.xcrt1.xbsu.n__l__a xdut.xcrt1.xbsu.inv__r__a xdut.xcrt1.xbp.e xdut.xcrt1.xbp.g xdut.xcrt1.xbp.n__l__a xdut.xcrt1.xbp.inv__r__a
+ xdut.xcrt1.xbc2.e xdut.xcrt1.xbc2.g xdut.xcrt1.xbc2.n__l__a xdut.xcrt1.xbc2.inv__r__a xdut.xcrt1.xbuc.e xdut.xcrt1.xbuc.g
+ xdut.xcrt1.xbuc.n__l__a xdut.xcrt1.xbuc.inv__r__a xdut.xcrt1.xbc1.e xdut.xcrt1.xbc1.g xdut.xcrt1.xbc1.n__l__a xdut.xcrt1.xbc1.inv__r__a
+ xdut.xbmc2.e xdut.xbmc2.g xdut.xbmc2.n__l__a xdut.xbmc2.inv__r__a xdut.xprt.xcs.xbl.e xdut.xprt.xcs.xbl.g
+ xdut.xprt.xcs.xbl.n__l__a xdut.xprt.xcs.xbl.inv__r__a xdut.xprt.xcs.xbr.e xdut.xprt.xcs.xbr.g xdut.xprt.xcs.xbr.n__l__a xdut.xprt.xcs.xbr.inv__r__a
+ xdut.xprt.xbc0.e xdut.xprt.xbc0.g xdut.xprt.xbc0.n__l__a xdut.xprt.xbc0.inv__r__a xdut.xprt.xbc3.e xdut.xprt.xbc3.g
+ xdut.xprt.xbc3.n__l__a xdut.xprt.xbc3.inv__r__a xdut.xprt.xbm.e xdut.xprt.xbm.g xdut.xprt.xbm.n__l__a xdut.xprt.xbm.inv__r__a
+ xdut.xprt.xbm1.e xdut.xprt.xbm1.g xdut.xprt.xbm1.n__l__a xdut.xprt.xbm1.inv__r__a xdut.xprt.xbsc.e xdut.xprt.xbsc.g
+ xdut.xprt.xbsc.n__l__a xdut.xprt.xbsc.inv__r__a xdut.xprt.xbus.e xdut.xprt.xbus.g xdut.xprt.xbus.n__l__a xdut.xprt.xbus.inv__r__a
+ xdut.xprt.xbc2.e xdut.xprt.xbc2.g xdut.xprt.xbc2.n__l__a xdut.xprt.xbc2.inv__r__a xdut.xprt.xbc1.e xdut.xprt.xbc1.g
+ xdut.xprt.xbc1.n__l__a xdut.xprt.xbc1.inv__r__a xdut.xprt.xbm0.e xdut.xprt.xbm0.g xdut.xprt.xbm0.n__l__a xdut.xprt.xbm0.inv__r__a
+ xdut.xbam.e xdut.xbam.g xdut.xbam.n__l__a xdut.xbam.inv__r__a xdut.xbmc1.e xdut.xbmc1.g
+ xdut.xbmc1.n__l__a xdut.xbmc1.inv__r__a xdut.xcrt2.xcs.xbl.e xdut.xcrt2.xcs.xbl.g xdut.xcrt2.xcs.xbl.n__l__a xdut.xcrt2.xcs.xbl.inv__r__a
+ xdut.xcrt2.xcs.xbr.e xdut.xcrt2.xcs.xbr.g xdut.xcrt2.xcs.xbr.n__l__a xdut.xcrt2.xcs.xbr.inv__r__a xdut.xcrt2.xbc0.e xdut.xcrt2.xbc0.g
+ xdut.xcrt2.xbc0.n__l__a xdut.xcrt2.xbc0.inv__r__a xdut.xcrt2.xbm.e xdut.xcrt2.xbm.g xdut.xcrt2.xbm.n__l__a xdut.xcrt2.xbm.inv__r__a
+ xdut.xcrt2.xbc3.e xdut.xcrt2.xbc3.g xdut.xcrt2.xbc3.n__l__a xdut.xcrt2.xbc3.inv__r__a xdut.xcrt2.xbsu.e xdut.xcrt2.xbsu.g
+ xdut.xcrt2.xbsu.n__l__a xdut.xcrt2.xbsu.inv__r__a xdut.xcrt2.xbp.e xdut.xcrt2.xbp.g xdut.xcrt2.xbp.n__l__a xdut.xcrt2.xbp.inv__r__a
+ xdut.xcrt2.xbc2.e xdut.xcrt2.xbc2.g xdut.xcrt2.xbc2.n__l__a xdut.xcrt2.xbc2.inv__r__a xdut.xcrt2.xbuc.e xdut.xcrt2.xbuc.g
+ xdut.xcrt2.xbuc.n__l__a xdut.xcrt2.xbuc.inv__r__a xdut.xcrt2.xbc1.e xdut.xcrt2.xbc1.g xdut.xcrt2.xbc1.n__l__a xdut.xcrt2.xbc1.inv__r__a
+ xdut.xmu.xbo0.e xdut.xmu.xbo0.g xdut.xmu.xbo0.n__l__a xdut.xmu.xbo0.inv__r__a xdut.xmu.xbo3.e xdut.xmu.xbo3.g
+ xdut.xmu.xbo3.n__l__a xdut.xmu.xbo3.inv__r__a xdut.xmu.xbo2.e xdut.xmu.xbo2.g xdut.xmu.xbo2.n__l__a xdut.xmu.xbo2.inv__r__a
+ xdut.xmu.xbo1.e xdut.xmu.xbo1.g xdut.xmu.xbo1.n__l__a xdut.xmu.xbo1.inv__r__a xdut.xmu.xbp.e xdut.xmu.xbp.g
+ xdut.xmu.xbp.n__l__a xdut.xmu.xbp.inv__r__a xdut.xbmc0.e xdut.xbmc0.g xdut.xbmc0.n__l__a xdut.xbmc0.inv__r__a
+ xdut.xcrt0.xcs.xbl.e xdut.xcrt0.xcs.xbl.g xdut.xcrt0.xcs.xbl.n__l__a xdut.xcrt0.xcs.xbl.inv__r__a xdut.xcrt0.xcs.xbr.e xdut.xcrt0.xcs.xbr.g
+ xdut.xcrt0.xcs.xbr.n__l__a xdut.xcrt0.xcs.xbr.inv__r__a xdut.xcrt0.xbc0.e xdut.xcrt0.xbc0.g xdut.xcrt0.xbc0.n__l__a xdut.xcrt0.xbc0.inv__r__a
+ xdut.xcrt0.xbm.e xdut.xcrt0.xbm.g xdut.xcrt0.xbm.n__l__a xdut.xcrt0.xbm.inv__r__a xdut.xcrt0.xbc3.e xdut.xcrt0.xbc3.g
+ xdut.xcrt0.xbc3.n__l__a xdut.xcrt0.xbc3.inv__r__a xdut.xcrt0.xbsu.e xdut.xcrt0.xbsu.g xdut.xcrt0.xbsu.n__l__a xdut.xcrt0.xbsu.inv__r__a
+ xdut.xcrt0.xbp.e xdut.xcrt0.xbp.g xdut.xcrt0.xbp.n__l__a xdut.xcrt0.xbp.inv__r__a xdut.xcrt0.xbc2.e xdut.xcrt0.xbc2.g
+ xdut.xcrt0.xbc2.n__l__a xdut.xcrt0.xbc2.inv__r__a xdut.xcrt0.xbuc.e xdut.xcrt0.xbuc.g xdut.xcrt0.xbuc.n__l__a xdut.xcrt0.xbuc.inv__r__a
+ xdut.xcrt0.xbc1.e xdut.xcrt0.xbc1.g xdut.xcrt0.xbc1.n__l__a xdut.xcrt0.xbc1.inv__r__a xdut.xmu.ir_ao0_at_50_6 xdut.xmu.ir_ao0_at_51_6
+ xdut.xmu.ir_ao0_at_52_6 xdut.xmu.ir_ao0_at_53_6 xdut.xmu.ir_ao0_at_54_6 xdut.xmu.ir_ao0_at_55_6 xdut.xmu.ir_ao0_at_56_6 xdut.xmu.ir_ao0_at_57_6
+ xdut.xmu.ir_ao0_at_58_6 xdut.xmu.ir_ao0_at_59_6 xdut.xmu.ir_ao0_at_510_6 xdut.xmu.ir_ao0_at_511_6 xdut.xmu.ir_ao0_at_512_6 xdut.xmu.ir_ao0_at_513_6
+ xdut.xmu.ir_ao0_at_514_6 xdut.xmu.ir_ao0_at_515_6 xdut.xmu.ir_ao0_at_516_6 xdut.xmu.ir_ao0_at_517_6 xdut.xmu.ir_ao0_at_518_6 xdut.xmu.ir_ao0_at_519_6
+ xdut.xmu.ir_ao0_at_520_6 xdut.xmu.ir_ao0_at_521_6 xdut.xmu.ir_ao0_at_522_6 xdut.xmu.ir_ao0_at_523_6 xdut.xmu.ir_ao0_at_524_6 xdut.xmu.ir_ao0_at_525_6
+ xdut.xmu.ir_ao0_at_526_6 xdut.xmu.ir_ao0_at_527_6 xdut.xmu.ir_ao0_at_528_6 xdut.xmu.ir_ao0_at_529_6 xdut.xmu.ir_ao0_at_530_6 xdut.xmu.ir_ao0_at_531_6
+ xdut.xmu.ir_ao0_af_50_6 xdut.xmu.ir_ao0_af_51_6 xdut.xmu.ir_ao0_af_52_6 xdut.xmu.ir_ao0_af_53_6 xdut.xmu.ir_ao0_af_54_6 xdut.xmu.ir_ao0_af_55_6
+ xdut.xmu.ir_ao0_af_56_6 xdut.xmu.ir_ao0_af_57_6 xdut.xmu.ir_ao0_af_58_6 xdut.xmu.ir_ao0_af_59_6 xdut.xmu.ir_ao0_af_510_6 xdut.xmu.ir_ao0_af_511_6
+ xdut.xmu.ir_ao0_af_512_6 xdut.xmu.ir_ao0_af_513_6 xdut.xmu.ir_ao0_af_514_6 xdut.xmu.ir_ao0_af_515_6 xdut.xmu.ir_ao0_af_516_6 xdut.xmu.ir_ao0_af_517_6
+ xdut.xmu.ir_ao0_af_518_6 xdut.xmu.ir_ao0_af_519_6 xdut.xmu.ir_ao0_af_520_6 xdut.xmu.ir_ao0_af_521_6 xdut.xmu.ir_ao0_af_522_6 xdut.xmu.ir_ao0_af_523_6
+ xdut.xmu.ir_ao0_af_524_6 xdut.xmu.ir_ao0_af_525_6 xdut.xmu.ir_ao0_af_526_6 xdut.xmu.ir_ao0_af_527_6 xdut.xmu.ir_ao0_af_528_6 xdut.xmu.ir_ao0_af_529_6
+ xdut.xmu.ir_ao0_af_530_6 xdut.xmu.ir_ao0_af_531_6 xdut.xmu.ir_ao0_aa
+ router_quiescence SUPPLY='VDD_VALUE'
.probe tran v(tb_ready)
.tran 1n 'TB_STOP'
* TICK still forces 10 ps observations after reset; adaptive solver steps resolve all edges.
.end
