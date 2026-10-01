* UpdownSel: PTM65 TT, lambda=32.5 nm; VDD=1.1 V; T=27 C.
* All added fork and settling RCs removed; former delayed branches connected directly.
* 2211 MOS devices; original dimensions, keeper logic and PRS logic unchanged.
* User-authorized RC removal; see analog_sim_diagnostics/UpdownSel/rc_removal.md.
*
*---- act defproc: UpdownSel<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a
*
.subckt UpdownSel reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6
+ I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6
+ I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6
+ I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6
+ I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6
+ I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6
+ I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6
+ O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6 O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6
+ O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6 O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6
+ O0_at_521_6 O0_at_522_6 O0_at_523_6 O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6
+ O0_at_529_6 O0_at_530_6 O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6
+ O0_af_55_6 O0_af_56_6 O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6
+ O0_af_513_6 O0_af_514_6 O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6
+ O0_af_521_6 O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6
+ O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_at_54_6
+ O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6 O1_at_512_6
+ O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6 O1_at_519_6 O1_at_520_6
+ O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6 O1_at_526_6 O1_at_527_6 O1_at_528_6
+ O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_af_54_6
+ O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6 O1_af_510_6 O1_af_511_6 O1_af_512_6
+ O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6 O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6
+ O1_af_521_6 O1_af_522_6 O1_af_523_6 O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6
+ O1_af_529_6 O1_af_530_6 O1_af_531_6 O1_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_at_54_6:O O0_at_55_6:O O0_at_56_6:O O0_at_57_6:O O0_at_58_6:O O0_at_59_6:O O0_at_510_6:O O0_at_511_6:O O0_at_512_6:O O0_at_513_6:O O0_at_514_6:O O0_at_515_6:O O0_at_516_6:O O0_at_517_6:O O0_at_518_6:O O0_at_519_6:O O0_at_520_6:O O0_at_521_6:O O0_at_522_6:O O0_at_523_6:O O0_at_524_6:O O0_at_525_6:O O0_at_526_6:O O0_at_527_6:O O0_at_528_6:O O0_at_529_6:O O0_at_530_6:O O0_at_531_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O0_af_54_6:O O0_af_55_6:O O0_af_56_6:O O0_af_57_6:O O0_af_58_6:O O0_af_59_6:O O0_af_510_6:O O0_af_511_6:O O0_af_512_6:O O0_af_513_6:O O0_af_514_6:O O0_af_515_6:O O0_af_516_6:O O0_af_517_6:O O0_af_518_6:O O0_af_519_6:O O0_af_520_6:O O0_af_521_6:O O0_af_522_6:O O0_af_523_6:O O0_af_524_6:O O0_af_525_6:O O0_af_526_6:O O0_af_527_6:O O0_af_528_6:O O0_af_529_6:O O0_af_530_6:O O0_af_531_6:O O0_aa:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_at_54_6:O O1_at_55_6:O O1_at_56_6:O O1_at_57_6:O O1_at_58_6:O O1_at_59_6:O O1_at_510_6:O O1_at_511_6:O O1_at_512_6:O O1_at_513_6:O O1_at_514_6:O O1_at_515_6:O O1_at_516_6:O O1_at_517_6:O O1_at_518_6:O O1_at_519_6:O O1_at_520_6:O O1_at_521_6:O O1_at_522_6:O O1_at_523_6:O O1_at_524_6:O O1_at_525_6:O O1_at_526_6:O O1_at_527_6:O O1_at_528_6:O O1_at_529_6:O O1_at_530_6:O O1_at_531_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O1_af_54_6:O O1_af_55_6:O O1_af_56_6:O O1_af_57_6:O O1_af_58_6:O O1_af_59_6:O O1_af_510_6:O O1_af_511_6:O O1_af_512_6:O O1_af_513_6:O O1_af_514_6:O O1_af_515_6:O O1_af_516_6:O O1_af_517_6:O O1_af_518_6:O O1_af_519_6:O O1_af_520_6:O O1_af_521_6:O O1_af_522_6:O O1_af_523_6:O O1_af_524_6:O O1_af_525_6:O O1_af_526_6:O O1_af_527_6:O O1_af_528_6:O O1_af_529_6:O O1_af_530_6:O O1_af_531_6:O O1_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* p (state-holding): pup_reff=0.8; pdn_reff=1.33333
* inv__I__t31 (combinational)
* inv__s (combinational)
* inv__reset (combinational)
* s (state-holding): pup_reff=0.8; pdn_reff=1.33333
* w__0i (state-holding): pup_reff=1.2; pdn_reff=1.33333
* inv__p (combinational)
* inv__I__f31 (combinational)
* a (state-holding): pup_reff=2; pdn_reff=2.66667
* n__I__a (state-holding): pup_reff=2; pdn_reff=2.66667
* inv__w__0i (combinational)
* inv__w__0 (combinational)
* inv__w__1 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* w__0 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* inv__I__f0 (combinational)
* inv__a (combinational)
* w__1 (combinational)
* n__O0__t_514_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_514_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_514_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_514_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_515_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_515_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_515_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_515_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_516_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_516_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_516_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_516_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_517_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_517_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_517_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_517_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_518_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_518_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_518_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_518_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_519_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_519_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_519_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_519_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_520_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_520_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_520_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_520_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_521_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_521_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_521_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_521_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_522_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_522_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_522_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_522_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_523_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_523_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_523_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_523_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_524_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_524_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_524_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_524_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_525_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_525_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_525_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_525_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_526_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_526_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_526_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_526_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_527_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_527_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_527_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_527_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_528_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_528_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_528_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_528_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_529_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_529_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_529_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_529_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_530_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_530_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_530_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_530_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_531_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__f_531_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_531_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__f_531_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_513_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O0__f_513_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O1__t_513_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O1__f_513_6 (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__O0__t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_54_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_54_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_54_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_54_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_55_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_55_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_55_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_55_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_56_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_56_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_56_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_56_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_57_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_57_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_57_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_57_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_58_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_58_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_58_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_58_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_59_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_59_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_59_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_59_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_510_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_510_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_510_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_510_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_511_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_511_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_511_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_511_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__t_512_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O0__f_512_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__t_512_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* n__O1__f_512_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* I_aa (combinational)
* O0_at_50_6 (combinational)
* O0_af_50_6 (combinational)
* O1_at_50_6 (combinational)
* O1_af_50_6 (combinational)
* O0_at_51_6 (combinational)
* O0_af_51_6 (combinational)
* O1_at_51_6 (combinational)
* O1_af_51_6 (combinational)
* O0_at_52_6 (combinational)
* O0_af_52_6 (combinational)
* O1_at_52_6 (combinational)
* O1_af_52_6 (combinational)
* O0_at_53_6 (combinational)
* O0_af_53_6 (combinational)
* O1_at_53_6 (combinational)
* O1_af_53_6 (combinational)
* O0_at_54_6 (combinational)
* O0_af_54_6 (combinational)
* O1_at_54_6 (combinational)
* O1_af_54_6 (combinational)
* O0_at_55_6 (combinational)
* O0_af_55_6 (combinational)
* O1_at_55_6 (combinational)
* O1_af_55_6 (combinational)
* O0_at_56_6 (combinational)
* O0_af_56_6 (combinational)
* O1_at_56_6 (combinational)
* O1_af_56_6 (combinational)
* O0_at_57_6 (combinational)
* O0_af_57_6 (combinational)
* O1_at_57_6 (combinational)
* O1_af_57_6 (combinational)
* O0_at_58_6 (combinational)
* O0_af_58_6 (combinational)
* O1_at_58_6 (combinational)
* O1_af_58_6 (combinational)
* O0_at_59_6 (combinational)
* O0_af_59_6 (combinational)
* O1_at_59_6 (combinational)
* O1_af_59_6 (combinational)
* O0_at_510_6 (combinational)
* O0_af_510_6 (combinational)
* O1_at_510_6 (combinational)
* O1_af_510_6 (combinational)
* O0_at_511_6 (combinational)
* O0_af_511_6 (combinational)
* O1_at_511_6 (combinational)
* O1_af_511_6 (combinational)
* O0_at_512_6 (combinational)
* O0_af_512_6 (combinational)
* O1_at_512_6 (combinational)
* O1_af_512_6 (combinational)
* O0_at_513_6 (combinational)
* O0_af_513_6 (combinational)
* O1_at_513_6 (combinational)
* O1_af_513_6 (combinational)
* O0_at_514_6 (combinational)
* O0_af_514_6 (combinational)
* O1_at_514_6 (combinational)
* O1_af_514_6 (combinational)
* O0_at_515_6 (combinational)
* O0_af_515_6 (combinational)
* O1_at_515_6 (combinational)
* O1_af_515_6 (combinational)
* O0_at_516_6 (combinational)
* O0_af_516_6 (combinational)
* O1_at_516_6 (combinational)
* O1_af_516_6 (combinational)
* O0_at_517_6 (combinational)
* O0_af_517_6 (combinational)
* O1_at_517_6 (combinational)
* O1_af_517_6 (combinational)
* O0_at_518_6 (combinational)
* O0_af_518_6 (combinational)
* O1_at_518_6 (combinational)
* O1_af_518_6 (combinational)
* O0_at_519_6 (combinational)
* O0_af_519_6 (combinational)
* O1_at_519_6 (combinational)
* O1_af_519_6 (combinational)
* O0_at_520_6 (combinational)
* O0_af_520_6 (combinational)
* O1_at_520_6 (combinational)
* O1_af_520_6 (combinational)
* O0_at_521_6 (combinational)
* O0_af_521_6 (combinational)
* O1_at_521_6 (combinational)
* O1_af_521_6 (combinational)
* O0_at_522_6 (combinational)
* O0_af_522_6 (combinational)
* O1_at_522_6 (combinational)
* O1_af_522_6 (combinational)
* O0_at_523_6 (combinational)
* O0_af_523_6 (combinational)
* O1_at_523_6 (combinational)
* O1_af_523_6 (combinational)
* O0_at_524_6 (combinational)
* O0_af_524_6 (combinational)
* O1_at_524_6 (combinational)
* O1_af_524_6 (combinational)
* O0_at_525_6 (combinational)
* O0_af_525_6 (combinational)
* O1_at_525_6 (combinational)
* O1_af_525_6 (combinational)
* O0_at_526_6 (combinational)
* O0_af_526_6 (combinational)
* O1_at_526_6 (combinational)
* O1_af_526_6 (combinational)
* O0_at_527_6 (combinational)
* O0_af_527_6 (combinational)
* O1_at_527_6 (combinational)
* O1_af_527_6 (combinational)
* O0_at_528_6 (combinational)
* O0_af_528_6 (combinational)
* O1_at_528_6 (combinational)
* O1_af_528_6 (combinational)
* O0_at_529_6 (combinational)
* O0_af_529_6 (combinational)
* O1_at_529_6 (combinational)
* O1_af_529_6 (combinational)
* O0_at_530_6 (combinational)
* O0_af_530_6 (combinational)
* O1_at_530_6 (combinational)
* O1_af_530_6 (combinational)
* O0_at_531_6 (combinational)
* O0_af_531_6 (combinational)
* O1_at_531_6 (combinational)
* O1_af_531_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd inv__I__t31 #3 Vdd pmos W=0.65U L=0.065U
M1_ Vdd inv__reset p Vdd pmos W=0.65U L=0.065U
M2_ Vdd inv__s #11 Vdd pmos W=1.3U L=0.065U
M3_ Vdd n__I__a #22 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd s #34 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd inv__s #39 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd inv__reset inv__w__1 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd inv__w__1 #41 Vdd pmos W=2.6U L=0.065U
M8_ Vdd inv__reset s Vdd pmos W=2.6U L=0.065U
M9_ Vdd a #48 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd inv__reset n__I__a Vdd pmos W=0.1625U L=0.065U
M11_ Vdd I_at_514_6 #58 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd I_at_513_6 #59 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd I_af_514_6 #67 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd I_af_513_6 #68 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd I_at_514_6 #74 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd I_at_513_6 #75 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I_af_514_6 #81 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd I_af_513_6 #82 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd I_at_515_6 #89 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd I_at_514_6 #90 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd I_af_515_6 #97 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd I_af_514_6 #98 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd I_at_515_6 #104 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd I_at_514_6 #105 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd I_af_515_6 #111 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I_af_514_6 #112 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd I_at_516_6 #119 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd I_at_515_6 #120 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd I_af_516_6 #127 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd I_af_515_6 #128 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd I_at_516_6 #134 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd I_at_515_6 #135 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd I_af_516_6 #141 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd I_af_515_6 #142 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd I_at_517_6 #149 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd I_at_516_6 #150 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd I_af_517_6 #157 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd I_af_516_6 #158 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd I_at_517_6 #164 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd I_at_516_6 #165 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd I_af_517_6 #171 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd I_af_516_6 #172 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd I_at_518_6 #179 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd I_at_517_6 #180 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd I_af_518_6 #187 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd I_af_517_6 #188 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd I_at_518_6 #194 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd I_at_517_6 #195 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd I_af_518_6 #201 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd I_af_517_6 #202 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd I_at_519_6 #209 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd I_at_518_6 #210 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd I_af_519_6 #217 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd I_af_518_6 #218 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd I_at_519_6 #224 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd I_at_518_6 #225 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd I_af_519_6 #231 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd I_af_518_6 #232 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd I_at_520_6 #239 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd I_at_519_6 #240 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd I_af_520_6 #247 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd I_af_519_6 #248 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd I_at_520_6 #254 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd I_at_519_6 #255 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd I_af_520_6 #261 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd I_af_519_6 #262 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd I_at_521_6 #269 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd I_at_520_6 #270 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd I_af_521_6 #277 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd I_af_520_6 #278 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd I_at_521_6 #284 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd I_at_520_6 #285 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd I_af_521_6 #291 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd I_af_520_6 #292 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd I_at_522_6 #299 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd I_at_521_6 #300 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd I_af_522_6 #307 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd I_af_521_6 #308 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd I_at_522_6 #314 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd I_at_521_6 #315 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd I_af_522_6 #321 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd I_af_521_6 #322 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd I_at_523_6 #329 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd I_at_522_6 #330 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd I_af_523_6 #337 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd I_af_522_6 #338 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd I_at_523_6 #344 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd I_at_522_6 #345 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd I_af_523_6 #351 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd I_af_522_6 #352 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd I_at_524_6 #359 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd I_at_523_6 #360 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd I_af_524_6 #367 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd I_af_523_6 #368 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd I_at_524_6 #374 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd I_at_523_6 #375 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd I_af_524_6 #381 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd I_af_523_6 #382 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd I_at_525_6 #389 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd I_at_524_6 #390 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd I_af_525_6 #397 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd I_af_524_6 #398 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd I_at_525_6 #404 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd I_at_524_6 #405 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd I_af_525_6 #411 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd I_af_524_6 #412 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd I_at_526_6 #419 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd I_at_525_6 #420 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd I_af_526_6 #427 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd I_af_525_6 #428 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd I_at_526_6 #434 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd I_at_525_6 #435 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd I_af_526_6 #441 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd I_af_525_6 #442 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd I_at_527_6 #449 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd I_at_526_6 #450 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd I_af_527_6 #457 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd I_af_526_6 #458 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd I_at_527_6 #464 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd I_at_526_6 #465 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd I_af_527_6 #471 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd I_af_526_6 #472 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd I_at_528_6 #479 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd I_at_527_6 #480 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd I_af_528_6 #487 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd I_af_527_6 #488 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd I_at_528_6 #494 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd I_at_527_6 #495 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd I_af_528_6 #501 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd I_af_527_6 #502 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd I_at_529_6 #509 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd I_at_528_6 #510 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd I_af_529_6 #517 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd I_af_528_6 #518 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd I_at_529_6 #524 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd I_at_528_6 #525 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd I_af_529_6 #531 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd I_af_528_6 #532 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd I_at_530_6 #539 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd I_at_529_6 #540 Vdd pmos W=0.1625U L=0.065U
M141_ Vdd I_af_530_6 #547 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd I_af_529_6 #548 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd I_at_530_6 #554 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd I_at_529_6 #555 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd I_af_530_6 #561 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd I_af_529_6 #562 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd I_at_531_6 #569 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd I_at_530_6 #570 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd I_af_531_6 #576 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd I_af_530_6 #577 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd I_at_531_6 #583 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd I_at_530_6 #584 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd I_af_531_6 #590 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd I_af_530_6 #591 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd I_at_513_6 #595 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd inv__reset n__O0__t_513_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd I_af_513_6 #601 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd n__I__a #602 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd inv__reset n__O0__f_513_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd I_at_513_6 #606 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd inv__reset n__O1__t_513_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd I_af_513_6 #612 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd n__I__a #613 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd inv__reset n__O1__f_513_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd I_at_50_6 n__O0__t_50_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd I_af_50_6 n__O0__f_50_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd I_at_50_6 n__O1__t_50_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd I_af_50_6 n__O1__f_50_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd I_at_51_6 n__O0__t_51_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd I_af_51_6 n__O0__f_51_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd I_at_51_6 n__O1__t_51_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd I_af_51_6 n__O1__f_51_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd I_at_52_6 n__O0__t_52_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd I_af_52_6 n__O0__f_52_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd I_at_52_6 n__O1__t_52_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd I_af_52_6 n__O1__f_52_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd I_at_53_6 n__O0__t_53_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd I_af_53_6 n__O0__f_53_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd I_at_53_6 n__O1__t_53_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd I_af_53_6 n__O1__f_53_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd I_at_54_6 n__O0__t_54_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd I_af_54_6 n__O0__f_54_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd I_at_54_6 n__O1__t_54_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd I_af_54_6 n__O1__f_54_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd I_at_55_6 n__O0__t_55_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd I_af_55_6 n__O0__f_55_6 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd I_at_55_6 n__O1__t_55_6 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd I_af_55_6 n__O1__f_55_6 Vdd pmos W=0.1625U L=0.065U
M189_ Vdd I_at_56_6 n__O0__t_56_6 Vdd pmos W=0.1625U L=0.065U
M190_ Vdd I_af_56_6 n__O0__f_56_6 Vdd pmos W=0.1625U L=0.065U
M191_ Vdd I_at_56_6 n__O1__t_56_6 Vdd pmos W=0.1625U L=0.065U
M192_ Vdd I_af_56_6 n__O1__f_56_6 Vdd pmos W=0.1625U L=0.065U
M193_ Vdd I_at_57_6 n__O0__t_57_6 Vdd pmos W=0.1625U L=0.065U
M194_ Vdd I_af_57_6 n__O0__f_57_6 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd I_at_57_6 n__O1__t_57_6 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd I_af_57_6 n__O1__f_57_6 Vdd pmos W=0.1625U L=0.065U
M197_ Vdd I_at_58_6 n__O0__t_58_6 Vdd pmos W=0.1625U L=0.065U
M198_ Vdd I_af_58_6 n__O0__f_58_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd I_at_58_6 n__O1__t_58_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd I_af_58_6 n__O1__f_58_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd I_at_59_6 n__O0__t_59_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd I_af_59_6 n__O0__f_59_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd I_at_59_6 n__O1__t_59_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd I_af_59_6 n__O1__f_59_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd I_at_510_6 n__O0__t_510_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd I_af_510_6 n__O0__f_510_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd I_at_510_6 n__O1__t_510_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd I_af_510_6 n__O1__f_510_6 Vdd pmos W=0.1625U L=0.065U
M209_ Vdd I_at_511_6 n__O0__t_511_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd I_af_511_6 n__O0__f_511_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd I_at_511_6 n__O1__t_511_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd I_af_511_6 n__O1__f_511_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd I_at_512_6 n__O0__t_512_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd I_af_512_6 n__O0__f_512_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd I_at_512_6 n__O1__t_512_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd I_af_512_6 n__O1__f_512_6 Vdd pmos W=0.1625U L=0.065U
M217_ Vdd s inv__s Vdd pmos W=2.6U L=0.065U
M218_ Vdd reset inv__reset Vdd pmos W=0.1625U L=0.065U
M219_ Vdd p inv__p Vdd pmos W=0.65U L=0.065U
M220_ Vdd a inv__a Vdd pmos W=0.1625U L=0.065U
M221_ Vdd w__0i inv__w__0i Vdd pmos W=0.1625U L=0.065U
M222_ Vdd w__0 inv__w__0 Vdd pmos W=0.1625U L=0.065U
M223_ Vdd inv__w__1 w__1 Vdd pmos W=0.1625U L=0.065U
M224_ Vdd I_at_531_6 inv__I__t31 Vdd pmos W=0.1625U L=0.065U
M225_ Vdd I_af_531_6 inv__I__f31 Vdd pmos W=0.1625U L=0.065U
M226_ Vdd I_af_50_6 inv__I__f0 Vdd pmos W=0.1625U L=0.065U
M227_ Vdd n__I__a I_aa Vdd pmos W=0.1625U L=0.065U
M228_ Vdd n__O0__t_50_6 O0_at_50_6 Vdd pmos W=0.1625U L=0.065U
M229_ Vdd n__O0__f_50_6 O0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M230_ Vdd n__O1__t_50_6 O1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M231_ Vdd n__O1__f_50_6 O1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M232_ Vdd n__O0__t_51_6 O0_at_51_6 Vdd pmos W=0.1625U L=0.065U
M233_ Vdd n__O0__f_51_6 O0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M234_ Vdd n__O1__t_51_6 O1_at_51_6 Vdd pmos W=0.1625U L=0.065U
M235_ Vdd n__O1__f_51_6 O1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M236_ Vdd n__O0__t_52_6 O0_at_52_6 Vdd pmos W=0.1625U L=0.065U
M237_ Vdd n__O0__f_52_6 O0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M238_ Vdd n__O1__t_52_6 O1_at_52_6 Vdd pmos W=0.1625U L=0.065U
M239_ Vdd n__O1__f_52_6 O1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M240_ Vdd n__O0__t_53_6 O0_at_53_6 Vdd pmos W=0.1625U L=0.065U
M241_ Vdd n__O0__f_53_6 O0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M242_ Vdd n__O1__t_53_6 O1_at_53_6 Vdd pmos W=0.1625U L=0.065U
M243_ Vdd n__O1__f_53_6 O1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M244_ Vdd n__O0__t_54_6 O0_at_54_6 Vdd pmos W=0.1625U L=0.065U
M245_ Vdd n__O0__f_54_6 O0_af_54_6 Vdd pmos W=0.1625U L=0.065U
M246_ Vdd n__O1__t_54_6 O1_at_54_6 Vdd pmos W=0.1625U L=0.065U
M247_ Vdd n__O1__f_54_6 O1_af_54_6 Vdd pmos W=0.1625U L=0.065U
M248_ Vdd n__O0__t_55_6 O0_at_55_6 Vdd pmos W=0.1625U L=0.065U
M249_ Vdd n__O0__f_55_6 O0_af_55_6 Vdd pmos W=0.1625U L=0.065U
M250_ Vdd n__O1__t_55_6 O1_at_55_6 Vdd pmos W=0.1625U L=0.065U
M251_ Vdd n__O1__f_55_6 O1_af_55_6 Vdd pmos W=0.1625U L=0.065U
M252_ Vdd n__O0__t_56_6 O0_at_56_6 Vdd pmos W=0.1625U L=0.065U
M253_ Vdd n__O0__f_56_6 O0_af_56_6 Vdd pmos W=0.1625U L=0.065U
M254_ Vdd n__O1__t_56_6 O1_at_56_6 Vdd pmos W=0.1625U L=0.065U
M255_ Vdd n__O1__f_56_6 O1_af_56_6 Vdd pmos W=0.1625U L=0.065U
M256_ Vdd n__O0__t_57_6 O0_at_57_6 Vdd pmos W=0.1625U L=0.065U
M257_ Vdd n__O0__f_57_6 O0_af_57_6 Vdd pmos W=0.1625U L=0.065U
M258_ Vdd n__O1__t_57_6 O1_at_57_6 Vdd pmos W=0.1625U L=0.065U
M259_ Vdd n__O1__f_57_6 O1_af_57_6 Vdd pmos W=0.1625U L=0.065U
M260_ Vdd n__O0__t_58_6 O0_at_58_6 Vdd pmos W=0.1625U L=0.065U
M261_ Vdd n__O0__f_58_6 O0_af_58_6 Vdd pmos W=0.1625U L=0.065U
M262_ Vdd n__O1__t_58_6 O1_at_58_6 Vdd pmos W=0.1625U L=0.065U
M263_ Vdd n__O1__f_58_6 O1_af_58_6 Vdd pmos W=0.1625U L=0.065U
M264_ Vdd n__O0__t_59_6 O0_at_59_6 Vdd pmos W=0.1625U L=0.065U
M265_ Vdd n__O0__f_59_6 O0_af_59_6 Vdd pmos W=0.1625U L=0.065U
M266_ Vdd n__O1__t_59_6 O1_at_59_6 Vdd pmos W=0.1625U L=0.065U
M267_ Vdd n__O1__f_59_6 O1_af_59_6 Vdd pmos W=0.1625U L=0.065U
M268_ Vdd n__O0__t_510_6 O0_at_510_6 Vdd pmos W=0.1625U L=0.065U
M269_ Vdd n__O0__f_510_6 O0_af_510_6 Vdd pmos W=0.1625U L=0.065U
M270_ Vdd n__O1__t_510_6 O1_at_510_6 Vdd pmos W=0.1625U L=0.065U
M271_ Vdd n__O1__f_510_6 O1_af_510_6 Vdd pmos W=0.1625U L=0.065U
M272_ Vdd n__O0__t_511_6 O0_at_511_6 Vdd pmos W=0.1625U L=0.065U
M273_ Vdd n__O0__f_511_6 O0_af_511_6 Vdd pmos W=0.1625U L=0.065U
M274_ Vdd n__O1__t_511_6 O1_at_511_6 Vdd pmos W=0.1625U L=0.065U
M275_ Vdd n__O1__f_511_6 O1_af_511_6 Vdd pmos W=0.1625U L=0.065U
M276_ Vdd n__O0__t_512_6 O0_at_512_6 Vdd pmos W=0.1625U L=0.065U
M277_ Vdd n__O0__f_512_6 O0_af_512_6 Vdd pmos W=0.1625U L=0.065U
M278_ Vdd n__O1__t_512_6 O1_at_512_6 Vdd pmos W=0.1625U L=0.065U
M279_ Vdd n__O1__f_512_6 O1_af_512_6 Vdd pmos W=0.1625U L=0.065U
M280_ Vdd n__O0__t_513_6 O0_at_513_6 Vdd pmos W=0.1625U L=0.065U
M281_ Vdd n__O0__f_513_6 O0_af_513_6 Vdd pmos W=0.1625U L=0.065U
M282_ Vdd n__O1__t_513_6 O1_at_513_6 Vdd pmos W=0.1625U L=0.065U
M283_ Vdd n__O1__f_513_6 O1_af_513_6 Vdd pmos W=0.1625U L=0.065U
M284_ Vdd n__O0__t_514_6 O0_at_514_6 Vdd pmos W=0.1625U L=0.065U
M285_ Vdd n__O0__f_514_6 O0_af_514_6 Vdd pmos W=0.1625U L=0.065U
M286_ Vdd n__O1__t_514_6 O1_at_514_6 Vdd pmos W=0.1625U L=0.065U
M287_ Vdd n__O1__f_514_6 O1_af_514_6 Vdd pmos W=0.1625U L=0.065U
M288_ Vdd n__O0__t_515_6 O0_at_515_6 Vdd pmos W=0.1625U L=0.065U
M289_ Vdd n__O0__f_515_6 O0_af_515_6 Vdd pmos W=0.1625U L=0.065U
M290_ Vdd n__O1__t_515_6 O1_at_515_6 Vdd pmos W=0.1625U L=0.065U
M291_ Vdd n__O1__f_515_6 O1_af_515_6 Vdd pmos W=0.1625U L=0.065U
M292_ Vdd n__O0__t_516_6 O0_at_516_6 Vdd pmos W=0.1625U L=0.065U
M293_ Vdd n__O0__f_516_6 O0_af_516_6 Vdd pmos W=0.1625U L=0.065U
M294_ Vdd n__O1__t_516_6 O1_at_516_6 Vdd pmos W=0.1625U L=0.065U
M295_ Vdd n__O1__f_516_6 O1_af_516_6 Vdd pmos W=0.1625U L=0.065U
M296_ Vdd n__O0__t_517_6 O0_at_517_6 Vdd pmos W=0.1625U L=0.065U
M297_ Vdd n__O0__f_517_6 O0_af_517_6 Vdd pmos W=0.1625U L=0.065U
M298_ Vdd n__O1__t_517_6 O1_at_517_6 Vdd pmos W=0.1625U L=0.065U
M299_ Vdd n__O1__f_517_6 O1_af_517_6 Vdd pmos W=0.1625U L=0.065U
M300_ Vdd n__O0__t_518_6 O0_at_518_6 Vdd pmos W=0.1625U L=0.065U
M301_ Vdd n__O0__f_518_6 O0_af_518_6 Vdd pmos W=0.1625U L=0.065U
M302_ Vdd n__O1__t_518_6 O1_at_518_6 Vdd pmos W=0.1625U L=0.065U
M303_ Vdd n__O1__f_518_6 O1_af_518_6 Vdd pmos W=0.1625U L=0.065U
M304_ Vdd n__O0__t_519_6 O0_at_519_6 Vdd pmos W=0.1625U L=0.065U
M305_ Vdd n__O0__f_519_6 O0_af_519_6 Vdd pmos W=0.1625U L=0.065U
M306_ Vdd n__O1__t_519_6 O1_at_519_6 Vdd pmos W=0.1625U L=0.065U
M307_ Vdd n__O1__f_519_6 O1_af_519_6 Vdd pmos W=0.1625U L=0.065U
M308_ Vdd n__O0__t_520_6 O0_at_520_6 Vdd pmos W=0.1625U L=0.065U
M309_ Vdd n__O0__f_520_6 O0_af_520_6 Vdd pmos W=0.1625U L=0.065U
M310_ Vdd n__O1__t_520_6 O1_at_520_6 Vdd pmos W=0.1625U L=0.065U
M311_ Vdd n__O1__f_520_6 O1_af_520_6 Vdd pmos W=0.1625U L=0.065U
M312_ Vdd n__O0__t_521_6 O0_at_521_6 Vdd pmos W=0.1625U L=0.065U
M313_ Vdd n__O0__f_521_6 O0_af_521_6 Vdd pmos W=0.1625U L=0.065U
M314_ Vdd n__O1__t_521_6 O1_at_521_6 Vdd pmos W=0.1625U L=0.065U
M315_ Vdd n__O1__f_521_6 O1_af_521_6 Vdd pmos W=0.1625U L=0.065U
M316_ Vdd n__O0__t_522_6 O0_at_522_6 Vdd pmos W=0.1625U L=0.065U
M317_ Vdd n__O0__f_522_6 O0_af_522_6 Vdd pmos W=0.1625U L=0.065U
M318_ Vdd n__O1__t_522_6 O1_at_522_6 Vdd pmos W=0.1625U L=0.065U
M319_ Vdd n__O1__f_522_6 O1_af_522_6 Vdd pmos W=0.1625U L=0.065U
M320_ Vdd n__O0__t_523_6 O0_at_523_6 Vdd pmos W=0.1625U L=0.065U
M321_ Vdd n__O0__f_523_6 O0_af_523_6 Vdd pmos W=0.1625U L=0.065U
M322_ Vdd n__O1__t_523_6 O1_at_523_6 Vdd pmos W=0.1625U L=0.065U
M323_ Vdd n__O1__f_523_6 O1_af_523_6 Vdd pmos W=0.1625U L=0.065U
M324_ Vdd n__O0__t_524_6 O0_at_524_6 Vdd pmos W=0.1625U L=0.065U
M325_ Vdd n__O0__f_524_6 O0_af_524_6 Vdd pmos W=0.1625U L=0.065U
M326_ Vdd n__O1__t_524_6 O1_at_524_6 Vdd pmos W=0.1625U L=0.065U
M327_ Vdd n__O1__f_524_6 O1_af_524_6 Vdd pmos W=0.1625U L=0.065U
M328_ Vdd n__O0__t_525_6 O0_at_525_6 Vdd pmos W=0.1625U L=0.065U
M329_ Vdd n__O0__f_525_6 O0_af_525_6 Vdd pmos W=0.1625U L=0.065U
M330_ Vdd n__O1__t_525_6 O1_at_525_6 Vdd pmos W=0.1625U L=0.065U
M331_ Vdd n__O1__f_525_6 O1_af_525_6 Vdd pmos W=0.1625U L=0.065U
M332_ Vdd n__O0__t_526_6 O0_at_526_6 Vdd pmos W=0.1625U L=0.065U
M333_ Vdd n__O0__f_526_6 O0_af_526_6 Vdd pmos W=0.1625U L=0.065U
M334_ Vdd n__O1__t_526_6 O1_at_526_6 Vdd pmos W=0.1625U L=0.065U
M335_ Vdd n__O1__f_526_6 O1_af_526_6 Vdd pmos W=0.1625U L=0.065U
M336_ Vdd n__O0__t_527_6 O0_at_527_6 Vdd pmos W=0.1625U L=0.065U
M337_ Vdd n__O0__f_527_6 O0_af_527_6 Vdd pmos W=0.1625U L=0.065U
M338_ Vdd n__O1__t_527_6 O1_at_527_6 Vdd pmos W=0.1625U L=0.065U
M339_ Vdd n__O1__f_527_6 O1_af_527_6 Vdd pmos W=0.1625U L=0.065U
M340_ Vdd n__O0__t_528_6 O0_at_528_6 Vdd pmos W=0.1625U L=0.065U
M341_ Vdd n__O0__f_528_6 O0_af_528_6 Vdd pmos W=0.1625U L=0.065U
M342_ Vdd n__O1__t_528_6 O1_at_528_6 Vdd pmos W=0.1625U L=0.065U
M343_ Vdd n__O1__f_528_6 O1_af_528_6 Vdd pmos W=0.1625U L=0.065U
M344_ Vdd n__O0__t_529_6 O0_at_529_6 Vdd pmos W=0.1625U L=0.065U
M345_ Vdd n__O0__f_529_6 O0_af_529_6 Vdd pmos W=0.1625U L=0.065U
M346_ Vdd n__O1__t_529_6 O1_at_529_6 Vdd pmos W=0.1625U L=0.065U
M347_ Vdd n__O1__f_529_6 O1_af_529_6 Vdd pmos W=0.1625U L=0.065U
M348_ Vdd n__O0__t_530_6 O0_at_530_6 Vdd pmos W=0.1625U L=0.065U
M349_ Vdd n__O0__f_530_6 O0_af_530_6 Vdd pmos W=0.1625U L=0.065U
M350_ Vdd n__O1__t_530_6 O1_at_530_6 Vdd pmos W=0.1625U L=0.065U
M351_ Vdd n__O1__f_530_6 O1_af_530_6 Vdd pmos W=0.1625U L=0.065U
M352_ Vdd n__O0__t_531_6 O0_at_531_6 Vdd pmos W=0.1625U L=0.065U
M353_ Vdd n__O0__f_531_6 O0_af_531_6 Vdd pmos W=0.1625U L=0.065U
M354_ Vdd n__O1__t_531_6 O1_at_531_6 Vdd pmos W=0.1625U L=0.065U
M355_ Vdd n__O1__f_531_6 O1_af_531_6 Vdd pmos W=0.1625U L=0.065U
M356_ Vdd p #fb976# Vdd pmos W=0.1625U L=0.13U
M357_ Vdd s #fb979# Vdd pmos W=0.1625U L=0.13U
M358_keeper Vdd GND #977 Vdd pmos W=0.0975U L=0.585U
M359_ Vdd w__0i #fb982# Vdd pmos W=0.1625U L=0.13U
M360_keeper Vdd GND #980 Vdd pmos W=0.0975U L=0.585U
M361_ Vdd a #fb985# Vdd pmos W=0.1625U L=0.13U
M362_keeper Vdd GND #983 Vdd pmos W=0.0975U L=0.585U
M363_ Vdd n__I__a #fb988# Vdd pmos W=0.1625U L=0.13U
M364_keeper Vdd GND #986 Vdd pmos W=0.0975U L=1.235U
M365_ Vdd inv__w__1 #fb991# Vdd pmos W=0.1625U L=0.13U
M366_keeper Vdd GND #989 Vdd pmos W=0.0975U L=1.235U
M367_ Vdd w__0 #fb994# Vdd pmos W=0.1625U L=0.13U
M368_keeper Vdd GND #992 Vdd pmos W=0.0975U L=0.585U
M369_ Vdd n__O0__t_514_6 #fb997# Vdd pmos W=0.1625U L=0.13U
M370_keeper Vdd GND #995 Vdd pmos W=0.0975U L=0.585U
M371_ Vdd n__O0__f_514_6 #fb1000# Vdd pmos W=0.1625U L=0.13U
M372_keeper Vdd GND #998 Vdd pmos W=0.0975U L=1.235U
M373_ Vdd n__O1__t_514_6 #fb1003# Vdd pmos W=0.1625U L=0.13U
M374_keeper Vdd GND #1001 Vdd pmos W=0.0975U L=1.235U
M375_ Vdd n__O1__f_514_6 #fb1006# Vdd pmos W=0.1625U L=0.13U
M376_keeper Vdd GND #1004 Vdd pmos W=0.0975U L=1.235U
M377_ Vdd n__O0__t_515_6 #fb1009# Vdd pmos W=0.1625U L=0.13U
M378_keeper Vdd GND #1007 Vdd pmos W=0.0975U L=1.235U
M379_ Vdd n__O0__f_515_6 #fb1012# Vdd pmos W=0.1625U L=0.13U
M380_keeper Vdd GND #1010 Vdd pmos W=0.0975U L=1.235U
M381_ Vdd n__O1__t_515_6 #fb1015# Vdd pmos W=0.1625U L=0.13U
M382_keeper Vdd GND #1013 Vdd pmos W=0.0975U L=1.235U
M383_ Vdd n__O1__f_515_6 #fb1018# Vdd pmos W=0.1625U L=0.13U
M384_keeper Vdd GND #1016 Vdd pmos W=0.0975U L=1.235U
M385_ Vdd n__O0__t_516_6 #fb1021# Vdd pmos W=0.1625U L=0.13U
M386_keeper Vdd GND #1019 Vdd pmos W=0.0975U L=1.235U
M387_ Vdd n__O0__f_516_6 #fb1024# Vdd pmos W=0.1625U L=0.13U
M388_keeper Vdd GND #1022 Vdd pmos W=0.0975U L=1.235U
M389_ Vdd n__O1__t_516_6 #fb1027# Vdd pmos W=0.1625U L=0.13U
M390_keeper Vdd GND #1025 Vdd pmos W=0.0975U L=1.235U
M391_ Vdd n__O1__f_516_6 #fb1030# Vdd pmos W=0.1625U L=0.13U
M392_keeper Vdd GND #1028 Vdd pmos W=0.0975U L=1.235U
M393_ Vdd n__O0__t_517_6 #fb1033# Vdd pmos W=0.1625U L=0.13U
M394_keeper Vdd GND #1031 Vdd pmos W=0.0975U L=1.235U
M395_ Vdd n__O0__f_517_6 #fb1036# Vdd pmos W=0.1625U L=0.13U
M396_keeper Vdd GND #1034 Vdd pmos W=0.0975U L=1.235U
M397_ Vdd n__O1__t_517_6 #fb1039# Vdd pmos W=0.1625U L=0.13U
M398_keeper Vdd GND #1037 Vdd pmos W=0.0975U L=1.235U
M399_ Vdd n__O1__f_517_6 #fb1042# Vdd pmos W=0.1625U L=0.13U
M400_keeper Vdd GND #1040 Vdd pmos W=0.0975U L=1.235U
M401_ Vdd n__O0__t_518_6 #fb1045# Vdd pmos W=0.1625U L=0.13U
M402_keeper Vdd GND #1043 Vdd pmos W=0.0975U L=1.235U
M403_ Vdd n__O0__f_518_6 #fb1048# Vdd pmos W=0.1625U L=0.13U
M404_keeper Vdd GND #1046 Vdd pmos W=0.0975U L=1.235U
M405_ Vdd n__O1__t_518_6 #fb1051# Vdd pmos W=0.1625U L=0.13U
M406_keeper Vdd GND #1049 Vdd pmos W=0.0975U L=1.235U
M407_ Vdd n__O1__f_518_6 #fb1054# Vdd pmos W=0.1625U L=0.13U
M408_keeper Vdd GND #1052 Vdd pmos W=0.0975U L=1.235U
M409_ Vdd n__O0__t_519_6 #fb1057# Vdd pmos W=0.1625U L=0.13U
M410_keeper Vdd GND #1055 Vdd pmos W=0.0975U L=1.235U
M411_ Vdd n__O0__f_519_6 #fb1060# Vdd pmos W=0.1625U L=0.13U
M412_keeper Vdd GND #1058 Vdd pmos W=0.0975U L=1.235U
M413_ Vdd n__O1__t_519_6 #fb1063# Vdd pmos W=0.1625U L=0.13U
M414_keeper Vdd GND #1061 Vdd pmos W=0.0975U L=1.235U
M415_ Vdd n__O1__f_519_6 #fb1066# Vdd pmos W=0.1625U L=0.13U
M416_keeper Vdd GND #1064 Vdd pmos W=0.0975U L=1.235U
M417_ Vdd n__O0__t_520_6 #fb1069# Vdd pmos W=0.1625U L=0.13U
M418_keeper Vdd GND #1067 Vdd pmos W=0.0975U L=1.235U
M419_ Vdd n__O0__f_520_6 #fb1072# Vdd pmos W=0.1625U L=0.13U
M420_keeper Vdd GND #1070 Vdd pmos W=0.0975U L=1.235U
M421_ Vdd n__O1__t_520_6 #fb1075# Vdd pmos W=0.1625U L=0.13U
M422_keeper Vdd GND #1073 Vdd pmos W=0.0975U L=1.235U
M423_ Vdd n__O1__f_520_6 #fb1078# Vdd pmos W=0.1625U L=0.13U
M424_keeper Vdd GND #1076 Vdd pmos W=0.0975U L=1.235U
M425_ Vdd n__O0__t_521_6 #fb1081# Vdd pmos W=0.1625U L=0.13U
M426_keeper Vdd GND #1079 Vdd pmos W=0.0975U L=1.235U
M427_ Vdd n__O0__f_521_6 #fb1084# Vdd pmos W=0.1625U L=0.13U
M428_keeper Vdd GND #1082 Vdd pmos W=0.0975U L=1.235U
M429_ Vdd n__O1__t_521_6 #fb1087# Vdd pmos W=0.1625U L=0.13U
M430_keeper Vdd GND #1085 Vdd pmos W=0.0975U L=1.235U
M431_ Vdd n__O1__f_521_6 #fb1090# Vdd pmos W=0.1625U L=0.13U
M432_keeper Vdd GND #1088 Vdd pmos W=0.0975U L=1.235U
M433_ Vdd n__O0__t_522_6 #fb1093# Vdd pmos W=0.1625U L=0.13U
M434_keeper Vdd GND #1091 Vdd pmos W=0.0975U L=1.235U
M435_ Vdd n__O0__f_522_6 #fb1096# Vdd pmos W=0.1625U L=0.13U
M436_keeper Vdd GND #1094 Vdd pmos W=0.0975U L=1.235U
M437_ Vdd n__O1__t_522_6 #fb1099# Vdd pmos W=0.1625U L=0.13U
M438_keeper Vdd GND #1097 Vdd pmos W=0.0975U L=1.235U
M439_ Vdd n__O1__f_522_6 #fb1102# Vdd pmos W=0.1625U L=0.13U
M440_keeper Vdd GND #1100 Vdd pmos W=0.0975U L=1.235U
M441_ Vdd n__O0__t_523_6 #fb1105# Vdd pmos W=0.1625U L=0.13U
M442_keeper Vdd GND #1103 Vdd pmos W=0.0975U L=1.235U
M443_ Vdd n__O0__f_523_6 #fb1108# Vdd pmos W=0.1625U L=0.13U
M444_keeper Vdd GND #1106 Vdd pmos W=0.0975U L=1.235U
M445_ Vdd n__O1__t_523_6 #fb1111# Vdd pmos W=0.1625U L=0.13U
M446_keeper Vdd GND #1109 Vdd pmos W=0.0975U L=1.235U
M447_ Vdd n__O1__f_523_6 #fb1114# Vdd pmos W=0.1625U L=0.13U
M448_keeper Vdd GND #1112 Vdd pmos W=0.0975U L=1.235U
M449_ Vdd n__O0__t_524_6 #fb1117# Vdd pmos W=0.1625U L=0.13U
M450_keeper Vdd GND #1115 Vdd pmos W=0.0975U L=1.235U
M451_ Vdd n__O0__f_524_6 #fb1120# Vdd pmos W=0.1625U L=0.13U
M452_keeper Vdd GND #1118 Vdd pmos W=0.0975U L=1.235U
M453_ Vdd n__O1__t_524_6 #fb1123# Vdd pmos W=0.1625U L=0.13U
M454_keeper Vdd GND #1121 Vdd pmos W=0.0975U L=1.235U
M455_ Vdd n__O1__f_524_6 #fb1126# Vdd pmos W=0.1625U L=0.13U
M456_keeper Vdd GND #1124 Vdd pmos W=0.0975U L=1.235U
M457_ Vdd n__O0__t_525_6 #fb1129# Vdd pmos W=0.1625U L=0.13U
M458_keeper Vdd GND #1127 Vdd pmos W=0.0975U L=1.235U
M459_ Vdd n__O0__f_525_6 #fb1132# Vdd pmos W=0.1625U L=0.13U
M460_keeper Vdd GND #1130 Vdd pmos W=0.0975U L=1.235U
M461_ Vdd n__O1__t_525_6 #fb1135# Vdd pmos W=0.1625U L=0.13U
M462_keeper Vdd GND #1133 Vdd pmos W=0.0975U L=1.235U
M463_ Vdd n__O1__f_525_6 #fb1138# Vdd pmos W=0.1625U L=0.13U
M464_keeper Vdd GND #1136 Vdd pmos W=0.0975U L=1.235U
M465_ Vdd n__O0__t_526_6 #fb1141# Vdd pmos W=0.1625U L=0.13U
M466_keeper Vdd GND #1139 Vdd pmos W=0.0975U L=1.235U
M467_ Vdd n__O0__f_526_6 #fb1144# Vdd pmos W=0.1625U L=0.13U
M468_keeper Vdd GND #1142 Vdd pmos W=0.0975U L=1.235U
M469_ Vdd n__O1__t_526_6 #fb1147# Vdd pmos W=0.1625U L=0.13U
M470_keeper Vdd GND #1145 Vdd pmos W=0.0975U L=1.235U
M471_ Vdd n__O1__f_526_6 #fb1150# Vdd pmos W=0.1625U L=0.13U
M472_keeper Vdd GND #1148 Vdd pmos W=0.0975U L=1.235U
M473_ Vdd n__O0__t_527_6 #fb1153# Vdd pmos W=0.1625U L=0.13U
M474_keeper Vdd GND #1151 Vdd pmos W=0.0975U L=1.235U
M475_ Vdd n__O0__f_527_6 #fb1156# Vdd pmos W=0.1625U L=0.13U
M476_keeper Vdd GND #1154 Vdd pmos W=0.0975U L=1.235U
M477_ Vdd n__O1__t_527_6 #fb1159# Vdd pmos W=0.1625U L=0.13U
M478_keeper Vdd GND #1157 Vdd pmos W=0.0975U L=1.235U
M479_ Vdd n__O1__f_527_6 #fb1162# Vdd pmos W=0.1625U L=0.13U
M480_keeper Vdd GND #1160 Vdd pmos W=0.0975U L=1.235U
M481_ Vdd n__O0__t_528_6 #fb1165# Vdd pmos W=0.1625U L=0.13U
M482_keeper Vdd GND #1163 Vdd pmos W=0.0975U L=1.235U
M483_ Vdd n__O0__f_528_6 #fb1168# Vdd pmos W=0.1625U L=0.13U
M484_keeper Vdd GND #1166 Vdd pmos W=0.0975U L=1.235U
M485_ Vdd n__O1__t_528_6 #fb1171# Vdd pmos W=0.1625U L=0.13U
M486_keeper Vdd GND #1169 Vdd pmos W=0.0975U L=1.235U
M487_ Vdd n__O1__f_528_6 #fb1174# Vdd pmos W=0.1625U L=0.13U
M488_keeper Vdd GND #1172 Vdd pmos W=0.0975U L=1.235U
M489_ Vdd n__O0__t_529_6 #fb1177# Vdd pmos W=0.1625U L=0.13U
M490_keeper Vdd GND #1175 Vdd pmos W=0.0975U L=1.235U
M491_ Vdd n__O0__f_529_6 #fb1180# Vdd pmos W=0.1625U L=0.13U
M492_keeper Vdd GND #1178 Vdd pmos W=0.0975U L=1.235U
M493_ Vdd n__O1__t_529_6 #fb1183# Vdd pmos W=0.1625U L=0.13U
M494_keeper Vdd GND #1181 Vdd pmos W=0.0975U L=1.235U
M495_ Vdd n__O1__f_529_6 #fb1186# Vdd pmos W=0.1625U L=0.13U
M496_keeper Vdd GND #1184 Vdd pmos W=0.0975U L=1.235U
M497_ Vdd n__O0__t_530_6 #fb1189# Vdd pmos W=0.1625U L=0.13U
M498_keeper Vdd GND #1187 Vdd pmos W=0.0975U L=1.235U
M499_ Vdd n__O0__f_530_6 #fb1192# Vdd pmos W=0.1625U L=0.13U
M500_keeper Vdd GND #1190 Vdd pmos W=0.0975U L=1.235U
M501_ Vdd n__O1__t_530_6 #fb1195# Vdd pmos W=0.1625U L=0.13U
M502_keeper Vdd GND #1193 Vdd pmos W=0.0975U L=1.235U
M503_ Vdd n__O1__f_530_6 #fb1198# Vdd pmos W=0.1625U L=0.13U
M504_keeper Vdd GND #1196 Vdd pmos W=0.0975U L=1.235U
M505_ Vdd n__O0__t_531_6 #fb1201# Vdd pmos W=0.1625U L=0.13U
M506_keeper Vdd GND #1199 Vdd pmos W=0.0975U L=1.235U
M507_ Vdd n__O0__f_531_6 #fb1204# Vdd pmos W=0.1625U L=0.13U
M508_keeper Vdd GND #1202 Vdd pmos W=0.0975U L=1.235U
M509_ Vdd n__O1__t_531_6 #fb1207# Vdd pmos W=0.1625U L=0.13U
M510_keeper Vdd GND #1205 Vdd pmos W=0.0975U L=1.235U
M511_ Vdd n__O1__f_531_6 #fb1210# Vdd pmos W=0.1625U L=0.13U
M512_keeper Vdd GND #1208 Vdd pmos W=0.0975U L=1.235U
M513_ Vdd n__O0__t_513_6 #fb1213# Vdd pmos W=0.1625U L=0.13U
M514_keeper Vdd GND #1211 Vdd pmos W=0.0975U L=1.235U
M515_ Vdd n__O0__f_513_6 #fb1216# Vdd pmos W=0.1625U L=0.13U
M516_keeper Vdd GND #1214 Vdd pmos W=0.0975U L=0.91U
M517_ Vdd n__O1__t_513_6 #fb1219# Vdd pmos W=0.1625U L=0.13U
M518_keeper Vdd GND #1217 Vdd pmos W=0.0975U L=1.235U
M519_ Vdd n__O1__f_513_6 #fb1222# Vdd pmos W=0.1625U L=0.13U
M520_keeper Vdd GND #1220 Vdd pmos W=0.0975U L=0.91U
M521_ Vdd n__O0__t_50_6 #fb1225# Vdd pmos W=0.1625U L=0.13U
M522_keeper Vdd GND #1223 Vdd pmos W=0.0975U L=1.235U
M523_ Vdd n__O0__f_50_6 #fb1228# Vdd pmos W=0.1625U L=0.13U
M524_keeper Vdd GND #1226 Vdd pmos W=0.0975U L=1.235U
M525_ Vdd n__O1__t_50_6 #fb1231# Vdd pmos W=0.1625U L=0.13U
M526_keeper Vdd GND #1229 Vdd pmos W=0.0975U L=1.235U
M527_ Vdd n__O1__f_50_6 #fb1234# Vdd pmos W=0.1625U L=0.13U
M528_keeper Vdd GND #1232 Vdd pmos W=0.0975U L=1.235U
M529_ Vdd n__O0__t_51_6 #fb1237# Vdd pmos W=0.1625U L=0.13U
M530_keeper Vdd GND #1235 Vdd pmos W=0.0975U L=1.235U
M531_ Vdd n__O0__f_51_6 #fb1240# Vdd pmos W=0.1625U L=0.13U
M532_keeper Vdd GND #1238 Vdd pmos W=0.0975U L=1.235U
M533_ Vdd n__O1__t_51_6 #fb1243# Vdd pmos W=0.1625U L=0.13U
M534_keeper Vdd GND #1241 Vdd pmos W=0.0975U L=1.235U
M535_ Vdd n__O1__f_51_6 #fb1246# Vdd pmos W=0.1625U L=0.13U
M536_keeper Vdd GND #1244 Vdd pmos W=0.0975U L=1.235U
M537_ Vdd n__O0__t_52_6 #fb1249# Vdd pmos W=0.1625U L=0.13U
M538_keeper Vdd GND #1247 Vdd pmos W=0.0975U L=1.235U
M539_ Vdd n__O0__f_52_6 #fb1252# Vdd pmos W=0.1625U L=0.13U
M540_keeper Vdd GND #1250 Vdd pmos W=0.0975U L=1.235U
M541_ Vdd n__O1__t_52_6 #fb1255# Vdd pmos W=0.1625U L=0.13U
M542_keeper Vdd GND #1253 Vdd pmos W=0.0975U L=1.235U
M543_ Vdd n__O1__f_52_6 #fb1258# Vdd pmos W=0.1625U L=0.13U
M544_keeper Vdd GND #1256 Vdd pmos W=0.0975U L=1.235U
M545_ Vdd n__O0__t_53_6 #fb1261# Vdd pmos W=0.1625U L=0.13U
M546_keeper Vdd GND #1259 Vdd pmos W=0.0975U L=1.235U
M547_ Vdd n__O0__f_53_6 #fb1264# Vdd pmos W=0.1625U L=0.13U
M548_keeper Vdd GND #1262 Vdd pmos W=0.0975U L=1.235U
M549_ Vdd n__O1__t_53_6 #fb1267# Vdd pmos W=0.1625U L=0.13U
M550_keeper Vdd GND #1265 Vdd pmos W=0.0975U L=1.235U
M551_ Vdd n__O1__f_53_6 #fb1270# Vdd pmos W=0.1625U L=0.13U
M552_keeper Vdd GND #1268 Vdd pmos W=0.0975U L=1.235U
M553_ Vdd n__O0__t_54_6 #fb1273# Vdd pmos W=0.1625U L=0.13U
M554_keeper Vdd GND #1271 Vdd pmos W=0.0975U L=1.235U
M555_ Vdd n__O0__f_54_6 #fb1276# Vdd pmos W=0.1625U L=0.13U
M556_keeper Vdd GND #1274 Vdd pmos W=0.0975U L=1.235U
M557_ Vdd n__O1__t_54_6 #fb1279# Vdd pmos W=0.1625U L=0.13U
M558_keeper Vdd GND #1277 Vdd pmos W=0.0975U L=1.235U
M559_ Vdd n__O1__f_54_6 #fb1282# Vdd pmos W=0.1625U L=0.13U
M560_keeper Vdd GND #1280 Vdd pmos W=0.0975U L=1.235U
M561_ Vdd n__O0__t_55_6 #fb1285# Vdd pmos W=0.1625U L=0.13U
M562_keeper Vdd GND #1283 Vdd pmos W=0.0975U L=1.235U
M563_ Vdd n__O0__f_55_6 #fb1288# Vdd pmos W=0.1625U L=0.13U
M564_keeper Vdd GND #1286 Vdd pmos W=0.0975U L=1.235U
M565_ Vdd n__O1__t_55_6 #fb1291# Vdd pmos W=0.1625U L=0.13U
M566_keeper Vdd GND #1289 Vdd pmos W=0.0975U L=1.235U
M567_ Vdd n__O1__f_55_6 #fb1294# Vdd pmos W=0.1625U L=0.13U
M568_keeper Vdd GND #1292 Vdd pmos W=0.0975U L=1.235U
M569_ Vdd n__O0__t_56_6 #fb1297# Vdd pmos W=0.1625U L=0.13U
M570_keeper Vdd GND #1295 Vdd pmos W=0.0975U L=1.235U
M571_ Vdd n__O0__f_56_6 #fb1300# Vdd pmos W=0.1625U L=0.13U
M572_keeper Vdd GND #1298 Vdd pmos W=0.0975U L=1.235U
M573_ Vdd n__O1__t_56_6 #fb1303# Vdd pmos W=0.1625U L=0.13U
M574_keeper Vdd GND #1301 Vdd pmos W=0.0975U L=1.235U
M575_ Vdd n__O1__f_56_6 #fb1306# Vdd pmos W=0.1625U L=0.13U
M576_keeper Vdd GND #1304 Vdd pmos W=0.0975U L=1.235U
M577_ Vdd n__O0__t_57_6 #fb1309# Vdd pmos W=0.1625U L=0.13U
M578_keeper Vdd GND #1307 Vdd pmos W=0.0975U L=1.235U
M579_ Vdd n__O0__f_57_6 #fb1312# Vdd pmos W=0.1625U L=0.13U
M580_keeper Vdd GND #1310 Vdd pmos W=0.0975U L=1.235U
M581_ Vdd n__O1__t_57_6 #fb1315# Vdd pmos W=0.1625U L=0.13U
M582_keeper Vdd GND #1313 Vdd pmos W=0.0975U L=1.235U
M583_ Vdd n__O1__f_57_6 #fb1318# Vdd pmos W=0.1625U L=0.13U
M584_keeper Vdd GND #1316 Vdd pmos W=0.0975U L=1.235U
M585_ Vdd n__O0__t_58_6 #fb1321# Vdd pmos W=0.1625U L=0.13U
M586_keeper Vdd GND #1319 Vdd pmos W=0.0975U L=1.235U
M587_ Vdd n__O0__f_58_6 #fb1324# Vdd pmos W=0.1625U L=0.13U
M588_keeper Vdd GND #1322 Vdd pmos W=0.0975U L=1.235U
M589_ Vdd n__O1__t_58_6 #fb1327# Vdd pmos W=0.1625U L=0.13U
M590_keeper Vdd GND #1325 Vdd pmos W=0.0975U L=1.235U
M591_ Vdd n__O1__f_58_6 #fb1330# Vdd pmos W=0.1625U L=0.13U
M592_keeper Vdd GND #1328 Vdd pmos W=0.0975U L=1.235U
M593_ Vdd n__O0__t_59_6 #fb1333# Vdd pmos W=0.1625U L=0.13U
M594_keeper Vdd GND #1331 Vdd pmos W=0.0975U L=1.235U
M595_ Vdd n__O0__f_59_6 #fb1336# Vdd pmos W=0.1625U L=0.13U
M596_keeper Vdd GND #1334 Vdd pmos W=0.0975U L=1.235U
M597_ Vdd n__O1__t_59_6 #fb1339# Vdd pmos W=0.1625U L=0.13U
M598_keeper Vdd GND #1337 Vdd pmos W=0.0975U L=1.235U
M599_ Vdd n__O1__f_59_6 #fb1342# Vdd pmos W=0.1625U L=0.13U
M600_keeper Vdd GND #1340 Vdd pmos W=0.0975U L=1.235U
M601_ Vdd n__O0__t_510_6 #fb1345# Vdd pmos W=0.1625U L=0.13U
M602_keeper Vdd GND #1343 Vdd pmos W=0.0975U L=1.235U
M603_ Vdd n__O0__f_510_6 #fb1348# Vdd pmos W=0.1625U L=0.13U
M604_keeper Vdd GND #1346 Vdd pmos W=0.0975U L=1.235U
M605_ Vdd n__O1__t_510_6 #fb1351# Vdd pmos W=0.1625U L=0.13U
M606_keeper Vdd GND #1349 Vdd pmos W=0.0975U L=1.235U
M607_ Vdd n__O1__f_510_6 #fb1354# Vdd pmos W=0.1625U L=0.13U
M608_keeper Vdd GND #1352 Vdd pmos W=0.0975U L=1.235U
M609_ Vdd n__O0__t_511_6 #fb1357# Vdd pmos W=0.1625U L=0.13U
M610_keeper Vdd GND #1355 Vdd pmos W=0.0975U L=1.235U
M611_ Vdd n__O0__f_511_6 #fb1360# Vdd pmos W=0.1625U L=0.13U
M612_keeper Vdd GND #1358 Vdd pmos W=0.0975U L=1.235U
M613_ Vdd n__O1__t_511_6 #fb1363# Vdd pmos W=0.1625U L=0.13U
M614_keeper Vdd GND #1361 Vdd pmos W=0.0975U L=1.235U
M615_ Vdd n__O1__f_511_6 #fb1366# Vdd pmos W=0.1625U L=0.13U
M616_keeper Vdd GND #1364 Vdd pmos W=0.0975U L=1.235U
M617_ Vdd n__O0__t_512_6 #fb1369# Vdd pmos W=0.1625U L=0.13U
M618_keeper Vdd GND #1367 Vdd pmos W=0.0975U L=1.235U
M619_ Vdd n__O0__f_512_6 #fb1372# Vdd pmos W=0.1625U L=0.13U
M620_keeper Vdd GND #1370 Vdd pmos W=0.0975U L=1.235U
M621_ Vdd n__O1__t_512_6 #fb1375# Vdd pmos W=0.1625U L=0.13U
M622_keeper Vdd GND #1373 Vdd pmos W=0.0975U L=1.235U
M623_ Vdd n__O1__f_512_6 #fb1378# Vdd pmos W=0.1625U L=0.13U
M624_keeper Vdd GND #1376 Vdd pmos W=0.0975U L=1.235U
M625_keeper Vdd GND #1379 Vdd pmos W=0.0975U L=1.235U
M626_ GND I_af_531_6 #7 GND nmos W=0.39U L=0.065U
M627_ GND inv__s #16 GND nmos W=0.78U L=0.065U
M628_ GND reset w__0i GND nmos W=0.78U L=0.065U
M629_ GND inv__w__1 #31 GND nmos W=0.0975U L=0.065U
M630_ GND reset a GND nmos W=0.0975U L=0.065U
M631_ GND inv__s #36 GND nmos W=0.0975U L=0.065U
M632_ GND reset w__0 GND nmos W=0.0975U L=0.065U
M633_ GND inv__s #37 GND nmos W=0.0975U L=0.065U
M634_ GND w__0i #42 GND nmos W=1.56U L=0.065U
M635_ GND O0_aa #43 GND nmos W=0.0975U L=0.065U
M636_ GND O1_aa #43 GND nmos W=0.0975U L=0.065U
M637_ GND p #52 GND nmos W=0.0975U L=0.065U
M638_ GND p #61 GND nmos W=0.0975U L=0.065U
M639_ GND inv__p #70 GND nmos W=0.0975U L=0.065U
M640_ GND inv__p #77 GND nmos W=0.0975U L=0.065U
M641_ GND p #84 GND nmos W=0.0975U L=0.065U
M642_ GND p #92 GND nmos W=0.0975U L=0.065U
M643_ GND inv__p #100 GND nmos W=0.0975U L=0.065U
M644_ GND inv__p #107 GND nmos W=0.0975U L=0.065U
M645_ GND p #114 GND nmos W=0.0975U L=0.065U
M646_ GND p #122 GND nmos W=0.0975U L=0.065U
M647_ GND inv__p #130 GND nmos W=0.0975U L=0.065U
M648_ GND inv__p #137 GND nmos W=0.0975U L=0.065U
M649_ GND p #144 GND nmos W=0.0975U L=0.065U
M650_ GND p #152 GND nmos W=0.0975U L=0.065U
M651_ GND inv__p #160 GND nmos W=0.0975U L=0.065U
M652_ GND inv__p #167 GND nmos W=0.0975U L=0.065U
M653_ GND p #174 GND nmos W=0.0975U L=0.065U
M654_ GND p #182 GND nmos W=0.0975U L=0.065U
M655_ GND inv__p #190 GND nmos W=0.0975U L=0.065U
M656_ GND inv__p #197 GND nmos W=0.0975U L=0.065U
M657_ GND p #204 GND nmos W=0.0975U L=0.065U
M658_ GND p #212 GND nmos W=0.0975U L=0.065U
M659_ GND inv__p #220 GND nmos W=0.0975U L=0.065U
M660_ GND inv__p #227 GND nmos W=0.0975U L=0.065U
M661_ GND p #234 GND nmos W=0.0975U L=0.065U
M662_ GND p #242 GND nmos W=0.0975U L=0.065U
M663_ GND inv__p #250 GND nmos W=0.0975U L=0.065U
M664_ GND inv__p #257 GND nmos W=0.0975U L=0.065U
M665_ GND p #264 GND nmos W=0.0975U L=0.065U
M666_ GND p #272 GND nmos W=0.0975U L=0.065U
M667_ GND inv__p #280 GND nmos W=0.0975U L=0.065U
M668_ GND inv__p #287 GND nmos W=0.0975U L=0.065U
M669_ GND p #294 GND nmos W=0.0975U L=0.065U
M670_ GND p #302 GND nmos W=0.0975U L=0.065U
M671_ GND inv__p #310 GND nmos W=0.0975U L=0.065U
M672_ GND inv__p #317 GND nmos W=0.0975U L=0.065U
M673_ GND p #324 GND nmos W=0.0975U L=0.065U
M674_ GND p #332 GND nmos W=0.0975U L=0.065U
M675_ GND inv__p #340 GND nmos W=0.0975U L=0.065U
M676_ GND inv__p #347 GND nmos W=0.0975U L=0.065U
M677_ GND p #354 GND nmos W=0.0975U L=0.065U
M678_ GND p #362 GND nmos W=0.0975U L=0.065U
M679_ GND inv__p #370 GND nmos W=0.0975U L=0.065U
M680_ GND inv__p #377 GND nmos W=0.0975U L=0.065U
M681_ GND p #384 GND nmos W=0.0975U L=0.065U
M682_ GND p #392 GND nmos W=0.0975U L=0.065U
M683_ GND inv__p #400 GND nmos W=0.0975U L=0.065U
M684_ GND inv__p #407 GND nmos W=0.0975U L=0.065U
M685_ GND p #414 GND nmos W=0.0975U L=0.065U
M686_ GND p #422 GND nmos W=0.0975U L=0.065U
M687_ GND inv__p #430 GND nmos W=0.0975U L=0.065U
M688_ GND inv__p #437 GND nmos W=0.0975U L=0.065U
M689_ GND p #444 GND nmos W=0.0975U L=0.065U
M690_ GND p #452 GND nmos W=0.0975U L=0.065U
M691_ GND inv__p #460 GND nmos W=0.0975U L=0.065U
M692_ GND inv__p #467 GND nmos W=0.0975U L=0.065U
M693_ GND p #474 GND nmos W=0.0975U L=0.065U
M694_ GND p #482 GND nmos W=0.0975U L=0.065U
M695_ GND inv__p #490 GND nmos W=0.0975U L=0.065U
M696_ GND inv__p #497 GND nmos W=0.0975U L=0.065U
M697_ GND p #504 GND nmos W=0.0975U L=0.065U
M698_ GND p #512 GND nmos W=0.0975U L=0.065U
M699_ GND inv__p #520 GND nmos W=0.0975U L=0.065U
M700_ GND inv__p #527 GND nmos W=0.0975U L=0.065U
M701_ GND p #534 GND nmos W=0.0975U L=0.065U
M702_ GND p #542 GND nmos W=0.0975U L=0.065U
M703_ GND inv__p #550 GND nmos W=0.0975U L=0.065U
M704_ GND inv__p #557 GND nmos W=0.0975U L=0.065U
M705_ GND p #564 GND nmos W=0.0975U L=0.065U
M706_ GND p #572 GND nmos W=0.0975U L=0.065U
M707_ GND inv__p #579 GND nmos W=0.0975U L=0.065U
M708_ GND inv__p #586 GND nmos W=0.0975U L=0.065U
M709_ GND p #594 GND nmos W=0.0975U L=0.065U
M710_ GND p #597 GND nmos W=0.0975U L=0.065U
M711_ GND inv__p #605 GND nmos W=0.0975U L=0.065U
M712_ GND inv__p #608 GND nmos W=0.0975U L=0.065U
M713_ GND p #616 GND nmos W=0.0975U L=0.065U
M714_ GND p #620 GND nmos W=0.0975U L=0.065U
M715_ GND inv__p #625 GND nmos W=0.0975U L=0.065U
M716_ GND inv__p #629 GND nmos W=0.0975U L=0.065U
M717_ GND p #633 GND nmos W=0.0975U L=0.065U
M718_ GND p #638 GND nmos W=0.0975U L=0.065U
M719_ GND inv__p #643 GND nmos W=0.0975U L=0.065U
M720_ GND inv__p #647 GND nmos W=0.0975U L=0.065U
M721_ GND p #651 GND nmos W=0.0975U L=0.065U
M722_ GND p #656 GND nmos W=0.0975U L=0.065U
M723_ GND inv__p #661 GND nmos W=0.0975U L=0.065U
M724_ GND inv__p #665 GND nmos W=0.0975U L=0.065U
M725_ GND p #669 GND nmos W=0.0975U L=0.065U
M726_ GND p #674 GND nmos W=0.0975U L=0.065U
M727_ GND inv__p #679 GND nmos W=0.0975U L=0.065U
M728_ GND inv__p #683 GND nmos W=0.0975U L=0.065U
M729_ GND p #687 GND nmos W=0.0975U L=0.065U
M730_ GND p #692 GND nmos W=0.0975U L=0.065U
M731_ GND inv__p #697 GND nmos W=0.0975U L=0.065U
M732_ GND inv__p #701 GND nmos W=0.0975U L=0.065U
M733_ GND p #705 GND nmos W=0.0975U L=0.065U
M734_ GND p #710 GND nmos W=0.0975U L=0.065U
M735_ GND inv__p #715 GND nmos W=0.0975U L=0.065U
M736_ GND inv__p #719 GND nmos W=0.0975U L=0.065U
M737_ GND p #723 GND nmos W=0.0975U L=0.065U
M738_ GND p #728 GND nmos W=0.0975U L=0.065U
M739_ GND inv__p #733 GND nmos W=0.0975U L=0.065U
M740_ GND inv__p #737 GND nmos W=0.0975U L=0.065U
M741_ GND p #741 GND nmos W=0.0975U L=0.065U
M742_ GND p #746 GND nmos W=0.0975U L=0.065U
M743_ GND inv__p #751 GND nmos W=0.0975U L=0.065U
M744_ GND inv__p #755 GND nmos W=0.0975U L=0.065U
M745_ GND p #759 GND nmos W=0.0975U L=0.065U
M746_ GND p #764 GND nmos W=0.0975U L=0.065U
M747_ GND inv__p #769 GND nmos W=0.0975U L=0.065U
M748_ GND inv__p #773 GND nmos W=0.0975U L=0.065U
M749_ GND p #777 GND nmos W=0.0975U L=0.065U
M750_ GND p #782 GND nmos W=0.0975U L=0.065U
M751_ GND inv__p #787 GND nmos W=0.0975U L=0.065U
M752_ GND inv__p #791 GND nmos W=0.0975U L=0.065U
M753_ GND p #795 GND nmos W=0.0975U L=0.065U
M754_ GND p #800 GND nmos W=0.0975U L=0.065U
M755_ GND inv__p #805 GND nmos W=0.0975U L=0.065U
M756_ GND inv__p #809 GND nmos W=0.0975U L=0.065U
M757_ GND p #813 GND nmos W=0.0975U L=0.065U
M758_ GND p #818 GND nmos W=0.0975U L=0.065U
M759_ GND inv__p #823 GND nmos W=0.0975U L=0.065U
M760_ GND inv__p #827 GND nmos W=0.0975U L=0.065U
M761_ GND p #831 GND nmos W=0.0975U L=0.065U
M762_ GND p #836 GND nmos W=0.0975U L=0.065U
M763_ GND inv__p #841 GND nmos W=0.0975U L=0.065U
M764_ GND inv__p #845 GND nmos W=0.0975U L=0.065U
M765_ GND s inv__s GND nmos W=1.56U L=0.065U
M766_ GND reset inv__reset GND nmos W=0.0975U L=0.065U
M767_ GND p inv__p GND nmos W=0.39U L=0.065U
M768_ GND a inv__a GND nmos W=0.0975U L=0.065U
M769_ GND w__0i inv__w__0i GND nmos W=0.0975U L=0.065U
M770_ GND w__0 inv__w__0 GND nmos W=0.0975U L=0.065U
M771_ GND inv__w__1 w__1 GND nmos W=0.0975U L=0.065U
M772_ GND I_at_531_6 inv__I__t31 GND nmos W=0.0975U L=0.065U
M773_ GND I_af_531_6 inv__I__f31 GND nmos W=0.0975U L=0.065U
M774_ GND I_af_50_6 inv__I__f0 GND nmos W=0.0975U L=0.065U
M775_ GND n__I__a I_aa GND nmos W=0.0975U L=0.065U
M776_ GND n__O0__t_50_6 O0_at_50_6 GND nmos W=0.0975U L=0.065U
M777_ GND n__O0__f_50_6 O0_af_50_6 GND nmos W=0.0975U L=0.065U
M778_ GND n__O1__t_50_6 O1_at_50_6 GND nmos W=0.0975U L=0.065U
M779_ GND n__O1__f_50_6 O1_af_50_6 GND nmos W=0.0975U L=0.065U
M780_ GND n__O0__t_51_6 O0_at_51_6 GND nmos W=0.0975U L=0.065U
M781_ GND n__O0__f_51_6 O0_af_51_6 GND nmos W=0.0975U L=0.065U
M782_ GND n__O1__t_51_6 O1_at_51_6 GND nmos W=0.0975U L=0.065U
M783_ GND n__O1__f_51_6 O1_af_51_6 GND nmos W=0.0975U L=0.065U
M784_ GND n__O0__t_52_6 O0_at_52_6 GND nmos W=0.0975U L=0.065U
M785_ GND n__O0__f_52_6 O0_af_52_6 GND nmos W=0.0975U L=0.065U
M786_ GND n__O1__t_52_6 O1_at_52_6 GND nmos W=0.0975U L=0.065U
M787_ GND n__O1__f_52_6 O1_af_52_6 GND nmos W=0.0975U L=0.065U
M788_ GND n__O0__t_53_6 O0_at_53_6 GND nmos W=0.0975U L=0.065U
M789_ GND n__O0__f_53_6 O0_af_53_6 GND nmos W=0.0975U L=0.065U
M790_ GND n__O1__t_53_6 O1_at_53_6 GND nmos W=0.0975U L=0.065U
M791_ GND n__O1__f_53_6 O1_af_53_6 GND nmos W=0.0975U L=0.065U
M792_ GND n__O0__t_54_6 O0_at_54_6 GND nmos W=0.0975U L=0.065U
M793_ GND n__O0__f_54_6 O0_af_54_6 GND nmos W=0.0975U L=0.065U
M794_ GND n__O1__t_54_6 O1_at_54_6 GND nmos W=0.0975U L=0.065U
M795_ GND n__O1__f_54_6 O1_af_54_6 GND nmos W=0.0975U L=0.065U
M796_ GND n__O0__t_55_6 O0_at_55_6 GND nmos W=0.0975U L=0.065U
M797_ GND n__O0__f_55_6 O0_af_55_6 GND nmos W=0.0975U L=0.065U
M798_ GND n__O1__t_55_6 O1_at_55_6 GND nmos W=0.0975U L=0.065U
M799_ GND n__O1__f_55_6 O1_af_55_6 GND nmos W=0.0975U L=0.065U
M800_ GND n__O0__t_56_6 O0_at_56_6 GND nmos W=0.0975U L=0.065U
M801_ GND n__O0__f_56_6 O0_af_56_6 GND nmos W=0.0975U L=0.065U
M802_ GND n__O1__t_56_6 O1_at_56_6 GND nmos W=0.0975U L=0.065U
M803_ GND n__O1__f_56_6 O1_af_56_6 GND nmos W=0.0975U L=0.065U
M804_ GND n__O0__t_57_6 O0_at_57_6 GND nmos W=0.0975U L=0.065U
M805_ GND n__O0__f_57_6 O0_af_57_6 GND nmos W=0.0975U L=0.065U
M806_ GND n__O1__t_57_6 O1_at_57_6 GND nmos W=0.0975U L=0.065U
M807_ GND n__O1__f_57_6 O1_af_57_6 GND nmos W=0.0975U L=0.065U
M808_ GND n__O0__t_58_6 O0_at_58_6 GND nmos W=0.0975U L=0.065U
M809_ GND n__O0__f_58_6 O0_af_58_6 GND nmos W=0.0975U L=0.065U
M810_ GND n__O1__t_58_6 O1_at_58_6 GND nmos W=0.0975U L=0.065U
M811_ GND n__O1__f_58_6 O1_af_58_6 GND nmos W=0.0975U L=0.065U
M812_ GND n__O0__t_59_6 O0_at_59_6 GND nmos W=0.0975U L=0.065U
M813_ GND n__O0__f_59_6 O0_af_59_6 GND nmos W=0.0975U L=0.065U
M814_ GND n__O1__t_59_6 O1_at_59_6 GND nmos W=0.0975U L=0.065U
M815_ GND n__O1__f_59_6 O1_af_59_6 GND nmos W=0.0975U L=0.065U
M816_ GND n__O0__t_510_6 O0_at_510_6 GND nmos W=0.0975U L=0.065U
M817_ GND n__O0__f_510_6 O0_af_510_6 GND nmos W=0.0975U L=0.065U
M818_ GND n__O1__t_510_6 O1_at_510_6 GND nmos W=0.0975U L=0.065U
M819_ GND n__O1__f_510_6 O1_af_510_6 GND nmos W=0.0975U L=0.065U
M820_ GND n__O0__t_511_6 O0_at_511_6 GND nmos W=0.0975U L=0.065U
M821_ GND n__O0__f_511_6 O0_af_511_6 GND nmos W=0.0975U L=0.065U
M822_ GND n__O1__t_511_6 O1_at_511_6 GND nmos W=0.0975U L=0.065U
M823_ GND n__O1__f_511_6 O1_af_511_6 GND nmos W=0.0975U L=0.065U
M824_ GND n__O0__t_512_6 O0_at_512_6 GND nmos W=0.0975U L=0.065U
M825_ GND n__O0__f_512_6 O0_af_512_6 GND nmos W=0.0975U L=0.065U
M826_ GND n__O1__t_512_6 O1_at_512_6 GND nmos W=0.0975U L=0.065U
M827_ GND n__O1__f_512_6 O1_af_512_6 GND nmos W=0.0975U L=0.065U
M828_ GND n__O0__t_513_6 O0_at_513_6 GND nmos W=0.0975U L=0.065U
M829_ GND n__O0__f_513_6 O0_af_513_6 GND nmos W=0.0975U L=0.065U
M830_ GND n__O1__t_513_6 O1_at_513_6 GND nmos W=0.0975U L=0.065U
M831_ GND n__O1__f_513_6 O1_af_513_6 GND nmos W=0.0975U L=0.065U
M832_ GND n__O0__t_514_6 O0_at_514_6 GND nmos W=0.0975U L=0.065U
M833_ GND n__O0__f_514_6 O0_af_514_6 GND nmos W=0.0975U L=0.065U
M834_ GND n__O1__t_514_6 O1_at_514_6 GND nmos W=0.0975U L=0.065U
M835_ GND n__O1__f_514_6 O1_af_514_6 GND nmos W=0.0975U L=0.065U
M836_ GND n__O0__t_515_6 O0_at_515_6 GND nmos W=0.0975U L=0.065U
M837_ GND n__O0__f_515_6 O0_af_515_6 GND nmos W=0.0975U L=0.065U
M838_ GND n__O1__t_515_6 O1_at_515_6 GND nmos W=0.0975U L=0.065U
M839_ GND n__O1__f_515_6 O1_af_515_6 GND nmos W=0.0975U L=0.065U
M840_ GND n__O0__t_516_6 O0_at_516_6 GND nmos W=0.0975U L=0.065U
M841_ GND n__O0__f_516_6 O0_af_516_6 GND nmos W=0.0975U L=0.065U
M842_ GND n__O1__t_516_6 O1_at_516_6 GND nmos W=0.0975U L=0.065U
M843_ GND n__O1__f_516_6 O1_af_516_6 GND nmos W=0.0975U L=0.065U
M844_ GND n__O0__t_517_6 O0_at_517_6 GND nmos W=0.0975U L=0.065U
M845_ GND n__O0__f_517_6 O0_af_517_6 GND nmos W=0.0975U L=0.065U
M846_ GND n__O1__t_517_6 O1_at_517_6 GND nmos W=0.0975U L=0.065U
M847_ GND n__O1__f_517_6 O1_af_517_6 GND nmos W=0.0975U L=0.065U
M848_ GND n__O0__t_518_6 O0_at_518_6 GND nmos W=0.0975U L=0.065U
M849_ GND n__O0__f_518_6 O0_af_518_6 GND nmos W=0.0975U L=0.065U
M850_ GND n__O1__t_518_6 O1_at_518_6 GND nmos W=0.0975U L=0.065U
M851_ GND n__O1__f_518_6 O1_af_518_6 GND nmos W=0.0975U L=0.065U
M852_ GND n__O0__t_519_6 O0_at_519_6 GND nmos W=0.0975U L=0.065U
M853_ GND n__O0__f_519_6 O0_af_519_6 GND nmos W=0.0975U L=0.065U
M854_ GND n__O1__t_519_6 O1_at_519_6 GND nmos W=0.0975U L=0.065U
M855_ GND n__O1__f_519_6 O1_af_519_6 GND nmos W=0.0975U L=0.065U
M856_ GND n__O0__t_520_6 O0_at_520_6 GND nmos W=0.0975U L=0.065U
M857_ GND n__O0__f_520_6 O0_af_520_6 GND nmos W=0.0975U L=0.065U
M858_ GND n__O1__t_520_6 O1_at_520_6 GND nmos W=0.0975U L=0.065U
M859_ GND n__O1__f_520_6 O1_af_520_6 GND nmos W=0.0975U L=0.065U
M860_ GND n__O0__t_521_6 O0_at_521_6 GND nmos W=0.0975U L=0.065U
M861_ GND n__O0__f_521_6 O0_af_521_6 GND nmos W=0.0975U L=0.065U
M862_ GND n__O1__t_521_6 O1_at_521_6 GND nmos W=0.0975U L=0.065U
M863_ GND n__O1__f_521_6 O1_af_521_6 GND nmos W=0.0975U L=0.065U
M864_ GND n__O0__t_522_6 O0_at_522_6 GND nmos W=0.0975U L=0.065U
M865_ GND n__O0__f_522_6 O0_af_522_6 GND nmos W=0.0975U L=0.065U
M866_ GND n__O1__t_522_6 O1_at_522_6 GND nmos W=0.0975U L=0.065U
M867_ GND n__O1__f_522_6 O1_af_522_6 GND nmos W=0.0975U L=0.065U
M868_ GND n__O0__t_523_6 O0_at_523_6 GND nmos W=0.0975U L=0.065U
M869_ GND n__O0__f_523_6 O0_af_523_6 GND nmos W=0.0975U L=0.065U
M870_ GND n__O1__t_523_6 O1_at_523_6 GND nmos W=0.0975U L=0.065U
M871_ GND n__O1__f_523_6 O1_af_523_6 GND nmos W=0.0975U L=0.065U
M872_ GND n__O0__t_524_6 O0_at_524_6 GND nmos W=0.0975U L=0.065U
M873_ GND n__O0__f_524_6 O0_af_524_6 GND nmos W=0.0975U L=0.065U
M874_ GND n__O1__t_524_6 O1_at_524_6 GND nmos W=0.0975U L=0.065U
M875_ GND n__O1__f_524_6 O1_af_524_6 GND nmos W=0.0975U L=0.065U
M876_ GND n__O0__t_525_6 O0_at_525_6 GND nmos W=0.0975U L=0.065U
M877_ GND n__O0__f_525_6 O0_af_525_6 GND nmos W=0.0975U L=0.065U
M878_ GND n__O1__t_525_6 O1_at_525_6 GND nmos W=0.0975U L=0.065U
M879_ GND n__O1__f_525_6 O1_af_525_6 GND nmos W=0.0975U L=0.065U
M880_ GND n__O0__t_526_6 O0_at_526_6 GND nmos W=0.0975U L=0.065U
M881_ GND n__O0__f_526_6 O0_af_526_6 GND nmos W=0.0975U L=0.065U
M882_ GND n__O1__t_526_6 O1_at_526_6 GND nmos W=0.0975U L=0.065U
M883_ GND n__O1__f_526_6 O1_af_526_6 GND nmos W=0.0975U L=0.065U
M884_ GND n__O0__t_527_6 O0_at_527_6 GND nmos W=0.0975U L=0.065U
M885_ GND n__O0__f_527_6 O0_af_527_6 GND nmos W=0.0975U L=0.065U
M886_ GND n__O1__t_527_6 O1_at_527_6 GND nmos W=0.0975U L=0.065U
M887_ GND n__O1__f_527_6 O1_af_527_6 GND nmos W=0.0975U L=0.065U
M888_ GND n__O0__t_528_6 O0_at_528_6 GND nmos W=0.0975U L=0.065U
M889_ GND n__O0__f_528_6 O0_af_528_6 GND nmos W=0.0975U L=0.065U
M890_ GND n__O1__t_528_6 O1_at_528_6 GND nmos W=0.0975U L=0.065U
M891_ GND n__O1__f_528_6 O1_af_528_6 GND nmos W=0.0975U L=0.065U
M892_ GND n__O0__t_529_6 O0_at_529_6 GND nmos W=0.0975U L=0.065U
M893_ GND n__O0__f_529_6 O0_af_529_6 GND nmos W=0.0975U L=0.065U
M894_ GND n__O1__t_529_6 O1_at_529_6 GND nmos W=0.0975U L=0.065U
M895_ GND n__O1__f_529_6 O1_af_529_6 GND nmos W=0.0975U L=0.065U
M896_ GND n__O0__t_530_6 O0_at_530_6 GND nmos W=0.0975U L=0.065U
M897_ GND n__O0__f_530_6 O0_af_530_6 GND nmos W=0.0975U L=0.065U
M898_ GND n__O1__t_530_6 O1_at_530_6 GND nmos W=0.0975U L=0.065U
M899_ GND n__O1__f_530_6 O1_af_530_6 GND nmos W=0.0975U L=0.065U
M900_ GND n__O0__t_531_6 O0_at_531_6 GND nmos W=0.0975U L=0.065U
M901_ GND n__O0__f_531_6 O0_af_531_6 GND nmos W=0.0975U L=0.065U
M902_ GND n__O1__t_531_6 O1_at_531_6 GND nmos W=0.0975U L=0.065U
M903_ GND n__O1__f_531_6 O1_af_531_6 GND nmos W=0.0975U L=0.065U
M904_ GND p #fb976# GND nmos W=0.0975U L=0.13U
M905_ GND s #fb979# GND nmos W=0.0975U L=0.13U
M906_keeper GND Vdd #978 GND nmos W=0.0975U L=1.495U
M907_ GND w__0i #fb982# GND nmos W=0.0975U L=0.13U
M908_keeper GND Vdd #981 GND nmos W=0.0975U L=1.495U
M909_ GND a #fb985# GND nmos W=0.0975U L=0.13U
M910_keeper GND Vdd #984 GND nmos W=0.0975U L=2.275U
M911_ GND n__I__a #fb988# GND nmos W=0.0975U L=0.13U
M912_keeper GND Vdd #987 GND nmos W=0.0975U L=3.835U
M913_ GND inv__w__1 #fb991# GND nmos W=0.0975U L=0.13U
M914_keeper GND Vdd #990 GND nmos W=0.0975U L=3.835U
M915_ GND w__0 #fb994# GND nmos W=0.0975U L=0.13U
M916_keeper GND Vdd #993 GND nmos W=0.0975U L=1.495U
M917_ GND n__O0__t_514_6 #fb997# GND nmos W=0.0975U L=0.13U
M918_keeper GND Vdd #996 GND nmos W=0.0975U L=1.495U
M919_ GND n__O0__f_514_6 #fb1000# GND nmos W=0.0975U L=0.13U
M920_keeper GND Vdd #999 GND nmos W=0.0975U L=1.495U
M921_ GND n__O1__t_514_6 #fb1003# GND nmos W=0.0975U L=0.13U
M922_keeper GND Vdd #1002 GND nmos W=0.0975U L=1.495U
M923_ GND n__O1__f_514_6 #fb1006# GND nmos W=0.0975U L=0.13U
M924_keeper GND Vdd #1005 GND nmos W=0.0975U L=1.495U
M925_ GND n__O0__t_515_6 #fb1009# GND nmos W=0.0975U L=0.13U
M926_keeper GND Vdd #1008 GND nmos W=0.0975U L=1.495U
M927_ GND n__O0__f_515_6 #fb1012# GND nmos W=0.0975U L=0.13U
M928_keeper GND Vdd #1011 GND nmos W=0.0975U L=1.495U
M929_ GND n__O1__t_515_6 #fb1015# GND nmos W=0.0975U L=0.13U
M930_keeper GND Vdd #1014 GND nmos W=0.0975U L=1.495U
M931_ GND n__O1__f_515_6 #fb1018# GND nmos W=0.0975U L=0.13U
M932_keeper GND Vdd #1017 GND nmos W=0.0975U L=1.495U
M933_ GND n__O0__t_516_6 #fb1021# GND nmos W=0.0975U L=0.13U
M934_keeper GND Vdd #1020 GND nmos W=0.0975U L=1.495U
M935_ GND n__O0__f_516_6 #fb1024# GND nmos W=0.0975U L=0.13U
M936_keeper GND Vdd #1023 GND nmos W=0.0975U L=1.495U
M937_ GND n__O1__t_516_6 #fb1027# GND nmos W=0.0975U L=0.13U
M938_keeper GND Vdd #1026 GND nmos W=0.0975U L=1.495U
M939_ GND n__O1__f_516_6 #fb1030# GND nmos W=0.0975U L=0.13U
M940_keeper GND Vdd #1029 GND nmos W=0.0975U L=1.495U
M941_ GND n__O0__t_517_6 #fb1033# GND nmos W=0.0975U L=0.13U
M942_keeper GND Vdd #1032 GND nmos W=0.0975U L=1.495U
M943_ GND n__O0__f_517_6 #fb1036# GND nmos W=0.0975U L=0.13U
M944_keeper GND Vdd #1035 GND nmos W=0.0975U L=1.495U
M945_ GND n__O1__t_517_6 #fb1039# GND nmos W=0.0975U L=0.13U
M946_keeper GND Vdd #1038 GND nmos W=0.0975U L=1.495U
M947_ GND n__O1__f_517_6 #fb1042# GND nmos W=0.0975U L=0.13U
M948_keeper GND Vdd #1041 GND nmos W=0.0975U L=1.495U
M949_ GND n__O0__t_518_6 #fb1045# GND nmos W=0.0975U L=0.13U
M950_keeper GND Vdd #1044 GND nmos W=0.0975U L=1.495U
M951_ GND n__O0__f_518_6 #fb1048# GND nmos W=0.0975U L=0.13U
M952_keeper GND Vdd #1047 GND nmos W=0.0975U L=1.495U
M953_ GND n__O1__t_518_6 #fb1051# GND nmos W=0.0975U L=0.13U
M954_keeper GND Vdd #1050 GND nmos W=0.0975U L=1.495U
M955_ GND n__O1__f_518_6 #fb1054# GND nmos W=0.0975U L=0.13U
M956_keeper GND Vdd #1053 GND nmos W=0.0975U L=1.495U
M957_ GND n__O0__t_519_6 #fb1057# GND nmos W=0.0975U L=0.13U
M958_keeper GND Vdd #1056 GND nmos W=0.0975U L=1.495U
M959_ GND n__O0__f_519_6 #fb1060# GND nmos W=0.0975U L=0.13U
M960_keeper GND Vdd #1059 GND nmos W=0.0975U L=1.495U
M961_ GND n__O1__t_519_6 #fb1063# GND nmos W=0.0975U L=0.13U
M962_keeper GND Vdd #1062 GND nmos W=0.0975U L=1.495U
M963_ GND n__O1__f_519_6 #fb1066# GND nmos W=0.0975U L=0.13U
M964_keeper GND Vdd #1065 GND nmos W=0.0975U L=1.495U
M965_ GND n__O0__t_520_6 #fb1069# GND nmos W=0.0975U L=0.13U
M966_keeper GND Vdd #1068 GND nmos W=0.0975U L=1.495U
M967_ GND n__O0__f_520_6 #fb1072# GND nmos W=0.0975U L=0.13U
M968_keeper GND Vdd #1071 GND nmos W=0.0975U L=1.495U
M969_ GND n__O1__t_520_6 #fb1075# GND nmos W=0.0975U L=0.13U
M970_keeper GND Vdd #1074 GND nmos W=0.0975U L=1.495U
M971_ GND n__O1__f_520_6 #fb1078# GND nmos W=0.0975U L=0.13U
M972_keeper GND Vdd #1077 GND nmos W=0.0975U L=1.495U
M973_ GND n__O0__t_521_6 #fb1081# GND nmos W=0.0975U L=0.13U
M974_keeper GND Vdd #1080 GND nmos W=0.0975U L=1.495U
M975_ GND n__O0__f_521_6 #fb1084# GND nmos W=0.0975U L=0.13U
M976_keeper GND Vdd #1083 GND nmos W=0.0975U L=1.495U
M977_ GND n__O1__t_521_6 #fb1087# GND nmos W=0.0975U L=0.13U
M978_keeper GND Vdd #1086 GND nmos W=0.0975U L=1.495U
M979_ GND n__O1__f_521_6 #fb1090# GND nmos W=0.0975U L=0.13U
M980_keeper GND Vdd #1089 GND nmos W=0.0975U L=1.495U
M981_ GND n__O0__t_522_6 #fb1093# GND nmos W=0.0975U L=0.13U
M982_keeper GND Vdd #1092 GND nmos W=0.0975U L=1.495U
M983_ GND n__O0__f_522_6 #fb1096# GND nmos W=0.0975U L=0.13U
M984_keeper GND Vdd #1095 GND nmos W=0.0975U L=1.495U
M985_ GND n__O1__t_522_6 #fb1099# GND nmos W=0.0975U L=0.13U
M986_keeper GND Vdd #1098 GND nmos W=0.0975U L=1.495U
M987_ GND n__O1__f_522_6 #fb1102# GND nmos W=0.0975U L=0.13U
M988_keeper GND Vdd #1101 GND nmos W=0.0975U L=1.495U
M989_ GND n__O0__t_523_6 #fb1105# GND nmos W=0.0975U L=0.13U
M990_keeper GND Vdd #1104 GND nmos W=0.0975U L=1.495U
M991_ GND n__O0__f_523_6 #fb1108# GND nmos W=0.0975U L=0.13U
M992_keeper GND Vdd #1107 GND nmos W=0.0975U L=1.495U
M993_ GND n__O1__t_523_6 #fb1111# GND nmos W=0.0975U L=0.13U
M994_keeper GND Vdd #1110 GND nmos W=0.0975U L=1.495U
M995_ GND n__O1__f_523_6 #fb1114# GND nmos W=0.0975U L=0.13U
M996_keeper GND Vdd #1113 GND nmos W=0.0975U L=1.495U
M997_ GND n__O0__t_524_6 #fb1117# GND nmos W=0.0975U L=0.13U
M998_keeper GND Vdd #1116 GND nmos W=0.0975U L=1.495U
M999_ GND n__O0__f_524_6 #fb1120# GND nmos W=0.0975U L=0.13U
M1000_keeper GND Vdd #1119 GND nmos W=0.0975U L=1.495U
M1001_ GND n__O1__t_524_6 #fb1123# GND nmos W=0.0975U L=0.13U
M1002_keeper GND Vdd #1122 GND nmos W=0.0975U L=1.495U
M1003_ GND n__O1__f_524_6 #fb1126# GND nmos W=0.0975U L=0.13U
M1004_keeper GND Vdd #1125 GND nmos W=0.0975U L=1.495U
M1005_ GND n__O0__t_525_6 #fb1129# GND nmos W=0.0975U L=0.13U
M1006_keeper GND Vdd #1128 GND nmos W=0.0975U L=1.495U
M1007_ GND n__O0__f_525_6 #fb1132# GND nmos W=0.0975U L=0.13U
M1008_keeper GND Vdd #1131 GND nmos W=0.0975U L=1.495U
M1009_ GND n__O1__t_525_6 #fb1135# GND nmos W=0.0975U L=0.13U
M1010_keeper GND Vdd #1134 GND nmos W=0.0975U L=1.495U
M1011_ GND n__O1__f_525_6 #fb1138# GND nmos W=0.0975U L=0.13U
M1012_keeper GND Vdd #1137 GND nmos W=0.0975U L=1.495U
M1013_ GND n__O0__t_526_6 #fb1141# GND nmos W=0.0975U L=0.13U
M1014_keeper GND Vdd #1140 GND nmos W=0.0975U L=1.495U
M1015_ GND n__O0__f_526_6 #fb1144# GND nmos W=0.0975U L=0.13U
M1016_keeper GND Vdd #1143 GND nmos W=0.0975U L=1.495U
M1017_ GND n__O1__t_526_6 #fb1147# GND nmos W=0.0975U L=0.13U
M1018_keeper GND Vdd #1146 GND nmos W=0.0975U L=1.495U
M1019_ GND n__O1__f_526_6 #fb1150# GND nmos W=0.0975U L=0.13U
M1020_keeper GND Vdd #1149 GND nmos W=0.0975U L=1.495U
M1021_ GND n__O0__t_527_6 #fb1153# GND nmos W=0.0975U L=0.13U
M1022_keeper GND Vdd #1152 GND nmos W=0.0975U L=1.495U
M1023_ GND n__O0__f_527_6 #fb1156# GND nmos W=0.0975U L=0.13U
M1024_keeper GND Vdd #1155 GND nmos W=0.0975U L=1.495U
M1025_ GND n__O1__t_527_6 #fb1159# GND nmos W=0.0975U L=0.13U
M1026_keeper GND Vdd #1158 GND nmos W=0.0975U L=1.495U
M1027_ GND n__O1__f_527_6 #fb1162# GND nmos W=0.0975U L=0.13U
M1028_keeper GND Vdd #1161 GND nmos W=0.0975U L=1.495U
M1029_ GND n__O0__t_528_6 #fb1165# GND nmos W=0.0975U L=0.13U
M1030_keeper GND Vdd #1164 GND nmos W=0.0975U L=1.495U
M1031_ GND n__O0__f_528_6 #fb1168# GND nmos W=0.0975U L=0.13U
M1032_keeper GND Vdd #1167 GND nmos W=0.0975U L=1.495U
M1033_ GND n__O1__t_528_6 #fb1171# GND nmos W=0.0975U L=0.13U
M1034_keeper GND Vdd #1170 GND nmos W=0.0975U L=1.495U
M1035_ GND n__O1__f_528_6 #fb1174# GND nmos W=0.0975U L=0.13U
M1036_keeper GND Vdd #1173 GND nmos W=0.0975U L=1.495U
M1037_ GND n__O0__t_529_6 #fb1177# GND nmos W=0.0975U L=0.13U
M1038_keeper GND Vdd #1176 GND nmos W=0.0975U L=1.495U
M1039_ GND n__O0__f_529_6 #fb1180# GND nmos W=0.0975U L=0.13U
M1040_keeper GND Vdd #1179 GND nmos W=0.0975U L=1.495U
M1041_ GND n__O1__t_529_6 #fb1183# GND nmos W=0.0975U L=0.13U
M1042_keeper GND Vdd #1182 GND nmos W=0.0975U L=1.495U
M1043_ GND n__O1__f_529_6 #fb1186# GND nmos W=0.0975U L=0.13U
M1044_keeper GND Vdd #1185 GND nmos W=0.0975U L=1.495U
M1045_ GND n__O0__t_530_6 #fb1189# GND nmos W=0.0975U L=0.13U
M1046_keeper GND Vdd #1188 GND nmos W=0.0975U L=1.495U
M1047_ GND n__O0__f_530_6 #fb1192# GND nmos W=0.0975U L=0.13U
M1048_keeper GND Vdd #1191 GND nmos W=0.0975U L=1.495U
M1049_ GND n__O1__t_530_6 #fb1195# GND nmos W=0.0975U L=0.13U
M1050_keeper GND Vdd #1194 GND nmos W=0.0975U L=1.495U
M1051_ GND n__O1__f_530_6 #fb1198# GND nmos W=0.0975U L=0.13U
M1052_keeper GND Vdd #1197 GND nmos W=0.0975U L=1.495U
M1053_ GND n__O0__t_531_6 #fb1201# GND nmos W=0.0975U L=0.13U
M1054_keeper GND Vdd #1200 GND nmos W=0.0975U L=1.495U
M1055_ GND n__O0__f_531_6 #fb1204# GND nmos W=0.0975U L=0.13U
M1056_keeper GND Vdd #1203 GND nmos W=0.0975U L=1.495U
M1057_ GND n__O1__t_531_6 #fb1207# GND nmos W=0.0975U L=0.13U
M1058_keeper GND Vdd #1206 GND nmos W=0.0975U L=1.495U
M1059_ GND n__O1__f_531_6 #fb1210# GND nmos W=0.0975U L=0.13U
M1060_keeper GND Vdd #1209 GND nmos W=0.0975U L=1.495U
M1061_ GND n__O0__t_513_6 #fb1213# GND nmos W=0.0975U L=0.13U
M1062_keeper GND Vdd #1212 GND nmos W=0.0975U L=1.495U
M1063_ GND n__O0__f_513_6 #fb1216# GND nmos W=0.0975U L=0.13U
M1064_keeper GND Vdd #1215 GND nmos W=0.0975U L=1.495U
M1065_ GND n__O1__t_513_6 #fb1219# GND nmos W=0.0975U L=0.13U
M1066_keeper GND Vdd #1218 GND nmos W=0.0975U L=1.495U
M1067_ GND n__O1__f_513_6 #fb1222# GND nmos W=0.0975U L=0.13U
M1068_keeper GND Vdd #1221 GND nmos W=0.0975U L=1.495U
M1069_ GND n__O0__t_50_6 #fb1225# GND nmos W=0.0975U L=0.13U
M1070_keeper GND Vdd #1224 GND nmos W=0.0975U L=1.495U
M1071_ GND n__O0__f_50_6 #fb1228# GND nmos W=0.0975U L=0.13U
M1072_keeper GND Vdd #1227 GND nmos W=0.0975U L=0.715U
M1073_ GND n__O1__t_50_6 #fb1231# GND nmos W=0.0975U L=0.13U
M1074_keeper GND Vdd #1230 GND nmos W=0.0975U L=0.715U
M1075_ GND n__O1__f_50_6 #fb1234# GND nmos W=0.0975U L=0.13U
M1076_keeper GND Vdd #1233 GND nmos W=0.0975U L=0.715U
M1077_ GND n__O0__t_51_6 #fb1237# GND nmos W=0.0975U L=0.13U
M1078_keeper GND Vdd #1236 GND nmos W=0.0975U L=0.715U
M1079_ GND n__O0__f_51_6 #fb1240# GND nmos W=0.0975U L=0.13U
M1080_keeper GND Vdd #1239 GND nmos W=0.0975U L=0.715U
M1081_ GND n__O1__t_51_6 #fb1243# GND nmos W=0.0975U L=0.13U
M1082_keeper GND Vdd #1242 GND nmos W=0.0975U L=0.715U
M1083_ GND n__O1__f_51_6 #fb1246# GND nmos W=0.0975U L=0.13U
M1084_keeper GND Vdd #1245 GND nmos W=0.0975U L=0.715U
M1085_ GND n__O0__t_52_6 #fb1249# GND nmos W=0.0975U L=0.13U
M1086_keeper GND Vdd #1248 GND nmos W=0.0975U L=0.715U
M1087_ GND n__O0__f_52_6 #fb1252# GND nmos W=0.0975U L=0.13U
M1088_keeper GND Vdd #1251 GND nmos W=0.0975U L=0.715U
M1089_ GND n__O1__t_52_6 #fb1255# GND nmos W=0.0975U L=0.13U
M1090_keeper GND Vdd #1254 GND nmos W=0.0975U L=0.715U
M1091_ GND n__O1__f_52_6 #fb1258# GND nmos W=0.0975U L=0.13U
M1092_keeper GND Vdd #1257 GND nmos W=0.0975U L=0.715U
M1093_ GND n__O0__t_53_6 #fb1261# GND nmos W=0.0975U L=0.13U
M1094_keeper GND Vdd #1260 GND nmos W=0.0975U L=0.715U
M1095_ GND n__O0__f_53_6 #fb1264# GND nmos W=0.0975U L=0.13U
M1096_keeper GND Vdd #1263 GND nmos W=0.0975U L=0.715U
M1097_ GND n__O1__t_53_6 #fb1267# GND nmos W=0.0975U L=0.13U
M1098_keeper GND Vdd #1266 GND nmos W=0.0975U L=0.715U
M1099_ GND n__O1__f_53_6 #fb1270# GND nmos W=0.0975U L=0.13U
M1100_keeper GND Vdd #1269 GND nmos W=0.0975U L=0.715U
M1101_ GND n__O0__t_54_6 #fb1273# GND nmos W=0.0975U L=0.13U
M1102_keeper GND Vdd #1272 GND nmos W=0.0975U L=0.715U
M1103_ GND n__O0__f_54_6 #fb1276# GND nmos W=0.0975U L=0.13U
M1104_keeper GND Vdd #1275 GND nmos W=0.0975U L=0.715U
M1105_ GND n__O1__t_54_6 #fb1279# GND nmos W=0.0975U L=0.13U
M1106_keeper GND Vdd #1278 GND nmos W=0.0975U L=0.715U
M1107_ GND n__O1__f_54_6 #fb1282# GND nmos W=0.0975U L=0.13U
M1108_keeper GND Vdd #1281 GND nmos W=0.0975U L=0.715U
M1109_ GND n__O0__t_55_6 #fb1285# GND nmos W=0.0975U L=0.13U
M1110_keeper GND Vdd #1284 GND nmos W=0.0975U L=0.715U
M1111_ GND n__O0__f_55_6 #fb1288# GND nmos W=0.0975U L=0.13U
M1112_keeper GND Vdd #1287 GND nmos W=0.0975U L=0.715U
M1113_ GND n__O1__t_55_6 #fb1291# GND nmos W=0.0975U L=0.13U
M1114_keeper GND Vdd #1290 GND nmos W=0.0975U L=0.715U
M1115_ GND n__O1__f_55_6 #fb1294# GND nmos W=0.0975U L=0.13U
M1116_keeper GND Vdd #1293 GND nmos W=0.0975U L=0.715U
M1117_ GND n__O0__t_56_6 #fb1297# GND nmos W=0.0975U L=0.13U
M1118_keeper GND Vdd #1296 GND nmos W=0.0975U L=0.715U
M1119_ GND n__O0__f_56_6 #fb1300# GND nmos W=0.0975U L=0.13U
M1120_keeper GND Vdd #1299 GND nmos W=0.0975U L=0.715U
M1121_ GND n__O1__t_56_6 #fb1303# GND nmos W=0.0975U L=0.13U
M1122_keeper GND Vdd #1302 GND nmos W=0.0975U L=0.715U
M1123_ GND n__O1__f_56_6 #fb1306# GND nmos W=0.0975U L=0.13U
M1124_keeper GND Vdd #1305 GND nmos W=0.0975U L=0.715U
M1125_ GND n__O0__t_57_6 #fb1309# GND nmos W=0.0975U L=0.13U
M1126_keeper GND Vdd #1308 GND nmos W=0.0975U L=0.715U
M1127_ GND n__O0__f_57_6 #fb1312# GND nmos W=0.0975U L=0.13U
M1128_keeper GND Vdd #1311 GND nmos W=0.0975U L=0.715U
M1129_ GND n__O1__t_57_6 #fb1315# GND nmos W=0.0975U L=0.13U
M1130_keeper GND Vdd #1314 GND nmos W=0.0975U L=0.715U
M1131_ GND n__O1__f_57_6 #fb1318# GND nmos W=0.0975U L=0.13U
M1132_keeper GND Vdd #1317 GND nmos W=0.0975U L=0.715U
M1133_ GND n__O0__t_58_6 #fb1321# GND nmos W=0.0975U L=0.13U
M1134_keeper GND Vdd #1320 GND nmos W=0.0975U L=0.715U
M1135_ GND n__O0__f_58_6 #fb1324# GND nmos W=0.0975U L=0.13U
M1136_keeper GND Vdd #1323 GND nmos W=0.0975U L=0.715U
M1137_ GND n__O1__t_58_6 #fb1327# GND nmos W=0.0975U L=0.13U
M1138_keeper GND Vdd #1326 GND nmos W=0.0975U L=0.715U
M1139_ GND n__O1__f_58_6 #fb1330# GND nmos W=0.0975U L=0.13U
M1140_keeper GND Vdd #1329 GND nmos W=0.0975U L=0.715U
M1141_ GND n__O0__t_59_6 #fb1333# GND nmos W=0.0975U L=0.13U
M1142_keeper GND Vdd #1332 GND nmos W=0.0975U L=0.715U
M1143_ GND n__O0__f_59_6 #fb1336# GND nmos W=0.0975U L=0.13U
M1144_keeper GND Vdd #1335 GND nmos W=0.0975U L=0.715U
M1145_ GND n__O1__t_59_6 #fb1339# GND nmos W=0.0975U L=0.13U
M1146_keeper GND Vdd #1338 GND nmos W=0.0975U L=0.715U
M1147_ GND n__O1__f_59_6 #fb1342# GND nmos W=0.0975U L=0.13U
M1148_keeper GND Vdd #1341 GND nmos W=0.0975U L=0.715U
M1149_ GND n__O0__t_510_6 #fb1345# GND nmos W=0.0975U L=0.13U
M1150_keeper GND Vdd #1344 GND nmos W=0.0975U L=0.715U
M1151_ GND n__O0__f_510_6 #fb1348# GND nmos W=0.0975U L=0.13U
M1152_keeper GND Vdd #1347 GND nmos W=0.0975U L=0.715U
M1153_ GND n__O1__t_510_6 #fb1351# GND nmos W=0.0975U L=0.13U
M1154_keeper GND Vdd #1350 GND nmos W=0.0975U L=0.715U
M1155_ GND n__O1__f_510_6 #fb1354# GND nmos W=0.0975U L=0.13U
M1156_keeper GND Vdd #1353 GND nmos W=0.0975U L=0.715U
M1157_ GND n__O0__t_511_6 #fb1357# GND nmos W=0.0975U L=0.13U
M1158_keeper GND Vdd #1356 GND nmos W=0.0975U L=0.715U
M1159_ GND n__O0__f_511_6 #fb1360# GND nmos W=0.0975U L=0.13U
M1160_keeper GND Vdd #1359 GND nmos W=0.0975U L=0.715U
M1161_ GND n__O1__t_511_6 #fb1363# GND nmos W=0.0975U L=0.13U
M1162_keeper GND Vdd #1362 GND nmos W=0.0975U L=0.715U
M1163_ GND n__O1__f_511_6 #fb1366# GND nmos W=0.0975U L=0.13U
M1164_keeper GND Vdd #1365 GND nmos W=0.0975U L=0.715U
M1165_ GND n__O0__t_512_6 #fb1369# GND nmos W=0.0975U L=0.13U
M1166_keeper GND Vdd #1368 GND nmos W=0.0975U L=0.715U
M1167_ GND n__O0__f_512_6 #fb1372# GND nmos W=0.0975U L=0.13U
M1168_keeper GND Vdd #1371 GND nmos W=0.0975U L=0.715U
M1169_ GND n__O1__t_512_6 #fb1375# GND nmos W=0.0975U L=0.13U
M1170_keeper GND Vdd #1374 GND nmos W=0.0975U L=0.715U
M1171_ GND n__O1__f_512_6 #fb1378# GND nmos W=0.0975U L=0.13U
M1172_keeper GND Vdd #1377 GND nmos W=0.0975U L=0.715U
M1173_keeper GND Vdd #1380 GND nmos W=0.0975U L=0.715U
M1174_ #3 inv__s p Vdd pmos W=0.65U L=0.065U
M1175_ #7 s p GND nmos W=0.39U L=0.065U
M1176_keeper #977 #fb976# p Vdd pmos W=0.0975U L=0.065U
M1177_keeper #978 #fb976# p GND nmos W=0.0975U L=0.065U
M1178_ #41 inv__a s Vdd pmos W=2.6U L=0.065U
M1179_ #42 a s GND nmos W=1.56U L=0.065U
M1180_keeper #980 #fb979# s Vdd pmos W=0.0975U L=0.065U
M1181_keeper #981 #fb979# s GND nmos W=0.0975U L=0.065U
M1182_ #12 inv__p w__0i Vdd pmos W=1.3U L=0.065U
M1183_ #14 p w__0i Vdd pmos W=1.3U L=0.065U
M1184_ #16 O0_aa w__0i GND nmos W=0.78U L=0.065U
M1185_ #16 O1_aa w__0i GND nmos W=0.78U L=0.065U
M1186_keeper #983 #fb982# w__0i Vdd pmos W=0.0975U L=0.065U
M1187_keeper #984 #fb982# w__0i GND nmos W=0.0975U L=0.065U
M1188_ #11 inv__I__t31 #12 Vdd pmos W=1.3U L=0.065U
M1189_ #11 inv__I__f31 #14 Vdd pmos W=1.3U L=0.065U
M1190_ #25 inv__w__0i a Vdd pmos W=0.1625U L=0.065U
M1191_ #27 inv__w__0 a Vdd pmos W=0.1625U L=0.065U
M1192_ #27 inv__w__1 a Vdd pmos W=0.1625U L=0.065U
M1193_ #32 inv__s a GND nmos W=0.0975U L=0.065U
M1194_ #30 inv__w__0i a GND nmos W=0.0975U L=0.065U
M1195_keeper #986 #fb985# a Vdd pmos W=0.0975U L=0.065U
M1196_keeper #987 #fb985# a GND nmos W=0.0975U L=0.065U
M1197_ #24 O1_aa #21 Vdd pmos W=0.1625U L=0.065U
M1198_ #21 inv__s #25 Vdd pmos W=0.1625U L=0.065U
M1199_ #21 s #27 Vdd pmos W=0.1625U L=0.065U
M1200_ #22 O0_aa #24 Vdd pmos W=0.1625U L=0.065U
M1201_ #45 w__1 n__I__a GND nmos W=0.0975U L=0.065U
M1202_ #45 w__0 n__I__a GND nmos W=0.0975U L=0.065U
M1203_ #43 s n__I__a GND nmos W=0.0975U L=0.065U
M1204_ #50 s n__I__a Vdd pmos W=0.1625U L=0.065U
M1205_ #47 w__0i n__I__a Vdd pmos W=0.1625U L=0.065U
M1206_keeper #989 #fb988# n__I__a Vdd pmos W=0.0975U L=0.065U
M1207_keeper #990 #fb988# n__I__a GND nmos W=0.0975U L=0.065U
M1208_ #37 I_at_50_6 inv__w__1 GND nmos W=0.0975U L=0.065U
M1209_ #39 inv__a inv__w__1 Vdd pmos W=0.1625U L=0.065U
M1210_keeper #992 #fb991# inv__w__1 Vdd pmos W=0.0975U L=0.065U
M1211_keeper #993 #fb991# inv__w__1 GND nmos W=0.0975U L=0.065U
M1212_ #31 inv__w__0 #30 GND nmos W=0.0975U L=0.065U
M1213_ #30 w__0i #32 GND nmos W=0.0975U L=0.065U
M1214_ #34 inv__I__f0 w__0 Vdd pmos W=0.1625U L=0.065U
M1215_ #36 a w__0 GND nmos W=0.0975U L=0.065U
M1216_keeper #995 #fb994# w__0 Vdd pmos W=0.0975U L=0.065U
M1217_keeper #996 #fb994# w__0 GND nmos W=0.0975U L=0.065U
M1218_ #43 inv__s #44 GND nmos W=0.0975U L=0.065U
M1219_ #44 inv__w__0i #45 GND nmos W=0.0975U L=0.065U
M1220_ #49 w__1 #47 Vdd pmos W=0.1625U L=0.065U
M1221_ #47 inv__w__0i #50 Vdd pmos W=0.1625U L=0.065U
M1222_ #48 w__0 #49 Vdd pmos W=0.1625U L=0.065U
M1223_ #53 inv__s n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1224_ #55 w__0i n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1225_ #58 s n__O0__t_514_6 Vdd pmos W=0.1625U L=0.065U
M1226_ #59 inv__s n__O0__t_514_6 Vdd pmos W=0.1625U L=0.065U
M1227_keeper #998 #fb997# n__O0__t_514_6 Vdd pmos W=0.0975U L=0.065U
M1228_keeper #999 #fb997# n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1229_ #52 I_at_514_6 #53 GND nmos W=0.0975U L=0.065U
M1230_ #52 I_at_513_6 #56 GND nmos W=0.0975U L=0.065U
M1231_ #56 s #55 GND nmos W=0.0975U L=0.065U
M1232_ #62 inv__s n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1233_ #64 w__0i n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1234_ #67 s n__O0__f_514_6 Vdd pmos W=0.1625U L=0.065U
M1235_ #68 inv__s n__O0__f_514_6 Vdd pmos W=0.1625U L=0.065U
M1236_keeper #1001 #fb1000# n__O0__f_514_6 Vdd pmos W=0.0975U L=0.065U
M1237_keeper #1002 #fb1000# n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1238_ #61 I_af_514_6 #62 GND nmos W=0.0975U L=0.065U
M1239_ #61 I_af_513_6 #65 GND nmos W=0.0975U L=0.065U
M1240_ #65 s #64 GND nmos W=0.0975U L=0.065U
M1241_ #71 inv__s n__O1__t_514_6 GND nmos W=0.0975U L=0.065U
M1242_ #72 w__0i n__O1__t_514_6 GND nmos W=0.0975U L=0.065U
M1243_ #74 s n__O1__t_514_6 Vdd pmos W=0.1625U L=0.065U
M1244_ #75 inv__s n__O1__t_514_6 Vdd pmos W=0.1625U L=0.065U
M1245_keeper #1004 #fb1003# n__O1__t_514_6 Vdd pmos W=0.0975U L=0.065U
M1246_keeper #1005 #fb1003# n__O1__t_514_6 GND nmos W=0.0975U L=0.065U
M1247_ #70 I_at_514_6 #71 GND nmos W=0.0975U L=0.065U
M1248_ #70 I_at_513_6 #73 GND nmos W=0.0975U L=0.065U
M1249_ #73 s #72 GND nmos W=0.0975U L=0.065U
M1250_ #78 inv__s n__O1__f_514_6 GND nmos W=0.0975U L=0.065U
M1251_ #79 w__0i n__O1__f_514_6 GND nmos W=0.0975U L=0.065U
M1252_ #81 s n__O1__f_514_6 Vdd pmos W=0.1625U L=0.065U
M1253_ #82 inv__s n__O1__f_514_6 Vdd pmos W=0.1625U L=0.065U
M1254_keeper #1007 #fb1006# n__O1__f_514_6 Vdd pmos W=0.0975U L=0.065U
M1255_keeper #1008 #fb1006# n__O1__f_514_6 GND nmos W=0.0975U L=0.065U
M1256_ #77 I_af_514_6 #78 GND nmos W=0.0975U L=0.065U
M1257_ #77 I_af_513_6 #80 GND nmos W=0.0975U L=0.065U
M1258_ #80 s #79 GND nmos W=0.0975U L=0.065U
M1259_ #85 inv__s n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1260_ #87 w__0i n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1261_ #89 s n__O0__t_515_6 Vdd pmos W=0.1625U L=0.065U
M1262_ #90 inv__s n__O0__t_515_6 Vdd pmos W=0.1625U L=0.065U
M1263_keeper #1010 #fb1009# n__O0__t_515_6 Vdd pmos W=0.0975U L=0.065U
M1264_keeper #1011 #fb1009# n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1265_ #84 I_at_515_6 #85 GND nmos W=0.0975U L=0.065U
M1266_ #84 I_at_514_6 #88 GND nmos W=0.0975U L=0.065U
M1267_ #88 s #87 GND nmos W=0.0975U L=0.065U
M1268_ #93 inv__s n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1269_ #95 w__0i n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1270_ #97 s n__O0__f_515_6 Vdd pmos W=0.1625U L=0.065U
M1271_ #98 inv__s n__O0__f_515_6 Vdd pmos W=0.1625U L=0.065U
M1272_keeper #1013 #fb1012# n__O0__f_515_6 Vdd pmos W=0.0975U L=0.065U
M1273_keeper #1014 #fb1012# n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1274_ #92 I_af_515_6 #93 GND nmos W=0.0975U L=0.065U
M1275_ #92 I_af_514_6 #96 GND nmos W=0.0975U L=0.065U
M1276_ #96 s #95 GND nmos W=0.0975U L=0.065U
M1277_ #101 inv__s n__O1__t_515_6 GND nmos W=0.0975U L=0.065U
M1278_ #102 w__0i n__O1__t_515_6 GND nmos W=0.0975U L=0.065U
M1279_ #104 s n__O1__t_515_6 Vdd pmos W=0.1625U L=0.065U
M1280_ #105 inv__s n__O1__t_515_6 Vdd pmos W=0.1625U L=0.065U
M1281_keeper #1016 #fb1015# n__O1__t_515_6 Vdd pmos W=0.0975U L=0.065U
M1282_keeper #1017 #fb1015# n__O1__t_515_6 GND nmos W=0.0975U L=0.065U
M1283_ #100 I_at_515_6 #101 GND nmos W=0.0975U L=0.065U
M1284_ #100 I_at_514_6 #103 GND nmos W=0.0975U L=0.065U
M1285_ #103 s #102 GND nmos W=0.0975U L=0.065U
M1286_ #108 inv__s n__O1__f_515_6 GND nmos W=0.0975U L=0.065U
M1287_ #109 w__0i n__O1__f_515_6 GND nmos W=0.0975U L=0.065U
M1288_ #111 s n__O1__f_515_6 Vdd pmos W=0.1625U L=0.065U
M1289_ #112 inv__s n__O1__f_515_6 Vdd pmos W=0.1625U L=0.065U
M1290_keeper #1019 #fb1018# n__O1__f_515_6 Vdd pmos W=0.0975U L=0.065U
M1291_keeper #1020 #fb1018# n__O1__f_515_6 GND nmos W=0.0975U L=0.065U
M1292_ #107 I_af_515_6 #108 GND nmos W=0.0975U L=0.065U
M1293_ #107 I_af_514_6 #110 GND nmos W=0.0975U L=0.065U
M1294_ #110 s #109 GND nmos W=0.0975U L=0.065U
M1295_ #115 inv__s n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1296_ #117 w__0i n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1297_ #119 s n__O0__t_516_6 Vdd pmos W=0.1625U L=0.065U
M1298_ #120 inv__s n__O0__t_516_6 Vdd pmos W=0.1625U L=0.065U
M1299_keeper #1022 #fb1021# n__O0__t_516_6 Vdd pmos W=0.0975U L=0.065U
M1300_keeper #1023 #fb1021# n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1301_ #114 I_at_516_6 #115 GND nmos W=0.0975U L=0.065U
M1302_ #114 I_at_515_6 #118 GND nmos W=0.0975U L=0.065U
M1303_ #118 s #117 GND nmos W=0.0975U L=0.065U
M1304_ #123 inv__s n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1305_ #125 w__0i n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1306_ #127 s n__O0__f_516_6 Vdd pmos W=0.1625U L=0.065U
M1307_ #128 inv__s n__O0__f_516_6 Vdd pmos W=0.1625U L=0.065U
M1308_keeper #1025 #fb1024# n__O0__f_516_6 Vdd pmos W=0.0975U L=0.065U
M1309_keeper #1026 #fb1024# n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1310_ #122 I_af_516_6 #123 GND nmos W=0.0975U L=0.065U
M1311_ #122 I_af_515_6 #126 GND nmos W=0.0975U L=0.065U
M1312_ #126 s #125 GND nmos W=0.0975U L=0.065U
M1313_ #131 inv__s n__O1__t_516_6 GND nmos W=0.0975U L=0.065U
M1314_ #132 w__0i n__O1__t_516_6 GND nmos W=0.0975U L=0.065U
M1315_ #134 s n__O1__t_516_6 Vdd pmos W=0.1625U L=0.065U
M1316_ #135 inv__s n__O1__t_516_6 Vdd pmos W=0.1625U L=0.065U
M1317_keeper #1028 #fb1027# n__O1__t_516_6 Vdd pmos W=0.0975U L=0.065U
M1318_keeper #1029 #fb1027# n__O1__t_516_6 GND nmos W=0.0975U L=0.065U
M1319_ #130 I_at_516_6 #131 GND nmos W=0.0975U L=0.065U
M1320_ #130 I_at_515_6 #133 GND nmos W=0.0975U L=0.065U
M1321_ #133 s #132 GND nmos W=0.0975U L=0.065U
M1322_ #138 inv__s n__O1__f_516_6 GND nmos W=0.0975U L=0.065U
M1323_ #139 w__0i n__O1__f_516_6 GND nmos W=0.0975U L=0.065U
M1324_ #141 s n__O1__f_516_6 Vdd pmos W=0.1625U L=0.065U
M1325_ #142 inv__s n__O1__f_516_6 Vdd pmos W=0.1625U L=0.065U
M1326_keeper #1031 #fb1030# n__O1__f_516_6 Vdd pmos W=0.0975U L=0.065U
M1327_keeper #1032 #fb1030# n__O1__f_516_6 GND nmos W=0.0975U L=0.065U
M1328_ #137 I_af_516_6 #138 GND nmos W=0.0975U L=0.065U
M1329_ #137 I_af_515_6 #140 GND nmos W=0.0975U L=0.065U
M1330_ #140 s #139 GND nmos W=0.0975U L=0.065U
M1331_ #145 inv__s n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1332_ #147 w__0i n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1333_ #149 s n__O0__t_517_6 Vdd pmos W=0.1625U L=0.065U
M1334_ #150 inv__s n__O0__t_517_6 Vdd pmos W=0.1625U L=0.065U
M1335_keeper #1034 #fb1033# n__O0__t_517_6 Vdd pmos W=0.0975U L=0.065U
M1336_keeper #1035 #fb1033# n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1337_ #144 I_at_517_6 #145 GND nmos W=0.0975U L=0.065U
M1338_ #144 I_at_516_6 #148 GND nmos W=0.0975U L=0.065U
M1339_ #148 s #147 GND nmos W=0.0975U L=0.065U
M1340_ #153 inv__s n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1341_ #155 w__0i n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1342_ #157 s n__O0__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1343_ #158 inv__s n__O0__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1344_keeper #1037 #fb1036# n__O0__f_517_6 Vdd pmos W=0.0975U L=0.065U
M1345_keeper #1038 #fb1036# n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1346_ #152 I_af_517_6 #153 GND nmos W=0.0975U L=0.065U
M1347_ #152 I_af_516_6 #156 GND nmos W=0.0975U L=0.065U
M1348_ #156 s #155 GND nmos W=0.0975U L=0.065U
M1349_ #161 inv__s n__O1__t_517_6 GND nmos W=0.0975U L=0.065U
M1350_ #162 w__0i n__O1__t_517_6 GND nmos W=0.0975U L=0.065U
M1351_ #164 s n__O1__t_517_6 Vdd pmos W=0.1625U L=0.065U
M1352_ #165 inv__s n__O1__t_517_6 Vdd pmos W=0.1625U L=0.065U
M1353_keeper #1040 #fb1039# n__O1__t_517_6 Vdd pmos W=0.0975U L=0.065U
M1354_keeper #1041 #fb1039# n__O1__t_517_6 GND nmos W=0.0975U L=0.065U
M1355_ #160 I_at_517_6 #161 GND nmos W=0.0975U L=0.065U
M1356_ #160 I_at_516_6 #163 GND nmos W=0.0975U L=0.065U
M1357_ #163 s #162 GND nmos W=0.0975U L=0.065U
M1358_ #168 inv__s n__O1__f_517_6 GND nmos W=0.0975U L=0.065U
M1359_ #169 w__0i n__O1__f_517_6 GND nmos W=0.0975U L=0.065U
M1360_ #171 s n__O1__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1361_ #172 inv__s n__O1__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1362_keeper #1043 #fb1042# n__O1__f_517_6 Vdd pmos W=0.0975U L=0.065U
M1363_keeper #1044 #fb1042# n__O1__f_517_6 GND nmos W=0.0975U L=0.065U
M1364_ #167 I_af_517_6 #168 GND nmos W=0.0975U L=0.065U
M1365_ #167 I_af_516_6 #170 GND nmos W=0.0975U L=0.065U
M1366_ #170 s #169 GND nmos W=0.0975U L=0.065U
M1367_ #175 inv__s n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1368_ #177 w__0i n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1369_ #179 s n__O0__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1370_ #180 inv__s n__O0__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1371_keeper #1046 #fb1045# n__O0__t_518_6 Vdd pmos W=0.0975U L=0.065U
M1372_keeper #1047 #fb1045# n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1373_ #174 I_at_518_6 #175 GND nmos W=0.0975U L=0.065U
M1374_ #174 I_at_517_6 #178 GND nmos W=0.0975U L=0.065U
M1375_ #178 s #177 GND nmos W=0.0975U L=0.065U
M1376_ #183 inv__s n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1377_ #185 w__0i n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1378_ #187 s n__O0__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1379_ #188 inv__s n__O0__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1380_keeper #1049 #fb1048# n__O0__f_518_6 Vdd pmos W=0.0975U L=0.065U
M1381_keeper #1050 #fb1048# n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1382_ #182 I_af_518_6 #183 GND nmos W=0.0975U L=0.065U
M1383_ #182 I_af_517_6 #186 GND nmos W=0.0975U L=0.065U
M1384_ #186 s #185 GND nmos W=0.0975U L=0.065U
M1385_ #191 inv__s n__O1__t_518_6 GND nmos W=0.0975U L=0.065U
M1386_ #192 w__0i n__O1__t_518_6 GND nmos W=0.0975U L=0.065U
M1387_ #194 s n__O1__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1388_ #195 inv__s n__O1__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1389_keeper #1052 #fb1051# n__O1__t_518_6 Vdd pmos W=0.0975U L=0.065U
M1390_keeper #1053 #fb1051# n__O1__t_518_6 GND nmos W=0.0975U L=0.065U
M1391_ #190 I_at_518_6 #191 GND nmos W=0.0975U L=0.065U
M1392_ #190 I_at_517_6 #193 GND nmos W=0.0975U L=0.065U
M1393_ #193 s #192 GND nmos W=0.0975U L=0.065U
M1394_ #198 inv__s n__O1__f_518_6 GND nmos W=0.0975U L=0.065U
M1395_ #199 w__0i n__O1__f_518_6 GND nmos W=0.0975U L=0.065U
M1396_ #201 s n__O1__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1397_ #202 inv__s n__O1__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1398_keeper #1055 #fb1054# n__O1__f_518_6 Vdd pmos W=0.0975U L=0.065U
M1399_keeper #1056 #fb1054# n__O1__f_518_6 GND nmos W=0.0975U L=0.065U
M1400_ #197 I_af_518_6 #198 GND nmos W=0.0975U L=0.065U
M1401_ #197 I_af_517_6 #200 GND nmos W=0.0975U L=0.065U
M1402_ #200 s #199 GND nmos W=0.0975U L=0.065U
M1403_ #205 inv__s n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1404_ #207 w__0i n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1405_ #209 s n__O0__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1406_ #210 inv__s n__O0__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1407_keeper #1058 #fb1057# n__O0__t_519_6 Vdd pmos W=0.0975U L=0.065U
M1408_keeper #1059 #fb1057# n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1409_ #204 I_at_519_6 #205 GND nmos W=0.0975U L=0.065U
M1410_ #204 I_at_518_6 #208 GND nmos W=0.0975U L=0.065U
M1411_ #208 s #207 GND nmos W=0.0975U L=0.065U
M1412_ #213 inv__s n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1413_ #215 w__0i n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1414_ #217 s n__O0__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1415_ #218 inv__s n__O0__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1416_keeper #1061 #fb1060# n__O0__f_519_6 Vdd pmos W=0.0975U L=0.065U
M1417_keeper #1062 #fb1060# n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1418_ #212 I_af_519_6 #213 GND nmos W=0.0975U L=0.065U
M1419_ #212 I_af_518_6 #216 GND nmos W=0.0975U L=0.065U
M1420_ #216 s #215 GND nmos W=0.0975U L=0.065U
M1421_ #221 inv__s n__O1__t_519_6 GND nmos W=0.0975U L=0.065U
M1422_ #222 w__0i n__O1__t_519_6 GND nmos W=0.0975U L=0.065U
M1423_ #224 s n__O1__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1424_ #225 inv__s n__O1__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1425_keeper #1064 #fb1063# n__O1__t_519_6 Vdd pmos W=0.0975U L=0.065U
M1426_keeper #1065 #fb1063# n__O1__t_519_6 GND nmos W=0.0975U L=0.065U
M1427_ #220 I_at_519_6 #221 GND nmos W=0.0975U L=0.065U
M1428_ #220 I_at_518_6 #223 GND nmos W=0.0975U L=0.065U
M1429_ #223 s #222 GND nmos W=0.0975U L=0.065U
M1430_ #228 inv__s n__O1__f_519_6 GND nmos W=0.0975U L=0.065U
M1431_ #229 w__0i n__O1__f_519_6 GND nmos W=0.0975U L=0.065U
M1432_ #231 s n__O1__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1433_ #232 inv__s n__O1__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1434_keeper #1067 #fb1066# n__O1__f_519_6 Vdd pmos W=0.0975U L=0.065U
M1435_keeper #1068 #fb1066# n__O1__f_519_6 GND nmos W=0.0975U L=0.065U
M1436_ #227 I_af_519_6 #228 GND nmos W=0.0975U L=0.065U
M1437_ #227 I_af_518_6 #230 GND nmos W=0.0975U L=0.065U
M1438_ #230 s #229 GND nmos W=0.0975U L=0.065U
M1439_ #235 inv__s n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1440_ #237 w__0i n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1441_ #239 s n__O0__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1442_ #240 inv__s n__O0__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1443_keeper #1070 #fb1069# n__O0__t_520_6 Vdd pmos W=0.0975U L=0.065U
M1444_keeper #1071 #fb1069# n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1445_ #234 I_at_520_6 #235 GND nmos W=0.0975U L=0.065U
M1446_ #234 I_at_519_6 #238 GND nmos W=0.0975U L=0.065U
M1447_ #238 s #237 GND nmos W=0.0975U L=0.065U
M1448_ #243 inv__s n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1449_ #245 w__0i n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1450_ #247 s n__O0__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1451_ #248 inv__s n__O0__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1452_keeper #1073 #fb1072# n__O0__f_520_6 Vdd pmos W=0.0975U L=0.065U
M1453_keeper #1074 #fb1072# n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1454_ #242 I_af_520_6 #243 GND nmos W=0.0975U L=0.065U
M1455_ #242 I_af_519_6 #246 GND nmos W=0.0975U L=0.065U
M1456_ #246 s #245 GND nmos W=0.0975U L=0.065U
M1457_ #251 inv__s n__O1__t_520_6 GND nmos W=0.0975U L=0.065U
M1458_ #252 w__0i n__O1__t_520_6 GND nmos W=0.0975U L=0.065U
M1459_ #254 s n__O1__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1460_ #255 inv__s n__O1__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1461_keeper #1076 #fb1075# n__O1__t_520_6 Vdd pmos W=0.0975U L=0.065U
M1462_keeper #1077 #fb1075# n__O1__t_520_6 GND nmos W=0.0975U L=0.065U
M1463_ #250 I_at_520_6 #251 GND nmos W=0.0975U L=0.065U
M1464_ #250 I_at_519_6 #253 GND nmos W=0.0975U L=0.065U
M1465_ #253 s #252 GND nmos W=0.0975U L=0.065U
M1466_ #258 inv__s n__O1__f_520_6 GND nmos W=0.0975U L=0.065U
M1467_ #259 w__0i n__O1__f_520_6 GND nmos W=0.0975U L=0.065U
M1468_ #261 s n__O1__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1469_ #262 inv__s n__O1__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1470_keeper #1079 #fb1078# n__O1__f_520_6 Vdd pmos W=0.0975U L=0.065U
M1471_keeper #1080 #fb1078# n__O1__f_520_6 GND nmos W=0.0975U L=0.065U
M1472_ #257 I_af_520_6 #258 GND nmos W=0.0975U L=0.065U
M1473_ #257 I_af_519_6 #260 GND nmos W=0.0975U L=0.065U
M1474_ #260 s #259 GND nmos W=0.0975U L=0.065U
M1475_ #265 inv__s n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1476_ #267 w__0i n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1477_ #269 s n__O0__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1478_ #270 inv__s n__O0__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1479_keeper #1082 #fb1081# n__O0__t_521_6 Vdd pmos W=0.0975U L=0.065U
M1480_keeper #1083 #fb1081# n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1481_ #264 I_at_521_6 #265 GND nmos W=0.0975U L=0.065U
M1482_ #264 I_at_520_6 #268 GND nmos W=0.0975U L=0.065U
M1483_ #268 s #267 GND nmos W=0.0975U L=0.065U
M1484_ #273 inv__s n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1485_ #275 w__0i n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1486_ #277 s n__O0__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1487_ #278 inv__s n__O0__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1488_keeper #1085 #fb1084# n__O0__f_521_6 Vdd pmos W=0.0975U L=0.065U
M1489_keeper #1086 #fb1084# n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1490_ #272 I_af_521_6 #273 GND nmos W=0.0975U L=0.065U
M1491_ #272 I_af_520_6 #276 GND nmos W=0.0975U L=0.065U
M1492_ #276 s #275 GND nmos W=0.0975U L=0.065U
M1493_ #281 inv__s n__O1__t_521_6 GND nmos W=0.0975U L=0.065U
M1494_ #282 w__0i n__O1__t_521_6 GND nmos W=0.0975U L=0.065U
M1495_ #284 s n__O1__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1496_ #285 inv__s n__O1__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1497_keeper #1088 #fb1087# n__O1__t_521_6 Vdd pmos W=0.0975U L=0.065U
M1498_keeper #1089 #fb1087# n__O1__t_521_6 GND nmos W=0.0975U L=0.065U
M1499_ #280 I_at_521_6 #281 GND nmos W=0.0975U L=0.065U
M1500_ #280 I_at_520_6 #283 GND nmos W=0.0975U L=0.065U
M1501_ #283 s #282 GND nmos W=0.0975U L=0.065U
M1502_ #288 inv__s n__O1__f_521_6 GND nmos W=0.0975U L=0.065U
M1503_ #289 w__0i n__O1__f_521_6 GND nmos W=0.0975U L=0.065U
M1504_ #291 s n__O1__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1505_ #292 inv__s n__O1__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1506_keeper #1091 #fb1090# n__O1__f_521_6 Vdd pmos W=0.0975U L=0.065U
M1507_keeper #1092 #fb1090# n__O1__f_521_6 GND nmos W=0.0975U L=0.065U
M1508_ #287 I_af_521_6 #288 GND nmos W=0.0975U L=0.065U
M1509_ #287 I_af_520_6 #290 GND nmos W=0.0975U L=0.065U
M1510_ #290 s #289 GND nmos W=0.0975U L=0.065U
M1511_ #295 inv__s n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1512_ #297 w__0i n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1513_ #299 s n__O0__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1514_ #300 inv__s n__O0__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1515_keeper #1094 #fb1093# n__O0__t_522_6 Vdd pmos W=0.0975U L=0.065U
M1516_keeper #1095 #fb1093# n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1517_ #294 I_at_522_6 #295 GND nmos W=0.0975U L=0.065U
M1518_ #294 I_at_521_6 #298 GND nmos W=0.0975U L=0.065U
M1519_ #298 s #297 GND nmos W=0.0975U L=0.065U
M1520_ #303 inv__s n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1521_ #305 w__0i n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1522_ #307 s n__O0__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1523_ #308 inv__s n__O0__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1524_keeper #1097 #fb1096# n__O0__f_522_6 Vdd pmos W=0.0975U L=0.065U
M1525_keeper #1098 #fb1096# n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1526_ #302 I_af_522_6 #303 GND nmos W=0.0975U L=0.065U
M1527_ #302 I_af_521_6 #306 GND nmos W=0.0975U L=0.065U
M1528_ #306 s #305 GND nmos W=0.0975U L=0.065U
M1529_ #311 inv__s n__O1__t_522_6 GND nmos W=0.0975U L=0.065U
M1530_ #312 w__0i n__O1__t_522_6 GND nmos W=0.0975U L=0.065U
M1531_ #314 s n__O1__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1532_ #315 inv__s n__O1__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1533_keeper #1100 #fb1099# n__O1__t_522_6 Vdd pmos W=0.0975U L=0.065U
M1534_keeper #1101 #fb1099# n__O1__t_522_6 GND nmos W=0.0975U L=0.065U
M1535_ #310 I_at_522_6 #311 GND nmos W=0.0975U L=0.065U
M1536_ #310 I_at_521_6 #313 GND nmos W=0.0975U L=0.065U
M1537_ #313 s #312 GND nmos W=0.0975U L=0.065U
M1538_ #318 inv__s n__O1__f_522_6 GND nmos W=0.0975U L=0.065U
M1539_ #319 w__0i n__O1__f_522_6 GND nmos W=0.0975U L=0.065U
M1540_ #321 s n__O1__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1541_ #322 inv__s n__O1__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1542_keeper #1103 #fb1102# n__O1__f_522_6 Vdd pmos W=0.0975U L=0.065U
M1543_keeper #1104 #fb1102# n__O1__f_522_6 GND nmos W=0.0975U L=0.065U
M1544_ #317 I_af_522_6 #318 GND nmos W=0.0975U L=0.065U
M1545_ #317 I_af_521_6 #320 GND nmos W=0.0975U L=0.065U
M1546_ #320 s #319 GND nmos W=0.0975U L=0.065U
M1547_ #325 inv__s n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1548_ #327 w__0i n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1549_ #329 s n__O0__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1550_ #330 inv__s n__O0__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1551_keeper #1106 #fb1105# n__O0__t_523_6 Vdd pmos W=0.0975U L=0.065U
M1552_keeper #1107 #fb1105# n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1553_ #324 I_at_523_6 #325 GND nmos W=0.0975U L=0.065U
M1554_ #324 I_at_522_6 #328 GND nmos W=0.0975U L=0.065U
M1555_ #328 s #327 GND nmos W=0.0975U L=0.065U
M1556_ #333 inv__s n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1557_ #335 w__0i n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1558_ #337 s n__O0__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1559_ #338 inv__s n__O0__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1560_keeper #1109 #fb1108# n__O0__f_523_6 Vdd pmos W=0.0975U L=0.065U
M1561_keeper #1110 #fb1108# n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1562_ #332 I_af_523_6 #333 GND nmos W=0.0975U L=0.065U
M1563_ #332 I_af_522_6 #336 GND nmos W=0.0975U L=0.065U
M1564_ #336 s #335 GND nmos W=0.0975U L=0.065U
M1565_ #341 inv__s n__O1__t_523_6 GND nmos W=0.0975U L=0.065U
M1566_ #342 w__0i n__O1__t_523_6 GND nmos W=0.0975U L=0.065U
M1567_ #344 s n__O1__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1568_ #345 inv__s n__O1__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1569_keeper #1112 #fb1111# n__O1__t_523_6 Vdd pmos W=0.0975U L=0.065U
M1570_keeper #1113 #fb1111# n__O1__t_523_6 GND nmos W=0.0975U L=0.065U
M1571_ #340 I_at_523_6 #341 GND nmos W=0.0975U L=0.065U
M1572_ #340 I_at_522_6 #343 GND nmos W=0.0975U L=0.065U
M1573_ #343 s #342 GND nmos W=0.0975U L=0.065U
M1574_ #348 inv__s n__O1__f_523_6 GND nmos W=0.0975U L=0.065U
M1575_ #349 w__0i n__O1__f_523_6 GND nmos W=0.0975U L=0.065U
M1576_ #351 s n__O1__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1577_ #352 inv__s n__O1__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1578_keeper #1115 #fb1114# n__O1__f_523_6 Vdd pmos W=0.0975U L=0.065U
M1579_keeper #1116 #fb1114# n__O1__f_523_6 GND nmos W=0.0975U L=0.065U
M1580_ #347 I_af_523_6 #348 GND nmos W=0.0975U L=0.065U
M1581_ #347 I_af_522_6 #350 GND nmos W=0.0975U L=0.065U
M1582_ #350 s #349 GND nmos W=0.0975U L=0.065U
M1583_ #355 inv__s n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1584_ #357 w__0i n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1585_ #359 s n__O0__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1586_ #360 inv__s n__O0__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1587_keeper #1118 #fb1117# n__O0__t_524_6 Vdd pmos W=0.0975U L=0.065U
M1588_keeper #1119 #fb1117# n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1589_ #354 I_at_524_6 #355 GND nmos W=0.0975U L=0.065U
M1590_ #354 I_at_523_6 #358 GND nmos W=0.0975U L=0.065U
M1591_ #358 s #357 GND nmos W=0.0975U L=0.065U
M1592_ #363 inv__s n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M1593_ #365 w__0i n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M1594_ #367 s n__O0__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1595_ #368 inv__s n__O0__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1596_keeper #1121 #fb1120# n__O0__f_524_6 Vdd pmos W=0.0975U L=0.065U
M1597_keeper #1122 #fb1120# n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M1598_ #362 I_af_524_6 #363 GND nmos W=0.0975U L=0.065U
M1599_ #362 I_af_523_6 #366 GND nmos W=0.0975U L=0.065U
M1600_ #366 s #365 GND nmos W=0.0975U L=0.065U
M1601_ #371 inv__s n__O1__t_524_6 GND nmos W=0.0975U L=0.065U
M1602_ #372 w__0i n__O1__t_524_6 GND nmos W=0.0975U L=0.065U
M1603_ #374 s n__O1__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1604_ #375 inv__s n__O1__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1605_keeper #1124 #fb1123# n__O1__t_524_6 Vdd pmos W=0.0975U L=0.065U
M1606_keeper #1125 #fb1123# n__O1__t_524_6 GND nmos W=0.0975U L=0.065U
M1607_ #370 I_at_524_6 #371 GND nmos W=0.0975U L=0.065U
M1608_ #370 I_at_523_6 #373 GND nmos W=0.0975U L=0.065U
M1609_ #373 s #372 GND nmos W=0.0975U L=0.065U
M1610_ #378 inv__s n__O1__f_524_6 GND nmos W=0.0975U L=0.065U
M1611_ #379 w__0i n__O1__f_524_6 GND nmos W=0.0975U L=0.065U
M1612_ #381 s n__O1__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1613_ #382 inv__s n__O1__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1614_keeper #1127 #fb1126# n__O1__f_524_6 Vdd pmos W=0.0975U L=0.065U
M1615_keeper #1128 #fb1126# n__O1__f_524_6 GND nmos W=0.0975U L=0.065U
M1616_ #377 I_af_524_6 #378 GND nmos W=0.0975U L=0.065U
M1617_ #377 I_af_523_6 #380 GND nmos W=0.0975U L=0.065U
M1618_ #380 s #379 GND nmos W=0.0975U L=0.065U
M1619_ #385 inv__s n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M1620_ #387 w__0i n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M1621_ #389 s n__O0__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1622_ #390 inv__s n__O0__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1623_keeper #1130 #fb1129# n__O0__t_525_6 Vdd pmos W=0.0975U L=0.065U
M1624_keeper #1131 #fb1129# n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M1625_ #384 I_at_525_6 #385 GND nmos W=0.0975U L=0.065U
M1626_ #384 I_at_524_6 #388 GND nmos W=0.0975U L=0.065U
M1627_ #388 s #387 GND nmos W=0.0975U L=0.065U
M1628_ #393 inv__s n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M1629_ #395 w__0i n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M1630_ #397 s n__O0__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1631_ #398 inv__s n__O0__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1632_keeper #1133 #fb1132# n__O0__f_525_6 Vdd pmos W=0.0975U L=0.065U
M1633_keeper #1134 #fb1132# n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M1634_ #392 I_af_525_6 #393 GND nmos W=0.0975U L=0.065U
M1635_ #392 I_af_524_6 #396 GND nmos W=0.0975U L=0.065U
M1636_ #396 s #395 GND nmos W=0.0975U L=0.065U
M1637_ #401 inv__s n__O1__t_525_6 GND nmos W=0.0975U L=0.065U
M1638_ #402 w__0i n__O1__t_525_6 GND nmos W=0.0975U L=0.065U
M1639_ #404 s n__O1__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1640_ #405 inv__s n__O1__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1641_keeper #1136 #fb1135# n__O1__t_525_6 Vdd pmos W=0.0975U L=0.065U
M1642_keeper #1137 #fb1135# n__O1__t_525_6 GND nmos W=0.0975U L=0.065U
M1643_ #400 I_at_525_6 #401 GND nmos W=0.0975U L=0.065U
M1644_ #400 I_at_524_6 #403 GND nmos W=0.0975U L=0.065U
M1645_ #403 s #402 GND nmos W=0.0975U L=0.065U
M1646_ #408 inv__s n__O1__f_525_6 GND nmos W=0.0975U L=0.065U
M1647_ #409 w__0i n__O1__f_525_6 GND nmos W=0.0975U L=0.065U
M1648_ #411 s n__O1__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1649_ #412 inv__s n__O1__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1650_keeper #1139 #fb1138# n__O1__f_525_6 Vdd pmos W=0.0975U L=0.065U
M1651_keeper #1140 #fb1138# n__O1__f_525_6 GND nmos W=0.0975U L=0.065U
M1652_ #407 I_af_525_6 #408 GND nmos W=0.0975U L=0.065U
M1653_ #407 I_af_524_6 #410 GND nmos W=0.0975U L=0.065U
M1654_ #410 s #409 GND nmos W=0.0975U L=0.065U
M1655_ #415 inv__s n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M1656_ #417 w__0i n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M1657_ #419 s n__O0__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1658_ #420 inv__s n__O0__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1659_keeper #1142 #fb1141# n__O0__t_526_6 Vdd pmos W=0.0975U L=0.065U
M1660_keeper #1143 #fb1141# n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M1661_ #414 I_at_526_6 #415 GND nmos W=0.0975U L=0.065U
M1662_ #414 I_at_525_6 #418 GND nmos W=0.0975U L=0.065U
M1663_ #418 s #417 GND nmos W=0.0975U L=0.065U
M1664_ #423 inv__s n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M1665_ #425 w__0i n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M1666_ #427 s n__O0__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1667_ #428 inv__s n__O0__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1668_keeper #1145 #fb1144# n__O0__f_526_6 Vdd pmos W=0.0975U L=0.065U
M1669_keeper #1146 #fb1144# n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M1670_ #422 I_af_526_6 #423 GND nmos W=0.0975U L=0.065U
M1671_ #422 I_af_525_6 #426 GND nmos W=0.0975U L=0.065U
M1672_ #426 s #425 GND nmos W=0.0975U L=0.065U
M1673_ #431 inv__s n__O1__t_526_6 GND nmos W=0.0975U L=0.065U
M1674_ #432 w__0i n__O1__t_526_6 GND nmos W=0.0975U L=0.065U
M1675_ #434 s n__O1__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1676_ #435 inv__s n__O1__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1677_keeper #1148 #fb1147# n__O1__t_526_6 Vdd pmos W=0.0975U L=0.065U
M1678_keeper #1149 #fb1147# n__O1__t_526_6 GND nmos W=0.0975U L=0.065U
M1679_ #430 I_at_526_6 #431 GND nmos W=0.0975U L=0.065U
M1680_ #430 I_at_525_6 #433 GND nmos W=0.0975U L=0.065U
M1681_ #433 s #432 GND nmos W=0.0975U L=0.065U
M1682_ #438 inv__s n__O1__f_526_6 GND nmos W=0.0975U L=0.065U
M1683_ #439 w__0i n__O1__f_526_6 GND nmos W=0.0975U L=0.065U
M1684_ #441 s n__O1__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1685_ #442 inv__s n__O1__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1686_keeper #1151 #fb1150# n__O1__f_526_6 Vdd pmos W=0.0975U L=0.065U
M1687_keeper #1152 #fb1150# n__O1__f_526_6 GND nmos W=0.0975U L=0.065U
M1688_ #437 I_af_526_6 #438 GND nmos W=0.0975U L=0.065U
M1689_ #437 I_af_525_6 #440 GND nmos W=0.0975U L=0.065U
M1690_ #440 s #439 GND nmos W=0.0975U L=0.065U
M1691_ #445 inv__s n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M1692_ #447 w__0i n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M1693_ #449 s n__O0__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1694_ #450 inv__s n__O0__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1695_keeper #1154 #fb1153# n__O0__t_527_6 Vdd pmos W=0.0975U L=0.065U
M1696_keeper #1155 #fb1153# n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M1697_ #444 I_at_527_6 #445 GND nmos W=0.0975U L=0.065U
M1698_ #444 I_at_526_6 #448 GND nmos W=0.0975U L=0.065U
M1699_ #448 s #447 GND nmos W=0.0975U L=0.065U
M1700_ #453 inv__s n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M1701_ #455 w__0i n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M1702_ #457 s n__O0__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1703_ #458 inv__s n__O0__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1704_keeper #1157 #fb1156# n__O0__f_527_6 Vdd pmos W=0.0975U L=0.065U
M1705_keeper #1158 #fb1156# n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M1706_ #452 I_af_527_6 #453 GND nmos W=0.0975U L=0.065U
M1707_ #452 I_af_526_6 #456 GND nmos W=0.0975U L=0.065U
M1708_ #456 s #455 GND nmos W=0.0975U L=0.065U
M1709_ #461 inv__s n__O1__t_527_6 GND nmos W=0.0975U L=0.065U
M1710_ #462 w__0i n__O1__t_527_6 GND nmos W=0.0975U L=0.065U
M1711_ #464 s n__O1__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1712_ #465 inv__s n__O1__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1713_keeper #1160 #fb1159# n__O1__t_527_6 Vdd pmos W=0.0975U L=0.065U
M1714_keeper #1161 #fb1159# n__O1__t_527_6 GND nmos W=0.0975U L=0.065U
M1715_ #460 I_at_527_6 #461 GND nmos W=0.0975U L=0.065U
M1716_ #460 I_at_526_6 #463 GND nmos W=0.0975U L=0.065U
M1717_ #463 s #462 GND nmos W=0.0975U L=0.065U
M1718_ #468 inv__s n__O1__f_527_6 GND nmos W=0.0975U L=0.065U
M1719_ #469 w__0i n__O1__f_527_6 GND nmos W=0.0975U L=0.065U
M1720_ #471 s n__O1__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1721_ #472 inv__s n__O1__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1722_keeper #1163 #fb1162# n__O1__f_527_6 Vdd pmos W=0.0975U L=0.065U
M1723_keeper #1164 #fb1162# n__O1__f_527_6 GND nmos W=0.0975U L=0.065U
M1724_ #467 I_af_527_6 #468 GND nmos W=0.0975U L=0.065U
M1725_ #467 I_af_526_6 #470 GND nmos W=0.0975U L=0.065U
M1726_ #470 s #469 GND nmos W=0.0975U L=0.065U
M1727_ #475 inv__s n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M1728_ #477 w__0i n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M1729_ #479 s n__O0__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1730_ #480 inv__s n__O0__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1731_keeper #1166 #fb1165# n__O0__t_528_6 Vdd pmos W=0.0975U L=0.065U
M1732_keeper #1167 #fb1165# n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M1733_ #474 I_at_528_6 #475 GND nmos W=0.0975U L=0.065U
M1734_ #474 I_at_527_6 #478 GND nmos W=0.0975U L=0.065U
M1735_ #478 s #477 GND nmos W=0.0975U L=0.065U
M1736_ #483 inv__s n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M1737_ #485 w__0i n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M1738_ #487 s n__O0__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1739_ #488 inv__s n__O0__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1740_keeper #1169 #fb1168# n__O0__f_528_6 Vdd pmos W=0.0975U L=0.065U
M1741_keeper #1170 #fb1168# n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M1742_ #482 I_af_528_6 #483 GND nmos W=0.0975U L=0.065U
M1743_ #482 I_af_527_6 #486 GND nmos W=0.0975U L=0.065U
M1744_ #486 s #485 GND nmos W=0.0975U L=0.065U
M1745_ #491 inv__s n__O1__t_528_6 GND nmos W=0.0975U L=0.065U
M1746_ #492 w__0i n__O1__t_528_6 GND nmos W=0.0975U L=0.065U
M1747_ #494 s n__O1__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1748_ #495 inv__s n__O1__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1749_keeper #1172 #fb1171# n__O1__t_528_6 Vdd pmos W=0.0975U L=0.065U
M1750_keeper #1173 #fb1171# n__O1__t_528_6 GND nmos W=0.0975U L=0.065U
M1751_ #490 I_at_528_6 #491 GND nmos W=0.0975U L=0.065U
M1752_ #490 I_at_527_6 #493 GND nmos W=0.0975U L=0.065U
M1753_ #493 s #492 GND nmos W=0.0975U L=0.065U
M1754_ #498 inv__s n__O1__f_528_6 GND nmos W=0.0975U L=0.065U
M1755_ #499 w__0i n__O1__f_528_6 GND nmos W=0.0975U L=0.065U
M1756_ #501 s n__O1__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1757_ #502 inv__s n__O1__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1758_keeper #1175 #fb1174# n__O1__f_528_6 Vdd pmos W=0.0975U L=0.065U
M1759_keeper #1176 #fb1174# n__O1__f_528_6 GND nmos W=0.0975U L=0.065U
M1760_ #497 I_af_528_6 #498 GND nmos W=0.0975U L=0.065U
M1761_ #497 I_af_527_6 #500 GND nmos W=0.0975U L=0.065U
M1762_ #500 s #499 GND nmos W=0.0975U L=0.065U
M1763_ #505 inv__s n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M1764_ #507 w__0i n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M1765_ #509 s n__O0__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1766_ #510 inv__s n__O0__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1767_keeper #1178 #fb1177# n__O0__t_529_6 Vdd pmos W=0.0975U L=0.065U
M1768_keeper #1179 #fb1177# n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M1769_ #504 I_at_529_6 #505 GND nmos W=0.0975U L=0.065U
M1770_ #504 I_at_528_6 #508 GND nmos W=0.0975U L=0.065U
M1771_ #508 s #507 GND nmos W=0.0975U L=0.065U
M1772_ #513 inv__s n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M1773_ #515 w__0i n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M1774_ #517 s n__O0__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1775_ #518 inv__s n__O0__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1776_keeper #1181 #fb1180# n__O0__f_529_6 Vdd pmos W=0.0975U L=0.065U
M1777_keeper #1182 #fb1180# n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M1778_ #512 I_af_529_6 #513 GND nmos W=0.0975U L=0.065U
M1779_ #512 I_af_528_6 #516 GND nmos W=0.0975U L=0.065U
M1780_ #516 s #515 GND nmos W=0.0975U L=0.065U
M1781_ #521 inv__s n__O1__t_529_6 GND nmos W=0.0975U L=0.065U
M1782_ #522 w__0i n__O1__t_529_6 GND nmos W=0.0975U L=0.065U
M1783_ #524 s n__O1__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1784_ #525 inv__s n__O1__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1785_keeper #1184 #fb1183# n__O1__t_529_6 Vdd pmos W=0.0975U L=0.065U
M1786_keeper #1185 #fb1183# n__O1__t_529_6 GND nmos W=0.0975U L=0.065U
M1787_ #520 I_at_529_6 #521 GND nmos W=0.0975U L=0.065U
M1788_ #520 I_at_528_6 #523 GND nmos W=0.0975U L=0.065U
M1789_ #523 s #522 GND nmos W=0.0975U L=0.065U
M1790_ #528 inv__s n__O1__f_529_6 GND nmos W=0.0975U L=0.065U
M1791_ #529 w__0i n__O1__f_529_6 GND nmos W=0.0975U L=0.065U
M1792_ #531 s n__O1__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1793_ #532 inv__s n__O1__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1794_keeper #1187 #fb1186# n__O1__f_529_6 Vdd pmos W=0.0975U L=0.065U
M1795_keeper #1188 #fb1186# n__O1__f_529_6 GND nmos W=0.0975U L=0.065U
M1796_ #527 I_af_529_6 #528 GND nmos W=0.0975U L=0.065U
M1797_ #527 I_af_528_6 #530 GND nmos W=0.0975U L=0.065U
M1798_ #530 s #529 GND nmos W=0.0975U L=0.065U
M1799_ #535 inv__s n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M1800_ #537 w__0i n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M1801_ #539 s n__O0__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1802_ #540 inv__s n__O0__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1803_keeper #1190 #fb1189# n__O0__t_530_6 Vdd pmos W=0.0975U L=0.065U
M1804_keeper #1191 #fb1189# n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M1805_ #534 I_at_530_6 #535 GND nmos W=0.0975U L=0.065U
M1806_ #534 I_at_529_6 #538 GND nmos W=0.0975U L=0.065U
M1807_ #538 s #537 GND nmos W=0.0975U L=0.065U
M1808_ #543 inv__s n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M1809_ #545 w__0i n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M1810_ #547 s n__O0__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1811_ #548 inv__s n__O0__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1812_keeper #1193 #fb1192# n__O0__f_530_6 Vdd pmos W=0.0975U L=0.065U
M1813_keeper #1194 #fb1192# n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M1814_ #542 I_af_530_6 #543 GND nmos W=0.0975U L=0.065U
M1815_ #542 I_af_529_6 #546 GND nmos W=0.0975U L=0.065U
M1816_ #546 s #545 GND nmos W=0.0975U L=0.065U
M1817_ #551 inv__s n__O1__t_530_6 GND nmos W=0.0975U L=0.065U
M1818_ #552 w__0i n__O1__t_530_6 GND nmos W=0.0975U L=0.065U
M1819_ #554 s n__O1__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1820_ #555 inv__s n__O1__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1821_keeper #1196 #fb1195# n__O1__t_530_6 Vdd pmos W=0.0975U L=0.065U
M1822_keeper #1197 #fb1195# n__O1__t_530_6 GND nmos W=0.0975U L=0.065U
M1823_ #550 I_at_530_6 #551 GND nmos W=0.0975U L=0.065U
M1824_ #550 I_at_529_6 #553 GND nmos W=0.0975U L=0.065U
M1825_ #553 s #552 GND nmos W=0.0975U L=0.065U
M1826_ #558 inv__s n__O1__f_530_6 GND nmos W=0.0975U L=0.065U
M1827_ #559 w__0i n__O1__f_530_6 GND nmos W=0.0975U L=0.065U
M1828_ #561 s n__O1__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1829_ #562 inv__s n__O1__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1830_keeper #1199 #fb1198# n__O1__f_530_6 Vdd pmos W=0.0975U L=0.065U
M1831_keeper #1200 #fb1198# n__O1__f_530_6 GND nmos W=0.0975U L=0.065U
M1832_ #557 I_af_530_6 #558 GND nmos W=0.0975U L=0.065U
M1833_ #557 I_af_529_6 #560 GND nmos W=0.0975U L=0.065U
M1834_ #560 s #559 GND nmos W=0.0975U L=0.065U
M1835_ #565 inv__s n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M1836_ #567 w__0i n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M1837_ #569 s n__O0__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1838_ #570 inv__s n__O0__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1839_keeper #1202 #fb1201# n__O0__t_531_6 Vdd pmos W=0.0975U L=0.065U
M1840_keeper #1203 #fb1201# n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M1841_ #564 I_at_531_6 #565 GND nmos W=0.0975U L=0.065U
M1842_ #564 I_at_530_6 #568 GND nmos W=0.0975U L=0.065U
M1843_ #568 s #567 GND nmos W=0.0975U L=0.065U
M1844_ #573 inv__s n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M1845_ #574 w__0i n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M1846_ #576 s n__O0__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1847_ #577 inv__s n__O0__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1848_keeper #1205 #fb1204# n__O0__f_531_6 Vdd pmos W=0.0975U L=0.065U
M1849_keeper #1206 #fb1204# n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M1850_ #572 I_af_531_6 #573 GND nmos W=0.0975U L=0.065U
M1851_ #572 I_af_530_6 #575 GND nmos W=0.0975U L=0.065U
M1852_ #575 s #574 GND nmos W=0.0975U L=0.065U
M1853_ #580 inv__s n__O1__t_531_6 GND nmos W=0.0975U L=0.065U
M1854_ #581 w__0i n__O1__t_531_6 GND nmos W=0.0975U L=0.065U
M1855_ #583 s n__O1__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1856_ #584 inv__s n__O1__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1857_keeper #1208 #fb1207# n__O1__t_531_6 Vdd pmos W=0.0975U L=0.065U
M1858_keeper #1209 #fb1207# n__O1__t_531_6 GND nmos W=0.0975U L=0.065U
M1859_ #579 I_at_531_6 #580 GND nmos W=0.0975U L=0.065U
M1860_ #579 I_at_530_6 #582 GND nmos W=0.0975U L=0.065U
M1861_ #582 s #581 GND nmos W=0.0975U L=0.065U
M1862_ #587 inv__s n__O1__f_531_6 GND nmos W=0.0975U L=0.065U
M1863_ #588 w__0i n__O1__f_531_6 GND nmos W=0.0975U L=0.065U
M1864_ #590 s n__O1__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1865_ #591 inv__s n__O1__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1866_keeper #1211 #fb1210# n__O1__f_531_6 Vdd pmos W=0.0975U L=0.065U
M1867_keeper #1212 #fb1210# n__O1__f_531_6 GND nmos W=0.0975U L=0.065U
M1868_ #586 I_af_531_6 #587 GND nmos W=0.0975U L=0.065U
M1869_ #586 I_af_530_6 #589 GND nmos W=0.0975U L=0.065U
M1870_ #589 s #588 GND nmos W=0.0975U L=0.065U
M1871_ #593 inv__s n__O0__t_513_6 GND nmos W=0.0975U L=0.065U
M1872_ #595 s n__O0__t_513_6 Vdd pmos W=0.1625U L=0.065U
M1873_keeper #1214 #fb1213# n__O0__t_513_6 Vdd pmos W=0.0975U L=0.065U
M1874_keeper #1215 #fb1213# n__O0__t_513_6 GND nmos W=0.0975U L=0.065U
M1875_ #594 I_at_513_6 #593 GND nmos W=0.0975U L=0.065U
M1876_ #598 inv__s n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1877_ #599 s n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1878_ #601 s n__O0__f_513_6 Vdd pmos W=0.1625U L=0.065U
M1879_ #602 inv__s n__O0__f_513_6 Vdd pmos W=0.1625U L=0.065U
M1880_keeper #1217 #fb1216# n__O0__f_513_6 Vdd pmos W=0.0975U L=0.065U
M1881_keeper #1218 #fb1216# n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1882_ #597 I_af_513_6 #598 GND nmos W=0.0975U L=0.065U
M1883_ #597 n__I__a #600 GND nmos W=0.0975U L=0.065U
M1884_ #600 w__0i #599 GND nmos W=0.0975U L=0.065U
M1885_ #604 inv__s n__O1__t_513_6 GND nmos W=0.0975U L=0.065U
M1886_ #606 s n__O1__t_513_6 Vdd pmos W=0.1625U L=0.065U
M1887_keeper #1220 #fb1219# n__O1__t_513_6 Vdd pmos W=0.0975U L=0.065U
M1888_keeper #1221 #fb1219# n__O1__t_513_6 GND nmos W=0.0975U L=0.065U
M1889_ #605 I_at_513_6 #604 GND nmos W=0.0975U L=0.065U
M1890_ #609 inv__s n__O1__f_513_6 GND nmos W=0.0975U L=0.065U
M1891_ #610 s n__O1__f_513_6 GND nmos W=0.0975U L=0.065U
M1892_ #612 s n__O1__f_513_6 Vdd pmos W=0.1625U L=0.065U
M1893_ #613 inv__s n__O1__f_513_6 Vdd pmos W=0.1625U L=0.065U
M1894_keeper #1223 #fb1222# n__O1__f_513_6 Vdd pmos W=0.0975U L=0.065U
M1895_keeper #1224 #fb1222# n__O1__f_513_6 GND nmos W=0.0975U L=0.065U
M1896_ #608 I_af_513_6 #609 GND nmos W=0.0975U L=0.065U
M1897_ #608 n__I__a #611 GND nmos W=0.0975U L=0.065U
M1898_ #611 w__0i #610 GND nmos W=0.0975U L=0.065U
M1899_ #615 inv__s n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1900_ #617 w__0i n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1901_keeper #1226 #fb1225# n__O0__t_50_6 Vdd pmos W=0.0975U L=0.065U
M1902_keeper #1227 #fb1225# n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1903_ #616 I_at_50_6 #615 GND nmos W=0.0975U L=0.065U
M1904_ #615 s #617 GND nmos W=0.0975U L=0.065U
M1905_ #619 inv__s n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1906_ #622 w__0i n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1907_keeper #1229 #fb1228# n__O0__f_50_6 Vdd pmos W=0.0975U L=0.065U
M1908_keeper #1230 #fb1228# n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1909_ #620 I_af_50_6 #619 GND nmos W=0.0975U L=0.065U
M1910_ #619 s #622 GND nmos W=0.0975U L=0.065U
M1911_ #624 inv__s n__O1__t_50_6 GND nmos W=0.0975U L=0.065U
M1912_ #626 w__0i n__O1__t_50_6 GND nmos W=0.0975U L=0.065U
M1913_keeper #1232 #fb1231# n__O1__t_50_6 Vdd pmos W=0.0975U L=0.065U
M1914_keeper #1233 #fb1231# n__O1__t_50_6 GND nmos W=0.0975U L=0.065U
M1915_ #625 I_at_50_6 #624 GND nmos W=0.0975U L=0.065U
M1916_ #624 s #626 GND nmos W=0.0975U L=0.065U
M1917_ #628 inv__s n__O1__f_50_6 GND nmos W=0.0975U L=0.065U
M1918_ #630 w__0i n__O1__f_50_6 GND nmos W=0.0975U L=0.065U
M1919_keeper #1235 #fb1234# n__O1__f_50_6 Vdd pmos W=0.0975U L=0.065U
M1920_keeper #1236 #fb1234# n__O1__f_50_6 GND nmos W=0.0975U L=0.065U
M1921_ #629 I_af_50_6 #628 GND nmos W=0.0975U L=0.065U
M1922_ #628 s #630 GND nmos W=0.0975U L=0.065U
M1923_ #632 inv__s n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1924_ #635 w__0i n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1925_keeper #1238 #fb1237# n__O0__t_51_6 Vdd pmos W=0.0975U L=0.065U
M1926_keeper #1239 #fb1237# n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1927_ #633 I_at_51_6 #632 GND nmos W=0.0975U L=0.065U
M1928_ #632 s #635 GND nmos W=0.0975U L=0.065U
M1929_ #637 inv__s n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1930_ #640 w__0i n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1931_keeper #1241 #fb1240# n__O0__f_51_6 Vdd pmos W=0.0975U L=0.065U
M1932_keeper #1242 #fb1240# n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1933_ #638 I_af_51_6 #637 GND nmos W=0.0975U L=0.065U
M1934_ #637 s #640 GND nmos W=0.0975U L=0.065U
M1935_ #642 inv__s n__O1__t_51_6 GND nmos W=0.0975U L=0.065U
M1936_ #644 w__0i n__O1__t_51_6 GND nmos W=0.0975U L=0.065U
M1937_keeper #1244 #fb1243# n__O1__t_51_6 Vdd pmos W=0.0975U L=0.065U
M1938_keeper #1245 #fb1243# n__O1__t_51_6 GND nmos W=0.0975U L=0.065U
M1939_ #643 I_at_51_6 #642 GND nmos W=0.0975U L=0.065U
M1940_ #642 s #644 GND nmos W=0.0975U L=0.065U
M1941_ #646 inv__s n__O1__f_51_6 GND nmos W=0.0975U L=0.065U
M1942_ #648 w__0i n__O1__f_51_6 GND nmos W=0.0975U L=0.065U
M1943_keeper #1247 #fb1246# n__O1__f_51_6 Vdd pmos W=0.0975U L=0.065U
M1944_keeper #1248 #fb1246# n__O1__f_51_6 GND nmos W=0.0975U L=0.065U
M1945_ #647 I_af_51_6 #646 GND nmos W=0.0975U L=0.065U
M1946_ #646 s #648 GND nmos W=0.0975U L=0.065U
M1947_ #650 inv__s n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1948_ #653 w__0i n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1949_keeper #1250 #fb1249# n__O0__t_52_6 Vdd pmos W=0.0975U L=0.065U
M1950_keeper #1251 #fb1249# n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1951_ #651 I_at_52_6 #650 GND nmos W=0.0975U L=0.065U
M1952_ #650 s #653 GND nmos W=0.0975U L=0.065U
M1953_ #655 inv__s n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1954_ #658 w__0i n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1955_keeper #1253 #fb1252# n__O0__f_52_6 Vdd pmos W=0.0975U L=0.065U
M1956_keeper #1254 #fb1252# n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1957_ #656 I_af_52_6 #655 GND nmos W=0.0975U L=0.065U
M1958_ #655 s #658 GND nmos W=0.0975U L=0.065U
M1959_ #660 inv__s n__O1__t_52_6 GND nmos W=0.0975U L=0.065U
M1960_ #662 w__0i n__O1__t_52_6 GND nmos W=0.0975U L=0.065U
M1961_keeper #1256 #fb1255# n__O1__t_52_6 Vdd pmos W=0.0975U L=0.065U
M1962_keeper #1257 #fb1255# n__O1__t_52_6 GND nmos W=0.0975U L=0.065U
M1963_ #661 I_at_52_6 #660 GND nmos W=0.0975U L=0.065U
M1964_ #660 s #662 GND nmos W=0.0975U L=0.065U
M1965_ #664 inv__s n__O1__f_52_6 GND nmos W=0.0975U L=0.065U
M1966_ #666 w__0i n__O1__f_52_6 GND nmos W=0.0975U L=0.065U
M1967_keeper #1259 #fb1258# n__O1__f_52_6 Vdd pmos W=0.0975U L=0.065U
M1968_keeper #1260 #fb1258# n__O1__f_52_6 GND nmos W=0.0975U L=0.065U
M1969_ #665 I_af_52_6 #664 GND nmos W=0.0975U L=0.065U
M1970_ #664 s #666 GND nmos W=0.0975U L=0.065U
M1971_ #668 inv__s n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1972_ #671 w__0i n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1973_keeper #1262 #fb1261# n__O0__t_53_6 Vdd pmos W=0.0975U L=0.065U
M1974_keeper #1263 #fb1261# n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1975_ #669 I_at_53_6 #668 GND nmos W=0.0975U L=0.065U
M1976_ #668 s #671 GND nmos W=0.0975U L=0.065U
M1977_ #673 inv__s n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1978_ #676 w__0i n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1979_keeper #1265 #fb1264# n__O0__f_53_6 Vdd pmos W=0.0975U L=0.065U
M1980_keeper #1266 #fb1264# n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1981_ #674 I_af_53_6 #673 GND nmos W=0.0975U L=0.065U
M1982_ #673 s #676 GND nmos W=0.0975U L=0.065U
M1983_ #678 inv__s n__O1__t_53_6 GND nmos W=0.0975U L=0.065U
M1984_ #680 w__0i n__O1__t_53_6 GND nmos W=0.0975U L=0.065U
M1985_keeper #1268 #fb1267# n__O1__t_53_6 Vdd pmos W=0.0975U L=0.065U
M1986_keeper #1269 #fb1267# n__O1__t_53_6 GND nmos W=0.0975U L=0.065U
M1987_ #679 I_at_53_6 #678 GND nmos W=0.0975U L=0.065U
M1988_ #678 s #680 GND nmos W=0.0975U L=0.065U
M1989_ #682 inv__s n__O1__f_53_6 GND nmos W=0.0975U L=0.065U
M1990_ #684 w__0i n__O1__f_53_6 GND nmos W=0.0975U L=0.065U
M1991_keeper #1271 #fb1270# n__O1__f_53_6 Vdd pmos W=0.0975U L=0.065U
M1992_keeper #1272 #fb1270# n__O1__f_53_6 GND nmos W=0.0975U L=0.065U
M1993_ #683 I_af_53_6 #682 GND nmos W=0.0975U L=0.065U
M1994_ #682 s #684 GND nmos W=0.0975U L=0.065U
M1995_ #686 inv__s n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1996_ #689 w__0i n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1997_keeper #1274 #fb1273# n__O0__t_54_6 Vdd pmos W=0.0975U L=0.065U
M1998_keeper #1275 #fb1273# n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1999_ #687 I_at_54_6 #686 GND nmos W=0.0975U L=0.065U
M2000_ #686 s #689 GND nmos W=0.0975U L=0.065U
M2001_ #691 inv__s n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M2002_ #694 w__0i n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M2003_keeper #1277 #fb1276# n__O0__f_54_6 Vdd pmos W=0.0975U L=0.065U
M2004_keeper #1278 #fb1276# n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M2005_ #692 I_af_54_6 #691 GND nmos W=0.0975U L=0.065U
M2006_ #691 s #694 GND nmos W=0.0975U L=0.065U
M2007_ #696 inv__s n__O1__t_54_6 GND nmos W=0.0975U L=0.065U
M2008_ #698 w__0i n__O1__t_54_6 GND nmos W=0.0975U L=0.065U
M2009_keeper #1280 #fb1279# n__O1__t_54_6 Vdd pmos W=0.0975U L=0.065U
M2010_keeper #1281 #fb1279# n__O1__t_54_6 GND nmos W=0.0975U L=0.065U
M2011_ #697 I_at_54_6 #696 GND nmos W=0.0975U L=0.065U
M2012_ #696 s #698 GND nmos W=0.0975U L=0.065U
M2013_ #700 inv__s n__O1__f_54_6 GND nmos W=0.0975U L=0.065U
M2014_ #702 w__0i n__O1__f_54_6 GND nmos W=0.0975U L=0.065U
M2015_keeper #1283 #fb1282# n__O1__f_54_6 Vdd pmos W=0.0975U L=0.065U
M2016_keeper #1284 #fb1282# n__O1__f_54_6 GND nmos W=0.0975U L=0.065U
M2017_ #701 I_af_54_6 #700 GND nmos W=0.0975U L=0.065U
M2018_ #700 s #702 GND nmos W=0.0975U L=0.065U
M2019_ #704 inv__s n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M2020_ #707 w__0i n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M2021_keeper #1286 #fb1285# n__O0__t_55_6 Vdd pmos W=0.0975U L=0.065U
M2022_keeper #1287 #fb1285# n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M2023_ #705 I_at_55_6 #704 GND nmos W=0.0975U L=0.065U
M2024_ #704 s #707 GND nmos W=0.0975U L=0.065U
M2025_ #709 inv__s n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M2026_ #712 w__0i n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M2027_keeper #1289 #fb1288# n__O0__f_55_6 Vdd pmos W=0.0975U L=0.065U
M2028_keeper #1290 #fb1288# n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M2029_ #710 I_af_55_6 #709 GND nmos W=0.0975U L=0.065U
M2030_ #709 s #712 GND nmos W=0.0975U L=0.065U
M2031_ #714 inv__s n__O1__t_55_6 GND nmos W=0.0975U L=0.065U
M2032_ #716 w__0i n__O1__t_55_6 GND nmos W=0.0975U L=0.065U
M2033_keeper #1292 #fb1291# n__O1__t_55_6 Vdd pmos W=0.0975U L=0.065U
M2034_keeper #1293 #fb1291# n__O1__t_55_6 GND nmos W=0.0975U L=0.065U
M2035_ #715 I_at_55_6 #714 GND nmos W=0.0975U L=0.065U
M2036_ #714 s #716 GND nmos W=0.0975U L=0.065U
M2037_ #718 inv__s n__O1__f_55_6 GND nmos W=0.0975U L=0.065U
M2038_ #720 w__0i n__O1__f_55_6 GND nmos W=0.0975U L=0.065U
M2039_keeper #1295 #fb1294# n__O1__f_55_6 Vdd pmos W=0.0975U L=0.065U
M2040_keeper #1296 #fb1294# n__O1__f_55_6 GND nmos W=0.0975U L=0.065U
M2041_ #719 I_af_55_6 #718 GND nmos W=0.0975U L=0.065U
M2042_ #718 s #720 GND nmos W=0.0975U L=0.065U
M2043_ #722 inv__s n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M2044_ #725 w__0i n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M2045_keeper #1298 #fb1297# n__O0__t_56_6 Vdd pmos W=0.0975U L=0.065U
M2046_keeper #1299 #fb1297# n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M2047_ #723 I_at_56_6 #722 GND nmos W=0.0975U L=0.065U
M2048_ #722 s #725 GND nmos W=0.0975U L=0.065U
M2049_ #727 inv__s n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M2050_ #730 w__0i n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M2051_keeper #1301 #fb1300# n__O0__f_56_6 Vdd pmos W=0.0975U L=0.065U
M2052_keeper #1302 #fb1300# n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M2053_ #728 I_af_56_6 #727 GND nmos W=0.0975U L=0.065U
M2054_ #727 s #730 GND nmos W=0.0975U L=0.065U
M2055_ #732 inv__s n__O1__t_56_6 GND nmos W=0.0975U L=0.065U
M2056_ #734 w__0i n__O1__t_56_6 GND nmos W=0.0975U L=0.065U
M2057_keeper #1304 #fb1303# n__O1__t_56_6 Vdd pmos W=0.0975U L=0.065U
M2058_keeper #1305 #fb1303# n__O1__t_56_6 GND nmos W=0.0975U L=0.065U
M2059_ #733 I_at_56_6 #732 GND nmos W=0.0975U L=0.065U
M2060_ #732 s #734 GND nmos W=0.0975U L=0.065U
M2061_ #736 inv__s n__O1__f_56_6 GND nmos W=0.0975U L=0.065U
M2062_ #738 w__0i n__O1__f_56_6 GND nmos W=0.0975U L=0.065U
M2063_keeper #1307 #fb1306# n__O1__f_56_6 Vdd pmos W=0.0975U L=0.065U
M2064_keeper #1308 #fb1306# n__O1__f_56_6 GND nmos W=0.0975U L=0.065U
M2065_ #737 I_af_56_6 #736 GND nmos W=0.0975U L=0.065U
M2066_ #736 s #738 GND nmos W=0.0975U L=0.065U
M2067_ #740 inv__s n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M2068_ #743 w__0i n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M2069_keeper #1310 #fb1309# n__O0__t_57_6 Vdd pmos W=0.0975U L=0.065U
M2070_keeper #1311 #fb1309# n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M2071_ #741 I_at_57_6 #740 GND nmos W=0.0975U L=0.065U
M2072_ #740 s #743 GND nmos W=0.0975U L=0.065U
M2073_ #745 inv__s n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M2074_ #748 w__0i n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M2075_keeper #1313 #fb1312# n__O0__f_57_6 Vdd pmos W=0.0975U L=0.065U
M2076_keeper #1314 #fb1312# n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M2077_ #746 I_af_57_6 #745 GND nmos W=0.0975U L=0.065U
M2078_ #745 s #748 GND nmos W=0.0975U L=0.065U
M2079_ #750 inv__s n__O1__t_57_6 GND nmos W=0.0975U L=0.065U
M2080_ #752 w__0i n__O1__t_57_6 GND nmos W=0.0975U L=0.065U
M2081_keeper #1316 #fb1315# n__O1__t_57_6 Vdd pmos W=0.0975U L=0.065U
M2082_keeper #1317 #fb1315# n__O1__t_57_6 GND nmos W=0.0975U L=0.065U
M2083_ #751 I_at_57_6 #750 GND nmos W=0.0975U L=0.065U
M2084_ #750 s #752 GND nmos W=0.0975U L=0.065U
M2085_ #754 inv__s n__O1__f_57_6 GND nmos W=0.0975U L=0.065U
M2086_ #756 w__0i n__O1__f_57_6 GND nmos W=0.0975U L=0.065U
M2087_keeper #1319 #fb1318# n__O1__f_57_6 Vdd pmos W=0.0975U L=0.065U
M2088_keeper #1320 #fb1318# n__O1__f_57_6 GND nmos W=0.0975U L=0.065U
M2089_ #755 I_af_57_6 #754 GND nmos W=0.0975U L=0.065U
M2090_ #754 s #756 GND nmos W=0.0975U L=0.065U
M2091_ #758 inv__s n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M2092_ #761 w__0i n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M2093_keeper #1322 #fb1321# n__O0__t_58_6 Vdd pmos W=0.0975U L=0.065U
M2094_keeper #1323 #fb1321# n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M2095_ #759 I_at_58_6 #758 GND nmos W=0.0975U L=0.065U
M2096_ #758 s #761 GND nmos W=0.0975U L=0.065U
M2097_ #763 inv__s n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M2098_ #766 w__0i n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M2099_keeper #1325 #fb1324# n__O0__f_58_6 Vdd pmos W=0.0975U L=0.065U
M2100_keeper #1326 #fb1324# n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M2101_ #764 I_af_58_6 #763 GND nmos W=0.0975U L=0.065U
M2102_ #763 s #766 GND nmos W=0.0975U L=0.065U
M2103_ #768 inv__s n__O1__t_58_6 GND nmos W=0.0975U L=0.065U
M2104_ #770 w__0i n__O1__t_58_6 GND nmos W=0.0975U L=0.065U
M2105_keeper #1328 #fb1327# n__O1__t_58_6 Vdd pmos W=0.0975U L=0.065U
M2106_keeper #1329 #fb1327# n__O1__t_58_6 GND nmos W=0.0975U L=0.065U
M2107_ #769 I_at_58_6 #768 GND nmos W=0.0975U L=0.065U
M2108_ #768 s #770 GND nmos W=0.0975U L=0.065U
M2109_ #772 inv__s n__O1__f_58_6 GND nmos W=0.0975U L=0.065U
M2110_ #774 w__0i n__O1__f_58_6 GND nmos W=0.0975U L=0.065U
M2111_keeper #1331 #fb1330# n__O1__f_58_6 Vdd pmos W=0.0975U L=0.065U
M2112_keeper #1332 #fb1330# n__O1__f_58_6 GND nmos W=0.0975U L=0.065U
M2113_ #773 I_af_58_6 #772 GND nmos W=0.0975U L=0.065U
M2114_ #772 s #774 GND nmos W=0.0975U L=0.065U
M2115_ #776 inv__s n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M2116_ #779 w__0i n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M2117_keeper #1334 #fb1333# n__O0__t_59_6 Vdd pmos W=0.0975U L=0.065U
M2118_keeper #1335 #fb1333# n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M2119_ #777 I_at_59_6 #776 GND nmos W=0.0975U L=0.065U
M2120_ #776 s #779 GND nmos W=0.0975U L=0.065U
M2121_ #781 inv__s n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M2122_ #784 w__0i n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M2123_keeper #1337 #fb1336# n__O0__f_59_6 Vdd pmos W=0.0975U L=0.065U
M2124_keeper #1338 #fb1336# n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M2125_ #782 I_af_59_6 #781 GND nmos W=0.0975U L=0.065U
M2126_ #781 s #784 GND nmos W=0.0975U L=0.065U
M2127_ #786 inv__s n__O1__t_59_6 GND nmos W=0.0975U L=0.065U
M2128_ #788 w__0i n__O1__t_59_6 GND nmos W=0.0975U L=0.065U
M2129_keeper #1340 #fb1339# n__O1__t_59_6 Vdd pmos W=0.0975U L=0.065U
M2130_keeper #1341 #fb1339# n__O1__t_59_6 GND nmos W=0.0975U L=0.065U
M2131_ #787 I_at_59_6 #786 GND nmos W=0.0975U L=0.065U
M2132_ #786 s #788 GND nmos W=0.0975U L=0.065U
M2133_ #790 inv__s n__O1__f_59_6 GND nmos W=0.0975U L=0.065U
M2134_ #792 w__0i n__O1__f_59_6 GND nmos W=0.0975U L=0.065U
M2135_keeper #1343 #fb1342# n__O1__f_59_6 Vdd pmos W=0.0975U L=0.065U
M2136_keeper #1344 #fb1342# n__O1__f_59_6 GND nmos W=0.0975U L=0.065U
M2137_ #791 I_af_59_6 #790 GND nmos W=0.0975U L=0.065U
M2138_ #790 s #792 GND nmos W=0.0975U L=0.065U
M2139_ #794 inv__s n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M2140_ #797 w__0i n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M2141_keeper #1346 #fb1345# n__O0__t_510_6 Vdd pmos W=0.0975U L=0.065U
M2142_keeper #1347 #fb1345# n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M2143_ #795 I_at_510_6 #794 GND nmos W=0.0975U L=0.065U
M2144_ #794 s #797 GND nmos W=0.0975U L=0.065U
M2145_ #799 inv__s n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M2146_ #802 w__0i n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M2147_keeper #1349 #fb1348# n__O0__f_510_6 Vdd pmos W=0.0975U L=0.065U
M2148_keeper #1350 #fb1348# n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M2149_ #800 I_af_510_6 #799 GND nmos W=0.0975U L=0.065U
M2150_ #799 s #802 GND nmos W=0.0975U L=0.065U
M2151_ #804 inv__s n__O1__t_510_6 GND nmos W=0.0975U L=0.065U
M2152_ #806 w__0i n__O1__t_510_6 GND nmos W=0.0975U L=0.065U
M2153_keeper #1352 #fb1351# n__O1__t_510_6 Vdd pmos W=0.0975U L=0.065U
M2154_keeper #1353 #fb1351# n__O1__t_510_6 GND nmos W=0.0975U L=0.065U
M2155_ #805 I_at_510_6 #804 GND nmos W=0.0975U L=0.065U
M2156_ #804 s #806 GND nmos W=0.0975U L=0.065U
M2157_ #808 inv__s n__O1__f_510_6 GND nmos W=0.0975U L=0.065U
M2158_ #810 w__0i n__O1__f_510_6 GND nmos W=0.0975U L=0.065U
M2159_keeper #1355 #fb1354# n__O1__f_510_6 Vdd pmos W=0.0975U L=0.065U
M2160_keeper #1356 #fb1354# n__O1__f_510_6 GND nmos W=0.0975U L=0.065U
M2161_ #809 I_af_510_6 #808 GND nmos W=0.0975U L=0.065U
M2162_ #808 s #810 GND nmos W=0.0975U L=0.065U
M2163_ #812 inv__s n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M2164_ #815 w__0i n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M2165_keeper #1358 #fb1357# n__O0__t_511_6 Vdd pmos W=0.0975U L=0.065U
M2166_keeper #1359 #fb1357# n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M2167_ #813 I_at_511_6 #812 GND nmos W=0.0975U L=0.065U
M2168_ #812 s #815 GND nmos W=0.0975U L=0.065U
M2169_ #817 inv__s n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M2170_ #820 w__0i n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M2171_keeper #1361 #fb1360# n__O0__f_511_6 Vdd pmos W=0.0975U L=0.065U
M2172_keeper #1362 #fb1360# n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M2173_ #818 I_af_511_6 #817 GND nmos W=0.0975U L=0.065U
M2174_ #817 s #820 GND nmos W=0.0975U L=0.065U
M2175_ #822 inv__s n__O1__t_511_6 GND nmos W=0.0975U L=0.065U
M2176_ #824 w__0i n__O1__t_511_6 GND nmos W=0.0975U L=0.065U
M2177_keeper #1364 #fb1363# n__O1__t_511_6 Vdd pmos W=0.0975U L=0.065U
M2178_keeper #1365 #fb1363# n__O1__t_511_6 GND nmos W=0.0975U L=0.065U
M2179_ #823 I_at_511_6 #822 GND nmos W=0.0975U L=0.065U
M2180_ #822 s #824 GND nmos W=0.0975U L=0.065U
M2181_ #826 inv__s n__O1__f_511_6 GND nmos W=0.0975U L=0.065U
M2182_ #828 w__0i n__O1__f_511_6 GND nmos W=0.0975U L=0.065U
M2183_keeper #1367 #fb1366# n__O1__f_511_6 Vdd pmos W=0.0975U L=0.065U
M2184_keeper #1368 #fb1366# n__O1__f_511_6 GND nmos W=0.0975U L=0.065U
M2185_ #827 I_af_511_6 #826 GND nmos W=0.0975U L=0.065U
M2186_ #826 s #828 GND nmos W=0.0975U L=0.065U
M2187_ #830 inv__s n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M2188_ #833 w__0i n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M2189_keeper #1370 #fb1369# n__O0__t_512_6 Vdd pmos W=0.0975U L=0.065U
M2190_keeper #1371 #fb1369# n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M2191_ #831 I_at_512_6 #830 GND nmos W=0.0975U L=0.065U
M2192_ #830 s #833 GND nmos W=0.0975U L=0.065U
M2193_ #835 inv__s n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M2194_ #838 w__0i n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M2195_keeper #1373 #fb1372# n__O0__f_512_6 Vdd pmos W=0.0975U L=0.065U
M2196_keeper #1374 #fb1372# n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M2197_ #836 I_af_512_6 #835 GND nmos W=0.0975U L=0.065U
M2198_ #835 s #838 GND nmos W=0.0975U L=0.065U
M2199_ #840 inv__s n__O1__t_512_6 GND nmos W=0.0975U L=0.065U
M2200_ #842 w__0i n__O1__t_512_6 GND nmos W=0.0975U L=0.065U
M2201_keeper #1376 #fb1375# n__O1__t_512_6 Vdd pmos W=0.0975U L=0.065U
M2202_keeper #1377 #fb1375# n__O1__t_512_6 GND nmos W=0.0975U L=0.065U
M2203_ #841 I_at_512_6 #840 GND nmos W=0.0975U L=0.065U
M2204_ #840 s #842 GND nmos W=0.0975U L=0.065U
M2205_ #844 inv__s n__O1__f_512_6 GND nmos W=0.0975U L=0.065U
M2206_ #846 w__0i n__O1__f_512_6 GND nmos W=0.0975U L=0.065U
M2207_keeper #1379 #fb1378# n__O1__f_512_6 Vdd pmos W=0.0975U L=0.065U
M2208_keeper #1380 #fb1378# n__O1__f_512_6 GND nmos W=0.0975U L=0.065U
M2209_ #845 I_af_512_6 #844 GND nmos W=0.0975U L=0.065U
M2210_ #844 s #846 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: UpdownSel<> -----
