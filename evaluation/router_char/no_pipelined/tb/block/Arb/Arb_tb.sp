Arb tree: concurrent stress plus isolated three-flit packets from every source
* Prepared once for analog_sim_blocks.md; top-level DUT is Arb, not Arb2.
* Supplied explicit cross-coupled transistor mutex; no behavioral replacement.
* PTM65 TT, 1.1 V, 27 C. No forced initial conditions or grant bias.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=100p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=5u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/block/Arb/Arb.sp"
.hdl "tb/block/Arb/Arb_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6
+ C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6
+ C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6
+ C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6
+ C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6
+ C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6 C0_af_515_6 C0_af_516_6
+ C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6 C0_af_524_6
+ C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa
+ C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6
+ C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6
+ C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6
+ C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6
+ C1_af_51_6 C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6
+ C1_af_510_6 C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6
+ C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6 C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6
+ C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa C2_at_50_6
+ C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6 C2_at_58_6 C2_at_59_6
+ C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6 C2_at_517_6
+ C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6
+ C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6
+ C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6
+ C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6
+ C2_af_518_6 C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6
+ C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6
+ C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6 C3_at_57_6 C3_at_58_6 C3_at_59_6
+ C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6 C3_at_516_6 C3_at_517_6
+ C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6 C3_at_525_6
+ C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6
+ C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6
+ C3_af_518_6 C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6
+ C3_af_526_6 C3_af_527_6 C3_af_528_6 C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa P_at_50_6 P_at_51_6
+ P_at_52_6 P_at_53_6 P_at_54_6 P_at_55_6 P_at_56_6 P_at_57_6 P_at_58_6 P_at_59_6 P_at_510_6
+ P_at_511_6 P_at_512_6 P_at_513_6 P_at_514_6 P_at_515_6 P_at_516_6 P_at_517_6 P_at_518_6 P_at_519_6
+ P_at_520_6 P_at_521_6 P_at_522_6 P_at_523_6 P_at_524_6 P_at_525_6 P_at_526_6 P_at_527_6 P_at_528_6
+ P_at_529_6 P_at_530_6 P_at_531_6 P_af_50_6 P_af_51_6 P_af_52_6 P_af_53_6 P_af_54_6 P_af_55_6
+ P_af_56_6 P_af_57_6 P_af_58_6 P_af_59_6 P_af_510_6 P_af_511_6 P_af_512_6 P_af_513_6 P_af_514_6
+ P_af_515_6 P_af_516_6 P_af_517_6 P_af_518_6 P_af_519_6 P_af_520_6 P_af_521_6 P_af_522_6 P_af_523_6
+ P_af_524_6 P_af_525_6 P_af_526_6 P_af_527_6 P_af_528_6 P_af_529_6 P_af_530_6 P_af_531_6 P_aa
+ M_at_50_6 M_at_51_6 M_at_52_6 M_at_53_6 M_at_54_6 M_at_55_6 M_at_56_6 M_at_57_6 M_at_58_6
+ M_at_59_6 M_at_510_6 M_at_511_6 M_at_512_6 M_at_513_6 M_at_514_6 M_at_515_6 M_at_516_6 M_at_517_6
+ M_at_518_6 M_at_519_6 M_at_520_6 M_at_521_6 M_at_522_6 M_at_523_6 M_at_524_6 M_at_525_6 M_at_526_6
+ M_at_527_6 M_at_528_6 M_at_529_6 M_at_530_6 M_at_531_6 M_af_50_6 M_af_51_6 M_af_52_6 M_af_53_6
+ M_af_54_6 M_af_55_6 M_af_56_6 M_af_57_6 M_af_58_6 M_af_59_6 M_af_510_6 M_af_511_6 M_af_512_6
+ M_af_513_6 M_af_514_6 M_af_515_6 M_af_516_6 M_af_517_6 M_af_518_6 M_af_519_6 M_af_520_6 M_af_521_6
+ M_af_522_6 M_af_523_6 M_af_524_6 M_af_525_6 M_af_526_6 M_af_527_6 M_af_528_6 M_af_529_6 M_af_530_6
+ M_af_531_6 M_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6
+ O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6
+ O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6
+ O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6
+ O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6
+ O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6
+ O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6
+ O_af_530_6 O_af_531_6 O_aa Arb
XENV reset C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6
+ C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6
+ C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6
+ C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6
+ C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6
+ C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6 C0_af_515_6 C0_af_516_6
+ C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6 C0_af_524_6
+ C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa
+ C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6
+ C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6
+ C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6
+ C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6
+ C1_af_51_6 C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6
+ C1_af_510_6 C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6
+ C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6 C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6
+ C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa C2_at_50_6
+ C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6 C2_at_58_6 C2_at_59_6
+ C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6 C2_at_517_6
+ C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6
+ C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6
+ C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6
+ C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6
+ C2_af_518_6 C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6
+ C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6
+ C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6 C3_at_57_6 C3_at_58_6 C3_at_59_6
+ C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6 C3_at_516_6 C3_at_517_6
+ C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6 C3_at_525_6
+ C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6
+ C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6
+ C3_af_518_6 C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6
+ C3_af_526_6 C3_af_527_6 C3_af_528_6 C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa P_at_50_6 P_at_51_6
+ P_at_52_6 P_at_53_6 P_at_54_6 P_at_55_6 P_at_56_6 P_at_57_6 P_at_58_6 P_at_59_6 P_at_510_6
+ P_at_511_6 P_at_512_6 P_at_513_6 P_at_514_6 P_at_515_6 P_at_516_6 P_at_517_6 P_at_518_6 P_at_519_6
+ P_at_520_6 P_at_521_6 P_at_522_6 P_at_523_6 P_at_524_6 P_at_525_6 P_at_526_6 P_at_527_6 P_at_528_6
+ P_at_529_6 P_at_530_6 P_at_531_6 P_af_50_6 P_af_51_6 P_af_52_6 P_af_53_6 P_af_54_6 P_af_55_6
+ P_af_56_6 P_af_57_6 P_af_58_6 P_af_59_6 P_af_510_6 P_af_511_6 P_af_512_6 P_af_513_6 P_af_514_6
+ P_af_515_6 P_af_516_6 P_af_517_6 P_af_518_6 P_af_519_6 P_af_520_6 P_af_521_6 P_af_522_6 P_af_523_6
+ P_af_524_6 P_af_525_6 P_af_526_6 P_af_527_6 P_af_528_6 P_af_529_6 P_af_530_6 P_af_531_6 P_aa
+ M_at_50_6 M_at_51_6 M_at_52_6 M_at_53_6 M_at_54_6 M_at_55_6 M_at_56_6 M_at_57_6 M_at_58_6
+ M_at_59_6 M_at_510_6 M_at_511_6 M_at_512_6 M_at_513_6 M_at_514_6 M_at_515_6 M_at_516_6 M_at_517_6
+ M_at_518_6 M_at_519_6 M_at_520_6 M_at_521_6 M_at_522_6 M_at_523_6 M_at_524_6 M_at_525_6 M_at_526_6
+ M_at_527_6 M_at_528_6 M_at_529_6 M_at_530_6 M_at_531_6 M_af_50_6 M_af_51_6 M_af_52_6 M_af_53_6
+ M_af_54_6 M_af_55_6 M_af_56_6 M_af_57_6 M_af_58_6 M_af_59_6 M_af_510_6 M_af_511_6 M_af_512_6
+ M_af_513_6 M_af_514_6 M_af_515_6 M_af_516_6 M_af_517_6 M_af_518_6 M_af_519_6 M_af_520_6 M_af_521_6
+ M_af_522_6 M_af_523_6 M_af_524_6 M_af_525_6 M_af_526_6 M_af_527_6 M_af_528_6 M_af_529_6 M_af_530_6
+ M_af_531_6 M_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6
+ O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6
+ O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6
+ O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6
+ O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6
+ O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6
+ O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6
+ O_af_530_6 O_af_531_6 O_aa tb_done tb_failed arb_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE'
+ STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
.option post=2 probe
.probe tran v(reset) v(C0_at_50_6) v(C0_at_51_6) v(C0_at_52_6) v(C0_at_53_6) v(C0_at_54_6)
+ v(C0_at_55_6) v(C0_at_56_6) v(C0_at_57_6) v(C0_at_58_6) v(C0_at_59_6) v(C0_at_510_6)
+ v(C0_at_511_6) v(C0_at_512_6) v(C0_at_513_6) v(C0_at_514_6) v(C0_at_515_6) v(C0_at_516_6)
+ v(C0_at_517_6) v(C0_at_518_6) v(C0_at_519_6) v(C0_at_520_6) v(C0_at_521_6) v(C0_at_522_6)
+ v(C0_at_523_6) v(C0_at_524_6) v(C0_at_525_6) v(C0_at_526_6) v(C0_at_527_6) v(C0_at_528_6)
+ v(C0_at_529_6) v(C0_at_530_6) v(C0_at_531_6) v(C0_af_50_6) v(C0_af_51_6) v(C0_af_52_6)
+ v(C0_af_53_6) v(C0_af_54_6) v(C0_af_55_6) v(C0_af_56_6) v(C0_af_57_6) v(C0_af_58_6) v(C0_af_59_6)
+ v(C0_af_510_6) v(C0_af_511_6) v(C0_af_512_6) v(C0_af_513_6) v(C0_af_514_6) v(C0_af_515_6)
+ v(C0_af_516_6) v(C0_af_517_6) v(C0_af_518_6) v(C0_af_519_6) v(C0_af_520_6) v(C0_af_521_6)
+ v(C0_af_522_6) v(C0_af_523_6) v(C0_af_524_6) v(C0_af_525_6) v(C0_af_526_6) v(C0_af_527_6)
+ v(C0_af_528_6) v(C0_af_529_6) v(C0_af_530_6) v(C0_af_531_6) v(C0_aa) v(C1_at_50_6) v(C1_at_51_6)
+ v(C1_at_52_6) v(C1_at_53_6) v(C1_at_54_6) v(C1_at_55_6) v(C1_at_56_6) v(C1_at_57_6) v(C1_at_58_6)
+ v(C1_at_59_6) v(C1_at_510_6) v(C1_at_511_6) v(C1_at_512_6) v(C1_at_513_6) v(C1_at_514_6)
+ v(C1_at_515_6) v(C1_at_516_6) v(C1_at_517_6) v(C1_at_518_6) v(C1_at_519_6) v(C1_at_520_6)
+ v(C1_at_521_6) v(C1_at_522_6) v(C1_at_523_6) v(C1_at_524_6) v(C1_at_525_6) v(C1_at_526_6)
+ v(C1_at_527_6) v(C1_at_528_6) v(C1_at_529_6) v(C1_at_530_6) v(C1_at_531_6) v(C1_af_50_6)
+ v(C1_af_51_6) v(C1_af_52_6) v(C1_af_53_6) v(C1_af_54_6) v(C1_af_55_6) v(C1_af_56_6) v(C1_af_57_6)
+ v(C1_af_58_6) v(C1_af_59_6) v(C1_af_510_6) v(C1_af_511_6) v(C1_af_512_6) v(C1_af_513_6)
+ v(C1_af_514_6) v(C1_af_515_6) v(C1_af_516_6) v(C1_af_517_6) v(C1_af_518_6) v(C1_af_519_6)
+ v(C1_af_520_6) v(C1_af_521_6) v(C1_af_522_6) v(C1_af_523_6) v(C1_af_524_6) v(C1_af_525_6)
+ v(C1_af_526_6) v(C1_af_527_6) v(C1_af_528_6) v(C1_af_529_6) v(C1_af_530_6) v(C1_af_531_6) v(C1_aa)
+ v(C2_at_50_6) v(C2_at_51_6) v(C2_at_52_6) v(C2_at_53_6) v(C2_at_54_6) v(C2_at_55_6) v(C2_at_56_6)
+ v(C2_at_57_6) v(C2_at_58_6) v(C2_at_59_6) v(C2_at_510_6) v(C2_at_511_6) v(C2_at_512_6)
+ v(C2_at_513_6) v(C2_at_514_6) v(C2_at_515_6) v(C2_at_516_6) v(C2_at_517_6) v(C2_at_518_6)
+ v(C2_at_519_6) v(C2_at_520_6) v(C2_at_521_6) v(C2_at_522_6) v(C2_at_523_6) v(C2_at_524_6)
+ v(C2_at_525_6) v(C2_at_526_6) v(C2_at_527_6) v(C2_at_528_6) v(C2_at_529_6) v(C2_at_530_6)
+ v(C2_at_531_6) v(C2_af_50_6) v(C2_af_51_6) v(C2_af_52_6) v(C2_af_53_6) v(C2_af_54_6) v(C2_af_55_6)
+ v(C2_af_56_6) v(C2_af_57_6) v(C2_af_58_6) v(C2_af_59_6) v(C2_af_510_6) v(C2_af_511_6)
+ v(C2_af_512_6) v(C2_af_513_6) v(C2_af_514_6) v(C2_af_515_6) v(C2_af_516_6) v(C2_af_517_6)
+ v(C2_af_518_6) v(C2_af_519_6) v(C2_af_520_6) v(C2_af_521_6) v(C2_af_522_6) v(C2_af_523_6)
+ v(C2_af_524_6) v(C2_af_525_6) v(C2_af_526_6) v(C2_af_527_6) v(C2_af_528_6) v(C2_af_529_6)
+ v(C2_af_530_6) v(C2_af_531_6) v(C2_aa) v(C3_at_50_6) v(C3_at_51_6) v(C3_at_52_6) v(C3_at_53_6)
+ v(C3_at_54_6) v(C3_at_55_6) v(C3_at_56_6) v(C3_at_57_6) v(C3_at_58_6) v(C3_at_59_6) v(C3_at_510_6)
+ v(C3_at_511_6) v(C3_at_512_6) v(C3_at_513_6) v(C3_at_514_6) v(C3_at_515_6) v(C3_at_516_6)
+ v(C3_at_517_6) v(C3_at_518_6) v(C3_at_519_6) v(C3_at_520_6) v(C3_at_521_6) v(C3_at_522_6)
+ v(C3_at_523_6) v(C3_at_524_6) v(C3_at_525_6) v(C3_at_526_6) v(C3_at_527_6) v(C3_at_528_6)
+ v(C3_at_529_6) v(C3_at_530_6) v(C3_at_531_6) v(C3_af_50_6) v(C3_af_51_6) v(C3_af_52_6)
+ v(C3_af_53_6) v(C3_af_54_6) v(C3_af_55_6) v(C3_af_56_6) v(C3_af_57_6) v(C3_af_58_6) v(C3_af_59_6)
+ v(C3_af_510_6) v(C3_af_511_6) v(C3_af_512_6) v(C3_af_513_6) v(C3_af_514_6) v(C3_af_515_6)
+ v(C3_af_516_6) v(C3_af_517_6) v(C3_af_518_6) v(C3_af_519_6) v(C3_af_520_6) v(C3_af_521_6)
+ v(C3_af_522_6) v(C3_af_523_6) v(C3_af_524_6) v(C3_af_525_6) v(C3_af_526_6) v(C3_af_527_6)
+ v(C3_af_528_6) v(C3_af_529_6) v(C3_af_530_6) v(C3_af_531_6) v(C3_aa) v(P_at_50_6) v(P_at_51_6)
+ v(P_at_52_6) v(P_at_53_6) v(P_at_54_6) v(P_at_55_6) v(P_at_56_6) v(P_at_57_6) v(P_at_58_6)
+ v(P_at_59_6) v(P_at_510_6) v(P_at_511_6) v(P_at_512_6) v(P_at_513_6) v(P_at_514_6) v(P_at_515_6)
+ v(P_at_516_6) v(P_at_517_6) v(P_at_518_6) v(P_at_519_6) v(P_at_520_6) v(P_at_521_6) v(P_at_522_6)
+ v(P_at_523_6) v(P_at_524_6) v(P_at_525_6) v(P_at_526_6) v(P_at_527_6) v(P_at_528_6) v(P_at_529_6)
+ v(P_at_530_6) v(P_at_531_6) v(P_af_50_6) v(P_af_51_6) v(P_af_52_6) v(P_af_53_6) v(P_af_54_6)
+ v(P_af_55_6) v(P_af_56_6) v(P_af_57_6) v(P_af_58_6) v(P_af_59_6) v(P_af_510_6) v(P_af_511_6)
+ v(P_af_512_6) v(P_af_513_6) v(P_af_514_6) v(P_af_515_6) v(P_af_516_6) v(P_af_517_6) v(P_af_518_6)
+ v(P_af_519_6) v(P_af_520_6) v(P_af_521_6) v(P_af_522_6) v(P_af_523_6) v(P_af_524_6) v(P_af_525_6)
+ v(P_af_526_6) v(P_af_527_6) v(P_af_528_6) v(P_af_529_6) v(P_af_530_6) v(P_af_531_6) v(P_aa)
+ v(M_at_50_6) v(M_at_51_6) v(M_at_52_6) v(M_at_53_6) v(M_at_54_6) v(M_at_55_6) v(M_at_56_6)
+ v(M_at_57_6) v(M_at_58_6) v(M_at_59_6) v(M_at_510_6) v(M_at_511_6) v(M_at_512_6) v(M_at_513_6)
+ v(M_at_514_6) v(M_at_515_6) v(M_at_516_6) v(M_at_517_6) v(M_at_518_6) v(M_at_519_6) v(M_at_520_6)
+ v(M_at_521_6) v(M_at_522_6) v(M_at_523_6) v(M_at_524_6) v(M_at_525_6) v(M_at_526_6) v(M_at_527_6)
+ v(M_at_528_6) v(M_at_529_6) v(M_at_530_6) v(M_at_531_6) v(M_af_50_6) v(M_af_51_6) v(M_af_52_6)
+ v(M_af_53_6) v(M_af_54_6) v(M_af_55_6) v(M_af_56_6) v(M_af_57_6) v(M_af_58_6) v(M_af_59_6)
+ v(M_af_510_6) v(M_af_511_6) v(M_af_512_6) v(M_af_513_6) v(M_af_514_6) v(M_af_515_6) v(M_af_516_6)
+ v(M_af_517_6) v(M_af_518_6) v(M_af_519_6) v(M_af_520_6) v(M_af_521_6) v(M_af_522_6) v(M_af_523_6)
+ v(M_af_524_6) v(M_af_525_6) v(M_af_526_6) v(M_af_527_6) v(M_af_528_6) v(M_af_529_6) v(M_af_530_6)
+ v(M_af_531_6) v(M_aa) v(O_at_50_6) v(O_at_51_6) v(O_at_52_6) v(O_at_53_6) v(O_at_54_6)
+ v(O_at_55_6) v(O_at_56_6) v(O_at_57_6) v(O_at_58_6) v(O_at_59_6) v(O_at_510_6) v(O_at_511_6)
+ v(O_at_512_6) v(O_at_513_6) v(O_at_514_6) v(O_at_515_6) v(O_at_516_6) v(O_at_517_6) v(O_at_518_6)
+ v(O_at_519_6) v(O_at_520_6) v(O_at_521_6) v(O_at_522_6) v(O_at_523_6) v(O_at_524_6) v(O_at_525_6)
+ v(O_at_526_6) v(O_at_527_6) v(O_at_528_6) v(O_at_529_6) v(O_at_530_6) v(O_at_531_6) v(O_af_50_6)
+ v(O_af_51_6) v(O_af_52_6) v(O_af_53_6) v(O_af_54_6) v(O_af_55_6) v(O_af_56_6) v(O_af_57_6)
+ v(O_af_58_6) v(O_af_59_6) v(O_af_510_6) v(O_af_511_6) v(O_af_512_6) v(O_af_513_6) v(O_af_514_6)
+ v(O_af_515_6) v(O_af_516_6) v(O_af_517_6) v(O_af_518_6) v(O_af_519_6) v(O_af_520_6) v(O_af_521_6)
+ v(O_af_522_6) v(O_af_523_6) v(O_af_524_6) v(O_af_525_6) v(O_af_526_6) v(O_af_527_6) v(O_af_528_6)
+ v(O_af_529_6) v(O_af_530_6) v(O_af_531_6) v(O_aa) v(tb_done) v(tb_failed)
.probe tran v(XDUT.xar0.u) v(XDUT.xar0.v) v(XDUT.xar1.u) v(XDUT.xar1.v) v(XDUT.xar2.u)
+ v(XDUT.xar2.v) v(XDUT.xar3.u) v(XDUT.xar3.v) v(XDUT.xar4.u) v(XDUT.xar4.v)
* Controller state probes diagnose packet handoff through the Arb tree.
.probe tran v(XDUT.xar0.p) v(XDUT.xar0.w0i) v(XDUT.xar0.f) v(XDUT.xar0.n__s)
+ v(XDUT.xar0.w0) v(XDUT.xar0.w1) v(XDUT.xar1.p) v(XDUT.xar1.w0i)
+ v(XDUT.xar1.f) v(XDUT.xar1.n__s) v(XDUT.xar1.w0) v(XDUT.xar1.w1)
+ v(XDUT.xar2.p) v(XDUT.xar2.w0i) v(XDUT.xar2.f) v(XDUT.xar2.n__s)
+ v(XDUT.xar2.w0) v(XDUT.xar2.w1) v(XDUT.xar3.p) v(XDUT.xar3.w0i)
+ v(XDUT.xar3.f) v(XDUT.xar3.n__s) v(XDUT.xar3.w0) v(XDUT.xar3.w1)
+ v(XDUT.xar4.p) v(XDUT.xar4.w0i) v(XDUT.xar4.f) v(XDUT.xar4.n__s)
+ v(XDUT.xar4.w0) v(XDUT.xar4.w1)
+ v(Vdd) i(VPOWER)
.tran 'TB_TICK' 'TB_STOP'
.end
