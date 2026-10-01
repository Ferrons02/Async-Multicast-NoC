*
*---- act defproc: UpdownSel<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a
*
.subckt UpdownSel reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6 O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6 O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6 O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6 O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6 O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6 O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6 O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6 O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6 O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6 O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6 O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6 O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6 O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6 O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6 O1_af_531_6 O1_aa
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
*
*---- act defproc: ChildSel<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a O2.t[0] O2.t[1] O2.t[2] O2.t[3] O2.t[4] O2.t[5] O2.t[6] O2.t[7] O2.t[8] O2.t[9] O2.t[10] O2.t[11] O2.t[12] O2.t[13] O2.t[14] O2.t[15] O2.t[16] O2.t[17] O2.t[18] O2.t[19] O2.t[20] O2.t[21] O2.t[22] O2.t[23] O2.t[24] O2.t[25] O2.t[26] O2.t[27] O2.t[28] O2.t[29] O2.t[30] O2.t[31] O2.f[0] O2.f[1] O2.f[2] O2.f[3] O2.f[4] O2.f[5] O2.f[6] O2.f[7] O2.f[8] O2.f[9] O2.f[10] O2.f[11] O2.f[12] O2.f[13] O2.f[14] O2.f[15] O2.f[16] O2.f[17] O2.f[18] O2.f[19] O2.f[20] O2.f[21] O2.f[22] O2.f[23] O2.f[24] O2.f[25] O2.f[26] O2.f[27] O2.f[28] O2.f[29] O2.f[30] O2.f[31] O2.a O3.t[0] O3.t[1] O3.t[2] O3.t[3] O3.t[4] O3.t[5] O3.t[6] O3.t[7] O3.t[8] O3.t[9] O3.t[10] O3.t[11] O3.t[12] O3.t[13] O3.t[14] O3.t[15] O3.t[16] O3.t[17] O3.t[18] O3.t[19] O3.t[20] O3.t[21] O3.t[22] O3.t[23] O3.t[24] O3.t[25] O3.t[26] O3.t[27] O3.t[28] O3.t[29] O3.t[30] O3.t[31] O3.f[0] O3.f[1] O3.f[2] O3.f[3] O3.f[4] O3.f[5] O3.f[6] O3.f[7] O3.f[8] O3.f[9] O3.f[10] O3.f[11] O3.f[12] O3.f[13] O3.f[14] O3.f[15] O3.f[16] O3.f[17] O3.f[18] O3.f[19] O3.f[20] O3.f[21] O3.f[22] O3.f[23] O3.f[24] O3.f[25] O3.f[26] O3.f[27] O3.f[28] O3.f[29] O3.f[30] O3.f[31] O3.a
*
.subckt ChildSel reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6 O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6 O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6 O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6 O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6 O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6 O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6 O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6 O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6 O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6 O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6 O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6 O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6 O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6 O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6 O1_af_531_6 O1_aa O2_at_50_6 O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_at_54_6 O2_at_55_6 O2_at_56_6 O2_at_57_6 O2_at_58_6 O2_at_59_6 O2_at_510_6 O2_at_511_6 O2_at_512_6 O2_at_513_6 O2_at_514_6 O2_at_515_6 O2_at_516_6 O2_at_517_6 O2_at_518_6 O2_at_519_6 O2_at_520_6 O2_at_521_6 O2_at_522_6 O2_at_523_6 O2_at_524_6 O2_at_525_6 O2_at_526_6 O2_at_527_6 O2_at_528_6 O2_at_529_6 O2_at_530_6 O2_at_531_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O2_af_54_6 O2_af_55_6 O2_af_56_6 O2_af_57_6 O2_af_58_6 O2_af_59_6 O2_af_510_6 O2_af_511_6 O2_af_512_6 O2_af_513_6 O2_af_514_6 O2_af_515_6 O2_af_516_6 O2_af_517_6 O2_af_518_6 O2_af_519_6 O2_af_520_6 O2_af_521_6 O2_af_522_6 O2_af_523_6 O2_af_524_6 O2_af_525_6 O2_af_526_6 O2_af_527_6 O2_af_528_6 O2_af_529_6 O2_af_530_6 O2_af_531_6 O2_aa O3_at_50_6 O3_at_51_6 O3_at_52_6 O3_at_53_6 O3_at_54_6 O3_at_55_6 O3_at_56_6 O3_at_57_6 O3_at_58_6 O3_at_59_6 O3_at_510_6 O3_at_511_6 O3_at_512_6 O3_at_513_6 O3_at_514_6 O3_at_515_6 O3_at_516_6 O3_at_517_6 O3_at_518_6 O3_at_519_6 O3_at_520_6 O3_at_521_6 O3_at_522_6 O3_at_523_6 O3_at_524_6 O3_at_525_6 O3_at_526_6 O3_at_527_6 O3_at_528_6 O3_at_529_6 O3_at_530_6 O3_at_531_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 O3_af_54_6 O3_af_55_6 O3_af_56_6 O3_af_57_6 O3_af_58_6 O3_af_59_6 O3_af_510_6 O3_af_511_6 O3_af_512_6 O3_af_513_6 O3_af_514_6 O3_af_515_6 O3_af_516_6 O3_af_517_6 O3_af_518_6 O3_af_519_6 O3_af_520_6 O3_af_521_6 O3_af_522_6 O3_af_523_6 O3_af_524_6 O3_af_525_6 O3_af_526_6 O3_af_527_6 O3_af_528_6 O3_af_529_6 O3_af_530_6 O3_af_531_6 O3_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_at_54_6:O O0_at_55_6:O O0_at_56_6:O O0_at_57_6:O O0_at_58_6:O O0_at_59_6:O O0_at_510_6:O O0_at_511_6:O O0_at_512_6:O O0_at_513_6:O O0_at_514_6:O O0_at_515_6:O O0_at_516_6:O O0_at_517_6:O O0_at_518_6:O O0_at_519_6:O O0_at_520_6:O O0_at_521_6:O O0_at_522_6:O O0_at_523_6:O O0_at_524_6:O O0_at_525_6:O O0_at_526_6:O O0_at_527_6:O O0_at_528_6:O O0_at_529_6:O O0_at_530_6:O O0_at_531_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O0_af_54_6:O O0_af_55_6:O O0_af_56_6:O O0_af_57_6:O O0_af_58_6:O O0_af_59_6:O O0_af_510_6:O O0_af_511_6:O O0_af_512_6:O O0_af_513_6:O O0_af_514_6:O O0_af_515_6:O O0_af_516_6:O O0_af_517_6:O O0_af_518_6:O O0_af_519_6:O O0_af_520_6:O O0_af_521_6:O O0_af_522_6:O O0_af_523_6:O O0_af_524_6:O O0_af_525_6:O O0_af_526_6:O O0_af_527_6:O O0_af_528_6:O O0_af_529_6:O O0_af_530_6:O O0_af_531_6:O O0_aa:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_at_54_6:O O1_at_55_6:O O1_at_56_6:O O1_at_57_6:O O1_at_58_6:O O1_at_59_6:O O1_at_510_6:O O1_at_511_6:O O1_at_512_6:O O1_at_513_6:O O1_at_514_6:O O1_at_515_6:O O1_at_516_6:O O1_at_517_6:O O1_at_518_6:O O1_at_519_6:O O1_at_520_6:O O1_at_521_6:O O1_at_522_6:O O1_at_523_6:O O1_at_524_6:O O1_at_525_6:O O1_at_526_6:O O1_at_527_6:O O1_at_528_6:O O1_at_529_6:O O1_at_530_6:O O1_at_531_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O1_af_54_6:O O1_af_55_6:O O1_af_56_6:O O1_af_57_6:O O1_af_58_6:O O1_af_59_6:O O1_af_510_6:O O1_af_511_6:O O1_af_512_6:O O1_af_513_6:O O1_af_514_6:O O1_af_515_6:O O1_af_516_6:O O1_af_517_6:O O1_af_518_6:O O1_af_519_6:O O1_af_520_6:O O1_af_521_6:O O1_af_522_6:O O1_af_523_6:O O1_af_524_6:O O1_af_525_6:O O1_af_526_6:O O1_af_527_6:O O1_af_528_6:O O1_af_529_6:O O1_af_530_6:O O1_af_531_6:O O1_aa:I O2_at_50_6:O O2_at_51_6:O O2_at_52_6:O O2_at_53_6:O O2_at_54_6:O O2_at_55_6:O O2_at_56_6:O O2_at_57_6:O O2_at_58_6:O O2_at_59_6:O O2_at_510_6:O O2_at_511_6:O O2_at_512_6:O O2_at_513_6:O O2_at_514_6:O O2_at_515_6:O O2_at_516_6:O O2_at_517_6:O O2_at_518_6:O O2_at_519_6:O O2_at_520_6:O O2_at_521_6:O O2_at_522_6:O O2_at_523_6:O O2_at_524_6:O O2_at_525_6:O O2_at_526_6:O O2_at_527_6:O O2_at_528_6:O O2_at_529_6:O O2_at_530_6:O O2_at_531_6:O O2_af_50_6:O O2_af_51_6:O O2_af_52_6:O O2_af_53_6:O O2_af_54_6:O O2_af_55_6:O O2_af_56_6:O O2_af_57_6:O O2_af_58_6:O O2_af_59_6:O O2_af_510_6:O O2_af_511_6:O O2_af_512_6:O O2_af_513_6:O O2_af_514_6:O O2_af_515_6:O O2_af_516_6:O O2_af_517_6:O O2_af_518_6:O O2_af_519_6:O O2_af_520_6:O O2_af_521_6:O O2_af_522_6:O O2_af_523_6:O O2_af_524_6:O O2_af_525_6:O O2_af_526_6:O O2_af_527_6:O O2_af_528_6:O O2_af_529_6:O O2_af_530_6:O O2_af_531_6:O O2_aa:I O3_at_50_6:O O3_at_51_6:O O3_at_52_6:O O3_at_53_6:O O3_at_54_6:O O3_at_55_6:O O3_at_56_6:O O3_at_57_6:O O3_at_58_6:O O3_at_59_6:O O3_at_510_6:O O3_at_511_6:O O3_at_512_6:O O3_at_513_6:O O3_at_514_6:O O3_at_515_6:O O3_at_516_6:O O3_at_517_6:O O3_at_518_6:O O3_at_519_6:O O3_at_520_6:O O3_at_521_6:O O3_at_522_6:O O3_at_523_6:O O3_at_524_6:O O3_at_525_6:O O3_at_526_6:O O3_at_527_6:O O3_at_528_6:O O3_at_529_6:O O3_at_530_6:O O3_at_531_6:O O3_af_50_6:O O3_af_51_6:O O3_af_52_6:O O3_af_53_6:O O3_af_54_6:O O3_af_55_6:O O3_af_56_6:O O3_af_57_6:O O3_af_58_6:O O3_af_59_6:O O3_af_510_6:O O3_af_511_6:O O3_af_512_6:O O3_af_513_6:O O3_af_514_6:O O3_af_515_6:O O3_af_516_6:O O3_af_517_6:O O3_af_518_6:O O3_af_519_6:O O3_af_520_6:O O3_af_521_6:O O3_af_522_6:O O3_af_523_6:O O3_af_524_6:O O3_af_525_6:O O3_af_526_6:O O3_af_527_6:O O3_af_528_6:O O3_af_529_6:O O3_af_530_6:O O3_af_531_6:O O3_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xright reset root_aO1_at_50_6 root_aO1_at_51_6 root_aO1_at_52_6 root_aO1_at_53_6 root_aO1_at_54_6 root_aO1_at_55_6 root_aO1_at_56_6 root_aO1_at_57_6 root_aO1_at_58_6 root_aO1_at_59_6 root_aO1_at_510_6 root_aO1_at_511_6 root_aO1_at_512_6 root_aO1_at_513_6 root_aO1_at_514_6 root_aO1_at_515_6 root_aO1_at_516_6 root_aO1_at_517_6 root_aO1_at_518_6 root_aO1_at_519_6 root_aO1_at_520_6 root_aO1_at_521_6 root_aO1_at_522_6 root_aO1_at_523_6 root_aO1_at_524_6 root_aO1_at_525_6 root_aO1_at_526_6 root_aO1_at_527_6 root_aO1_at_528_6 root_aO1_at_529_6 root_aO1_at_530_6 root_aO1_at_531_6 root_aO1_af_50_6 root_aO1_af_51_6 root_aO1_af_52_6 root_aO1_af_53_6 root_aO1_af_54_6 root_aO1_af_55_6 root_aO1_af_56_6 root_aO1_af_57_6 root_aO1_af_58_6 root_aO1_af_59_6 root_aO1_af_510_6 root_aO1_af_511_6 root_aO1_af_512_6 root_aO1_af_513_6 root_aO1_af_514_6 root_aO1_af_515_6 root_aO1_af_516_6 root_aO1_af_517_6 root_aO1_af_518_6 root_aO1_af_519_6 root_aO1_af_520_6 root_aO1_af_521_6 root_aO1_af_522_6 root_aO1_af_523_6 root_aO1_af_524_6 root_aO1_af_525_6 root_aO1_af_526_6 root_aO1_af_527_6 root_aO1_af_528_6 root_aO1_af_529_6 root_aO1_af_530_6 root_aO1_af_531_6 root_aO1_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6 O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6 O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6 O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6 O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6 O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6 O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6 O1_af_531_6 O1_aa O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6 O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6 O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6 O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6 O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6 O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6 O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6 O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6 O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa UpdownSel
xroot reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa left_aI_at_50_6 left_aI_at_51_6 left_aI_at_52_6 left_aI_at_53_6 left_aI_at_54_6 left_aI_at_55_6 left_aI_at_56_6 left_aI_at_57_6 left_aI_at_58_6 left_aI_at_59_6 left_aI_at_510_6 left_aI_at_511_6 left_aI_at_512_6 left_aI_at_513_6 left_aI_at_514_6 left_aI_at_515_6 left_aI_at_516_6 left_aI_at_517_6 left_aI_at_518_6 left_aI_at_519_6 left_aI_at_520_6 left_aI_at_521_6 left_aI_at_522_6 left_aI_at_523_6 left_aI_at_524_6 left_aI_at_525_6 left_aI_at_526_6 left_aI_at_527_6 left_aI_at_528_6 left_aI_at_529_6 left_aI_at_530_6 left_aI_at_531_6 left_aI_af_50_6 left_aI_af_51_6 left_aI_af_52_6 left_aI_af_53_6 left_aI_af_54_6 left_aI_af_55_6 left_aI_af_56_6 left_aI_af_57_6 left_aI_af_58_6 left_aI_af_59_6 left_aI_af_510_6 left_aI_af_511_6 left_aI_af_512_6 left_aI_af_513_6 left_aI_af_514_6 left_aI_af_515_6 left_aI_af_516_6 left_aI_af_517_6 left_aI_af_518_6 left_aI_af_519_6 left_aI_af_520_6 left_aI_af_521_6 left_aI_af_522_6 left_aI_af_523_6 left_aI_af_524_6 left_aI_af_525_6 left_aI_af_526_6 left_aI_af_527_6 left_aI_af_528_6 left_aI_af_529_6 left_aI_af_530_6 left_aI_af_531_6 left_aI_aa root_aO1_at_50_6 root_aO1_at_51_6 root_aO1_at_52_6 root_aO1_at_53_6 root_aO1_at_54_6 root_aO1_at_55_6 root_aO1_at_56_6 root_aO1_at_57_6 root_aO1_at_58_6 root_aO1_at_59_6 root_aO1_at_510_6 root_aO1_at_511_6 root_aO1_at_512_6 root_aO1_at_513_6 root_aO1_at_514_6 root_aO1_at_515_6 root_aO1_at_516_6 root_aO1_at_517_6 root_aO1_at_518_6 root_aO1_at_519_6 root_aO1_at_520_6 root_aO1_at_521_6 root_aO1_at_522_6 root_aO1_at_523_6 root_aO1_at_524_6 root_aO1_at_525_6 root_aO1_at_526_6 root_aO1_at_527_6 root_aO1_at_528_6 root_aO1_at_529_6 root_aO1_at_530_6 root_aO1_at_531_6 root_aO1_af_50_6 root_aO1_af_51_6 root_aO1_af_52_6 root_aO1_af_53_6 root_aO1_af_54_6 root_aO1_af_55_6 root_aO1_af_56_6 root_aO1_af_57_6 root_aO1_af_58_6 root_aO1_af_59_6 root_aO1_af_510_6 root_aO1_af_511_6 root_aO1_af_512_6 root_aO1_af_513_6 root_aO1_af_514_6 root_aO1_af_515_6 root_aO1_af_516_6 root_aO1_af_517_6 root_aO1_af_518_6 root_aO1_af_519_6 root_aO1_af_520_6 root_aO1_af_521_6 root_aO1_af_522_6 root_aO1_af_523_6 root_aO1_af_524_6 root_aO1_af_525_6 root_aO1_af_526_6 root_aO1_af_527_6 root_aO1_af_528_6 root_aO1_af_529_6 root_aO1_af_530_6 root_aO1_af_531_6 root_aO1_aa UpdownSel
xleft reset left_aI_at_50_6 left_aI_at_51_6 left_aI_at_52_6 left_aI_at_53_6 left_aI_at_54_6 left_aI_at_55_6 left_aI_at_56_6 left_aI_at_57_6 left_aI_at_58_6 left_aI_at_59_6 left_aI_at_510_6 left_aI_at_511_6 left_aI_at_512_6 left_aI_at_513_6 left_aI_at_514_6 left_aI_at_515_6 left_aI_at_516_6 left_aI_at_517_6 left_aI_at_518_6 left_aI_at_519_6 left_aI_at_520_6 left_aI_at_521_6 left_aI_at_522_6 left_aI_at_523_6 left_aI_at_524_6 left_aI_at_525_6 left_aI_at_526_6 left_aI_at_527_6 left_aI_at_528_6 left_aI_at_529_6 left_aI_at_530_6 left_aI_at_531_6 left_aI_af_50_6 left_aI_af_51_6 left_aI_af_52_6 left_aI_af_53_6 left_aI_af_54_6 left_aI_af_55_6 left_aI_af_56_6 left_aI_af_57_6 left_aI_af_58_6 left_aI_af_59_6 left_aI_af_510_6 left_aI_af_511_6 left_aI_af_512_6 left_aI_af_513_6 left_aI_af_514_6 left_aI_af_515_6 left_aI_af_516_6 left_aI_af_517_6 left_aI_af_518_6 left_aI_af_519_6 left_aI_af_520_6 left_aI_af_521_6 left_aI_af_522_6 left_aI_af_523_6 left_aI_af_524_6 left_aI_af_525_6 left_aI_af_526_6 left_aI_af_527_6 left_aI_af_528_6 left_aI_af_529_6 left_aI_af_530_6 left_aI_af_531_6 left_aI_aa O3_at_50_6 O3_at_51_6 O3_at_52_6 O3_at_53_6 O3_at_54_6 O3_at_55_6 O3_at_56_6 O3_at_57_6 O3_at_58_6 O3_at_59_6 O3_at_510_6 O3_at_511_6 O3_at_512_6 O3_at_513_6 O3_at_514_6 O3_at_515_6 O3_at_516_6 O3_at_517_6 O3_at_518_6 O3_at_519_6 O3_at_520_6 O3_at_521_6 O3_at_522_6 O3_at_523_6 O3_at_524_6 O3_at_525_6 O3_at_526_6 O3_at_527_6 O3_at_528_6 O3_at_529_6 O3_at_530_6 O3_at_531_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 O3_af_54_6 O3_af_55_6 O3_af_56_6 O3_af_57_6 O3_af_58_6 O3_af_59_6 O3_af_510_6 O3_af_511_6 O3_af_512_6 O3_af_513_6 O3_af_514_6 O3_af_515_6 O3_af_516_6 O3_af_517_6 O3_af_518_6 O3_af_519_6 O3_af_520_6 O3_af_521_6 O3_af_522_6 O3_af_523_6 O3_af_524_6 O3_af_525_6 O3_af_526_6 O3_af_527_6 O3_af_528_6 O3_af_529_6 O3_af_530_6 O3_af_531_6 O3_aa O2_at_50_6 O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_at_54_6 O2_at_55_6 O2_at_56_6 O2_at_57_6 O2_at_58_6 O2_at_59_6 O2_at_510_6 O2_at_511_6 O2_at_512_6 O2_at_513_6 O2_at_514_6 O2_at_515_6 O2_at_516_6 O2_at_517_6 O2_at_518_6 O2_at_519_6 O2_at_520_6 O2_at_521_6 O2_at_522_6 O2_at_523_6 O2_at_524_6 O2_at_525_6 O2_at_526_6 O2_at_527_6 O2_at_528_6 O2_at_529_6 O2_at_530_6 O2_at_531_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O2_af_54_6 O2_af_55_6 O2_af_56_6 O2_af_57_6 O2_af_58_6 O2_af_59_6 O2_af_510_6 O2_af_511_6 O2_af_512_6 O2_af_513_6 O2_af_514_6 O2_af_515_6 O2_af_516_6 O2_af_517_6 O2_af_518_6 O2_af_519_6 O2_af_520_6 O2_af_521_6 O2_af_522_6 O2_af_523_6 O2_af_524_6 O2_af_525_6 O2_af_526_6 O2_af_527_6 O2_af_528_6 O2_af_529_6 O2_af_530_6 O2_af_531_6 O2_aa UpdownSel
.ends
*---- end of process: ChildSel<> -----
*
*---- act defproc: MltcSel<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a
*
.subckt MltcSel reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6 O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6 O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6 O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6 O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6 O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6 O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6 O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6 O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6 O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6 O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6 O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6 O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6 O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6 O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6 O1_af_531_6 O1_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_at_54_6:O O0_at_55_6:O O0_at_56_6:O O0_at_57_6:O O0_at_58_6:O O0_at_59_6:O O0_at_510_6:O O0_at_511_6:O O0_at_512_6:O O0_at_513_6:O O0_at_514_6:O O0_at_515_6:O O0_at_516_6:O O0_at_517_6:O O0_at_518_6:O O0_at_519_6:O O0_at_520_6:O O0_at_521_6:O O0_at_522_6:O O0_at_523_6:O O0_at_524_6:O O0_at_525_6:O O0_at_526_6:O O0_at_527_6:O O0_at_528_6:O O0_at_529_6:O O0_at_530_6:O O0_at_531_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O0_af_54_6:O O0_af_55_6:O O0_af_56_6:O O0_af_57_6:O O0_af_58_6:O O0_af_59_6:O O0_af_510_6:O O0_af_511_6:O O0_af_512_6:O O0_af_513_6:O O0_af_514_6:O O0_af_515_6:O O0_af_516_6:O O0_af_517_6:O O0_af_518_6:O O0_af_519_6:O O0_af_520_6:O O0_af_521_6:O O0_af_522_6:O O0_af_523_6:O O0_af_524_6:O O0_af_525_6:O O0_af_526_6:O O0_af_527_6:O O0_af_528_6:O O0_af_529_6:O O0_af_530_6:O O0_af_531_6:O O0_aa:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_at_54_6:O O1_at_55_6:O O1_at_56_6:O O1_at_57_6:O O1_at_58_6:O O1_at_59_6:O O1_at_510_6:O O1_at_511_6:O O1_at_512_6:O O1_at_513_6:O O1_at_514_6:O O1_at_515_6:O O1_at_516_6:O O1_at_517_6:O O1_at_518_6:O O1_at_519_6:O O1_at_520_6:O O1_at_521_6:O O1_at_522_6:O O1_at_523_6:O O1_at_524_6:O O1_at_525_6:O O1_at_526_6:O O1_at_527_6:O O1_at_528_6:O O1_at_529_6:O O1_at_530_6:O O1_at_531_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O1_af_54_6:O O1_af_55_6:O O1_af_56_6:O O1_af_57_6:O O1_af_58_6:O O1_af_59_6:O O1_af_510_6:O O1_af_511_6:O O1_af_512_6:O O1_af_513_6:O O1_af_514_6:O O1_af_515_6:O O1_af_516_6:O O1_af_517_6:O O1_af_518_6:O O1_af_519_6:O O1_af_520_6:O O1_af_521_6:O O1_af_522_6:O O1_af_523_6:O O1_af_524_6:O O1_af_525_6:O O1_af_526_6:O O1_af_527_6:O O1_af_528_6:O O1_af_529_6:O O1_af_530_6:O O1_af_531_6:O O1_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* p (state-holding): pup_reff=0.8; pdn_reff=1.33333
* inv__I__t_51_6 (combinational)
* inv__s (combinational)
* inv__reset (combinational)
* s (state-holding): pup_reff=1.6; pdn_reff=0.666667
* w__0i (state-holding): pup_reff=1.2; pdn_reff=1.33333
* inv__p (combinational)
* inv__I__f_51_6 (combinational)
* n__w__0 (state-holding): pup_reff=1.6; pdn_reff=1.33333
* n__I__a (state-holding): pup_reff=1.6; pdn_reff=2
* n__w__1 (state-holding): pup_reff=1.6; pdn_reff=1.33333
* w__1 (combinational)
* w__0 (combinational)
* inv__w__0i (combinational)
* n__O0__t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_50_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_50_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_50_6 (combinational)
* O1_af_50_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_50_6 (combinational)
* n__O0__t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_51_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_51_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_51_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_52_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_52_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_52_6 (combinational)
* O1_af_52_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_52_6 (combinational)
* n__O0__t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_53_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_53_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_53_6 (combinational)
* O1_af_53_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_53_6 (combinational)
* n__O0__t_54_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_54_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_54_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_54_6 (combinational)
* O1_af_54_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_54_6 (combinational)
* n__O0__t_55_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_55_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_55_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_55_6 (combinational)
* O1_af_55_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_55_6 (combinational)
* n__O0__t_56_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_56_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_56_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_56_6 (combinational)
* O1_af_56_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_56_6 (combinational)
* n__O0__t_57_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_57_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_57_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_57_6 (combinational)
* O1_af_57_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_57_6 (combinational)
* n__O0__t_58_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_58_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_58_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_58_6 (combinational)
* O1_af_58_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_58_6 (combinational)
* n__O0__t_59_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_59_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_59_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_59_6 (combinational)
* O1_af_59_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_59_6 (combinational)
* n__O0__t_510_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_510_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_510_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_510_6 (combinational)
* O1_af_510_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_510_6 (combinational)
* n__O0__t_511_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_511_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_511_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_511_6 (combinational)
* O1_af_511_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_511_6 (combinational)
* n__O0__t_512_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_512_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_512_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_512_6 (combinational)
* O1_af_512_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_512_6 (combinational)
* n__O0__t_513_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_513_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_513_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_513_6 (combinational)
* O1_af_513_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_513_6 (combinational)
* n__O0__t_514_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_514_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_514_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_514_6 (combinational)
* O1_af_514_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_514_6 (combinational)
* n__O0__t_515_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_515_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_515_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_515_6 (combinational)
* O1_af_515_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_515_6 (combinational)
* n__O0__t_516_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_516_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_516_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_516_6 (combinational)
* O1_af_516_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_516_6 (combinational)
* n__O0__t_517_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_517_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_517_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_517_6 (combinational)
* O1_af_517_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_517_6 (combinational)
* n__O0__t_518_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_518_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_518_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_518_6 (combinational)
* O1_af_518_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_518_6 (combinational)
* n__O0__t_519_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_519_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_519_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_519_6 (combinational)
* O1_af_519_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_519_6 (combinational)
* n__O0__t_520_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_520_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_520_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_520_6 (combinational)
* O1_af_520_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_520_6 (combinational)
* n__O0__t_521_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_521_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_521_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_521_6 (combinational)
* O1_af_521_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_521_6 (combinational)
* n__O0__t_522_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_522_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_522_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_522_6 (combinational)
* O1_af_522_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_522_6 (combinational)
* n__O0__t_523_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_523_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_523_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_523_6 (combinational)
* O1_af_523_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_523_6 (combinational)
* n__O0__t_524_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_524_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_524_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_524_6 (combinational)
* O1_af_524_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_524_6 (combinational)
* n__O0__t_525_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_525_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_525_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_525_6 (combinational)
* O1_af_525_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_525_6 (combinational)
* n__O0__t_526_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_526_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_526_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_526_6 (combinational)
* O1_af_526_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_526_6 (combinational)
* n__O0__t_527_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_527_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_527_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_527_6 (combinational)
* O1_af_527_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_527_6 (combinational)
* n__O0__t_528_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_528_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_528_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_528_6 (combinational)
* O1_af_528_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_528_6 (combinational)
* n__O0__t_529_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_529_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_529_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_529_6 (combinational)
* O1_af_529_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_529_6 (combinational)
* n__O0__t_530_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_530_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_530_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_530_6 (combinational)
* O1_af_530_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_530_6 (combinational)
* n__O0__t_531_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_531_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_531_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_531_6 (combinational)
* O1_af_531_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_531_6 (combinational)
* I_aa (combinational)
* O0_at_50_6 (combinational)
* O0_af_50_6 (combinational)
* O0_at_51_6 (combinational)
* O0_af_51_6 (combinational)
* O0_at_52_6 (combinational)
* O0_af_52_6 (combinational)
* O0_at_53_6 (combinational)
* O0_af_53_6 (combinational)
* O0_at_54_6 (combinational)
* O0_af_54_6 (combinational)
* O0_at_55_6 (combinational)
* O0_af_55_6 (combinational)
* O0_at_56_6 (combinational)
* O0_af_56_6 (combinational)
* O0_at_57_6 (combinational)
* O0_af_57_6 (combinational)
* O0_at_58_6 (combinational)
* O0_af_58_6 (combinational)
* O0_at_59_6 (combinational)
* O0_af_59_6 (combinational)
* O0_at_510_6 (combinational)
* O0_af_510_6 (combinational)
* O0_at_511_6 (combinational)
* O0_af_511_6 (combinational)
* O0_at_512_6 (combinational)
* O0_af_512_6 (combinational)
* O0_at_513_6 (combinational)
* O0_af_513_6 (combinational)
* O0_at_514_6 (combinational)
* O0_af_514_6 (combinational)
* O0_at_515_6 (combinational)
* O0_af_515_6 (combinational)
* O0_at_516_6 (combinational)
* O0_af_516_6 (combinational)
* O0_at_517_6 (combinational)
* O0_af_517_6 (combinational)
* O0_at_518_6 (combinational)
* O0_af_518_6 (combinational)
* O0_at_519_6 (combinational)
* O0_af_519_6 (combinational)
* O0_at_520_6 (combinational)
* O0_af_520_6 (combinational)
* O0_at_521_6 (combinational)
* O0_af_521_6 (combinational)
* O0_at_522_6 (combinational)
* O0_af_522_6 (combinational)
* O0_at_523_6 (combinational)
* O0_af_523_6 (combinational)
* O0_at_524_6 (combinational)
* O0_af_524_6 (combinational)
* O0_at_525_6 (combinational)
* O0_af_525_6 (combinational)
* O0_at_526_6 (combinational)
* O0_af_526_6 (combinational)
* O0_at_527_6 (combinational)
* O0_af_527_6 (combinational)
* O0_at_528_6 (combinational)
* O0_af_528_6 (combinational)
* O0_at_529_6 (combinational)
* O0_af_529_6 (combinational)
* O0_at_530_6 (combinational)
* O0_af_530_6 (combinational)
* O0_at_531_6 (combinational)
* O0_af_531_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd inv__I__t_51_6 #3 Vdd pmos W=1.3U L=0.065U
M1_ Vdd inv__reset p Vdd pmos W=1.3U L=0.065U
M2_ Vdd inv__s #11 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd s #24 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd inv__reset n__w__0 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd inv__s #31 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd inv__reset n__w__1 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd n__w__1 #34 Vdd pmos W=1.3U L=0.065U
M8_ Vdd inv__reset s Vdd pmos W=1.3U L=0.065U
M9_ Vdd O0_aa #42 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd I_at_50_6 n__O0__t_50_6 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd I_af_50_6 n__O0__f_50_6 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd p #52 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd p #56 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd I_at_51_6 n__O0__t_51_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd I_af_51_6 n__O0__f_51_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd p #67 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd p #70 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd I_at_52_6 n__O0__t_52_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd I_af_52_6 n__O0__f_52_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd p #81 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd p #85 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd I_at_53_6 n__O0__t_53_6 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd I_af_53_6 n__O0__f_53_6 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd p #97 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd p #101 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I_at_54_6 n__O0__t_54_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd I_af_54_6 n__O0__f_54_6 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd p #113 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd p #117 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd I_at_55_6 n__O0__t_55_6 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd I_af_55_6 n__O0__f_55_6 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd p #129 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd p #133 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd I_at_56_6 n__O0__t_56_6 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd I_af_56_6 n__O0__f_56_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd p #145 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd p #149 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd I_at_57_6 n__O0__t_57_6 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd I_af_57_6 n__O0__f_57_6 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd p #161 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd p #165 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd I_at_58_6 n__O0__t_58_6 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd I_af_58_6 n__O0__f_58_6 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd p #177 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd p #181 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd I_at_59_6 n__O0__t_59_6 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd I_af_59_6 n__O0__f_59_6 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd p #193 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd p #197 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd I_at_510_6 n__O0__t_510_6 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd I_af_510_6 n__O0__f_510_6 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd p #209 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd p #213 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd I_at_511_6 n__O0__t_511_6 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd I_af_511_6 n__O0__f_511_6 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd p #225 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd p #229 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd I_at_512_6 n__O0__t_512_6 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd I_af_512_6 n__O0__f_512_6 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd p #241 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd p #245 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd I_at_513_6 n__O0__t_513_6 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd I_af_513_6 n__O0__f_513_6 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd p #257 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd p #261 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd I_at_514_6 n__O0__t_514_6 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd I_af_514_6 n__O0__f_514_6 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd p #273 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd p #277 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd I_at_515_6 n__O0__t_515_6 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd I_af_515_6 n__O0__f_515_6 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd p #289 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd p #293 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd I_at_516_6 n__O0__t_516_6 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd I_af_516_6 n__O0__f_516_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd p #305 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd p #309 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd I_at_517_6 n__O0__t_517_6 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd I_af_517_6 n__O0__f_517_6 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd p #321 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd p #325 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd I_at_518_6 n__O0__t_518_6 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd I_af_518_6 n__O0__f_518_6 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd p #337 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd p #341 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd I_at_519_6 n__O0__t_519_6 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd I_af_519_6 n__O0__f_519_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd p #353 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd p #357 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd I_at_520_6 n__O0__t_520_6 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd I_af_520_6 n__O0__f_520_6 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd p #369 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd p #373 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd I_at_521_6 n__O0__t_521_6 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd I_af_521_6 n__O0__f_521_6 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd p #385 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd p #389 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd I_at_522_6 n__O0__t_522_6 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd I_af_522_6 n__O0__f_522_6 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd p #401 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd p #405 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd I_at_523_6 n__O0__t_523_6 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd I_af_523_6 n__O0__f_523_6 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd p #417 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd p #421 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd I_at_524_6 n__O0__t_524_6 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd I_af_524_6 n__O0__f_524_6 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd p #433 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd p #437 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd I_at_525_6 n__O0__t_525_6 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd I_af_525_6 n__O0__f_525_6 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd p #449 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd p #453 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd I_at_526_6 n__O0__t_526_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd I_af_526_6 n__O0__f_526_6 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd p #465 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd p #469 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd I_at_527_6 n__O0__t_527_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd I_af_527_6 n__O0__f_527_6 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd p #481 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd p #485 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd I_at_528_6 n__O0__t_528_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd I_af_528_6 n__O0__f_528_6 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd p #497 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd p #501 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd I_at_529_6 n__O0__t_529_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd I_af_529_6 n__O0__f_529_6 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd p #513 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd p #517 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd I_at_530_6 n__O0__t_530_6 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd I_af_530_6 n__O0__f_530_6 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd p #529 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd p #533 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd I_at_531_6 n__O0__t_531_6 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd I_af_531_6 n__O0__f_531_6 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd p #545 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd p #549 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd s inv__s Vdd pmos W=1.3U L=0.065U
M139_ Vdd reset inv__reset Vdd pmos W=0.1625U L=0.065U
M140_ Vdd p inv__p Vdd pmos W=0.1625U L=0.065U
M141_ Vdd w__0i inv__w__0i Vdd pmos W=0.1625U L=0.065U
M142_ Vdd n__w__0 w__0 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd n__w__1 w__1 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd I_at_50_6 inv__I__t_50_6 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd I_af_50_6 inv__I__f_50_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd I_at_51_6 inv__I__t_51_6 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd I_af_51_6 inv__I__f_51_6 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd I_at_52_6 inv__I__t_52_6 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd I_af_52_6 inv__I__f_52_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd I_at_53_6 inv__I__t_53_6 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd I_af_53_6 inv__I__f_53_6 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd I_at_54_6 inv__I__t_54_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd I_af_54_6 inv__I__f_54_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd I_at_55_6 inv__I__t_55_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd I_af_55_6 inv__I__f_55_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd I_at_56_6 inv__I__t_56_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd I_af_56_6 inv__I__f_56_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd I_at_57_6 inv__I__t_57_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd I_af_57_6 inv__I__f_57_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd I_at_58_6 inv__I__t_58_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd I_af_58_6 inv__I__f_58_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd I_at_59_6 inv__I__t_59_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd I_af_59_6 inv__I__f_59_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd I_at_510_6 inv__I__t_510_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd I_af_510_6 inv__I__f_510_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd I_at_511_6 inv__I__t_511_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd I_af_511_6 inv__I__f_511_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd I_at_512_6 inv__I__t_512_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd I_af_512_6 inv__I__f_512_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd I_at_513_6 inv__I__t_513_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd I_af_513_6 inv__I__f_513_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd I_at_514_6 inv__I__t_514_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd I_af_514_6 inv__I__f_514_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd I_at_515_6 inv__I__t_515_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd I_af_515_6 inv__I__f_515_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd I_at_516_6 inv__I__t_516_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd I_af_516_6 inv__I__f_516_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd I_at_517_6 inv__I__t_517_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd I_af_517_6 inv__I__f_517_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd I_at_518_6 inv__I__t_518_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd I_af_518_6 inv__I__f_518_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd I_at_519_6 inv__I__t_519_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd I_af_519_6 inv__I__f_519_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd I_at_520_6 inv__I__t_520_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd I_af_520_6 inv__I__f_520_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd I_at_521_6 inv__I__t_521_6 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd I_af_521_6 inv__I__f_521_6 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd I_at_522_6 inv__I__t_522_6 Vdd pmos W=0.1625U L=0.065U
M189_ Vdd I_af_522_6 inv__I__f_522_6 Vdd pmos W=0.1625U L=0.065U
M190_ Vdd I_at_523_6 inv__I__t_523_6 Vdd pmos W=0.1625U L=0.065U
M191_ Vdd I_af_523_6 inv__I__f_523_6 Vdd pmos W=0.1625U L=0.065U
M192_ Vdd I_at_524_6 inv__I__t_524_6 Vdd pmos W=0.1625U L=0.065U
M193_ Vdd I_af_524_6 inv__I__f_524_6 Vdd pmos W=0.1625U L=0.065U
M194_ Vdd I_at_525_6 inv__I__t_525_6 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd I_af_525_6 inv__I__f_525_6 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd I_at_526_6 inv__I__t_526_6 Vdd pmos W=0.1625U L=0.065U
M197_ Vdd I_af_526_6 inv__I__f_526_6 Vdd pmos W=0.1625U L=0.065U
M198_ Vdd I_at_527_6 inv__I__t_527_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd I_af_527_6 inv__I__f_527_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd I_at_528_6 inv__I__t_528_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd I_af_528_6 inv__I__f_528_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd I_at_529_6 inv__I__t_529_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd I_af_529_6 inv__I__f_529_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd I_at_530_6 inv__I__t_530_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd I_af_530_6 inv__I__f_530_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd I_at_531_6 inv__I__t_531_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd I_af_531_6 inv__I__f_531_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd n__I__a I_aa Vdd pmos W=0.1625U L=0.065U
M209_ Vdd n__O0__t_50_6 O0_at_50_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd n__O0__f_50_6 O0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd n__O0__t_51_6 O0_at_51_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd n__O0__f_51_6 O0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd n__O0__t_52_6 O0_at_52_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd n__O0__f_52_6 O0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd n__O0__t_53_6 O0_at_53_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd n__O0__f_53_6 O0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M217_ Vdd n__O0__t_54_6 O0_at_54_6 Vdd pmos W=0.1625U L=0.065U
M218_ Vdd n__O0__f_54_6 O0_af_54_6 Vdd pmos W=0.1625U L=0.065U
M219_ Vdd n__O0__t_55_6 O0_at_55_6 Vdd pmos W=0.1625U L=0.065U
M220_ Vdd n__O0__f_55_6 O0_af_55_6 Vdd pmos W=0.1625U L=0.065U
M221_ Vdd n__O0__t_56_6 O0_at_56_6 Vdd pmos W=0.1625U L=0.065U
M222_ Vdd n__O0__f_56_6 O0_af_56_6 Vdd pmos W=0.1625U L=0.065U
M223_ Vdd n__O0__t_57_6 O0_at_57_6 Vdd pmos W=0.1625U L=0.065U
M224_ Vdd n__O0__f_57_6 O0_af_57_6 Vdd pmos W=0.1625U L=0.065U
M225_ Vdd n__O0__t_58_6 O0_at_58_6 Vdd pmos W=0.1625U L=0.065U
M226_ Vdd n__O0__f_58_6 O0_af_58_6 Vdd pmos W=0.1625U L=0.065U
M227_ Vdd n__O0__t_59_6 O0_at_59_6 Vdd pmos W=0.1625U L=0.065U
M228_ Vdd n__O0__f_59_6 O0_af_59_6 Vdd pmos W=0.1625U L=0.065U
M229_ Vdd n__O0__t_510_6 O0_at_510_6 Vdd pmos W=0.1625U L=0.065U
M230_ Vdd n__O0__f_510_6 O0_af_510_6 Vdd pmos W=0.1625U L=0.065U
M231_ Vdd n__O0__t_511_6 O0_at_511_6 Vdd pmos W=0.1625U L=0.065U
M232_ Vdd n__O0__f_511_6 O0_af_511_6 Vdd pmos W=0.1625U L=0.065U
M233_ Vdd n__O0__t_512_6 O0_at_512_6 Vdd pmos W=0.1625U L=0.065U
M234_ Vdd n__O0__f_512_6 O0_af_512_6 Vdd pmos W=0.1625U L=0.065U
M235_ Vdd n__O0__t_513_6 O0_at_513_6 Vdd pmos W=0.1625U L=0.065U
M236_ Vdd n__O0__f_513_6 O0_af_513_6 Vdd pmos W=0.1625U L=0.065U
M237_ Vdd n__O0__t_514_6 O0_at_514_6 Vdd pmos W=0.1625U L=0.065U
M238_ Vdd n__O0__f_514_6 O0_af_514_6 Vdd pmos W=0.1625U L=0.065U
M239_ Vdd n__O0__t_515_6 O0_at_515_6 Vdd pmos W=0.1625U L=0.065U
M240_ Vdd n__O0__f_515_6 O0_af_515_6 Vdd pmos W=0.1625U L=0.065U
M241_ Vdd n__O0__t_516_6 O0_at_516_6 Vdd pmos W=0.1625U L=0.065U
M242_ Vdd n__O0__f_516_6 O0_af_516_6 Vdd pmos W=0.1625U L=0.065U
M243_ Vdd n__O0__t_517_6 O0_at_517_6 Vdd pmos W=0.1625U L=0.065U
M244_ Vdd n__O0__f_517_6 O0_af_517_6 Vdd pmos W=0.1625U L=0.065U
M245_ Vdd n__O0__t_518_6 O0_at_518_6 Vdd pmos W=0.1625U L=0.065U
M246_ Vdd n__O0__f_518_6 O0_af_518_6 Vdd pmos W=0.1625U L=0.065U
M247_ Vdd n__O0__t_519_6 O0_at_519_6 Vdd pmos W=0.1625U L=0.065U
M248_ Vdd n__O0__f_519_6 O0_af_519_6 Vdd pmos W=0.1625U L=0.065U
M249_ Vdd n__O0__t_520_6 O0_at_520_6 Vdd pmos W=0.1625U L=0.065U
M250_ Vdd n__O0__f_520_6 O0_af_520_6 Vdd pmos W=0.1625U L=0.065U
M251_ Vdd n__O0__t_521_6 O0_at_521_6 Vdd pmos W=0.1625U L=0.065U
M252_ Vdd n__O0__f_521_6 O0_af_521_6 Vdd pmos W=0.1625U L=0.065U
M253_ Vdd n__O0__t_522_6 O0_at_522_6 Vdd pmos W=0.1625U L=0.065U
M254_ Vdd n__O0__f_522_6 O0_af_522_6 Vdd pmos W=0.1625U L=0.065U
M255_ Vdd n__O0__t_523_6 O0_at_523_6 Vdd pmos W=0.1625U L=0.065U
M256_ Vdd n__O0__f_523_6 O0_af_523_6 Vdd pmos W=0.1625U L=0.065U
M257_ Vdd n__O0__t_524_6 O0_at_524_6 Vdd pmos W=0.1625U L=0.065U
M258_ Vdd n__O0__f_524_6 O0_af_524_6 Vdd pmos W=0.1625U L=0.065U
M259_ Vdd n__O0__t_525_6 O0_at_525_6 Vdd pmos W=0.1625U L=0.065U
M260_ Vdd n__O0__f_525_6 O0_af_525_6 Vdd pmos W=0.1625U L=0.065U
M261_ Vdd n__O0__t_526_6 O0_at_526_6 Vdd pmos W=0.1625U L=0.065U
M262_ Vdd n__O0__f_526_6 O0_af_526_6 Vdd pmos W=0.1625U L=0.065U
M263_ Vdd n__O0__t_527_6 O0_at_527_6 Vdd pmos W=0.1625U L=0.065U
M264_ Vdd n__O0__f_527_6 O0_af_527_6 Vdd pmos W=0.1625U L=0.065U
M265_ Vdd n__O0__t_528_6 O0_at_528_6 Vdd pmos W=0.1625U L=0.065U
M266_ Vdd n__O0__f_528_6 O0_af_528_6 Vdd pmos W=0.1625U L=0.065U
M267_ Vdd n__O0__t_529_6 O0_at_529_6 Vdd pmos W=0.1625U L=0.065U
M268_ Vdd n__O0__f_529_6 O0_af_529_6 Vdd pmos W=0.1625U L=0.065U
M269_ Vdd n__O0__t_530_6 O0_at_530_6 Vdd pmos W=0.1625U L=0.065U
M270_ Vdd n__O0__f_530_6 O0_af_530_6 Vdd pmos W=0.1625U L=0.065U
M271_ Vdd n__O0__t_531_6 O0_at_531_6 Vdd pmos W=0.1625U L=0.065U
M272_ Vdd n__O0__f_531_6 O0_af_531_6 Vdd pmos W=0.1625U L=0.065U
M273_ Vdd p #fb616# Vdd pmos W=0.1625U L=0.13U
M274_ Vdd s #fb619# Vdd pmos W=0.1625U L=0.13U
M275_keeper Vdd GND #617 Vdd pmos W=0.0975U L=0.585U
M276_ Vdd w__0i #fb622# Vdd pmos W=0.1625U L=0.13U
M277_keeper Vdd GND #620 Vdd pmos W=0.0975U L=0.26U
M278_ Vdd n__w__0 #fb625# Vdd pmos W=0.1625U L=0.13U
M279_keeper Vdd GND #623 Vdd pmos W=0.0975U L=0.585U
M280_ Vdd n__I__a #fb628# Vdd pmos W=0.1625U L=0.13U
M281_keeper Vdd GND #626 Vdd pmos W=0.0975U L=0.585U
M282_ Vdd n__w__1 #fb631# Vdd pmos W=0.1625U L=0.13U
M283_keeper Vdd GND #629 Vdd pmos W=0.0975U L=0.91U
M284_ Vdd n__O0__t_50_6 #fb634# Vdd pmos W=0.1625U L=0.13U
M285_keeper Vdd GND #632 Vdd pmos W=0.0975U L=0.585U
M286_ Vdd n__O0__f_50_6 #fb637# Vdd pmos W=0.1625U L=0.13U
M287_keeper Vdd GND #635 Vdd pmos W=0.0975U L=0.91U
M288_ Vdd O1_at_50_6 #fb640# Vdd pmos W=0.1625U L=0.13U
M289_keeper Vdd GND #638 Vdd pmos W=0.0975U L=0.91U
M290_ Vdd O1_af_50_6 #fb643# Vdd pmos W=0.1625U L=0.13U
M291_keeper Vdd GND #641 Vdd pmos W=0.0975U L=0.26U
M292_ Vdd n__O0__t_51_6 #fb646# Vdd pmos W=0.1625U L=0.13U
M293_keeper Vdd GND #644 Vdd pmos W=0.0975U L=0.26U
M294_ Vdd n__O0__f_51_6 #fb649# Vdd pmos W=0.1625U L=0.13U
M295_keeper Vdd GND #647 Vdd pmos W=0.0975U L=0.91U
M296_ Vdd O1_at_51_6 #fb652# Vdd pmos W=0.1625U L=0.13U
M297_keeper Vdd GND #650 Vdd pmos W=0.0975U L=0.91U
M298_ Vdd O1_af_51_6 #fb655# Vdd pmos W=0.1625U L=0.13U
M299_keeper Vdd GND #653 Vdd pmos W=0.0975U L=0.26U
M300_ Vdd n__O0__t_52_6 #fb658# Vdd pmos W=0.1625U L=0.13U
M301_keeper Vdd GND #656 Vdd pmos W=0.0975U L=0.26U
M302_ Vdd n__O0__f_52_6 #fb661# Vdd pmos W=0.1625U L=0.13U
M303_keeper Vdd GND #659 Vdd pmos W=0.0975U L=0.91U
M304_ Vdd O1_at_52_6 #fb664# Vdd pmos W=0.1625U L=0.13U
M305_keeper Vdd GND #662 Vdd pmos W=0.0975U L=0.91U
M306_ Vdd O1_af_52_6 #fb667# Vdd pmos W=0.1625U L=0.13U
M307_keeper Vdd GND #665 Vdd pmos W=0.0975U L=0.26U
M308_ Vdd n__O0__t_53_6 #fb670# Vdd pmos W=0.1625U L=0.13U
M309_keeper Vdd GND #668 Vdd pmos W=0.0975U L=0.26U
M310_ Vdd n__O0__f_53_6 #fb673# Vdd pmos W=0.1625U L=0.13U
M311_keeper Vdd GND #671 Vdd pmos W=0.0975U L=0.91U
M312_ Vdd O1_at_53_6 #fb676# Vdd pmos W=0.1625U L=0.13U
M313_keeper Vdd GND #674 Vdd pmos W=0.0975U L=0.91U
M314_ Vdd O1_af_53_6 #fb679# Vdd pmos W=0.1625U L=0.13U
M315_keeper Vdd GND #677 Vdd pmos W=0.0975U L=0.26U
M316_ Vdd n__O0__t_54_6 #fb682# Vdd pmos W=0.1625U L=0.13U
M317_keeper Vdd GND #680 Vdd pmos W=0.0975U L=0.26U
M318_ Vdd n__O0__f_54_6 #fb685# Vdd pmos W=0.1625U L=0.13U
M319_keeper Vdd GND #683 Vdd pmos W=0.0975U L=0.91U
M320_ Vdd O1_at_54_6 #fb688# Vdd pmos W=0.1625U L=0.13U
M321_keeper Vdd GND #686 Vdd pmos W=0.0975U L=0.91U
M322_ Vdd O1_af_54_6 #fb691# Vdd pmos W=0.1625U L=0.13U
M323_keeper Vdd GND #689 Vdd pmos W=0.0975U L=0.26U
M324_ Vdd n__O0__t_55_6 #fb694# Vdd pmos W=0.1625U L=0.13U
M325_keeper Vdd GND #692 Vdd pmos W=0.0975U L=0.26U
M326_ Vdd n__O0__f_55_6 #fb697# Vdd pmos W=0.1625U L=0.13U
M327_keeper Vdd GND #695 Vdd pmos W=0.0975U L=0.91U
M328_ Vdd O1_at_55_6 #fb700# Vdd pmos W=0.1625U L=0.13U
M329_keeper Vdd GND #698 Vdd pmos W=0.0975U L=0.91U
M330_ Vdd O1_af_55_6 #fb703# Vdd pmos W=0.1625U L=0.13U
M331_keeper Vdd GND #701 Vdd pmos W=0.0975U L=0.26U
M332_ Vdd n__O0__t_56_6 #fb706# Vdd pmos W=0.1625U L=0.13U
M333_keeper Vdd GND #704 Vdd pmos W=0.0975U L=0.26U
M334_ Vdd n__O0__f_56_6 #fb709# Vdd pmos W=0.1625U L=0.13U
M335_keeper Vdd GND #707 Vdd pmos W=0.0975U L=0.91U
M336_ Vdd O1_at_56_6 #fb712# Vdd pmos W=0.1625U L=0.13U
M337_keeper Vdd GND #710 Vdd pmos W=0.0975U L=0.91U
M338_ Vdd O1_af_56_6 #fb715# Vdd pmos W=0.1625U L=0.13U
M339_keeper Vdd GND #713 Vdd pmos W=0.0975U L=0.26U
M340_ Vdd n__O0__t_57_6 #fb718# Vdd pmos W=0.1625U L=0.13U
M341_keeper Vdd GND #716 Vdd pmos W=0.0975U L=0.26U
M342_ Vdd n__O0__f_57_6 #fb721# Vdd pmos W=0.1625U L=0.13U
M343_keeper Vdd GND #719 Vdd pmos W=0.0975U L=0.91U
M344_ Vdd O1_at_57_6 #fb724# Vdd pmos W=0.1625U L=0.13U
M345_keeper Vdd GND #722 Vdd pmos W=0.0975U L=0.91U
M346_ Vdd O1_af_57_6 #fb727# Vdd pmos W=0.1625U L=0.13U
M347_keeper Vdd GND #725 Vdd pmos W=0.0975U L=0.26U
M348_ Vdd n__O0__t_58_6 #fb730# Vdd pmos W=0.1625U L=0.13U
M349_keeper Vdd GND #728 Vdd pmos W=0.0975U L=0.26U
M350_ Vdd n__O0__f_58_6 #fb733# Vdd pmos W=0.1625U L=0.13U
M351_keeper Vdd GND #731 Vdd pmos W=0.0975U L=0.91U
M352_ Vdd O1_at_58_6 #fb736# Vdd pmos W=0.1625U L=0.13U
M353_keeper Vdd GND #734 Vdd pmos W=0.0975U L=0.91U
M354_ Vdd O1_af_58_6 #fb739# Vdd pmos W=0.1625U L=0.13U
M355_keeper Vdd GND #737 Vdd pmos W=0.0975U L=0.26U
M356_ Vdd n__O0__t_59_6 #fb742# Vdd pmos W=0.1625U L=0.13U
M357_keeper Vdd GND #740 Vdd pmos W=0.0975U L=0.26U
M358_ Vdd n__O0__f_59_6 #fb745# Vdd pmos W=0.1625U L=0.13U
M359_keeper Vdd GND #743 Vdd pmos W=0.0975U L=0.91U
M360_ Vdd O1_at_59_6 #fb748# Vdd pmos W=0.1625U L=0.13U
M361_keeper Vdd GND #746 Vdd pmos W=0.0975U L=0.91U
M362_ Vdd O1_af_59_6 #fb751# Vdd pmos W=0.1625U L=0.13U
M363_keeper Vdd GND #749 Vdd pmos W=0.0975U L=0.26U
M364_ Vdd n__O0__t_510_6 #fb754# Vdd pmos W=0.1625U L=0.13U
M365_keeper Vdd GND #752 Vdd pmos W=0.0975U L=0.26U
M366_ Vdd n__O0__f_510_6 #fb757# Vdd pmos W=0.1625U L=0.13U
M367_keeper Vdd GND #755 Vdd pmos W=0.0975U L=0.91U
M368_ Vdd O1_at_510_6 #fb760# Vdd pmos W=0.1625U L=0.13U
M369_keeper Vdd GND #758 Vdd pmos W=0.0975U L=0.91U
M370_ Vdd O1_af_510_6 #fb763# Vdd pmos W=0.1625U L=0.13U
M371_keeper Vdd GND #761 Vdd pmos W=0.0975U L=0.26U
M372_ Vdd n__O0__t_511_6 #fb766# Vdd pmos W=0.1625U L=0.13U
M373_keeper Vdd GND #764 Vdd pmos W=0.0975U L=0.26U
M374_ Vdd n__O0__f_511_6 #fb769# Vdd pmos W=0.1625U L=0.13U
M375_keeper Vdd GND #767 Vdd pmos W=0.0975U L=0.91U
M376_ Vdd O1_at_511_6 #fb772# Vdd pmos W=0.1625U L=0.13U
M377_keeper Vdd GND #770 Vdd pmos W=0.0975U L=0.91U
M378_ Vdd O1_af_511_6 #fb775# Vdd pmos W=0.1625U L=0.13U
M379_keeper Vdd GND #773 Vdd pmos W=0.0975U L=0.26U
M380_ Vdd n__O0__t_512_6 #fb778# Vdd pmos W=0.1625U L=0.13U
M381_keeper Vdd GND #776 Vdd pmos W=0.0975U L=0.26U
M382_ Vdd n__O0__f_512_6 #fb781# Vdd pmos W=0.1625U L=0.13U
M383_keeper Vdd GND #779 Vdd pmos W=0.0975U L=0.91U
M384_ Vdd O1_at_512_6 #fb784# Vdd pmos W=0.1625U L=0.13U
M385_keeper Vdd GND #782 Vdd pmos W=0.0975U L=0.91U
M386_ Vdd O1_af_512_6 #fb787# Vdd pmos W=0.1625U L=0.13U
M387_keeper Vdd GND #785 Vdd pmos W=0.0975U L=0.26U
M388_ Vdd n__O0__t_513_6 #fb790# Vdd pmos W=0.1625U L=0.13U
M389_keeper Vdd GND #788 Vdd pmos W=0.0975U L=0.26U
M390_ Vdd n__O0__f_513_6 #fb793# Vdd pmos W=0.1625U L=0.13U
M391_keeper Vdd GND #791 Vdd pmos W=0.0975U L=0.91U
M392_ Vdd O1_at_513_6 #fb796# Vdd pmos W=0.1625U L=0.13U
M393_keeper Vdd GND #794 Vdd pmos W=0.0975U L=0.91U
M394_ Vdd O1_af_513_6 #fb799# Vdd pmos W=0.1625U L=0.13U
M395_keeper Vdd GND #797 Vdd pmos W=0.0975U L=0.26U
M396_ Vdd n__O0__t_514_6 #fb802# Vdd pmos W=0.1625U L=0.13U
M397_keeper Vdd GND #800 Vdd pmos W=0.0975U L=0.26U
M398_ Vdd n__O0__f_514_6 #fb805# Vdd pmos W=0.1625U L=0.13U
M399_keeper Vdd GND #803 Vdd pmos W=0.0975U L=0.91U
M400_ Vdd O1_at_514_6 #fb808# Vdd pmos W=0.1625U L=0.13U
M401_keeper Vdd GND #806 Vdd pmos W=0.0975U L=0.91U
M402_ Vdd O1_af_514_6 #fb811# Vdd pmos W=0.1625U L=0.13U
M403_keeper Vdd GND #809 Vdd pmos W=0.0975U L=0.26U
M404_ Vdd n__O0__t_515_6 #fb814# Vdd pmos W=0.1625U L=0.13U
M405_keeper Vdd GND #812 Vdd pmos W=0.0975U L=0.26U
M406_ Vdd n__O0__f_515_6 #fb817# Vdd pmos W=0.1625U L=0.13U
M407_keeper Vdd GND #815 Vdd pmos W=0.0975U L=0.91U
M408_ Vdd O1_at_515_6 #fb820# Vdd pmos W=0.1625U L=0.13U
M409_keeper Vdd GND #818 Vdd pmos W=0.0975U L=0.91U
M410_ Vdd O1_af_515_6 #fb823# Vdd pmos W=0.1625U L=0.13U
M411_keeper Vdd GND #821 Vdd pmos W=0.0975U L=0.26U
M412_ Vdd n__O0__t_516_6 #fb826# Vdd pmos W=0.1625U L=0.13U
M413_keeper Vdd GND #824 Vdd pmos W=0.0975U L=0.26U
M414_ Vdd n__O0__f_516_6 #fb829# Vdd pmos W=0.1625U L=0.13U
M415_keeper Vdd GND #827 Vdd pmos W=0.0975U L=0.91U
M416_ Vdd O1_at_516_6 #fb832# Vdd pmos W=0.1625U L=0.13U
M417_keeper Vdd GND #830 Vdd pmos W=0.0975U L=0.91U
M418_ Vdd O1_af_516_6 #fb835# Vdd pmos W=0.1625U L=0.13U
M419_keeper Vdd GND #833 Vdd pmos W=0.0975U L=0.26U
M420_ Vdd n__O0__t_517_6 #fb838# Vdd pmos W=0.1625U L=0.13U
M421_keeper Vdd GND #836 Vdd pmos W=0.0975U L=0.26U
M422_ Vdd n__O0__f_517_6 #fb841# Vdd pmos W=0.1625U L=0.13U
M423_keeper Vdd GND #839 Vdd pmos W=0.0975U L=0.91U
M424_ Vdd O1_at_517_6 #fb844# Vdd pmos W=0.1625U L=0.13U
M425_keeper Vdd GND #842 Vdd pmos W=0.0975U L=0.91U
M426_ Vdd O1_af_517_6 #fb847# Vdd pmos W=0.1625U L=0.13U
M427_keeper Vdd GND #845 Vdd pmos W=0.0975U L=0.26U
M428_ Vdd n__O0__t_518_6 #fb850# Vdd pmos W=0.1625U L=0.13U
M429_keeper Vdd GND #848 Vdd pmos W=0.0975U L=0.26U
M430_ Vdd n__O0__f_518_6 #fb853# Vdd pmos W=0.1625U L=0.13U
M431_keeper Vdd GND #851 Vdd pmos W=0.0975U L=0.91U
M432_ Vdd O1_at_518_6 #fb856# Vdd pmos W=0.1625U L=0.13U
M433_keeper Vdd GND #854 Vdd pmos W=0.0975U L=0.91U
M434_ Vdd O1_af_518_6 #fb859# Vdd pmos W=0.1625U L=0.13U
M435_keeper Vdd GND #857 Vdd pmos W=0.0975U L=0.26U
M436_ Vdd n__O0__t_519_6 #fb862# Vdd pmos W=0.1625U L=0.13U
M437_keeper Vdd GND #860 Vdd pmos W=0.0975U L=0.26U
M438_ Vdd n__O0__f_519_6 #fb865# Vdd pmos W=0.1625U L=0.13U
M439_keeper Vdd GND #863 Vdd pmos W=0.0975U L=0.91U
M440_ Vdd O1_at_519_6 #fb868# Vdd pmos W=0.1625U L=0.13U
M441_keeper Vdd GND #866 Vdd pmos W=0.0975U L=0.91U
M442_ Vdd O1_af_519_6 #fb871# Vdd pmos W=0.1625U L=0.13U
M443_keeper Vdd GND #869 Vdd pmos W=0.0975U L=0.26U
M444_ Vdd n__O0__t_520_6 #fb874# Vdd pmos W=0.1625U L=0.13U
M445_keeper Vdd GND #872 Vdd pmos W=0.0975U L=0.26U
M446_ Vdd n__O0__f_520_6 #fb877# Vdd pmos W=0.1625U L=0.13U
M447_keeper Vdd GND #875 Vdd pmos W=0.0975U L=0.91U
M448_ Vdd O1_at_520_6 #fb880# Vdd pmos W=0.1625U L=0.13U
M449_keeper Vdd GND #878 Vdd pmos W=0.0975U L=0.91U
M450_ Vdd O1_af_520_6 #fb883# Vdd pmos W=0.1625U L=0.13U
M451_keeper Vdd GND #881 Vdd pmos W=0.0975U L=0.26U
M452_ Vdd n__O0__t_521_6 #fb886# Vdd pmos W=0.1625U L=0.13U
M453_keeper Vdd GND #884 Vdd pmos W=0.0975U L=0.26U
M454_ Vdd n__O0__f_521_6 #fb889# Vdd pmos W=0.1625U L=0.13U
M455_keeper Vdd GND #887 Vdd pmos W=0.0975U L=0.91U
M456_ Vdd O1_at_521_6 #fb892# Vdd pmos W=0.1625U L=0.13U
M457_keeper Vdd GND #890 Vdd pmos W=0.0975U L=0.91U
M458_ Vdd O1_af_521_6 #fb895# Vdd pmos W=0.1625U L=0.13U
M459_keeper Vdd GND #893 Vdd pmos W=0.0975U L=0.26U
M460_ Vdd n__O0__t_522_6 #fb898# Vdd pmos W=0.1625U L=0.13U
M461_keeper Vdd GND #896 Vdd pmos W=0.0975U L=0.26U
M462_ Vdd n__O0__f_522_6 #fb901# Vdd pmos W=0.1625U L=0.13U
M463_keeper Vdd GND #899 Vdd pmos W=0.0975U L=0.91U
M464_ Vdd O1_at_522_6 #fb904# Vdd pmos W=0.1625U L=0.13U
M465_keeper Vdd GND #902 Vdd pmos W=0.0975U L=0.91U
M466_ Vdd O1_af_522_6 #fb907# Vdd pmos W=0.1625U L=0.13U
M467_keeper Vdd GND #905 Vdd pmos W=0.0975U L=0.26U
M468_ Vdd n__O0__t_523_6 #fb910# Vdd pmos W=0.1625U L=0.13U
M469_keeper Vdd GND #908 Vdd pmos W=0.0975U L=0.26U
M470_ Vdd n__O0__f_523_6 #fb913# Vdd pmos W=0.1625U L=0.13U
M471_keeper Vdd GND #911 Vdd pmos W=0.0975U L=0.91U
M472_ Vdd O1_at_523_6 #fb916# Vdd pmos W=0.1625U L=0.13U
M473_keeper Vdd GND #914 Vdd pmos W=0.0975U L=0.91U
M474_ Vdd O1_af_523_6 #fb919# Vdd pmos W=0.1625U L=0.13U
M475_keeper Vdd GND #917 Vdd pmos W=0.0975U L=0.26U
M476_ Vdd n__O0__t_524_6 #fb922# Vdd pmos W=0.1625U L=0.13U
M477_keeper Vdd GND #920 Vdd pmos W=0.0975U L=0.26U
M478_ Vdd n__O0__f_524_6 #fb925# Vdd pmos W=0.1625U L=0.13U
M479_keeper Vdd GND #923 Vdd pmos W=0.0975U L=0.91U
M480_ Vdd O1_at_524_6 #fb928# Vdd pmos W=0.1625U L=0.13U
M481_keeper Vdd GND #926 Vdd pmos W=0.0975U L=0.91U
M482_ Vdd O1_af_524_6 #fb931# Vdd pmos W=0.1625U L=0.13U
M483_keeper Vdd GND #929 Vdd pmos W=0.0975U L=0.26U
M484_ Vdd n__O0__t_525_6 #fb934# Vdd pmos W=0.1625U L=0.13U
M485_keeper Vdd GND #932 Vdd pmos W=0.0975U L=0.26U
M486_ Vdd n__O0__f_525_6 #fb937# Vdd pmos W=0.1625U L=0.13U
M487_keeper Vdd GND #935 Vdd pmos W=0.0975U L=0.91U
M488_ Vdd O1_at_525_6 #fb940# Vdd pmos W=0.1625U L=0.13U
M489_keeper Vdd GND #938 Vdd pmos W=0.0975U L=0.91U
M490_ Vdd O1_af_525_6 #fb943# Vdd pmos W=0.1625U L=0.13U
M491_keeper Vdd GND #941 Vdd pmos W=0.0975U L=0.26U
M492_ Vdd n__O0__t_526_6 #fb946# Vdd pmos W=0.1625U L=0.13U
M493_keeper Vdd GND #944 Vdd pmos W=0.0975U L=0.26U
M494_ Vdd n__O0__f_526_6 #fb949# Vdd pmos W=0.1625U L=0.13U
M495_keeper Vdd GND #947 Vdd pmos W=0.0975U L=0.91U
M496_ Vdd O1_at_526_6 #fb952# Vdd pmos W=0.1625U L=0.13U
M497_keeper Vdd GND #950 Vdd pmos W=0.0975U L=0.91U
M498_ Vdd O1_af_526_6 #fb955# Vdd pmos W=0.1625U L=0.13U
M499_keeper Vdd GND #953 Vdd pmos W=0.0975U L=0.26U
M500_ Vdd n__O0__t_527_6 #fb958# Vdd pmos W=0.1625U L=0.13U
M501_keeper Vdd GND #956 Vdd pmos W=0.0975U L=0.26U
M502_ Vdd n__O0__f_527_6 #fb961# Vdd pmos W=0.1625U L=0.13U
M503_keeper Vdd GND #959 Vdd pmos W=0.0975U L=0.91U
M504_ Vdd O1_at_527_6 #fb964# Vdd pmos W=0.1625U L=0.13U
M505_keeper Vdd GND #962 Vdd pmos W=0.0975U L=0.91U
M506_ Vdd O1_af_527_6 #fb967# Vdd pmos W=0.1625U L=0.13U
M507_keeper Vdd GND #965 Vdd pmos W=0.0975U L=0.26U
M508_ Vdd n__O0__t_528_6 #fb970# Vdd pmos W=0.1625U L=0.13U
M509_keeper Vdd GND #968 Vdd pmos W=0.0975U L=0.26U
M510_ Vdd n__O0__f_528_6 #fb973# Vdd pmos W=0.1625U L=0.13U
M511_keeper Vdd GND #971 Vdd pmos W=0.0975U L=0.91U
M512_ Vdd O1_at_528_6 #fb976# Vdd pmos W=0.1625U L=0.13U
M513_keeper Vdd GND #974 Vdd pmos W=0.0975U L=0.91U
M514_ Vdd O1_af_528_6 #fb979# Vdd pmos W=0.1625U L=0.13U
M515_keeper Vdd GND #977 Vdd pmos W=0.0975U L=0.26U
M516_ Vdd n__O0__t_529_6 #fb982# Vdd pmos W=0.1625U L=0.13U
M517_keeper Vdd GND #980 Vdd pmos W=0.0975U L=0.26U
M518_ Vdd n__O0__f_529_6 #fb985# Vdd pmos W=0.1625U L=0.13U
M519_keeper Vdd GND #983 Vdd pmos W=0.0975U L=0.91U
M520_ Vdd O1_at_529_6 #fb988# Vdd pmos W=0.1625U L=0.13U
M521_keeper Vdd GND #986 Vdd pmos W=0.0975U L=0.91U
M522_ Vdd O1_af_529_6 #fb991# Vdd pmos W=0.1625U L=0.13U
M523_keeper Vdd GND #989 Vdd pmos W=0.0975U L=0.26U
M524_ Vdd n__O0__t_530_6 #fb994# Vdd pmos W=0.1625U L=0.13U
M525_keeper Vdd GND #992 Vdd pmos W=0.0975U L=0.26U
M526_ Vdd n__O0__f_530_6 #fb997# Vdd pmos W=0.1625U L=0.13U
M527_keeper Vdd GND #995 Vdd pmos W=0.0975U L=0.91U
M528_ Vdd O1_at_530_6 #fb1000# Vdd pmos W=0.1625U L=0.13U
M529_keeper Vdd GND #998 Vdd pmos W=0.0975U L=0.91U
M530_ Vdd O1_af_530_6 #fb1003# Vdd pmos W=0.1625U L=0.13U
M531_keeper Vdd GND #1001 Vdd pmos W=0.0975U L=0.26U
M532_ Vdd n__O0__t_531_6 #fb1006# Vdd pmos W=0.1625U L=0.13U
M533_keeper Vdd GND #1004 Vdd pmos W=0.0975U L=0.26U
M534_ Vdd n__O0__f_531_6 #fb1009# Vdd pmos W=0.1625U L=0.13U
M535_keeper Vdd GND #1007 Vdd pmos W=0.0975U L=0.91U
M536_ Vdd O1_at_531_6 #fb1012# Vdd pmos W=0.1625U L=0.13U
M537_keeper Vdd GND #1010 Vdd pmos W=0.0975U L=0.91U
M538_ Vdd O1_af_531_6 #fb1015# Vdd pmos W=0.1625U L=0.13U
M539_keeper Vdd GND #1013 Vdd pmos W=0.0975U L=0.26U
M540_keeper Vdd GND #1016 Vdd pmos W=0.0975U L=0.26U
M541_ GND I_af_51_6 #7 GND nmos W=0.78U L=0.065U
M542_ GND inv__s #16 GND nmos W=0.0975U L=0.065U
M543_ GND reset w__0i GND nmos W=0.0975U L=0.065U
M544_ GND inv__s #21 GND nmos W=0.0975U L=0.065U
M545_ GND inv__s #28 GND nmos W=0.0975U L=0.065U
M546_ GND w__0i s GND nmos W=0.78U L=0.065U
M547_ GND O0_aa #37 GND nmos W=0.0975U L=0.065U
M548_ GND O1_aa #37 GND nmos W=0.0975U L=0.065U
M549_ GND p #46 GND nmos W=0.0975U L=0.065U
M550_ GND p #49 GND nmos W=0.0975U L=0.065U
M551_ GND inv__I__t_50_6 O1_at_50_6 GND nmos W=0.0975U L=0.065U
M552_ GND inv__I__f_50_6 O1_af_50_6 GND nmos W=0.0975U L=0.065U
M553_ GND p #60 GND nmos W=0.0975U L=0.065U
M554_ GND p #64 GND nmos W=0.0975U L=0.065U
M555_ GND inv__I__t_51_6 O1_at_51_6 GND nmos W=0.0975U L=0.065U
M556_ GND inv__I__f_51_6 O1_af_51_6 GND nmos W=0.0975U L=0.065U
M557_ GND p #73 GND nmos W=0.0975U L=0.065U
M558_ GND p #77 GND nmos W=0.0975U L=0.065U
M559_ GND inv__I__t_52_6 O1_at_52_6 GND nmos W=0.0975U L=0.065U
M560_ GND inv__I__f_52_6 O1_af_52_6 GND nmos W=0.0975U L=0.065U
M561_ GND p #89 GND nmos W=0.0975U L=0.065U
M562_ GND p #93 GND nmos W=0.0975U L=0.065U
M563_ GND inv__I__t_53_6 O1_at_53_6 GND nmos W=0.0975U L=0.065U
M564_ GND inv__I__f_53_6 O1_af_53_6 GND nmos W=0.0975U L=0.065U
M565_ GND p #105 GND nmos W=0.0975U L=0.065U
M566_ GND p #109 GND nmos W=0.0975U L=0.065U
M567_ GND inv__I__t_54_6 O1_at_54_6 GND nmos W=0.0975U L=0.065U
M568_ GND inv__I__f_54_6 O1_af_54_6 GND nmos W=0.0975U L=0.065U
M569_ GND p #121 GND nmos W=0.0975U L=0.065U
M570_ GND p #125 GND nmos W=0.0975U L=0.065U
M571_ GND inv__I__t_55_6 O1_at_55_6 GND nmos W=0.0975U L=0.065U
M572_ GND inv__I__f_55_6 O1_af_55_6 GND nmos W=0.0975U L=0.065U
M573_ GND p #137 GND nmos W=0.0975U L=0.065U
M574_ GND p #141 GND nmos W=0.0975U L=0.065U
M575_ GND inv__I__t_56_6 O1_at_56_6 GND nmos W=0.0975U L=0.065U
M576_ GND inv__I__f_56_6 O1_af_56_6 GND nmos W=0.0975U L=0.065U
M577_ GND p #153 GND nmos W=0.0975U L=0.065U
M578_ GND p #157 GND nmos W=0.0975U L=0.065U
M579_ GND inv__I__t_57_6 O1_at_57_6 GND nmos W=0.0975U L=0.065U
M580_ GND inv__I__f_57_6 O1_af_57_6 GND nmos W=0.0975U L=0.065U
M581_ GND p #169 GND nmos W=0.0975U L=0.065U
M582_ GND p #173 GND nmos W=0.0975U L=0.065U
M583_ GND inv__I__t_58_6 O1_at_58_6 GND nmos W=0.0975U L=0.065U
M584_ GND inv__I__f_58_6 O1_af_58_6 GND nmos W=0.0975U L=0.065U
M585_ GND p #185 GND nmos W=0.0975U L=0.065U
M586_ GND p #189 GND nmos W=0.0975U L=0.065U
M587_ GND inv__I__t_59_6 O1_at_59_6 GND nmos W=0.0975U L=0.065U
M588_ GND inv__I__f_59_6 O1_af_59_6 GND nmos W=0.0975U L=0.065U
M589_ GND p #201 GND nmos W=0.0975U L=0.065U
M590_ GND p #205 GND nmos W=0.0975U L=0.065U
M591_ GND inv__I__t_510_6 O1_at_510_6 GND nmos W=0.0975U L=0.065U
M592_ GND inv__I__f_510_6 O1_af_510_6 GND nmos W=0.0975U L=0.065U
M593_ GND p #217 GND nmos W=0.0975U L=0.065U
M594_ GND p #221 GND nmos W=0.0975U L=0.065U
M595_ GND inv__I__t_511_6 O1_at_511_6 GND nmos W=0.0975U L=0.065U
M596_ GND inv__I__f_511_6 O1_af_511_6 GND nmos W=0.0975U L=0.065U
M597_ GND p #233 GND nmos W=0.0975U L=0.065U
M598_ GND p #237 GND nmos W=0.0975U L=0.065U
M599_ GND inv__I__t_512_6 O1_at_512_6 GND nmos W=0.0975U L=0.065U
M600_ GND inv__I__f_512_6 O1_af_512_6 GND nmos W=0.0975U L=0.065U
M601_ GND p #249 GND nmos W=0.0975U L=0.065U
M602_ GND p #253 GND nmos W=0.0975U L=0.065U
M603_ GND inv__I__t_513_6 O1_at_513_6 GND nmos W=0.0975U L=0.065U
M604_ GND inv__I__f_513_6 O1_af_513_6 GND nmos W=0.0975U L=0.065U
M605_ GND p #265 GND nmos W=0.0975U L=0.065U
M606_ GND p #269 GND nmos W=0.0975U L=0.065U
M607_ GND inv__I__t_514_6 O1_at_514_6 GND nmos W=0.0975U L=0.065U
M608_ GND inv__I__f_514_6 O1_af_514_6 GND nmos W=0.0975U L=0.065U
M609_ GND p #281 GND nmos W=0.0975U L=0.065U
M610_ GND p #285 GND nmos W=0.0975U L=0.065U
M611_ GND inv__I__t_515_6 O1_at_515_6 GND nmos W=0.0975U L=0.065U
M612_ GND inv__I__f_515_6 O1_af_515_6 GND nmos W=0.0975U L=0.065U
M613_ GND p #297 GND nmos W=0.0975U L=0.065U
M614_ GND p #301 GND nmos W=0.0975U L=0.065U
M615_ GND inv__I__t_516_6 O1_at_516_6 GND nmos W=0.0975U L=0.065U
M616_ GND inv__I__f_516_6 O1_af_516_6 GND nmos W=0.0975U L=0.065U
M617_ GND p #313 GND nmos W=0.0975U L=0.065U
M618_ GND p #317 GND nmos W=0.0975U L=0.065U
M619_ GND inv__I__t_517_6 O1_at_517_6 GND nmos W=0.0975U L=0.065U
M620_ GND inv__I__f_517_6 O1_af_517_6 GND nmos W=0.0975U L=0.065U
M621_ GND p #329 GND nmos W=0.0975U L=0.065U
M622_ GND p #333 GND nmos W=0.0975U L=0.065U
M623_ GND inv__I__t_518_6 O1_at_518_6 GND nmos W=0.0975U L=0.065U
M624_ GND inv__I__f_518_6 O1_af_518_6 GND nmos W=0.0975U L=0.065U
M625_ GND p #345 GND nmos W=0.0975U L=0.065U
M626_ GND p #349 GND nmos W=0.0975U L=0.065U
M627_ GND inv__I__t_519_6 O1_at_519_6 GND nmos W=0.0975U L=0.065U
M628_ GND inv__I__f_519_6 O1_af_519_6 GND nmos W=0.0975U L=0.065U
M629_ GND p #361 GND nmos W=0.0975U L=0.065U
M630_ GND p #365 GND nmos W=0.0975U L=0.065U
M631_ GND inv__I__t_520_6 O1_at_520_6 GND nmos W=0.0975U L=0.065U
M632_ GND inv__I__f_520_6 O1_af_520_6 GND nmos W=0.0975U L=0.065U
M633_ GND p #377 GND nmos W=0.0975U L=0.065U
M634_ GND p #381 GND nmos W=0.0975U L=0.065U
M635_ GND inv__I__t_521_6 O1_at_521_6 GND nmos W=0.0975U L=0.065U
M636_ GND inv__I__f_521_6 O1_af_521_6 GND nmos W=0.0975U L=0.065U
M637_ GND p #393 GND nmos W=0.0975U L=0.065U
M638_ GND p #397 GND nmos W=0.0975U L=0.065U
M639_ GND inv__I__t_522_6 O1_at_522_6 GND nmos W=0.0975U L=0.065U
M640_ GND inv__I__f_522_6 O1_af_522_6 GND nmos W=0.0975U L=0.065U
M641_ GND p #409 GND nmos W=0.0975U L=0.065U
M642_ GND p #413 GND nmos W=0.0975U L=0.065U
M643_ GND inv__I__t_523_6 O1_at_523_6 GND nmos W=0.0975U L=0.065U
M644_ GND inv__I__f_523_6 O1_af_523_6 GND nmos W=0.0975U L=0.065U
M645_ GND p #425 GND nmos W=0.0975U L=0.065U
M646_ GND p #429 GND nmos W=0.0975U L=0.065U
M647_ GND inv__I__t_524_6 O1_at_524_6 GND nmos W=0.0975U L=0.065U
M648_ GND inv__I__f_524_6 O1_af_524_6 GND nmos W=0.0975U L=0.065U
M649_ GND p #441 GND nmos W=0.0975U L=0.065U
M650_ GND p #445 GND nmos W=0.0975U L=0.065U
M651_ GND inv__I__t_525_6 O1_at_525_6 GND nmos W=0.0975U L=0.065U
M652_ GND inv__I__f_525_6 O1_af_525_6 GND nmos W=0.0975U L=0.065U
M653_ GND p #457 GND nmos W=0.0975U L=0.065U
M654_ GND p #461 GND nmos W=0.0975U L=0.065U
M655_ GND inv__I__t_526_6 O1_at_526_6 GND nmos W=0.0975U L=0.065U
M656_ GND inv__I__f_526_6 O1_af_526_6 GND nmos W=0.0975U L=0.065U
M657_ GND p #473 GND nmos W=0.0975U L=0.065U
M658_ GND p #477 GND nmos W=0.0975U L=0.065U
M659_ GND inv__I__t_527_6 O1_at_527_6 GND nmos W=0.0975U L=0.065U
M660_ GND inv__I__f_527_6 O1_af_527_6 GND nmos W=0.0975U L=0.065U
M661_ GND p #489 GND nmos W=0.0975U L=0.065U
M662_ GND p #493 GND nmos W=0.0975U L=0.065U
M663_ GND inv__I__t_528_6 O1_at_528_6 GND nmos W=0.0975U L=0.065U
M664_ GND inv__I__f_528_6 O1_af_528_6 GND nmos W=0.0975U L=0.065U
M665_ GND p #505 GND nmos W=0.0975U L=0.065U
M666_ GND p #509 GND nmos W=0.0975U L=0.065U
M667_ GND inv__I__t_529_6 O1_at_529_6 GND nmos W=0.0975U L=0.065U
M668_ GND inv__I__f_529_6 O1_af_529_6 GND nmos W=0.0975U L=0.065U
M669_ GND p #521 GND nmos W=0.0975U L=0.065U
M670_ GND p #525 GND nmos W=0.0975U L=0.065U
M671_ GND inv__I__t_530_6 O1_at_530_6 GND nmos W=0.0975U L=0.065U
M672_ GND inv__I__f_530_6 O1_af_530_6 GND nmos W=0.0975U L=0.065U
M673_ GND p #537 GND nmos W=0.0975U L=0.065U
M674_ GND p #541 GND nmos W=0.0975U L=0.065U
M675_ GND inv__I__t_531_6 O1_at_531_6 GND nmos W=0.0975U L=0.065U
M676_ GND inv__I__f_531_6 O1_af_531_6 GND nmos W=0.0975U L=0.065U
M677_ GND s inv__s GND nmos W=0.78U L=0.065U
M678_ GND reset inv__reset GND nmos W=0.0975U L=0.065U
M679_ GND p inv__p GND nmos W=0.0975U L=0.065U
M680_ GND w__0i inv__w__0i GND nmos W=0.0975U L=0.065U
M681_ GND n__w__0 w__0 GND nmos W=0.0975U L=0.065U
M682_ GND n__w__1 w__1 GND nmos W=0.0975U L=0.065U
M683_ GND I_at_50_6 inv__I__t_50_6 GND nmos W=0.0975U L=0.065U
M684_ GND I_af_50_6 inv__I__f_50_6 GND nmos W=0.0975U L=0.065U
M685_ GND I_at_51_6 inv__I__t_51_6 GND nmos W=0.0975U L=0.065U
M686_ GND I_af_51_6 inv__I__f_51_6 GND nmos W=0.0975U L=0.065U
M687_ GND I_at_52_6 inv__I__t_52_6 GND nmos W=0.0975U L=0.065U
M688_ GND I_af_52_6 inv__I__f_52_6 GND nmos W=0.0975U L=0.065U
M689_ GND I_at_53_6 inv__I__t_53_6 GND nmos W=0.0975U L=0.065U
M690_ GND I_af_53_6 inv__I__f_53_6 GND nmos W=0.0975U L=0.065U
M691_ GND I_at_54_6 inv__I__t_54_6 GND nmos W=0.0975U L=0.065U
M692_ GND I_af_54_6 inv__I__f_54_6 GND nmos W=0.0975U L=0.065U
M693_ GND I_at_55_6 inv__I__t_55_6 GND nmos W=0.0975U L=0.065U
M694_ GND I_af_55_6 inv__I__f_55_6 GND nmos W=0.0975U L=0.065U
M695_ GND I_at_56_6 inv__I__t_56_6 GND nmos W=0.0975U L=0.065U
M696_ GND I_af_56_6 inv__I__f_56_6 GND nmos W=0.0975U L=0.065U
M697_ GND I_at_57_6 inv__I__t_57_6 GND nmos W=0.0975U L=0.065U
M698_ GND I_af_57_6 inv__I__f_57_6 GND nmos W=0.0975U L=0.065U
M699_ GND I_at_58_6 inv__I__t_58_6 GND nmos W=0.0975U L=0.065U
M700_ GND I_af_58_6 inv__I__f_58_6 GND nmos W=0.0975U L=0.065U
M701_ GND I_at_59_6 inv__I__t_59_6 GND nmos W=0.0975U L=0.065U
M702_ GND I_af_59_6 inv__I__f_59_6 GND nmos W=0.0975U L=0.065U
M703_ GND I_at_510_6 inv__I__t_510_6 GND nmos W=0.0975U L=0.065U
M704_ GND I_af_510_6 inv__I__f_510_6 GND nmos W=0.0975U L=0.065U
M705_ GND I_at_511_6 inv__I__t_511_6 GND nmos W=0.0975U L=0.065U
M706_ GND I_af_511_6 inv__I__f_511_6 GND nmos W=0.0975U L=0.065U
M707_ GND I_at_512_6 inv__I__t_512_6 GND nmos W=0.0975U L=0.065U
M708_ GND I_af_512_6 inv__I__f_512_6 GND nmos W=0.0975U L=0.065U
M709_ GND I_at_513_6 inv__I__t_513_6 GND nmos W=0.0975U L=0.065U
M710_ GND I_af_513_6 inv__I__f_513_6 GND nmos W=0.0975U L=0.065U
M711_ GND I_at_514_6 inv__I__t_514_6 GND nmos W=0.0975U L=0.065U
M712_ GND I_af_514_6 inv__I__f_514_6 GND nmos W=0.0975U L=0.065U
M713_ GND I_at_515_6 inv__I__t_515_6 GND nmos W=0.0975U L=0.065U
M714_ GND I_af_515_6 inv__I__f_515_6 GND nmos W=0.0975U L=0.065U
M715_ GND I_at_516_6 inv__I__t_516_6 GND nmos W=0.0975U L=0.065U
M716_ GND I_af_516_6 inv__I__f_516_6 GND nmos W=0.0975U L=0.065U
M717_ GND I_at_517_6 inv__I__t_517_6 GND nmos W=0.0975U L=0.065U
M718_ GND I_af_517_6 inv__I__f_517_6 GND nmos W=0.0975U L=0.065U
M719_ GND I_at_518_6 inv__I__t_518_6 GND nmos W=0.0975U L=0.065U
M720_ GND I_af_518_6 inv__I__f_518_6 GND nmos W=0.0975U L=0.065U
M721_ GND I_at_519_6 inv__I__t_519_6 GND nmos W=0.0975U L=0.065U
M722_ GND I_af_519_6 inv__I__f_519_6 GND nmos W=0.0975U L=0.065U
M723_ GND I_at_520_6 inv__I__t_520_6 GND nmos W=0.0975U L=0.065U
M724_ GND I_af_520_6 inv__I__f_520_6 GND nmos W=0.0975U L=0.065U
M725_ GND I_at_521_6 inv__I__t_521_6 GND nmos W=0.0975U L=0.065U
M726_ GND I_af_521_6 inv__I__f_521_6 GND nmos W=0.0975U L=0.065U
M727_ GND I_at_522_6 inv__I__t_522_6 GND nmos W=0.0975U L=0.065U
M728_ GND I_af_522_6 inv__I__f_522_6 GND nmos W=0.0975U L=0.065U
M729_ GND I_at_523_6 inv__I__t_523_6 GND nmos W=0.0975U L=0.065U
M730_ GND I_af_523_6 inv__I__f_523_6 GND nmos W=0.0975U L=0.065U
M731_ GND I_at_524_6 inv__I__t_524_6 GND nmos W=0.0975U L=0.065U
M732_ GND I_af_524_6 inv__I__f_524_6 GND nmos W=0.0975U L=0.065U
M733_ GND I_at_525_6 inv__I__t_525_6 GND nmos W=0.0975U L=0.065U
M734_ GND I_af_525_6 inv__I__f_525_6 GND nmos W=0.0975U L=0.065U
M735_ GND I_at_526_6 inv__I__t_526_6 GND nmos W=0.0975U L=0.065U
M736_ GND I_af_526_6 inv__I__f_526_6 GND nmos W=0.0975U L=0.065U
M737_ GND I_at_527_6 inv__I__t_527_6 GND nmos W=0.0975U L=0.065U
M738_ GND I_af_527_6 inv__I__f_527_6 GND nmos W=0.0975U L=0.065U
M739_ GND I_at_528_6 inv__I__t_528_6 GND nmos W=0.0975U L=0.065U
M740_ GND I_af_528_6 inv__I__f_528_6 GND nmos W=0.0975U L=0.065U
M741_ GND I_at_529_6 inv__I__t_529_6 GND nmos W=0.0975U L=0.065U
M742_ GND I_af_529_6 inv__I__f_529_6 GND nmos W=0.0975U L=0.065U
M743_ GND I_at_530_6 inv__I__t_530_6 GND nmos W=0.0975U L=0.065U
M744_ GND I_af_530_6 inv__I__f_530_6 GND nmos W=0.0975U L=0.065U
M745_ GND I_at_531_6 inv__I__t_531_6 GND nmos W=0.0975U L=0.065U
M746_ GND I_af_531_6 inv__I__f_531_6 GND nmos W=0.0975U L=0.065U
M747_ GND n__I__a I_aa GND nmos W=0.0975U L=0.065U
M748_ GND n__O0__t_50_6 O0_at_50_6 GND nmos W=0.0975U L=0.065U
M749_ GND n__O0__f_50_6 O0_af_50_6 GND nmos W=0.0975U L=0.065U
M750_ GND n__O0__t_51_6 O0_at_51_6 GND nmos W=0.0975U L=0.065U
M751_ GND n__O0__f_51_6 O0_af_51_6 GND nmos W=0.0975U L=0.065U
M752_ GND n__O0__t_52_6 O0_at_52_6 GND nmos W=0.0975U L=0.065U
M753_ GND n__O0__f_52_6 O0_af_52_6 GND nmos W=0.0975U L=0.065U
M754_ GND n__O0__t_53_6 O0_at_53_6 GND nmos W=0.0975U L=0.065U
M755_ GND n__O0__f_53_6 O0_af_53_6 GND nmos W=0.0975U L=0.065U
M756_ GND n__O0__t_54_6 O0_at_54_6 GND nmos W=0.0975U L=0.065U
M757_ GND n__O0__f_54_6 O0_af_54_6 GND nmos W=0.0975U L=0.065U
M758_ GND n__O0__t_55_6 O0_at_55_6 GND nmos W=0.0975U L=0.065U
M759_ GND n__O0__f_55_6 O0_af_55_6 GND nmos W=0.0975U L=0.065U
M760_ GND n__O0__t_56_6 O0_at_56_6 GND nmos W=0.0975U L=0.065U
M761_ GND n__O0__f_56_6 O0_af_56_6 GND nmos W=0.0975U L=0.065U
M762_ GND n__O0__t_57_6 O0_at_57_6 GND nmos W=0.0975U L=0.065U
M763_ GND n__O0__f_57_6 O0_af_57_6 GND nmos W=0.0975U L=0.065U
M764_ GND n__O0__t_58_6 O0_at_58_6 GND nmos W=0.0975U L=0.065U
M765_ GND n__O0__f_58_6 O0_af_58_6 GND nmos W=0.0975U L=0.065U
M766_ GND n__O0__t_59_6 O0_at_59_6 GND nmos W=0.0975U L=0.065U
M767_ GND n__O0__f_59_6 O0_af_59_6 GND nmos W=0.0975U L=0.065U
M768_ GND n__O0__t_510_6 O0_at_510_6 GND nmos W=0.0975U L=0.065U
M769_ GND n__O0__f_510_6 O0_af_510_6 GND nmos W=0.0975U L=0.065U
M770_ GND n__O0__t_511_6 O0_at_511_6 GND nmos W=0.0975U L=0.065U
M771_ GND n__O0__f_511_6 O0_af_511_6 GND nmos W=0.0975U L=0.065U
M772_ GND n__O0__t_512_6 O0_at_512_6 GND nmos W=0.0975U L=0.065U
M773_ GND n__O0__f_512_6 O0_af_512_6 GND nmos W=0.0975U L=0.065U
M774_ GND n__O0__t_513_6 O0_at_513_6 GND nmos W=0.0975U L=0.065U
M775_ GND n__O0__f_513_6 O0_af_513_6 GND nmos W=0.0975U L=0.065U
M776_ GND n__O0__t_514_6 O0_at_514_6 GND nmos W=0.0975U L=0.065U
M777_ GND n__O0__f_514_6 O0_af_514_6 GND nmos W=0.0975U L=0.065U
M778_ GND n__O0__t_515_6 O0_at_515_6 GND nmos W=0.0975U L=0.065U
M779_ GND n__O0__f_515_6 O0_af_515_6 GND nmos W=0.0975U L=0.065U
M780_ GND n__O0__t_516_6 O0_at_516_6 GND nmos W=0.0975U L=0.065U
M781_ GND n__O0__f_516_6 O0_af_516_6 GND nmos W=0.0975U L=0.065U
M782_ GND n__O0__t_517_6 O0_at_517_6 GND nmos W=0.0975U L=0.065U
M783_ GND n__O0__f_517_6 O0_af_517_6 GND nmos W=0.0975U L=0.065U
M784_ GND n__O0__t_518_6 O0_at_518_6 GND nmos W=0.0975U L=0.065U
M785_ GND n__O0__f_518_6 O0_af_518_6 GND nmos W=0.0975U L=0.065U
M786_ GND n__O0__t_519_6 O0_at_519_6 GND nmos W=0.0975U L=0.065U
M787_ GND n__O0__f_519_6 O0_af_519_6 GND nmos W=0.0975U L=0.065U
M788_ GND n__O0__t_520_6 O0_at_520_6 GND nmos W=0.0975U L=0.065U
M789_ GND n__O0__f_520_6 O0_af_520_6 GND nmos W=0.0975U L=0.065U
M790_ GND n__O0__t_521_6 O0_at_521_6 GND nmos W=0.0975U L=0.065U
M791_ GND n__O0__f_521_6 O0_af_521_6 GND nmos W=0.0975U L=0.065U
M792_ GND n__O0__t_522_6 O0_at_522_6 GND nmos W=0.0975U L=0.065U
M793_ GND n__O0__f_522_6 O0_af_522_6 GND nmos W=0.0975U L=0.065U
M794_ GND n__O0__t_523_6 O0_at_523_6 GND nmos W=0.0975U L=0.065U
M795_ GND n__O0__f_523_6 O0_af_523_6 GND nmos W=0.0975U L=0.065U
M796_ GND n__O0__t_524_6 O0_at_524_6 GND nmos W=0.0975U L=0.065U
M797_ GND n__O0__f_524_6 O0_af_524_6 GND nmos W=0.0975U L=0.065U
M798_ GND n__O0__t_525_6 O0_at_525_6 GND nmos W=0.0975U L=0.065U
M799_ GND n__O0__f_525_6 O0_af_525_6 GND nmos W=0.0975U L=0.065U
M800_ GND n__O0__t_526_6 O0_at_526_6 GND nmos W=0.0975U L=0.065U
M801_ GND n__O0__f_526_6 O0_af_526_6 GND nmos W=0.0975U L=0.065U
M802_ GND n__O0__t_527_6 O0_at_527_6 GND nmos W=0.0975U L=0.065U
M803_ GND n__O0__f_527_6 O0_af_527_6 GND nmos W=0.0975U L=0.065U
M804_ GND n__O0__t_528_6 O0_at_528_6 GND nmos W=0.0975U L=0.065U
M805_ GND n__O0__f_528_6 O0_af_528_6 GND nmos W=0.0975U L=0.065U
M806_ GND n__O0__t_529_6 O0_at_529_6 GND nmos W=0.0975U L=0.065U
M807_ GND n__O0__f_529_6 O0_af_529_6 GND nmos W=0.0975U L=0.065U
M808_ GND n__O0__t_530_6 O0_at_530_6 GND nmos W=0.0975U L=0.065U
M809_ GND n__O0__f_530_6 O0_af_530_6 GND nmos W=0.0975U L=0.065U
M810_ GND n__O0__t_531_6 O0_at_531_6 GND nmos W=0.0975U L=0.065U
M811_ GND n__O0__f_531_6 O0_af_531_6 GND nmos W=0.0975U L=0.065U
M812_ GND p #fb616# GND nmos W=0.0975U L=0.13U
M813_ GND s #fb619# GND nmos W=0.0975U L=0.13U
M814_keeper GND Vdd #618 GND nmos W=0.0975U L=1.495U
M815_ GND w__0i #fb622# GND nmos W=0.0975U L=0.13U
M816_keeper GND Vdd #621 GND nmos W=0.0975U L=3.055U
M817_ GND n__w__0 #fb625# GND nmos W=0.0975U L=0.13U
M818_keeper GND Vdd #624 GND nmos W=0.0975U L=2.275U
M819_ GND n__I__a #fb628# GND nmos W=0.0975U L=0.13U
M820_keeper GND Vdd #627 GND nmos W=0.0975U L=3.055U
M821_ GND n__w__1 #fb631# GND nmos W=0.0975U L=0.13U
M822_keeper GND Vdd #630 GND nmos W=0.0975U L=3.055U
M823_ GND n__O0__t_50_6 #fb634# GND nmos W=0.0975U L=0.13U
M824_keeper GND Vdd #633 GND nmos W=0.0975U L=3.055U
M825_ GND n__O0__f_50_6 #fb637# GND nmos W=0.0975U L=0.13U
M826_keeper GND Vdd #636 GND nmos W=0.0975U L=0.715U
M827_ GND O1_at_50_6 #fb640# GND nmos W=0.0975U L=0.13U
M828_keeper GND Vdd #639 GND nmos W=0.0975U L=0.715U
M829_ GND O1_af_50_6 #fb643# GND nmos W=0.0975U L=0.13U
M830_keeper GND Vdd #642 GND nmos W=0.0975U L=2.275U
M831_ GND n__O0__t_51_6 #fb646# GND nmos W=0.0975U L=0.13U
M832_keeper GND Vdd #645 GND nmos W=0.0975U L=2.275U
M833_ GND n__O0__f_51_6 #fb649# GND nmos W=0.0975U L=0.13U
M834_keeper GND Vdd #648 GND nmos W=0.0975U L=0.715U
M835_ GND O1_at_51_6 #fb652# GND nmos W=0.0975U L=0.13U
M836_keeper GND Vdd #651 GND nmos W=0.0975U L=0.715U
M837_ GND O1_af_51_6 #fb655# GND nmos W=0.0975U L=0.13U
M838_keeper GND Vdd #654 GND nmos W=0.0975U L=2.275U
M839_ GND n__O0__t_52_6 #fb658# GND nmos W=0.0975U L=0.13U
M840_keeper GND Vdd #657 GND nmos W=0.0975U L=2.275U
M841_ GND n__O0__f_52_6 #fb661# GND nmos W=0.0975U L=0.13U
M842_keeper GND Vdd #660 GND nmos W=0.0975U L=0.715U
M843_ GND O1_at_52_6 #fb664# GND nmos W=0.0975U L=0.13U
M844_keeper GND Vdd #663 GND nmos W=0.0975U L=0.715U
M845_ GND O1_af_52_6 #fb667# GND nmos W=0.0975U L=0.13U
M846_keeper GND Vdd #666 GND nmos W=0.0975U L=2.275U
M847_ GND n__O0__t_53_6 #fb670# GND nmos W=0.0975U L=0.13U
M848_keeper GND Vdd #669 GND nmos W=0.0975U L=2.275U
M849_ GND n__O0__f_53_6 #fb673# GND nmos W=0.0975U L=0.13U
M850_keeper GND Vdd #672 GND nmos W=0.0975U L=0.715U
M851_ GND O1_at_53_6 #fb676# GND nmos W=0.0975U L=0.13U
M852_keeper GND Vdd #675 GND nmos W=0.0975U L=0.715U
M853_ GND O1_af_53_6 #fb679# GND nmos W=0.0975U L=0.13U
M854_keeper GND Vdd #678 GND nmos W=0.0975U L=2.275U
M855_ GND n__O0__t_54_6 #fb682# GND nmos W=0.0975U L=0.13U
M856_keeper GND Vdd #681 GND nmos W=0.0975U L=2.275U
M857_ GND n__O0__f_54_6 #fb685# GND nmos W=0.0975U L=0.13U
M858_keeper GND Vdd #684 GND nmos W=0.0975U L=0.715U
M859_ GND O1_at_54_6 #fb688# GND nmos W=0.0975U L=0.13U
M860_keeper GND Vdd #687 GND nmos W=0.0975U L=0.715U
M861_ GND O1_af_54_6 #fb691# GND nmos W=0.0975U L=0.13U
M862_keeper GND Vdd #690 GND nmos W=0.0975U L=2.275U
M863_ GND n__O0__t_55_6 #fb694# GND nmos W=0.0975U L=0.13U
M864_keeper GND Vdd #693 GND nmos W=0.0975U L=2.275U
M865_ GND n__O0__f_55_6 #fb697# GND nmos W=0.0975U L=0.13U
M866_keeper GND Vdd #696 GND nmos W=0.0975U L=0.715U
M867_ GND O1_at_55_6 #fb700# GND nmos W=0.0975U L=0.13U
M868_keeper GND Vdd #699 GND nmos W=0.0975U L=0.715U
M869_ GND O1_af_55_6 #fb703# GND nmos W=0.0975U L=0.13U
M870_keeper GND Vdd #702 GND nmos W=0.0975U L=2.275U
M871_ GND n__O0__t_56_6 #fb706# GND nmos W=0.0975U L=0.13U
M872_keeper GND Vdd #705 GND nmos W=0.0975U L=2.275U
M873_ GND n__O0__f_56_6 #fb709# GND nmos W=0.0975U L=0.13U
M874_keeper GND Vdd #708 GND nmos W=0.0975U L=0.715U
M875_ GND O1_at_56_6 #fb712# GND nmos W=0.0975U L=0.13U
M876_keeper GND Vdd #711 GND nmos W=0.0975U L=0.715U
M877_ GND O1_af_56_6 #fb715# GND nmos W=0.0975U L=0.13U
M878_keeper GND Vdd #714 GND nmos W=0.0975U L=2.275U
M879_ GND n__O0__t_57_6 #fb718# GND nmos W=0.0975U L=0.13U
M880_keeper GND Vdd #717 GND nmos W=0.0975U L=2.275U
M881_ GND n__O0__f_57_6 #fb721# GND nmos W=0.0975U L=0.13U
M882_keeper GND Vdd #720 GND nmos W=0.0975U L=0.715U
M883_ GND O1_at_57_6 #fb724# GND nmos W=0.0975U L=0.13U
M884_keeper GND Vdd #723 GND nmos W=0.0975U L=0.715U
M885_ GND O1_af_57_6 #fb727# GND nmos W=0.0975U L=0.13U
M886_keeper GND Vdd #726 GND nmos W=0.0975U L=2.275U
M887_ GND n__O0__t_58_6 #fb730# GND nmos W=0.0975U L=0.13U
M888_keeper GND Vdd #729 GND nmos W=0.0975U L=2.275U
M889_ GND n__O0__f_58_6 #fb733# GND nmos W=0.0975U L=0.13U
M890_keeper GND Vdd #732 GND nmos W=0.0975U L=0.715U
M891_ GND O1_at_58_6 #fb736# GND nmos W=0.0975U L=0.13U
M892_keeper GND Vdd #735 GND nmos W=0.0975U L=0.715U
M893_ GND O1_af_58_6 #fb739# GND nmos W=0.0975U L=0.13U
M894_keeper GND Vdd #738 GND nmos W=0.0975U L=2.275U
M895_ GND n__O0__t_59_6 #fb742# GND nmos W=0.0975U L=0.13U
M896_keeper GND Vdd #741 GND nmos W=0.0975U L=2.275U
M897_ GND n__O0__f_59_6 #fb745# GND nmos W=0.0975U L=0.13U
M898_keeper GND Vdd #744 GND nmos W=0.0975U L=0.715U
M899_ GND O1_at_59_6 #fb748# GND nmos W=0.0975U L=0.13U
M900_keeper GND Vdd #747 GND nmos W=0.0975U L=0.715U
M901_ GND O1_af_59_6 #fb751# GND nmos W=0.0975U L=0.13U
M902_keeper GND Vdd #750 GND nmos W=0.0975U L=2.275U
M903_ GND n__O0__t_510_6 #fb754# GND nmos W=0.0975U L=0.13U
M904_keeper GND Vdd #753 GND nmos W=0.0975U L=2.275U
M905_ GND n__O0__f_510_6 #fb757# GND nmos W=0.0975U L=0.13U
M906_keeper GND Vdd #756 GND nmos W=0.0975U L=0.715U
M907_ GND O1_at_510_6 #fb760# GND nmos W=0.0975U L=0.13U
M908_keeper GND Vdd #759 GND nmos W=0.0975U L=0.715U
M909_ GND O1_af_510_6 #fb763# GND nmos W=0.0975U L=0.13U
M910_keeper GND Vdd #762 GND nmos W=0.0975U L=2.275U
M911_ GND n__O0__t_511_6 #fb766# GND nmos W=0.0975U L=0.13U
M912_keeper GND Vdd #765 GND nmos W=0.0975U L=2.275U
M913_ GND n__O0__f_511_6 #fb769# GND nmos W=0.0975U L=0.13U
M914_keeper GND Vdd #768 GND nmos W=0.0975U L=0.715U
M915_ GND O1_at_511_6 #fb772# GND nmos W=0.0975U L=0.13U
M916_keeper GND Vdd #771 GND nmos W=0.0975U L=0.715U
M917_ GND O1_af_511_6 #fb775# GND nmos W=0.0975U L=0.13U
M918_keeper GND Vdd #774 GND nmos W=0.0975U L=2.275U
M919_ GND n__O0__t_512_6 #fb778# GND nmos W=0.0975U L=0.13U
M920_keeper GND Vdd #777 GND nmos W=0.0975U L=2.275U
M921_ GND n__O0__f_512_6 #fb781# GND nmos W=0.0975U L=0.13U
M922_keeper GND Vdd #780 GND nmos W=0.0975U L=0.715U
M923_ GND O1_at_512_6 #fb784# GND nmos W=0.0975U L=0.13U
M924_keeper GND Vdd #783 GND nmos W=0.0975U L=0.715U
M925_ GND O1_af_512_6 #fb787# GND nmos W=0.0975U L=0.13U
M926_keeper GND Vdd #786 GND nmos W=0.0975U L=2.275U
M927_ GND n__O0__t_513_6 #fb790# GND nmos W=0.0975U L=0.13U
M928_keeper GND Vdd #789 GND nmos W=0.0975U L=2.275U
M929_ GND n__O0__f_513_6 #fb793# GND nmos W=0.0975U L=0.13U
M930_keeper GND Vdd #792 GND nmos W=0.0975U L=0.715U
M931_ GND O1_at_513_6 #fb796# GND nmos W=0.0975U L=0.13U
M932_keeper GND Vdd #795 GND nmos W=0.0975U L=0.715U
M933_ GND O1_af_513_6 #fb799# GND nmos W=0.0975U L=0.13U
M934_keeper GND Vdd #798 GND nmos W=0.0975U L=2.275U
M935_ GND n__O0__t_514_6 #fb802# GND nmos W=0.0975U L=0.13U
M936_keeper GND Vdd #801 GND nmos W=0.0975U L=2.275U
M937_ GND n__O0__f_514_6 #fb805# GND nmos W=0.0975U L=0.13U
M938_keeper GND Vdd #804 GND nmos W=0.0975U L=0.715U
M939_ GND O1_at_514_6 #fb808# GND nmos W=0.0975U L=0.13U
M940_keeper GND Vdd #807 GND nmos W=0.0975U L=0.715U
M941_ GND O1_af_514_6 #fb811# GND nmos W=0.0975U L=0.13U
M942_keeper GND Vdd #810 GND nmos W=0.0975U L=2.275U
M943_ GND n__O0__t_515_6 #fb814# GND nmos W=0.0975U L=0.13U
M944_keeper GND Vdd #813 GND nmos W=0.0975U L=2.275U
M945_ GND n__O0__f_515_6 #fb817# GND nmos W=0.0975U L=0.13U
M946_keeper GND Vdd #816 GND nmos W=0.0975U L=0.715U
M947_ GND O1_at_515_6 #fb820# GND nmos W=0.0975U L=0.13U
M948_keeper GND Vdd #819 GND nmos W=0.0975U L=0.715U
M949_ GND O1_af_515_6 #fb823# GND nmos W=0.0975U L=0.13U
M950_keeper GND Vdd #822 GND nmos W=0.0975U L=2.275U
M951_ GND n__O0__t_516_6 #fb826# GND nmos W=0.0975U L=0.13U
M952_keeper GND Vdd #825 GND nmos W=0.0975U L=2.275U
M953_ GND n__O0__f_516_6 #fb829# GND nmos W=0.0975U L=0.13U
M954_keeper GND Vdd #828 GND nmos W=0.0975U L=0.715U
M955_ GND O1_at_516_6 #fb832# GND nmos W=0.0975U L=0.13U
M956_keeper GND Vdd #831 GND nmos W=0.0975U L=0.715U
M957_ GND O1_af_516_6 #fb835# GND nmos W=0.0975U L=0.13U
M958_keeper GND Vdd #834 GND nmos W=0.0975U L=2.275U
M959_ GND n__O0__t_517_6 #fb838# GND nmos W=0.0975U L=0.13U
M960_keeper GND Vdd #837 GND nmos W=0.0975U L=2.275U
M961_ GND n__O0__f_517_6 #fb841# GND nmos W=0.0975U L=0.13U
M962_keeper GND Vdd #840 GND nmos W=0.0975U L=0.715U
M963_ GND O1_at_517_6 #fb844# GND nmos W=0.0975U L=0.13U
M964_keeper GND Vdd #843 GND nmos W=0.0975U L=0.715U
M965_ GND O1_af_517_6 #fb847# GND nmos W=0.0975U L=0.13U
M966_keeper GND Vdd #846 GND nmos W=0.0975U L=2.275U
M967_ GND n__O0__t_518_6 #fb850# GND nmos W=0.0975U L=0.13U
M968_keeper GND Vdd #849 GND nmos W=0.0975U L=2.275U
M969_ GND n__O0__f_518_6 #fb853# GND nmos W=0.0975U L=0.13U
M970_keeper GND Vdd #852 GND nmos W=0.0975U L=0.715U
M971_ GND O1_at_518_6 #fb856# GND nmos W=0.0975U L=0.13U
M972_keeper GND Vdd #855 GND nmos W=0.0975U L=0.715U
M973_ GND O1_af_518_6 #fb859# GND nmos W=0.0975U L=0.13U
M974_keeper GND Vdd #858 GND nmos W=0.0975U L=2.275U
M975_ GND n__O0__t_519_6 #fb862# GND nmos W=0.0975U L=0.13U
M976_keeper GND Vdd #861 GND nmos W=0.0975U L=2.275U
M977_ GND n__O0__f_519_6 #fb865# GND nmos W=0.0975U L=0.13U
M978_keeper GND Vdd #864 GND nmos W=0.0975U L=0.715U
M979_ GND O1_at_519_6 #fb868# GND nmos W=0.0975U L=0.13U
M980_keeper GND Vdd #867 GND nmos W=0.0975U L=0.715U
M981_ GND O1_af_519_6 #fb871# GND nmos W=0.0975U L=0.13U
M982_keeper GND Vdd #870 GND nmos W=0.0975U L=2.275U
M983_ GND n__O0__t_520_6 #fb874# GND nmos W=0.0975U L=0.13U
M984_keeper GND Vdd #873 GND nmos W=0.0975U L=2.275U
M985_ GND n__O0__f_520_6 #fb877# GND nmos W=0.0975U L=0.13U
M986_keeper GND Vdd #876 GND nmos W=0.0975U L=0.715U
M987_ GND O1_at_520_6 #fb880# GND nmos W=0.0975U L=0.13U
M988_keeper GND Vdd #879 GND nmos W=0.0975U L=0.715U
M989_ GND O1_af_520_6 #fb883# GND nmos W=0.0975U L=0.13U
M990_keeper GND Vdd #882 GND nmos W=0.0975U L=2.275U
M991_ GND n__O0__t_521_6 #fb886# GND nmos W=0.0975U L=0.13U
M992_keeper GND Vdd #885 GND nmos W=0.0975U L=2.275U
M993_ GND n__O0__f_521_6 #fb889# GND nmos W=0.0975U L=0.13U
M994_keeper GND Vdd #888 GND nmos W=0.0975U L=0.715U
M995_ GND O1_at_521_6 #fb892# GND nmos W=0.0975U L=0.13U
M996_keeper GND Vdd #891 GND nmos W=0.0975U L=0.715U
M997_ GND O1_af_521_6 #fb895# GND nmos W=0.0975U L=0.13U
M998_keeper GND Vdd #894 GND nmos W=0.0975U L=2.275U
M999_ GND n__O0__t_522_6 #fb898# GND nmos W=0.0975U L=0.13U
M1000_keeper GND Vdd #897 GND nmos W=0.0975U L=2.275U
M1001_ GND n__O0__f_522_6 #fb901# GND nmos W=0.0975U L=0.13U
M1002_keeper GND Vdd #900 GND nmos W=0.0975U L=0.715U
M1003_ GND O1_at_522_6 #fb904# GND nmos W=0.0975U L=0.13U
M1004_keeper GND Vdd #903 GND nmos W=0.0975U L=0.715U
M1005_ GND O1_af_522_6 #fb907# GND nmos W=0.0975U L=0.13U
M1006_keeper GND Vdd #906 GND nmos W=0.0975U L=2.275U
M1007_ GND n__O0__t_523_6 #fb910# GND nmos W=0.0975U L=0.13U
M1008_keeper GND Vdd #909 GND nmos W=0.0975U L=2.275U
M1009_ GND n__O0__f_523_6 #fb913# GND nmos W=0.0975U L=0.13U
M1010_keeper GND Vdd #912 GND nmos W=0.0975U L=0.715U
M1011_ GND O1_at_523_6 #fb916# GND nmos W=0.0975U L=0.13U
M1012_keeper GND Vdd #915 GND nmos W=0.0975U L=0.715U
M1013_ GND O1_af_523_6 #fb919# GND nmos W=0.0975U L=0.13U
M1014_keeper GND Vdd #918 GND nmos W=0.0975U L=2.275U
M1015_ GND n__O0__t_524_6 #fb922# GND nmos W=0.0975U L=0.13U
M1016_keeper GND Vdd #921 GND nmos W=0.0975U L=2.275U
M1017_ GND n__O0__f_524_6 #fb925# GND nmos W=0.0975U L=0.13U
M1018_keeper GND Vdd #924 GND nmos W=0.0975U L=0.715U
M1019_ GND O1_at_524_6 #fb928# GND nmos W=0.0975U L=0.13U
M1020_keeper GND Vdd #927 GND nmos W=0.0975U L=0.715U
M1021_ GND O1_af_524_6 #fb931# GND nmos W=0.0975U L=0.13U
M1022_keeper GND Vdd #930 GND nmos W=0.0975U L=2.275U
M1023_ GND n__O0__t_525_6 #fb934# GND nmos W=0.0975U L=0.13U
M1024_keeper GND Vdd #933 GND nmos W=0.0975U L=2.275U
M1025_ GND n__O0__f_525_6 #fb937# GND nmos W=0.0975U L=0.13U
M1026_keeper GND Vdd #936 GND nmos W=0.0975U L=0.715U
M1027_ GND O1_at_525_6 #fb940# GND nmos W=0.0975U L=0.13U
M1028_keeper GND Vdd #939 GND nmos W=0.0975U L=0.715U
M1029_ GND O1_af_525_6 #fb943# GND nmos W=0.0975U L=0.13U
M1030_keeper GND Vdd #942 GND nmos W=0.0975U L=2.275U
M1031_ GND n__O0__t_526_6 #fb946# GND nmos W=0.0975U L=0.13U
M1032_keeper GND Vdd #945 GND nmos W=0.0975U L=2.275U
M1033_ GND n__O0__f_526_6 #fb949# GND nmos W=0.0975U L=0.13U
M1034_keeper GND Vdd #948 GND nmos W=0.0975U L=0.715U
M1035_ GND O1_at_526_6 #fb952# GND nmos W=0.0975U L=0.13U
M1036_keeper GND Vdd #951 GND nmos W=0.0975U L=0.715U
M1037_ GND O1_af_526_6 #fb955# GND nmos W=0.0975U L=0.13U
M1038_keeper GND Vdd #954 GND nmos W=0.0975U L=2.275U
M1039_ GND n__O0__t_527_6 #fb958# GND nmos W=0.0975U L=0.13U
M1040_keeper GND Vdd #957 GND nmos W=0.0975U L=2.275U
M1041_ GND n__O0__f_527_6 #fb961# GND nmos W=0.0975U L=0.13U
M1042_keeper GND Vdd #960 GND nmos W=0.0975U L=0.715U
M1043_ GND O1_at_527_6 #fb964# GND nmos W=0.0975U L=0.13U
M1044_keeper GND Vdd #963 GND nmos W=0.0975U L=0.715U
M1045_ GND O1_af_527_6 #fb967# GND nmos W=0.0975U L=0.13U
M1046_keeper GND Vdd #966 GND nmos W=0.0975U L=2.275U
M1047_ GND n__O0__t_528_6 #fb970# GND nmos W=0.0975U L=0.13U
M1048_keeper GND Vdd #969 GND nmos W=0.0975U L=2.275U
M1049_ GND n__O0__f_528_6 #fb973# GND nmos W=0.0975U L=0.13U
M1050_keeper GND Vdd #972 GND nmos W=0.0975U L=0.715U
M1051_ GND O1_at_528_6 #fb976# GND nmos W=0.0975U L=0.13U
M1052_keeper GND Vdd #975 GND nmos W=0.0975U L=0.715U
M1053_ GND O1_af_528_6 #fb979# GND nmos W=0.0975U L=0.13U
M1054_keeper GND Vdd #978 GND nmos W=0.0975U L=2.275U
M1055_ GND n__O0__t_529_6 #fb982# GND nmos W=0.0975U L=0.13U
M1056_keeper GND Vdd #981 GND nmos W=0.0975U L=2.275U
M1057_ GND n__O0__f_529_6 #fb985# GND nmos W=0.0975U L=0.13U
M1058_keeper GND Vdd #984 GND nmos W=0.0975U L=0.715U
M1059_ GND O1_at_529_6 #fb988# GND nmos W=0.0975U L=0.13U
M1060_keeper GND Vdd #987 GND nmos W=0.0975U L=0.715U
M1061_ GND O1_af_529_6 #fb991# GND nmos W=0.0975U L=0.13U
M1062_keeper GND Vdd #990 GND nmos W=0.0975U L=2.275U
M1063_ GND n__O0__t_530_6 #fb994# GND nmos W=0.0975U L=0.13U
M1064_keeper GND Vdd #993 GND nmos W=0.0975U L=2.275U
M1065_ GND n__O0__f_530_6 #fb997# GND nmos W=0.0975U L=0.13U
M1066_keeper GND Vdd #996 GND nmos W=0.0975U L=0.715U
M1067_ GND O1_at_530_6 #fb1000# GND nmos W=0.0975U L=0.13U
M1068_keeper GND Vdd #999 GND nmos W=0.0975U L=0.715U
M1069_ GND O1_af_530_6 #fb1003# GND nmos W=0.0975U L=0.13U
M1070_keeper GND Vdd #1002 GND nmos W=0.0975U L=2.275U
M1071_ GND n__O0__t_531_6 #fb1006# GND nmos W=0.0975U L=0.13U
M1072_keeper GND Vdd #1005 GND nmos W=0.0975U L=2.275U
M1073_ GND n__O0__f_531_6 #fb1009# GND nmos W=0.0975U L=0.13U
M1074_keeper GND Vdd #1008 GND nmos W=0.0975U L=0.715U
M1075_ GND O1_at_531_6 #fb1012# GND nmos W=0.0975U L=0.13U
M1076_keeper GND Vdd #1011 GND nmos W=0.0975U L=0.715U
M1077_ GND O1_af_531_6 #fb1015# GND nmos W=0.0975U L=0.13U
M1078_keeper GND Vdd #1014 GND nmos W=0.0975U L=2.275U
M1079_keeper GND Vdd #1017 GND nmos W=0.0975U L=2.275U
M1080_ #3 inv__s p Vdd pmos W=1.3U L=0.065U
M1081_ #7 s p GND nmos W=0.78U L=0.065U
M1082_keeper #617 #fb616# p Vdd pmos W=0.0975U L=0.065U
M1083_keeper #618 #fb616# p GND nmos W=0.0975U L=0.065U
M1084_ #35 O1_aa s Vdd pmos W=1.3U L=0.065U
M1085_keeper #620 #fb619# s Vdd pmos W=0.0975U L=0.065U
M1086_keeper #621 #fb619# s GND nmos W=0.0975U L=0.065U
M1087_ #12 inv__p w__0i Vdd pmos W=0.1625U L=0.065U
M1088_ #14 p w__0i Vdd pmos W=0.1625U L=0.065U
M1089_ #16 O0_aa w__0i GND nmos W=0.0975U L=0.065U
M1090_ #16 O1_aa w__0i GND nmos W=0.0975U L=0.065U
M1091_keeper #623 #fb622# w__0i Vdd pmos W=0.0975U L=0.065U
M1092_keeper #624 #fb622# w__0i GND nmos W=0.0975U L=0.065U
M1093_ #11 inv__I__t_51_6 #12 Vdd pmos W=0.1625U L=0.065U
M1094_ #11 inv__I__f_51_6 #14 Vdd pmos W=0.1625U L=0.065U
M1095_ #21 I_af_50_6 n__w__0 GND nmos W=0.0975U L=0.065U
M1096_ #26 O1_aa n__w__0 Vdd pmos W=0.1625U L=0.065U
M1097_keeper #626 #fb625# n__w__0 Vdd pmos W=0.0975U L=0.065U
M1098_keeper #627 #fb625# n__w__0 GND nmos W=0.0975U L=0.065U
M1099_ #24 n__I__a #23 Vdd pmos W=0.1625U L=0.065U
M1100_ #23 O0_aa #26 Vdd pmos W=0.1625U L=0.065U
M1101_ #36 inv__w__0i n__I__a GND nmos W=0.0975U L=0.065U
M1102_ #43 w__0 n__I__a Vdd pmos W=0.1625U L=0.065U
M1103_keeper #629 #fb628# n__I__a Vdd pmos W=0.0975U L=0.065U
M1104_keeper #630 #fb628# n__I__a GND nmos W=0.0975U L=0.065U
M1105_ #28 I_at_50_6 n__w__1 GND nmos W=0.0975U L=0.065U
M1106_ #32 O1_aa n__w__1 Vdd pmos W=0.1625U L=0.065U
M1107_keeper #632 #fb631# n__w__1 Vdd pmos W=0.0975U L=0.065U
M1108_keeper #633 #fb631# n__w__1 GND nmos W=0.0975U L=0.065U
M1109_ #31 n__I__a #30 Vdd pmos W=0.1625U L=0.065U
M1110_ #30 O0_aa #32 Vdd pmos W=0.1625U L=0.065U
M1111_ #34 n__I__a #33 Vdd pmos W=1.3U L=0.065U
M1112_ #33 O0_aa #35 Vdd pmos W=1.3U L=0.065U
M1113_ #37 w__1 #36 GND nmos W=0.0975U L=0.065U
M1114_ #37 w__0 #36 GND nmos W=0.0975U L=0.065U
M1115_ #42 O1_aa #41 Vdd pmos W=0.1625U L=0.065U
M1116_ #41 w__1 #43 Vdd pmos W=0.1625U L=0.065U
M1117_ #45 I_at_50_6 n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1118_keeper #635 #fb634# n__O0__t_50_6 Vdd pmos W=0.0975U L=0.065U
M1119_keeper #636 #fb634# n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1120_ #46 inv__s #45 GND nmos W=0.0975U L=0.065U
M1121_ #48 I_af_50_6 n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1122_keeper #638 #fb637# n__O0__f_50_6 Vdd pmos W=0.0975U L=0.065U
M1123_keeper #639 #fb637# n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1124_ #49 inv__s #48 GND nmos W=0.0975U L=0.065U
M1125_ #51 inv__I__t_50_6 O1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1126_keeper #641 #fb640# O1_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1127_keeper #642 #fb640# O1_at_50_6 GND nmos W=0.0975U L=0.065U
M1128_ #52 s #51 Vdd pmos W=0.1625U L=0.065U
M1129_ #55 inv__I__f_50_6 O1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1130_keeper #644 #fb643# O1_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1131_keeper #645 #fb643# O1_af_50_6 GND nmos W=0.0975U L=0.065U
M1132_ #56 s #55 Vdd pmos W=0.1625U L=0.065U
M1133_ #59 I_at_51_6 n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1134_keeper #647 #fb646# n__O0__t_51_6 Vdd pmos W=0.0975U L=0.065U
M1135_keeper #648 #fb646# n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1136_ #60 inv__s #59 GND nmos W=0.0975U L=0.065U
M1137_ #63 I_af_51_6 n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1138_keeper #650 #fb649# n__O0__f_51_6 Vdd pmos W=0.0975U L=0.065U
M1139_keeper #651 #fb649# n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1140_ #64 inv__s #63 GND nmos W=0.0975U L=0.065U
M1141_ #66 inv__I__t_51_6 O1_at_51_6 Vdd pmos W=0.1625U L=0.065U
M1142_keeper #653 #fb652# O1_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1143_keeper #654 #fb652# O1_at_51_6 GND nmos W=0.0975U L=0.065U
M1144_ #67 s #66 Vdd pmos W=0.1625U L=0.065U
M1145_ #69 inv__I__f_51_6 O1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1146_keeper #656 #fb655# O1_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1147_keeper #657 #fb655# O1_af_51_6 GND nmos W=0.0975U L=0.065U
M1148_ #70 s #69 Vdd pmos W=0.1625U L=0.065U
M1149_ #72 I_at_52_6 n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1150_keeper #659 #fb658# n__O0__t_52_6 Vdd pmos W=0.0975U L=0.065U
M1151_keeper #660 #fb658# n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1152_ #73 inv__s #72 GND nmos W=0.0975U L=0.065U
M1153_ #76 I_af_52_6 n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1154_keeper #662 #fb661# n__O0__f_52_6 Vdd pmos W=0.0975U L=0.065U
M1155_keeper #663 #fb661# n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1156_ #77 inv__s #76 GND nmos W=0.0975U L=0.065U
M1157_ #80 inv__I__t_52_6 O1_at_52_6 Vdd pmos W=0.1625U L=0.065U
M1158_keeper #665 #fb664# O1_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1159_keeper #666 #fb664# O1_at_52_6 GND nmos W=0.0975U L=0.065U
M1160_ #81 s #80 Vdd pmos W=0.1625U L=0.065U
M1161_ #84 inv__I__f_52_6 O1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1162_keeper #668 #fb667# O1_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1163_keeper #669 #fb667# O1_af_52_6 GND nmos W=0.0975U L=0.065U
M1164_ #85 s #84 Vdd pmos W=0.1625U L=0.065U
M1165_ #88 I_at_53_6 n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1166_keeper #671 #fb670# n__O0__t_53_6 Vdd pmos W=0.0975U L=0.065U
M1167_keeper #672 #fb670# n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1168_ #89 inv__s #88 GND nmos W=0.0975U L=0.065U
M1169_ #92 I_af_53_6 n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1170_keeper #674 #fb673# n__O0__f_53_6 Vdd pmos W=0.0975U L=0.065U
M1171_keeper #675 #fb673# n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1172_ #93 inv__s #92 GND nmos W=0.0975U L=0.065U
M1173_ #96 inv__I__t_53_6 O1_at_53_6 Vdd pmos W=0.1625U L=0.065U
M1174_keeper #677 #fb676# O1_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1175_keeper #678 #fb676# O1_at_53_6 GND nmos W=0.0975U L=0.065U
M1176_ #97 s #96 Vdd pmos W=0.1625U L=0.065U
M1177_ #100 inv__I__f_53_6 O1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1178_keeper #680 #fb679# O1_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1179_keeper #681 #fb679# O1_af_53_6 GND nmos W=0.0975U L=0.065U
M1180_ #101 s #100 Vdd pmos W=0.1625U L=0.065U
M1181_ #104 I_at_54_6 n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1182_keeper #683 #fb682# n__O0__t_54_6 Vdd pmos W=0.0975U L=0.065U
M1183_keeper #684 #fb682# n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1184_ #105 inv__s #104 GND nmos W=0.0975U L=0.065U
M1185_ #108 I_af_54_6 n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M1186_keeper #686 #fb685# n__O0__f_54_6 Vdd pmos W=0.0975U L=0.065U
M1187_keeper #687 #fb685# n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M1188_ #109 inv__s #108 GND nmos W=0.0975U L=0.065U
M1189_ #112 inv__I__t_54_6 O1_at_54_6 Vdd pmos W=0.1625U L=0.065U
M1190_keeper #689 #fb688# O1_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1191_keeper #690 #fb688# O1_at_54_6 GND nmos W=0.0975U L=0.065U
M1192_ #113 s #112 Vdd pmos W=0.1625U L=0.065U
M1193_ #116 inv__I__f_54_6 O1_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1194_keeper #692 #fb691# O1_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1195_keeper #693 #fb691# O1_af_54_6 GND nmos W=0.0975U L=0.065U
M1196_ #117 s #116 Vdd pmos W=0.1625U L=0.065U
M1197_ #120 I_at_55_6 n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M1198_keeper #695 #fb694# n__O0__t_55_6 Vdd pmos W=0.0975U L=0.065U
M1199_keeper #696 #fb694# n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M1200_ #121 inv__s #120 GND nmos W=0.0975U L=0.065U
M1201_ #124 I_af_55_6 n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M1202_keeper #698 #fb697# n__O0__f_55_6 Vdd pmos W=0.0975U L=0.065U
M1203_keeper #699 #fb697# n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M1204_ #125 inv__s #124 GND nmos W=0.0975U L=0.065U
M1205_ #128 inv__I__t_55_6 O1_at_55_6 Vdd pmos W=0.1625U L=0.065U
M1206_keeper #701 #fb700# O1_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1207_keeper #702 #fb700# O1_at_55_6 GND nmos W=0.0975U L=0.065U
M1208_ #129 s #128 Vdd pmos W=0.1625U L=0.065U
M1209_ #132 inv__I__f_55_6 O1_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1210_keeper #704 #fb703# O1_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1211_keeper #705 #fb703# O1_af_55_6 GND nmos W=0.0975U L=0.065U
M1212_ #133 s #132 Vdd pmos W=0.1625U L=0.065U
M1213_ #136 I_at_56_6 n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M1214_keeper #707 #fb706# n__O0__t_56_6 Vdd pmos W=0.0975U L=0.065U
M1215_keeper #708 #fb706# n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M1216_ #137 inv__s #136 GND nmos W=0.0975U L=0.065U
M1217_ #140 I_af_56_6 n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M1218_keeper #710 #fb709# n__O0__f_56_6 Vdd pmos W=0.0975U L=0.065U
M1219_keeper #711 #fb709# n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M1220_ #141 inv__s #140 GND nmos W=0.0975U L=0.065U
M1221_ #144 inv__I__t_56_6 O1_at_56_6 Vdd pmos W=0.1625U L=0.065U
M1222_keeper #713 #fb712# O1_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1223_keeper #714 #fb712# O1_at_56_6 GND nmos W=0.0975U L=0.065U
M1224_ #145 s #144 Vdd pmos W=0.1625U L=0.065U
M1225_ #148 inv__I__f_56_6 O1_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1226_keeper #716 #fb715# O1_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1227_keeper #717 #fb715# O1_af_56_6 GND nmos W=0.0975U L=0.065U
M1228_ #149 s #148 Vdd pmos W=0.1625U L=0.065U
M1229_ #152 I_at_57_6 n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M1230_keeper #719 #fb718# n__O0__t_57_6 Vdd pmos W=0.0975U L=0.065U
M1231_keeper #720 #fb718# n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M1232_ #153 inv__s #152 GND nmos W=0.0975U L=0.065U
M1233_ #156 I_af_57_6 n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M1234_keeper #722 #fb721# n__O0__f_57_6 Vdd pmos W=0.0975U L=0.065U
M1235_keeper #723 #fb721# n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M1236_ #157 inv__s #156 GND nmos W=0.0975U L=0.065U
M1237_ #160 inv__I__t_57_6 O1_at_57_6 Vdd pmos W=0.1625U L=0.065U
M1238_keeper #725 #fb724# O1_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1239_keeper #726 #fb724# O1_at_57_6 GND nmos W=0.0975U L=0.065U
M1240_ #161 s #160 Vdd pmos W=0.1625U L=0.065U
M1241_ #164 inv__I__f_57_6 O1_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1242_keeper #728 #fb727# O1_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1243_keeper #729 #fb727# O1_af_57_6 GND nmos W=0.0975U L=0.065U
M1244_ #165 s #164 Vdd pmos W=0.1625U L=0.065U
M1245_ #168 I_at_58_6 n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M1246_keeper #731 #fb730# n__O0__t_58_6 Vdd pmos W=0.0975U L=0.065U
M1247_keeper #732 #fb730# n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M1248_ #169 inv__s #168 GND nmos W=0.0975U L=0.065U
M1249_ #172 I_af_58_6 n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M1250_keeper #734 #fb733# n__O0__f_58_6 Vdd pmos W=0.0975U L=0.065U
M1251_keeper #735 #fb733# n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M1252_ #173 inv__s #172 GND nmos W=0.0975U L=0.065U
M1253_ #176 inv__I__t_58_6 O1_at_58_6 Vdd pmos W=0.1625U L=0.065U
M1254_keeper #737 #fb736# O1_at_58_6 Vdd pmos W=0.0975U L=0.065U
M1255_keeper #738 #fb736# O1_at_58_6 GND nmos W=0.0975U L=0.065U
M1256_ #177 s #176 Vdd pmos W=0.1625U L=0.065U
M1257_ #180 inv__I__f_58_6 O1_af_58_6 Vdd pmos W=0.1625U L=0.065U
M1258_keeper #740 #fb739# O1_af_58_6 Vdd pmos W=0.0975U L=0.065U
M1259_keeper #741 #fb739# O1_af_58_6 GND nmos W=0.0975U L=0.065U
M1260_ #181 s #180 Vdd pmos W=0.1625U L=0.065U
M1261_ #184 I_at_59_6 n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M1262_keeper #743 #fb742# n__O0__t_59_6 Vdd pmos W=0.0975U L=0.065U
M1263_keeper #744 #fb742# n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M1264_ #185 inv__s #184 GND nmos W=0.0975U L=0.065U
M1265_ #188 I_af_59_6 n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M1266_keeper #746 #fb745# n__O0__f_59_6 Vdd pmos W=0.0975U L=0.065U
M1267_keeper #747 #fb745# n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M1268_ #189 inv__s #188 GND nmos W=0.0975U L=0.065U
M1269_ #192 inv__I__t_59_6 O1_at_59_6 Vdd pmos W=0.1625U L=0.065U
M1270_keeper #749 #fb748# O1_at_59_6 Vdd pmos W=0.0975U L=0.065U
M1271_keeper #750 #fb748# O1_at_59_6 GND nmos W=0.0975U L=0.065U
M1272_ #193 s #192 Vdd pmos W=0.1625U L=0.065U
M1273_ #196 inv__I__f_59_6 O1_af_59_6 Vdd pmos W=0.1625U L=0.065U
M1274_keeper #752 #fb751# O1_af_59_6 Vdd pmos W=0.0975U L=0.065U
M1275_keeper #753 #fb751# O1_af_59_6 GND nmos W=0.0975U L=0.065U
M1276_ #197 s #196 Vdd pmos W=0.1625U L=0.065U
M1277_ #200 I_at_510_6 n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M1278_keeper #755 #fb754# n__O0__t_510_6 Vdd pmos W=0.0975U L=0.065U
M1279_keeper #756 #fb754# n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M1280_ #201 inv__s #200 GND nmos W=0.0975U L=0.065U
M1281_ #204 I_af_510_6 n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M1282_keeper #758 #fb757# n__O0__f_510_6 Vdd pmos W=0.0975U L=0.065U
M1283_keeper #759 #fb757# n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M1284_ #205 inv__s #204 GND nmos W=0.0975U L=0.065U
M1285_ #208 inv__I__t_510_6 O1_at_510_6 Vdd pmos W=0.1625U L=0.065U
M1286_keeper #761 #fb760# O1_at_510_6 Vdd pmos W=0.0975U L=0.065U
M1287_keeper #762 #fb760# O1_at_510_6 GND nmos W=0.0975U L=0.065U
M1288_ #209 s #208 Vdd pmos W=0.1625U L=0.065U
M1289_ #212 inv__I__f_510_6 O1_af_510_6 Vdd pmos W=0.1625U L=0.065U
M1290_keeper #764 #fb763# O1_af_510_6 Vdd pmos W=0.0975U L=0.065U
M1291_keeper #765 #fb763# O1_af_510_6 GND nmos W=0.0975U L=0.065U
M1292_ #213 s #212 Vdd pmos W=0.1625U L=0.065U
M1293_ #216 I_at_511_6 n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M1294_keeper #767 #fb766# n__O0__t_511_6 Vdd pmos W=0.0975U L=0.065U
M1295_keeper #768 #fb766# n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M1296_ #217 inv__s #216 GND nmos W=0.0975U L=0.065U
M1297_ #220 I_af_511_6 n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M1298_keeper #770 #fb769# n__O0__f_511_6 Vdd pmos W=0.0975U L=0.065U
M1299_keeper #771 #fb769# n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M1300_ #221 inv__s #220 GND nmos W=0.0975U L=0.065U
M1301_ #224 inv__I__t_511_6 O1_at_511_6 Vdd pmos W=0.1625U L=0.065U
M1302_keeper #773 #fb772# O1_at_511_6 Vdd pmos W=0.0975U L=0.065U
M1303_keeper #774 #fb772# O1_at_511_6 GND nmos W=0.0975U L=0.065U
M1304_ #225 s #224 Vdd pmos W=0.1625U L=0.065U
M1305_ #228 inv__I__f_511_6 O1_af_511_6 Vdd pmos W=0.1625U L=0.065U
M1306_keeper #776 #fb775# O1_af_511_6 Vdd pmos W=0.0975U L=0.065U
M1307_keeper #777 #fb775# O1_af_511_6 GND nmos W=0.0975U L=0.065U
M1308_ #229 s #228 Vdd pmos W=0.1625U L=0.065U
M1309_ #232 I_at_512_6 n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M1310_keeper #779 #fb778# n__O0__t_512_6 Vdd pmos W=0.0975U L=0.065U
M1311_keeper #780 #fb778# n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M1312_ #233 inv__s #232 GND nmos W=0.0975U L=0.065U
M1313_ #236 I_af_512_6 n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M1314_keeper #782 #fb781# n__O0__f_512_6 Vdd pmos W=0.0975U L=0.065U
M1315_keeper #783 #fb781# n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M1316_ #237 inv__s #236 GND nmos W=0.0975U L=0.065U
M1317_ #240 inv__I__t_512_6 O1_at_512_6 Vdd pmos W=0.1625U L=0.065U
M1318_keeper #785 #fb784# O1_at_512_6 Vdd pmos W=0.0975U L=0.065U
M1319_keeper #786 #fb784# O1_at_512_6 GND nmos W=0.0975U L=0.065U
M1320_ #241 s #240 Vdd pmos W=0.1625U L=0.065U
M1321_ #244 inv__I__f_512_6 O1_af_512_6 Vdd pmos W=0.1625U L=0.065U
M1322_keeper #788 #fb787# O1_af_512_6 Vdd pmos W=0.0975U L=0.065U
M1323_keeper #789 #fb787# O1_af_512_6 GND nmos W=0.0975U L=0.065U
M1324_ #245 s #244 Vdd pmos W=0.1625U L=0.065U
M1325_ #248 I_at_513_6 n__O0__t_513_6 GND nmos W=0.0975U L=0.065U
M1326_keeper #791 #fb790# n__O0__t_513_6 Vdd pmos W=0.0975U L=0.065U
M1327_keeper #792 #fb790# n__O0__t_513_6 GND nmos W=0.0975U L=0.065U
M1328_ #249 inv__s #248 GND nmos W=0.0975U L=0.065U
M1329_ #252 I_af_513_6 n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1330_keeper #794 #fb793# n__O0__f_513_6 Vdd pmos W=0.0975U L=0.065U
M1331_keeper #795 #fb793# n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1332_ #253 inv__s #252 GND nmos W=0.0975U L=0.065U
M1333_ #256 inv__I__t_513_6 O1_at_513_6 Vdd pmos W=0.1625U L=0.065U
M1334_keeper #797 #fb796# O1_at_513_6 Vdd pmos W=0.0975U L=0.065U
M1335_keeper #798 #fb796# O1_at_513_6 GND nmos W=0.0975U L=0.065U
M1336_ #257 s #256 Vdd pmos W=0.1625U L=0.065U
M1337_ #260 inv__I__f_513_6 O1_af_513_6 Vdd pmos W=0.1625U L=0.065U
M1338_keeper #800 #fb799# O1_af_513_6 Vdd pmos W=0.0975U L=0.065U
M1339_keeper #801 #fb799# O1_af_513_6 GND nmos W=0.0975U L=0.065U
M1340_ #261 s #260 Vdd pmos W=0.1625U L=0.065U
M1341_ #264 I_at_514_6 n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1342_keeper #803 #fb802# n__O0__t_514_6 Vdd pmos W=0.0975U L=0.065U
M1343_keeper #804 #fb802# n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1344_ #265 inv__s #264 GND nmos W=0.0975U L=0.065U
M1345_ #268 I_af_514_6 n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1346_keeper #806 #fb805# n__O0__f_514_6 Vdd pmos W=0.0975U L=0.065U
M1347_keeper #807 #fb805# n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1348_ #269 inv__s #268 GND nmos W=0.0975U L=0.065U
M1349_ #272 inv__I__t_514_6 O1_at_514_6 Vdd pmos W=0.1625U L=0.065U
M1350_keeper #809 #fb808# O1_at_514_6 Vdd pmos W=0.0975U L=0.065U
M1351_keeper #810 #fb808# O1_at_514_6 GND nmos W=0.0975U L=0.065U
M1352_ #273 s #272 Vdd pmos W=0.1625U L=0.065U
M1353_ #276 inv__I__f_514_6 O1_af_514_6 Vdd pmos W=0.1625U L=0.065U
M1354_keeper #812 #fb811# O1_af_514_6 Vdd pmos W=0.0975U L=0.065U
M1355_keeper #813 #fb811# O1_af_514_6 GND nmos W=0.0975U L=0.065U
M1356_ #277 s #276 Vdd pmos W=0.1625U L=0.065U
M1357_ #280 I_at_515_6 n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1358_keeper #815 #fb814# n__O0__t_515_6 Vdd pmos W=0.0975U L=0.065U
M1359_keeper #816 #fb814# n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1360_ #281 inv__s #280 GND nmos W=0.0975U L=0.065U
M1361_ #284 I_af_515_6 n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1362_keeper #818 #fb817# n__O0__f_515_6 Vdd pmos W=0.0975U L=0.065U
M1363_keeper #819 #fb817# n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1364_ #285 inv__s #284 GND nmos W=0.0975U L=0.065U
M1365_ #288 inv__I__t_515_6 O1_at_515_6 Vdd pmos W=0.1625U L=0.065U
M1366_keeper #821 #fb820# O1_at_515_6 Vdd pmos W=0.0975U L=0.065U
M1367_keeper #822 #fb820# O1_at_515_6 GND nmos W=0.0975U L=0.065U
M1368_ #289 s #288 Vdd pmos W=0.1625U L=0.065U
M1369_ #292 inv__I__f_515_6 O1_af_515_6 Vdd pmos W=0.1625U L=0.065U
M1370_keeper #824 #fb823# O1_af_515_6 Vdd pmos W=0.0975U L=0.065U
M1371_keeper #825 #fb823# O1_af_515_6 GND nmos W=0.0975U L=0.065U
M1372_ #293 s #292 Vdd pmos W=0.1625U L=0.065U
M1373_ #296 I_at_516_6 n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1374_keeper #827 #fb826# n__O0__t_516_6 Vdd pmos W=0.0975U L=0.065U
M1375_keeper #828 #fb826# n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1376_ #297 inv__s #296 GND nmos W=0.0975U L=0.065U
M1377_ #300 I_af_516_6 n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1378_keeper #830 #fb829# n__O0__f_516_6 Vdd pmos W=0.0975U L=0.065U
M1379_keeper #831 #fb829# n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1380_ #301 inv__s #300 GND nmos W=0.0975U L=0.065U
M1381_ #304 inv__I__t_516_6 O1_at_516_6 Vdd pmos W=0.1625U L=0.065U
M1382_keeper #833 #fb832# O1_at_516_6 Vdd pmos W=0.0975U L=0.065U
M1383_keeper #834 #fb832# O1_at_516_6 GND nmos W=0.0975U L=0.065U
M1384_ #305 s #304 Vdd pmos W=0.1625U L=0.065U
M1385_ #308 inv__I__f_516_6 O1_af_516_6 Vdd pmos W=0.1625U L=0.065U
M1386_keeper #836 #fb835# O1_af_516_6 Vdd pmos W=0.0975U L=0.065U
M1387_keeper #837 #fb835# O1_af_516_6 GND nmos W=0.0975U L=0.065U
M1388_ #309 s #308 Vdd pmos W=0.1625U L=0.065U
M1389_ #312 I_at_517_6 n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1390_keeper #839 #fb838# n__O0__t_517_6 Vdd pmos W=0.0975U L=0.065U
M1391_keeper #840 #fb838# n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1392_ #313 inv__s #312 GND nmos W=0.0975U L=0.065U
M1393_ #316 I_af_517_6 n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1394_keeper #842 #fb841# n__O0__f_517_6 Vdd pmos W=0.0975U L=0.065U
M1395_keeper #843 #fb841# n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1396_ #317 inv__s #316 GND nmos W=0.0975U L=0.065U
M1397_ #320 inv__I__t_517_6 O1_at_517_6 Vdd pmos W=0.1625U L=0.065U
M1398_keeper #845 #fb844# O1_at_517_6 Vdd pmos W=0.0975U L=0.065U
M1399_keeper #846 #fb844# O1_at_517_6 GND nmos W=0.0975U L=0.065U
M1400_ #321 s #320 Vdd pmos W=0.1625U L=0.065U
M1401_ #324 inv__I__f_517_6 O1_af_517_6 Vdd pmos W=0.1625U L=0.065U
M1402_keeper #848 #fb847# O1_af_517_6 Vdd pmos W=0.0975U L=0.065U
M1403_keeper #849 #fb847# O1_af_517_6 GND nmos W=0.0975U L=0.065U
M1404_ #325 s #324 Vdd pmos W=0.1625U L=0.065U
M1405_ #328 I_at_518_6 n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1406_keeper #851 #fb850# n__O0__t_518_6 Vdd pmos W=0.0975U L=0.065U
M1407_keeper #852 #fb850# n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1408_ #329 inv__s #328 GND nmos W=0.0975U L=0.065U
M1409_ #332 I_af_518_6 n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1410_keeper #854 #fb853# n__O0__f_518_6 Vdd pmos W=0.0975U L=0.065U
M1411_keeper #855 #fb853# n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1412_ #333 inv__s #332 GND nmos W=0.0975U L=0.065U
M1413_ #336 inv__I__t_518_6 O1_at_518_6 Vdd pmos W=0.1625U L=0.065U
M1414_keeper #857 #fb856# O1_at_518_6 Vdd pmos W=0.0975U L=0.065U
M1415_keeper #858 #fb856# O1_at_518_6 GND nmos W=0.0975U L=0.065U
M1416_ #337 s #336 Vdd pmos W=0.1625U L=0.065U
M1417_ #340 inv__I__f_518_6 O1_af_518_6 Vdd pmos W=0.1625U L=0.065U
M1418_keeper #860 #fb859# O1_af_518_6 Vdd pmos W=0.0975U L=0.065U
M1419_keeper #861 #fb859# O1_af_518_6 GND nmos W=0.0975U L=0.065U
M1420_ #341 s #340 Vdd pmos W=0.1625U L=0.065U
M1421_ #344 I_at_519_6 n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1422_keeper #863 #fb862# n__O0__t_519_6 Vdd pmos W=0.0975U L=0.065U
M1423_keeper #864 #fb862# n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1424_ #345 inv__s #344 GND nmos W=0.0975U L=0.065U
M1425_ #348 I_af_519_6 n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1426_keeper #866 #fb865# n__O0__f_519_6 Vdd pmos W=0.0975U L=0.065U
M1427_keeper #867 #fb865# n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1428_ #349 inv__s #348 GND nmos W=0.0975U L=0.065U
M1429_ #352 inv__I__t_519_6 O1_at_519_6 Vdd pmos W=0.1625U L=0.065U
M1430_keeper #869 #fb868# O1_at_519_6 Vdd pmos W=0.0975U L=0.065U
M1431_keeper #870 #fb868# O1_at_519_6 GND nmos W=0.0975U L=0.065U
M1432_ #353 s #352 Vdd pmos W=0.1625U L=0.065U
M1433_ #356 inv__I__f_519_6 O1_af_519_6 Vdd pmos W=0.1625U L=0.065U
M1434_keeper #872 #fb871# O1_af_519_6 Vdd pmos W=0.0975U L=0.065U
M1435_keeper #873 #fb871# O1_af_519_6 GND nmos W=0.0975U L=0.065U
M1436_ #357 s #356 Vdd pmos W=0.1625U L=0.065U
M1437_ #360 I_at_520_6 n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1438_keeper #875 #fb874# n__O0__t_520_6 Vdd pmos W=0.0975U L=0.065U
M1439_keeper #876 #fb874# n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1440_ #361 inv__s #360 GND nmos W=0.0975U L=0.065U
M1441_ #364 I_af_520_6 n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1442_keeper #878 #fb877# n__O0__f_520_6 Vdd pmos W=0.0975U L=0.065U
M1443_keeper #879 #fb877# n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1444_ #365 inv__s #364 GND nmos W=0.0975U L=0.065U
M1445_ #368 inv__I__t_520_6 O1_at_520_6 Vdd pmos W=0.1625U L=0.065U
M1446_keeper #881 #fb880# O1_at_520_6 Vdd pmos W=0.0975U L=0.065U
M1447_keeper #882 #fb880# O1_at_520_6 GND nmos W=0.0975U L=0.065U
M1448_ #369 s #368 Vdd pmos W=0.1625U L=0.065U
M1449_ #372 inv__I__f_520_6 O1_af_520_6 Vdd pmos W=0.1625U L=0.065U
M1450_keeper #884 #fb883# O1_af_520_6 Vdd pmos W=0.0975U L=0.065U
M1451_keeper #885 #fb883# O1_af_520_6 GND nmos W=0.0975U L=0.065U
M1452_ #373 s #372 Vdd pmos W=0.1625U L=0.065U
M1453_ #376 I_at_521_6 n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1454_keeper #887 #fb886# n__O0__t_521_6 Vdd pmos W=0.0975U L=0.065U
M1455_keeper #888 #fb886# n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1456_ #377 inv__s #376 GND nmos W=0.0975U L=0.065U
M1457_ #380 I_af_521_6 n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1458_keeper #890 #fb889# n__O0__f_521_6 Vdd pmos W=0.0975U L=0.065U
M1459_keeper #891 #fb889# n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1460_ #381 inv__s #380 GND nmos W=0.0975U L=0.065U
M1461_ #384 inv__I__t_521_6 O1_at_521_6 Vdd pmos W=0.1625U L=0.065U
M1462_keeper #893 #fb892# O1_at_521_6 Vdd pmos W=0.0975U L=0.065U
M1463_keeper #894 #fb892# O1_at_521_6 GND nmos W=0.0975U L=0.065U
M1464_ #385 s #384 Vdd pmos W=0.1625U L=0.065U
M1465_ #388 inv__I__f_521_6 O1_af_521_6 Vdd pmos W=0.1625U L=0.065U
M1466_keeper #896 #fb895# O1_af_521_6 Vdd pmos W=0.0975U L=0.065U
M1467_keeper #897 #fb895# O1_af_521_6 GND nmos W=0.0975U L=0.065U
M1468_ #389 s #388 Vdd pmos W=0.1625U L=0.065U
M1469_ #392 I_at_522_6 n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1470_keeper #899 #fb898# n__O0__t_522_6 Vdd pmos W=0.0975U L=0.065U
M1471_keeper #900 #fb898# n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1472_ #393 inv__s #392 GND nmos W=0.0975U L=0.065U
M1473_ #396 I_af_522_6 n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1474_keeper #902 #fb901# n__O0__f_522_6 Vdd pmos W=0.0975U L=0.065U
M1475_keeper #903 #fb901# n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1476_ #397 inv__s #396 GND nmos W=0.0975U L=0.065U
M1477_ #400 inv__I__t_522_6 O1_at_522_6 Vdd pmos W=0.1625U L=0.065U
M1478_keeper #905 #fb904# O1_at_522_6 Vdd pmos W=0.0975U L=0.065U
M1479_keeper #906 #fb904# O1_at_522_6 GND nmos W=0.0975U L=0.065U
M1480_ #401 s #400 Vdd pmos W=0.1625U L=0.065U
M1481_ #404 inv__I__f_522_6 O1_af_522_6 Vdd pmos W=0.1625U L=0.065U
M1482_keeper #908 #fb907# O1_af_522_6 Vdd pmos W=0.0975U L=0.065U
M1483_keeper #909 #fb907# O1_af_522_6 GND nmos W=0.0975U L=0.065U
M1484_ #405 s #404 Vdd pmos W=0.1625U L=0.065U
M1485_ #408 I_at_523_6 n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1486_keeper #911 #fb910# n__O0__t_523_6 Vdd pmos W=0.0975U L=0.065U
M1487_keeper #912 #fb910# n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1488_ #409 inv__s #408 GND nmos W=0.0975U L=0.065U
M1489_ #412 I_af_523_6 n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1490_keeper #914 #fb913# n__O0__f_523_6 Vdd pmos W=0.0975U L=0.065U
M1491_keeper #915 #fb913# n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1492_ #413 inv__s #412 GND nmos W=0.0975U L=0.065U
M1493_ #416 inv__I__t_523_6 O1_at_523_6 Vdd pmos W=0.1625U L=0.065U
M1494_keeper #917 #fb916# O1_at_523_6 Vdd pmos W=0.0975U L=0.065U
M1495_keeper #918 #fb916# O1_at_523_6 GND nmos W=0.0975U L=0.065U
M1496_ #417 s #416 Vdd pmos W=0.1625U L=0.065U
M1497_ #420 inv__I__f_523_6 O1_af_523_6 Vdd pmos W=0.1625U L=0.065U
M1498_keeper #920 #fb919# O1_af_523_6 Vdd pmos W=0.0975U L=0.065U
M1499_keeper #921 #fb919# O1_af_523_6 GND nmos W=0.0975U L=0.065U
M1500_ #421 s #420 Vdd pmos W=0.1625U L=0.065U
M1501_ #424 I_at_524_6 n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1502_keeper #923 #fb922# n__O0__t_524_6 Vdd pmos W=0.0975U L=0.065U
M1503_keeper #924 #fb922# n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1504_ #425 inv__s #424 GND nmos W=0.0975U L=0.065U
M1505_ #428 I_af_524_6 n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M1506_keeper #926 #fb925# n__O0__f_524_6 Vdd pmos W=0.0975U L=0.065U
M1507_keeper #927 #fb925# n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M1508_ #429 inv__s #428 GND nmos W=0.0975U L=0.065U
M1509_ #432 inv__I__t_524_6 O1_at_524_6 Vdd pmos W=0.1625U L=0.065U
M1510_keeper #929 #fb928# O1_at_524_6 Vdd pmos W=0.0975U L=0.065U
M1511_keeper #930 #fb928# O1_at_524_6 GND nmos W=0.0975U L=0.065U
M1512_ #433 s #432 Vdd pmos W=0.1625U L=0.065U
M1513_ #436 inv__I__f_524_6 O1_af_524_6 Vdd pmos W=0.1625U L=0.065U
M1514_keeper #932 #fb931# O1_af_524_6 Vdd pmos W=0.0975U L=0.065U
M1515_keeper #933 #fb931# O1_af_524_6 GND nmos W=0.0975U L=0.065U
M1516_ #437 s #436 Vdd pmos W=0.1625U L=0.065U
M1517_ #440 I_at_525_6 n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M1518_keeper #935 #fb934# n__O0__t_525_6 Vdd pmos W=0.0975U L=0.065U
M1519_keeper #936 #fb934# n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M1520_ #441 inv__s #440 GND nmos W=0.0975U L=0.065U
M1521_ #444 I_af_525_6 n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M1522_keeper #938 #fb937# n__O0__f_525_6 Vdd pmos W=0.0975U L=0.065U
M1523_keeper #939 #fb937# n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M1524_ #445 inv__s #444 GND nmos W=0.0975U L=0.065U
M1525_ #448 inv__I__t_525_6 O1_at_525_6 Vdd pmos W=0.1625U L=0.065U
M1526_keeper #941 #fb940# O1_at_525_6 Vdd pmos W=0.0975U L=0.065U
M1527_keeper #942 #fb940# O1_at_525_6 GND nmos W=0.0975U L=0.065U
M1528_ #449 s #448 Vdd pmos W=0.1625U L=0.065U
M1529_ #452 inv__I__f_525_6 O1_af_525_6 Vdd pmos W=0.1625U L=0.065U
M1530_keeper #944 #fb943# O1_af_525_6 Vdd pmos W=0.0975U L=0.065U
M1531_keeper #945 #fb943# O1_af_525_6 GND nmos W=0.0975U L=0.065U
M1532_ #453 s #452 Vdd pmos W=0.1625U L=0.065U
M1533_ #456 I_at_526_6 n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M1534_keeper #947 #fb946# n__O0__t_526_6 Vdd pmos W=0.0975U L=0.065U
M1535_keeper #948 #fb946# n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M1536_ #457 inv__s #456 GND nmos W=0.0975U L=0.065U
M1537_ #460 I_af_526_6 n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M1538_keeper #950 #fb949# n__O0__f_526_6 Vdd pmos W=0.0975U L=0.065U
M1539_keeper #951 #fb949# n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M1540_ #461 inv__s #460 GND nmos W=0.0975U L=0.065U
M1541_ #464 inv__I__t_526_6 O1_at_526_6 Vdd pmos W=0.1625U L=0.065U
M1542_keeper #953 #fb952# O1_at_526_6 Vdd pmos W=0.0975U L=0.065U
M1543_keeper #954 #fb952# O1_at_526_6 GND nmos W=0.0975U L=0.065U
M1544_ #465 s #464 Vdd pmos W=0.1625U L=0.065U
M1545_ #468 inv__I__f_526_6 O1_af_526_6 Vdd pmos W=0.1625U L=0.065U
M1546_keeper #956 #fb955# O1_af_526_6 Vdd pmos W=0.0975U L=0.065U
M1547_keeper #957 #fb955# O1_af_526_6 GND nmos W=0.0975U L=0.065U
M1548_ #469 s #468 Vdd pmos W=0.1625U L=0.065U
M1549_ #472 I_at_527_6 n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M1550_keeper #959 #fb958# n__O0__t_527_6 Vdd pmos W=0.0975U L=0.065U
M1551_keeper #960 #fb958# n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M1552_ #473 inv__s #472 GND nmos W=0.0975U L=0.065U
M1553_ #476 I_af_527_6 n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M1554_keeper #962 #fb961# n__O0__f_527_6 Vdd pmos W=0.0975U L=0.065U
M1555_keeper #963 #fb961# n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M1556_ #477 inv__s #476 GND nmos W=0.0975U L=0.065U
M1557_ #480 inv__I__t_527_6 O1_at_527_6 Vdd pmos W=0.1625U L=0.065U
M1558_keeper #965 #fb964# O1_at_527_6 Vdd pmos W=0.0975U L=0.065U
M1559_keeper #966 #fb964# O1_at_527_6 GND nmos W=0.0975U L=0.065U
M1560_ #481 s #480 Vdd pmos W=0.1625U L=0.065U
M1561_ #484 inv__I__f_527_6 O1_af_527_6 Vdd pmos W=0.1625U L=0.065U
M1562_keeper #968 #fb967# O1_af_527_6 Vdd pmos W=0.0975U L=0.065U
M1563_keeper #969 #fb967# O1_af_527_6 GND nmos W=0.0975U L=0.065U
M1564_ #485 s #484 Vdd pmos W=0.1625U L=0.065U
M1565_ #488 I_at_528_6 n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M1566_keeper #971 #fb970# n__O0__t_528_6 Vdd pmos W=0.0975U L=0.065U
M1567_keeper #972 #fb970# n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M1568_ #489 inv__s #488 GND nmos W=0.0975U L=0.065U
M1569_ #492 I_af_528_6 n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M1570_keeper #974 #fb973# n__O0__f_528_6 Vdd pmos W=0.0975U L=0.065U
M1571_keeper #975 #fb973# n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M1572_ #493 inv__s #492 GND nmos W=0.0975U L=0.065U
M1573_ #496 inv__I__t_528_6 O1_at_528_6 Vdd pmos W=0.1625U L=0.065U
M1574_keeper #977 #fb976# O1_at_528_6 Vdd pmos W=0.0975U L=0.065U
M1575_keeper #978 #fb976# O1_at_528_6 GND nmos W=0.0975U L=0.065U
M1576_ #497 s #496 Vdd pmos W=0.1625U L=0.065U
M1577_ #500 inv__I__f_528_6 O1_af_528_6 Vdd pmos W=0.1625U L=0.065U
M1578_keeper #980 #fb979# O1_af_528_6 Vdd pmos W=0.0975U L=0.065U
M1579_keeper #981 #fb979# O1_af_528_6 GND nmos W=0.0975U L=0.065U
M1580_ #501 s #500 Vdd pmos W=0.1625U L=0.065U
M1581_ #504 I_at_529_6 n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M1582_keeper #983 #fb982# n__O0__t_529_6 Vdd pmos W=0.0975U L=0.065U
M1583_keeper #984 #fb982# n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M1584_ #505 inv__s #504 GND nmos W=0.0975U L=0.065U
M1585_ #508 I_af_529_6 n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M1586_keeper #986 #fb985# n__O0__f_529_6 Vdd pmos W=0.0975U L=0.065U
M1587_keeper #987 #fb985# n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M1588_ #509 inv__s #508 GND nmos W=0.0975U L=0.065U
M1589_ #512 inv__I__t_529_6 O1_at_529_6 Vdd pmos W=0.1625U L=0.065U
M1590_keeper #989 #fb988# O1_at_529_6 Vdd pmos W=0.0975U L=0.065U
M1591_keeper #990 #fb988# O1_at_529_6 GND nmos W=0.0975U L=0.065U
M1592_ #513 s #512 Vdd pmos W=0.1625U L=0.065U
M1593_ #516 inv__I__f_529_6 O1_af_529_6 Vdd pmos W=0.1625U L=0.065U
M1594_keeper #992 #fb991# O1_af_529_6 Vdd pmos W=0.0975U L=0.065U
M1595_keeper #993 #fb991# O1_af_529_6 GND nmos W=0.0975U L=0.065U
M1596_ #517 s #516 Vdd pmos W=0.1625U L=0.065U
M1597_ #520 I_at_530_6 n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M1598_keeper #995 #fb994# n__O0__t_530_6 Vdd pmos W=0.0975U L=0.065U
M1599_keeper #996 #fb994# n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M1600_ #521 inv__s #520 GND nmos W=0.0975U L=0.065U
M1601_ #524 I_af_530_6 n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M1602_keeper #998 #fb997# n__O0__f_530_6 Vdd pmos W=0.0975U L=0.065U
M1603_keeper #999 #fb997# n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M1604_ #525 inv__s #524 GND nmos W=0.0975U L=0.065U
M1605_ #528 inv__I__t_530_6 O1_at_530_6 Vdd pmos W=0.1625U L=0.065U
M1606_keeper #1001 #fb1000# O1_at_530_6 Vdd pmos W=0.0975U L=0.065U
M1607_keeper #1002 #fb1000# O1_at_530_6 GND nmos W=0.0975U L=0.065U
M1608_ #529 s #528 Vdd pmos W=0.1625U L=0.065U
M1609_ #532 inv__I__f_530_6 O1_af_530_6 Vdd pmos W=0.1625U L=0.065U
M1610_keeper #1004 #fb1003# O1_af_530_6 Vdd pmos W=0.0975U L=0.065U
M1611_keeper #1005 #fb1003# O1_af_530_6 GND nmos W=0.0975U L=0.065U
M1612_ #533 s #532 Vdd pmos W=0.1625U L=0.065U
M1613_ #536 I_at_531_6 n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M1614_keeper #1007 #fb1006# n__O0__t_531_6 Vdd pmos W=0.0975U L=0.065U
M1615_keeper #1008 #fb1006# n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M1616_ #537 inv__s #536 GND nmos W=0.0975U L=0.065U
M1617_ #540 I_af_531_6 n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M1618_keeper #1010 #fb1009# n__O0__f_531_6 Vdd pmos W=0.0975U L=0.065U
M1619_keeper #1011 #fb1009# n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M1620_ #541 inv__s #540 GND nmos W=0.0975U L=0.065U
M1621_ #544 inv__I__t_531_6 O1_at_531_6 Vdd pmos W=0.1625U L=0.065U
M1622_keeper #1013 #fb1012# O1_at_531_6 Vdd pmos W=0.0975U L=0.065U
M1623_keeper #1014 #fb1012# O1_at_531_6 GND nmos W=0.0975U L=0.065U
M1624_ #545 s #544 Vdd pmos W=0.1625U L=0.065U
M1625_ #548 inv__I__f_531_6 O1_af_531_6 Vdd pmos W=0.1625U L=0.065U
M1626_keeper #1016 #fb1015# O1_af_531_6 Vdd pmos W=0.0975U L=0.065U
M1627_keeper #1017 #fb1015# O1_af_531_6 GND nmos W=0.0975U L=0.065U
M1628_ #549 s #548 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: MltcSel<> -----
*
*---- act defproc: StopcodeSel<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a
*
.subckt StopcodeSel reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_at_54_6 O0_at_55_6 O0_at_56_6 O0_at_57_6 O0_at_58_6 O0_at_59_6 O0_at_510_6 O0_at_511_6 O0_at_512_6 O0_at_513_6 O0_at_514_6 O0_at_515_6 O0_at_516_6 O0_at_517_6 O0_at_518_6 O0_at_519_6 O0_at_520_6 O0_at_521_6 O0_at_522_6 O0_at_523_6 O0_at_524_6 O0_at_525_6 O0_at_526_6 O0_at_527_6 O0_at_528_6 O0_at_529_6 O0_at_530_6 O0_at_531_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O0_af_54_6 O0_af_55_6 O0_af_56_6 O0_af_57_6 O0_af_58_6 O0_af_59_6 O0_af_510_6 O0_af_511_6 O0_af_512_6 O0_af_513_6 O0_af_514_6 O0_af_515_6 O0_af_516_6 O0_af_517_6 O0_af_518_6 O0_af_519_6 O0_af_520_6 O0_af_521_6 O0_af_522_6 O0_af_523_6 O0_af_524_6 O0_af_525_6 O0_af_526_6 O0_af_527_6 O0_af_528_6 O0_af_529_6 O0_af_530_6 O0_af_531_6 O0_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_at_54_6 O1_at_55_6 O1_at_56_6 O1_at_57_6 O1_at_58_6 O1_at_59_6 O1_at_510_6 O1_at_511_6 O1_at_512_6 O1_at_513_6 O1_at_514_6 O1_at_515_6 O1_at_516_6 O1_at_517_6 O1_at_518_6 O1_at_519_6 O1_at_520_6 O1_at_521_6 O1_at_522_6 O1_at_523_6 O1_at_524_6 O1_at_525_6 O1_at_526_6 O1_at_527_6 O1_at_528_6 O1_at_529_6 O1_at_530_6 O1_at_531_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_af_54_6 O1_af_55_6 O1_af_56_6 O1_af_57_6 O1_af_58_6 O1_af_59_6 O1_af_510_6 O1_af_511_6 O1_af_512_6 O1_af_513_6 O1_af_514_6 O1_af_515_6 O1_af_516_6 O1_af_517_6 O1_af_518_6 O1_af_519_6 O1_af_520_6 O1_af_521_6 O1_af_522_6 O1_af_523_6 O1_af_524_6 O1_af_525_6 O1_af_526_6 O1_af_527_6 O1_af_528_6 O1_af_529_6 O1_af_530_6 O1_af_531_6 O1_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_at_54_6:O O0_at_55_6:O O0_at_56_6:O O0_at_57_6:O O0_at_58_6:O O0_at_59_6:O O0_at_510_6:O O0_at_511_6:O O0_at_512_6:O O0_at_513_6:O O0_at_514_6:O O0_at_515_6:O O0_at_516_6:O O0_at_517_6:O O0_at_518_6:O O0_at_519_6:O O0_at_520_6:O O0_at_521_6:O O0_at_522_6:O O0_at_523_6:O O0_at_524_6:O O0_at_525_6:O O0_at_526_6:O O0_at_527_6:O O0_at_528_6:O O0_at_529_6:O O0_at_530_6:O O0_at_531_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O0_af_54_6:O O0_af_55_6:O O0_af_56_6:O O0_af_57_6:O O0_af_58_6:O O0_af_59_6:O O0_af_510_6:O O0_af_511_6:O O0_af_512_6:O O0_af_513_6:O O0_af_514_6:O O0_af_515_6:O O0_af_516_6:O O0_af_517_6:O O0_af_518_6:O O0_af_519_6:O O0_af_520_6:O O0_af_521_6:O O0_af_522_6:O O0_af_523_6:O O0_af_524_6:O O0_af_525_6:O O0_af_526_6:O O0_af_527_6:O O0_af_528_6:O O0_af_529_6:O O0_af_530_6:O O0_af_531_6:O O0_aa:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_at_54_6:O O1_at_55_6:O O1_at_56_6:O O1_at_57_6:O O1_at_58_6:O O1_at_59_6:O O1_at_510_6:O O1_at_511_6:O O1_at_512_6:O O1_at_513_6:O O1_at_514_6:O O1_at_515_6:O O1_at_516_6:O O1_at_517_6:O O1_at_518_6:O O1_at_519_6:O O1_at_520_6:O O1_at_521_6:O O1_at_522_6:O O1_at_523_6:O O1_at_524_6:O O1_at_525_6:O O1_at_526_6:O O1_at_527_6:O O1_at_528_6:O O1_at_529_6:O O1_at_530_6:O O1_at_531_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O1_af_54_6:O O1_af_55_6:O O1_af_56_6:O O1_af_57_6:O O1_af_58_6:O O1_af_59_6:O O1_af_510_6:O O1_af_511_6:O O1_af_512_6:O O1_af_513_6:O O1_af_514_6:O O1_af_515_6:O O1_af_516_6:O O1_af_517_6:O O1_af_518_6:O O1_af_519_6:O O1_af_520_6:O O1_af_521_6:O O1_af_522_6:O O1_af_523_6:O O1_af_524_6:O O1_af_525_6:O O1_af_526_6:O O1_af_527_6:O O1_af_528_6:O O1_af_529_6:O O1_af_530_6:O O1_af_531_6:O O1_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __c_50_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_51_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_52_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_53_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_54_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_55_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_56_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __c_57_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* d_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* c (state-holding): pup_reff=0.8; pdn_reff=1.33333
* f (state-holding): pup_reff=0.8; pdn_reff=0.666667
* inv__w__0i (combinational)
* __g_53_6 (state-holding): pup_reff=4; pdn_reff=3.33333
* __g_52_6 (state-holding): pup_reff=4; pdn_reff=3.33333
* __g_51_6 (state-holding): pup_reff=4; pdn_reff=3.33333
* __g_50_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* h_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* h_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __z (state-holding): pup_reff=0.8; pdn_reff=1.33333
* u_53_6 (state-holding): pup_reff=0.4; pdn_reff=6.66667
* inv__I__f_531_6 (combinational)
* inv__I__t_530_6 (combinational)
* inv__I__t_529_6 (combinational)
* inv__I__t_528_6 (combinational)
* inv__I__t_527_6 (combinational)
* inv__I__t_531_6 (combinational)
* inv__I__f_530_6 (combinational)
* inv__I__f_529_6 (combinational)
* inv__I__f_528_6 (combinational)
* inv__I__f_527_6 (combinational)
* u_52_6 (state-holding): pup_reff=0.4; pdn_reff=6.66667
* inv__I__t_526_6 (combinational)
* inv__I__t_525_6 (combinational)
* inv__I__t_524_6 (combinational)
* inv__I__t_523_6 (combinational)
* inv__I__t_522_6 (combinational)
* inv__I__f_526_6 (combinational)
* inv__I__f_525_6 (combinational)
* inv__I__f_524_6 (combinational)
* inv__I__f_523_6 (combinational)
* inv__I__f_522_6 (combinational)
* u_51_6 (state-holding): pup_reff=0.4; pdn_reff=6.66667
* inv__I__t_521_6 (combinational)
* inv__I__t_520_6 (combinational)
* inv__I__t_519_6 (combinational)
* inv__I__t_518_6 (combinational)
* inv__I__t_517_6 (combinational)
* inv__I__f_521_6 (combinational)
* inv__I__f_520_6 (combinational)
* inv__I__f_519_6 (combinational)
* inv__I__f_518_6 (combinational)
* inv__I__f_517_6 (combinational)
* u_50_6 (state-holding): pup_reff=0.4; pdn_reff=5.33333
* inv__I__t_516_6 (combinational)
* inv__I__t_515_6 (combinational)
* inv__I__t_514_6 (combinational)
* inv__I__t_513_6 (combinational)
* inv__I__f_516_6 (combinational)
* inv__I__f_515_6 (combinational)
* inv__I__f_514_6 (combinational)
* inv__I__f_513_6 (combinational)
* __x_50_6 (combinational)
* __x_51_6 (combinational)
* y (combinational)
* p (state-holding): pup_reff=1.2; pdn_reff=2
* w__0i (state-holding): pup_reff=1.2; pdn_reff=1.33333
* inv__s (combinational)
* inv__reset (combinational)
* s (state-holding): pup_reff=1.6; pdn_reff=2.66667
* inv__p (combinational)
* n__w__0 (state-holding): pup_reff=1.6; pdn_reff=1.33333
* n__I__a (state-holding): pup_reff=0.8; pdn_reff=2.66667
* n__w__1 (state-holding): pup_reff=1.6; pdn_reff=1.33333
* n__v (state-holding): pup_reff=1.6; pdn_reff=2.66667
* w__1 (combinational)
* w__0 (combinational)
* inv__f (combinational)
* v (combinational)
* n__O0__t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_50_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_50_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_50_6 (combinational)
* O1_af_50_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_50_6 (combinational)
* n__O0__t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_51_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_51_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_51_6 (combinational)
* O1_af_51_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_51_6 (combinational)
* n__O0__t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_52_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_52_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_52_6 (combinational)
* O1_af_52_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_52_6 (combinational)
* n__O0__t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_53_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_53_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_53_6 (combinational)
* O1_af_53_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_53_6 (combinational)
* n__O0__t_54_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_54_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_54_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_54_6 (combinational)
* O1_af_54_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_54_6 (combinational)
* n__O0__t_55_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_55_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_55_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_55_6 (combinational)
* O1_af_55_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_55_6 (combinational)
* n__O0__t_56_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_56_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_56_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_56_6 (combinational)
* O1_af_56_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_56_6 (combinational)
* n__O0__t_57_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_57_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_57_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_57_6 (combinational)
* O1_af_57_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_57_6 (combinational)
* n__O0__t_58_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_58_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_58_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_58_6 (combinational)
* O1_af_58_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_58_6 (combinational)
* n__O0__t_59_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_59_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_59_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_59_6 (combinational)
* O1_af_59_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_59_6 (combinational)
* n__O0__t_510_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_510_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_510_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_510_6 (combinational)
* O1_af_510_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_510_6 (combinational)
* n__O0__t_511_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_511_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_511_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_511_6 (combinational)
* O1_af_511_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_511_6 (combinational)
* n__O0__t_512_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_512_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_512_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__t_512_6 (combinational)
* O1_af_512_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__I__f_512_6 (combinational)
* n__O0__t_513_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_513_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_513_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_513_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_514_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_514_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_514_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_514_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_515_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_515_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_515_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_515_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_516_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_516_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_516_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_516_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_517_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_517_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_517_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_517_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_518_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_518_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_518_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_518_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_519_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_519_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_519_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_519_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_520_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_520_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_520_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_520_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_521_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_521_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_521_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_521_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_522_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_522_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_522_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_522_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_523_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_523_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_523_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_523_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_524_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_524_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_524_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_524_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_525_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_525_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_525_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_525_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_526_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_526_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_526_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_526_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_527_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_527_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_527_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_527_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_528_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_528_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_528_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_528_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_529_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_529_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_529_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_529_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_530_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_530_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_530_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_530_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* n__O0__t_531_6 (state-holding): pup_reff=0.4; pdn_reff=2
* n__O0__f_531_6 (state-holding): pup_reff=0.4; pdn_reff=2
* O1_at_531_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* O1_af_531_6 (state-holding): pup_reff=1.2; pdn_reff=0.666667
* inv__O0__a (combinational)
* inv__O1__a (combinational)
* I_aa (combinational)
* O0_at_50_6 (combinational)
* O0_af_50_6 (combinational)
* O0_at_51_6 (combinational)
* O0_af_51_6 (combinational)
* O0_at_52_6 (combinational)
* O0_af_52_6 (combinational)
* O0_at_53_6 (combinational)
* O0_af_53_6 (combinational)
* O0_at_54_6 (combinational)
* O0_af_54_6 (combinational)
* O0_at_55_6 (combinational)
* O0_af_55_6 (combinational)
* O0_at_56_6 (combinational)
* O0_af_56_6 (combinational)
* O0_at_57_6 (combinational)
* O0_af_57_6 (combinational)
* O0_at_58_6 (combinational)
* O0_af_58_6 (combinational)
* O0_at_59_6 (combinational)
* O0_af_59_6 (combinational)
* O0_at_510_6 (combinational)
* O0_af_510_6 (combinational)
* O0_at_511_6 (combinational)
* O0_af_511_6 (combinational)
* O0_at_512_6 (combinational)
* O0_af_512_6 (combinational)
* O0_at_513_6 (combinational)
* O0_af_513_6 (combinational)
* O0_at_514_6 (combinational)
* O0_af_514_6 (combinational)
* O0_at_515_6 (combinational)
* O0_af_515_6 (combinational)
* O0_at_516_6 (combinational)
* O0_af_516_6 (combinational)
* O0_at_517_6 (combinational)
* O0_af_517_6 (combinational)
* O0_at_518_6 (combinational)
* O0_af_518_6 (combinational)
* O0_at_519_6 (combinational)
* O0_af_519_6 (combinational)
* O0_at_520_6 (combinational)
* O0_af_520_6 (combinational)
* O0_at_521_6 (combinational)
* O0_af_521_6 (combinational)
* O0_at_522_6 (combinational)
* O0_af_522_6 (combinational)
* O0_at_523_6 (combinational)
* O0_af_523_6 (combinational)
* O0_at_524_6 (combinational)
* O0_af_524_6 (combinational)
* O0_at_525_6 (combinational)
* O0_af_525_6 (combinational)
* O0_at_526_6 (combinational)
* O0_af_526_6 (combinational)
* O0_at_527_6 (combinational)
* O0_af_527_6 (combinational)
* O0_at_528_6 (combinational)
* O0_af_528_6 (combinational)
* O0_at_529_6 (combinational)
* O0_af_529_6 (combinational)
* O0_at_530_6 (combinational)
* O0_af_530_6 (combinational)
* O0_at_531_6 (combinational)
* O0_af_531_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd I_at_53_6 #17 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd I_at_57_6 #36 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd I_at_511_6 #55 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I_at_515_6 #74 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I_at_519_6 #93 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I_at_523_6 #112 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd I_at_527_6 #131 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd I_at_531_6 #150 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __c_51_6 #155 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __c_53_6 #158 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __c_55_6 #161 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __c_57_6 #164 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd d_51_6 #168 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd d_53_6 #171 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __e_51_6 #173 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd inv__w__0i #176 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd I_at_531_6 #188 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I_at_526_6 #202 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd I_at_521_6 #216 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd I_at_516_6 #228 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd __g_51_6 #233 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd __g_53_6 #236 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd h_51_6 #240 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd inv__I__f_531_6 u_53_6 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd inv__I__t_530_6 u_53_6 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd inv__I__t_529_6 u_53_6 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd inv__I__t_528_6 u_53_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd inv__I__t_527_6 u_53_6 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd inv__I__t_526_6 u_52_6 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd inv__I__t_525_6 u_52_6 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd inv__I__t_524_6 u_52_6 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd inv__I__t_523_6 u_52_6 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd inv__I__t_522_6 u_52_6 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd inv__I__t_521_6 u_51_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd inv__I__t_520_6 u_51_6 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd inv__I__t_519_6 u_51_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd inv__I__t_518_6 u_51_6 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd inv__I__t_517_6 u_51_6 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd inv__I__t_516_6 u_50_6 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd inv__I__t_515_6 u_50_6 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd inv__I__t_514_6 u_50_6 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd inv__I__t_513_6 u_50_6 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd u_51_6 #318 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd u_53_6 #320 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd __x_51_6 y Vdd pmos W=0.1625U L=0.065U
M45_ Vdd __x_50_6 y Vdd pmos W=0.1625U L=0.065U
M46_ Vdd w__0i #325 Vdd pmos W=1.3U L=0.065U
M47_ Vdd inv__reset p Vdd pmos W=1.3U L=0.065U
M48_ Vdd inv__s #332 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd s #342 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd inv__reset n__w__0 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd inv__s #348 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd inv__reset n__w__1 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd n__w__1 #351 Vdd pmos W=1.3U L=0.065U
M54_ Vdd inv__reset s Vdd pmos W=1.3U L=0.065U
M55_ Vdd O0_aa #364 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd inv__reset n__v Vdd pmos W=0.1625U L=0.065U
M57_ Vdd w__0i #371 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd inv__s #372 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd inv__reset n__I__a Vdd pmos W=0.1625U L=0.065U
M60_ Vdd I_at_50_6 n__O0__t_50_6 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd I_af_50_6 n__O0__f_50_6 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd p #381 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd p #385 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd I_at_51_6 n__O0__t_51_6 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd I_af_51_6 n__O0__f_51_6 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd p #395 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd p #399 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd I_at_52_6 n__O0__t_52_6 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd I_af_52_6 n__O0__f_52_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd p #409 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd p #413 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd I_at_53_6 n__O0__t_53_6 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd I_af_53_6 n__O0__f_53_6 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd p #423 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd p #427 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd I_at_54_6 n__O0__t_54_6 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd I_af_54_6 n__O0__f_54_6 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd p #437 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd p #441 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd I_at_55_6 n__O0__t_55_6 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd I_af_55_6 n__O0__f_55_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd p #451 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd p #455 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd I_at_56_6 n__O0__t_56_6 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd I_af_56_6 n__O0__f_56_6 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd p #465 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd p #469 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd I_at_57_6 n__O0__t_57_6 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd I_af_57_6 n__O0__f_57_6 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd p #479 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd p #483 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd I_at_58_6 n__O0__t_58_6 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd I_af_58_6 n__O0__f_58_6 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd p #493 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd p #497 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd I_at_59_6 n__O0__t_59_6 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd I_af_59_6 n__O0__f_59_6 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd p #507 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd p #511 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd I_at_510_6 n__O0__t_510_6 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd I_af_510_6 n__O0__f_510_6 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd p #521 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd p #525 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd I_at_511_6 n__O0__t_511_6 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd I_af_511_6 n__O0__f_511_6 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd p #535 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd p #539 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd I_at_512_6 n__O0__t_512_6 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd I_af_512_6 n__O0__f_512_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd p #549 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd p #553 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd I_at_513_6 n__O0__t_513_6 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd I_af_513_6 n__O0__f_513_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd p #563 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd p #566 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd I_at_514_6 n__O0__t_514_6 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd I_af_514_6 n__O0__f_514_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd p #575 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd p #578 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd I_at_515_6 n__O0__t_515_6 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd I_af_515_6 n__O0__f_515_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd p #587 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd p #590 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd I_at_516_6 n__O0__t_516_6 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd I_af_516_6 n__O0__f_516_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd p #599 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd p #602 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd I_at_517_6 n__O0__t_517_6 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd I_af_517_6 n__O0__f_517_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd p #611 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd p #614 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd I_at_518_6 n__O0__t_518_6 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd I_af_518_6 n__O0__f_518_6 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd p #623 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd p #626 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd I_at_519_6 n__O0__t_519_6 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd I_af_519_6 n__O0__f_519_6 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd p #635 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd p #638 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd I_at_520_6 n__O0__t_520_6 Vdd pmos W=0.1625U L=0.065U
M141_ Vdd I_af_520_6 n__O0__f_520_6 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd p #647 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd p #650 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd I_at_521_6 n__O0__t_521_6 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd I_af_521_6 n__O0__f_521_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd p #659 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd p #662 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd I_at_522_6 n__O0__t_522_6 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd I_af_522_6 n__O0__f_522_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd p #671 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd p #674 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd I_at_523_6 n__O0__t_523_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd I_af_523_6 n__O0__f_523_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd p #683 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd p #686 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd I_at_524_6 n__O0__t_524_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd I_af_524_6 n__O0__f_524_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd p #695 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd p #698 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd I_at_525_6 n__O0__t_525_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd I_af_525_6 n__O0__f_525_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd p #707 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd p #710 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd I_at_526_6 n__O0__t_526_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd I_af_526_6 n__O0__f_526_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd p #719 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd p #722 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd I_at_527_6 n__O0__t_527_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd I_af_527_6 n__O0__f_527_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd p #731 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd p #734 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd I_at_528_6 n__O0__t_528_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd I_af_528_6 n__O0__f_528_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd p #743 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd p #746 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd I_at_529_6 n__O0__t_529_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd I_af_529_6 n__O0__f_529_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd p #755 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd p #758 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd I_at_530_6 n__O0__t_530_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd I_af_530_6 n__O0__f_530_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd p #767 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd p #770 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd I_at_531_6 n__O0__t_531_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd I_af_531_6 n__O0__f_531_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd p #779 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd p #782 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd w__0i inv__w__0i Vdd pmos W=0.1625U L=0.065U
M189_ Vdd s inv__s Vdd pmos W=1.3U L=0.065U
M190_ Vdd reset inv__reset Vdd pmos W=0.1625U L=0.065U
M191_ Vdd p inv__p Vdd pmos W=0.1625U L=0.065U
M192_ Vdd O0_aa inv__O0__a Vdd pmos W=0.1625U L=0.065U
M193_ Vdd O1_aa inv__O1__a Vdd pmos W=0.1625U L=0.065U
M194_ Vdd n__w__0 w__0 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd n__w__1 w__1 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd n__v v Vdd pmos W=0.1625U L=0.065U
M197_ Vdd f inv__f Vdd pmos W=0.1625U L=0.065U
M198_ Vdd I_at_50_6 inv__I__t_50_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd I_af_50_6 inv__I__f_50_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd I_at_51_6 inv__I__t_51_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd I_af_51_6 inv__I__f_51_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd I_at_52_6 inv__I__t_52_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd I_af_52_6 inv__I__f_52_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd I_at_53_6 inv__I__t_53_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd I_af_53_6 inv__I__f_53_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd I_at_54_6 inv__I__t_54_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd I_af_54_6 inv__I__f_54_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd I_at_55_6 inv__I__t_55_6 Vdd pmos W=0.1625U L=0.065U
M209_ Vdd I_af_55_6 inv__I__f_55_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd I_at_56_6 inv__I__t_56_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd I_af_56_6 inv__I__f_56_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd I_at_57_6 inv__I__t_57_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd I_af_57_6 inv__I__f_57_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd I_at_58_6 inv__I__t_58_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd I_af_58_6 inv__I__f_58_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd I_at_59_6 inv__I__t_59_6 Vdd pmos W=0.1625U L=0.065U
M217_ Vdd I_af_59_6 inv__I__f_59_6 Vdd pmos W=0.1625U L=0.065U
M218_ Vdd I_at_510_6 inv__I__t_510_6 Vdd pmos W=0.1625U L=0.065U
M219_ Vdd I_af_510_6 inv__I__f_510_6 Vdd pmos W=0.1625U L=0.065U
M220_ Vdd I_at_511_6 inv__I__t_511_6 Vdd pmos W=0.1625U L=0.065U
M221_ Vdd I_af_511_6 inv__I__f_511_6 Vdd pmos W=0.1625U L=0.065U
M222_ Vdd I_at_512_6 inv__I__t_512_6 Vdd pmos W=0.1625U L=0.065U
M223_ Vdd I_af_512_6 inv__I__f_512_6 Vdd pmos W=0.1625U L=0.065U
M224_ Vdd I_at_513_6 inv__I__t_513_6 Vdd pmos W=0.1625U L=0.065U
M225_ Vdd I_af_513_6 inv__I__f_513_6 Vdd pmos W=0.1625U L=0.065U
M226_ Vdd I_at_514_6 inv__I__t_514_6 Vdd pmos W=0.1625U L=0.065U
M227_ Vdd I_af_514_6 inv__I__f_514_6 Vdd pmos W=0.1625U L=0.065U
M228_ Vdd I_at_515_6 inv__I__t_515_6 Vdd pmos W=0.1625U L=0.065U
M229_ Vdd I_af_515_6 inv__I__f_515_6 Vdd pmos W=0.1625U L=0.065U
M230_ Vdd I_at_516_6 inv__I__t_516_6 Vdd pmos W=0.1625U L=0.065U
M231_ Vdd I_af_516_6 inv__I__f_516_6 Vdd pmos W=0.1625U L=0.065U
M232_ Vdd I_at_517_6 inv__I__t_517_6 Vdd pmos W=0.1625U L=0.065U
M233_ Vdd I_af_517_6 inv__I__f_517_6 Vdd pmos W=0.1625U L=0.065U
M234_ Vdd I_at_518_6 inv__I__t_518_6 Vdd pmos W=0.1625U L=0.065U
M235_ Vdd I_af_518_6 inv__I__f_518_6 Vdd pmos W=0.1625U L=0.065U
M236_ Vdd I_at_519_6 inv__I__t_519_6 Vdd pmos W=0.1625U L=0.065U
M237_ Vdd I_af_519_6 inv__I__f_519_6 Vdd pmos W=0.1625U L=0.065U
M238_ Vdd I_at_520_6 inv__I__t_520_6 Vdd pmos W=0.1625U L=0.065U
M239_ Vdd I_af_520_6 inv__I__f_520_6 Vdd pmos W=0.1625U L=0.065U
M240_ Vdd I_at_521_6 inv__I__t_521_6 Vdd pmos W=0.1625U L=0.065U
M241_ Vdd I_af_521_6 inv__I__f_521_6 Vdd pmos W=0.1625U L=0.065U
M242_ Vdd I_at_522_6 inv__I__t_522_6 Vdd pmos W=0.1625U L=0.065U
M243_ Vdd I_af_522_6 inv__I__f_522_6 Vdd pmos W=0.1625U L=0.065U
M244_ Vdd I_at_523_6 inv__I__t_523_6 Vdd pmos W=0.1625U L=0.065U
M245_ Vdd I_af_523_6 inv__I__f_523_6 Vdd pmos W=0.1625U L=0.065U
M246_ Vdd I_at_524_6 inv__I__t_524_6 Vdd pmos W=0.1625U L=0.065U
M247_ Vdd I_af_524_6 inv__I__f_524_6 Vdd pmos W=0.1625U L=0.065U
M248_ Vdd I_at_525_6 inv__I__t_525_6 Vdd pmos W=0.1625U L=0.065U
M249_ Vdd I_af_525_6 inv__I__f_525_6 Vdd pmos W=0.1625U L=0.065U
M250_ Vdd I_at_526_6 inv__I__t_526_6 Vdd pmos W=0.1625U L=0.065U
M251_ Vdd I_af_526_6 inv__I__f_526_6 Vdd pmos W=0.1625U L=0.065U
M252_ Vdd I_at_527_6 inv__I__t_527_6 Vdd pmos W=0.1625U L=0.065U
M253_ Vdd I_af_527_6 inv__I__f_527_6 Vdd pmos W=0.1625U L=0.065U
M254_ Vdd I_at_528_6 inv__I__t_528_6 Vdd pmos W=0.1625U L=0.065U
M255_ Vdd I_af_528_6 inv__I__f_528_6 Vdd pmos W=0.1625U L=0.065U
M256_ Vdd I_at_529_6 inv__I__t_529_6 Vdd pmos W=0.1625U L=0.065U
M257_ Vdd I_af_529_6 inv__I__f_529_6 Vdd pmos W=0.1625U L=0.065U
M258_ Vdd I_at_530_6 inv__I__t_530_6 Vdd pmos W=0.1625U L=0.065U
M259_ Vdd I_af_530_6 inv__I__f_530_6 Vdd pmos W=0.1625U L=0.065U
M260_ Vdd I_at_531_6 inv__I__t_531_6 Vdd pmos W=0.1625U L=0.065U
M261_ Vdd I_af_531_6 inv__I__f_531_6 Vdd pmos W=0.1625U L=0.065U
M262_ Vdd n__I__a I_aa Vdd pmos W=0.1625U L=0.065U
M263_ Vdd n__O0__t_50_6 O0_at_50_6 Vdd pmos W=0.1625U L=0.065U
M264_ Vdd n__O0__f_50_6 O0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M265_ Vdd n__O0__t_51_6 O0_at_51_6 Vdd pmos W=0.1625U L=0.065U
M266_ Vdd n__O0__f_51_6 O0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M267_ Vdd n__O0__t_52_6 O0_at_52_6 Vdd pmos W=0.1625U L=0.065U
M268_ Vdd n__O0__f_52_6 O0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M269_ Vdd n__O0__t_53_6 O0_at_53_6 Vdd pmos W=0.1625U L=0.065U
M270_ Vdd n__O0__f_53_6 O0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M271_ Vdd n__O0__t_54_6 O0_at_54_6 Vdd pmos W=0.1625U L=0.065U
M272_ Vdd n__O0__f_54_6 O0_af_54_6 Vdd pmos W=0.1625U L=0.065U
M273_ Vdd n__O0__t_55_6 O0_at_55_6 Vdd pmos W=0.1625U L=0.065U
M274_ Vdd n__O0__f_55_6 O0_af_55_6 Vdd pmos W=0.1625U L=0.065U
M275_ Vdd n__O0__t_56_6 O0_at_56_6 Vdd pmos W=0.1625U L=0.065U
M276_ Vdd n__O0__f_56_6 O0_af_56_6 Vdd pmos W=0.1625U L=0.065U
M277_ Vdd n__O0__t_57_6 O0_at_57_6 Vdd pmos W=0.1625U L=0.065U
M278_ Vdd n__O0__f_57_6 O0_af_57_6 Vdd pmos W=0.1625U L=0.065U
M279_ Vdd n__O0__t_58_6 O0_at_58_6 Vdd pmos W=0.1625U L=0.065U
M280_ Vdd n__O0__f_58_6 O0_af_58_6 Vdd pmos W=0.1625U L=0.065U
M281_ Vdd n__O0__t_59_6 O0_at_59_6 Vdd pmos W=0.1625U L=0.065U
M282_ Vdd n__O0__f_59_6 O0_af_59_6 Vdd pmos W=0.1625U L=0.065U
M283_ Vdd n__O0__t_510_6 O0_at_510_6 Vdd pmos W=0.1625U L=0.065U
M284_ Vdd n__O0__f_510_6 O0_af_510_6 Vdd pmos W=0.1625U L=0.065U
M285_ Vdd n__O0__t_511_6 O0_at_511_6 Vdd pmos W=0.1625U L=0.065U
M286_ Vdd n__O0__f_511_6 O0_af_511_6 Vdd pmos W=0.1625U L=0.065U
M287_ Vdd n__O0__t_512_6 O0_at_512_6 Vdd pmos W=0.1625U L=0.065U
M288_ Vdd n__O0__f_512_6 O0_af_512_6 Vdd pmos W=0.1625U L=0.065U
M289_ Vdd n__O0__t_513_6 O0_at_513_6 Vdd pmos W=0.1625U L=0.065U
M290_ Vdd n__O0__f_513_6 O0_af_513_6 Vdd pmos W=0.1625U L=0.065U
M291_ Vdd n__O0__t_514_6 O0_at_514_6 Vdd pmos W=0.1625U L=0.065U
M292_ Vdd n__O0__f_514_6 O0_af_514_6 Vdd pmos W=0.1625U L=0.065U
M293_ Vdd n__O0__t_515_6 O0_at_515_6 Vdd pmos W=0.1625U L=0.065U
M294_ Vdd n__O0__f_515_6 O0_af_515_6 Vdd pmos W=0.1625U L=0.065U
M295_ Vdd n__O0__t_516_6 O0_at_516_6 Vdd pmos W=0.1625U L=0.065U
M296_ Vdd n__O0__f_516_6 O0_af_516_6 Vdd pmos W=0.1625U L=0.065U
M297_ Vdd n__O0__t_517_6 O0_at_517_6 Vdd pmos W=0.1625U L=0.065U
M298_ Vdd n__O0__f_517_6 O0_af_517_6 Vdd pmos W=0.1625U L=0.065U
M299_ Vdd n__O0__t_518_6 O0_at_518_6 Vdd pmos W=0.1625U L=0.065U
M300_ Vdd n__O0__f_518_6 O0_af_518_6 Vdd pmos W=0.1625U L=0.065U
M301_ Vdd n__O0__t_519_6 O0_at_519_6 Vdd pmos W=0.1625U L=0.065U
M302_ Vdd n__O0__f_519_6 O0_af_519_6 Vdd pmos W=0.1625U L=0.065U
M303_ Vdd n__O0__t_520_6 O0_at_520_6 Vdd pmos W=0.1625U L=0.065U
M304_ Vdd n__O0__f_520_6 O0_af_520_6 Vdd pmos W=0.1625U L=0.065U
M305_ Vdd n__O0__t_521_6 O0_at_521_6 Vdd pmos W=0.1625U L=0.065U
M306_ Vdd n__O0__f_521_6 O0_af_521_6 Vdd pmos W=0.1625U L=0.065U
M307_ Vdd n__O0__t_522_6 O0_at_522_6 Vdd pmos W=0.1625U L=0.065U
M308_ Vdd n__O0__f_522_6 O0_af_522_6 Vdd pmos W=0.1625U L=0.065U
M309_ Vdd n__O0__t_523_6 O0_at_523_6 Vdd pmos W=0.1625U L=0.065U
M310_ Vdd n__O0__f_523_6 O0_af_523_6 Vdd pmos W=0.1625U L=0.065U
M311_ Vdd n__O0__t_524_6 O0_at_524_6 Vdd pmos W=0.1625U L=0.065U
M312_ Vdd n__O0__f_524_6 O0_af_524_6 Vdd pmos W=0.1625U L=0.065U
M313_ Vdd n__O0__t_525_6 O0_at_525_6 Vdd pmos W=0.1625U L=0.065U
M314_ Vdd n__O0__f_525_6 O0_af_525_6 Vdd pmos W=0.1625U L=0.065U
M315_ Vdd n__O0__t_526_6 O0_at_526_6 Vdd pmos W=0.1625U L=0.065U
M316_ Vdd n__O0__f_526_6 O0_af_526_6 Vdd pmos W=0.1625U L=0.065U
M317_ Vdd n__O0__t_527_6 O0_at_527_6 Vdd pmos W=0.1625U L=0.065U
M318_ Vdd n__O0__f_527_6 O0_af_527_6 Vdd pmos W=0.1625U L=0.065U
M319_ Vdd n__O0__t_528_6 O0_at_528_6 Vdd pmos W=0.1625U L=0.065U
M320_ Vdd n__O0__f_528_6 O0_af_528_6 Vdd pmos W=0.1625U L=0.065U
M321_ Vdd n__O0__t_529_6 O0_at_529_6 Vdd pmos W=0.1625U L=0.065U
M322_ Vdd n__O0__f_529_6 O0_af_529_6 Vdd pmos W=0.1625U L=0.065U
M323_ Vdd n__O0__t_530_6 O0_at_530_6 Vdd pmos W=0.1625U L=0.065U
M324_ Vdd n__O0__f_530_6 O0_af_530_6 Vdd pmos W=0.1625U L=0.065U
M325_ Vdd n__O0__t_531_6 O0_at_531_6 Vdd pmos W=0.1625U L=0.065U
M326_ Vdd n__O0__f_531_6 O0_af_531_6 Vdd pmos W=0.1625U L=0.065U
M327_ Vdd __c_50_6 #fb850# Vdd pmos W=0.1625U L=0.13U
M328_ Vdd __c_51_6 #fb853# Vdd pmos W=0.1625U L=0.13U
M329_keeper Vdd GND #851 Vdd pmos W=0.0975U L=1.235U
M330_ Vdd __c_52_6 #fb856# Vdd pmos W=0.1625U L=0.13U
M331_keeper Vdd GND #854 Vdd pmos W=0.0975U L=1.235U
M332_ Vdd __c_53_6 #fb859# Vdd pmos W=0.1625U L=0.13U
M333_keeper Vdd GND #857 Vdd pmos W=0.0975U L=1.235U
M334_ Vdd __c_54_6 #fb862# Vdd pmos W=0.1625U L=0.13U
M335_keeper Vdd GND #860 Vdd pmos W=0.0975U L=1.235U
M336_ Vdd __c_55_6 #fb865# Vdd pmos W=0.1625U L=0.13U
M337_keeper Vdd GND #863 Vdd pmos W=0.0975U L=1.235U
M338_ Vdd __c_56_6 #fb868# Vdd pmos W=0.1625U L=0.13U
M339_keeper Vdd GND #866 Vdd pmos W=0.0975U L=1.235U
M340_ Vdd __c_57_6 #fb871# Vdd pmos W=0.1625U L=0.13U
M341_keeper Vdd GND #869 Vdd pmos W=0.0975U L=1.235U
M342_ Vdd d_50_6 #fb874# Vdd pmos W=0.1625U L=0.13U
M343_keeper Vdd GND #872 Vdd pmos W=0.0975U L=1.235U
M344_ Vdd d_51_6 #fb877# Vdd pmos W=0.1625U L=0.13U
M345_keeper Vdd GND #875 Vdd pmos W=0.0975U L=0.585U
M346_ Vdd d_52_6 #fb880# Vdd pmos W=0.1625U L=0.13U
M347_keeper Vdd GND #878 Vdd pmos W=0.0975U L=0.585U
M348_ Vdd d_53_6 #fb883# Vdd pmos W=0.1625U L=0.13U
M349_keeper Vdd GND #881 Vdd pmos W=0.0975U L=0.585U
M350_ Vdd __e_50_6 #fb886# Vdd pmos W=0.1625U L=0.13U
M351_keeper Vdd GND #884 Vdd pmos W=0.0975U L=0.585U
M352_ Vdd __e_51_6 #fb889# Vdd pmos W=0.1625U L=0.13U
M353_keeper Vdd GND #887 Vdd pmos W=0.0975U L=0.585U
M354_ Vdd c #fb892# Vdd pmos W=0.1625U L=0.13U
M355_keeper Vdd GND #890 Vdd pmos W=0.0975U L=0.585U
M356_ Vdd f #fb895# Vdd pmos W=0.1625U L=0.13U
M357_keeper Vdd GND #893 Vdd pmos W=0.0975U L=0.585U
M358_ Vdd __g_53_6 #fb898# Vdd pmos W=0.1625U L=0.13U
M359_keeper Vdd GND #896 Vdd pmos W=0.0975U L=0.26U
M360_ Vdd __g_52_6 #fb901# Vdd pmos W=0.1625U L=0.13U
M361_keeper Vdd GND #899 Vdd pmos W=0.0975U L=1.56U
M362_ Vdd __g_51_6 #fb904# Vdd pmos W=0.1625U L=0.13U
M363_keeper Vdd GND #902 Vdd pmos W=0.0975U L=1.56U
M364_ Vdd __g_50_6 #fb907# Vdd pmos W=0.1625U L=0.13U
M365_keeper Vdd GND #905 Vdd pmos W=0.0975U L=1.56U
M366_ Vdd h_50_6 #fb910# Vdd pmos W=0.1625U L=0.13U
M367_keeper Vdd GND #908 Vdd pmos W=0.0975U L=1.235U
M368_ Vdd h_51_6 #fb913# Vdd pmos W=0.1625U L=0.13U
M369_keeper Vdd GND #911 Vdd pmos W=0.0975U L=0.585U
M370_ Vdd __z #fb916# Vdd pmos W=0.1625U L=0.13U
M371_keeper Vdd GND #914 Vdd pmos W=0.0975U L=0.585U
M372_ Vdd u_53_6 #fb919# Vdd pmos W=0.1625U L=0.13U
M373_keeper Vdd GND #917 Vdd pmos W=0.0975U L=0.585U
M374_ Vdd u_52_6 #fb922# Vdd pmos W=0.1625U L=0.13U
M375_keeper Vdd GND #920 Vdd pmos W=0.0975U L=3.185U
M376_ Vdd u_51_6 #fb925# Vdd pmos W=0.1625U L=0.13U
M377_keeper Vdd GND #923 Vdd pmos W=0.0975U L=3.185U
M378_ Vdd u_50_6 #fb928# Vdd pmos W=0.1625U L=0.13U
M379_keeper Vdd GND #926 Vdd pmos W=0.0975U L=3.185U
M380_ Vdd p #fb931# Vdd pmos W=0.1625U L=0.13U
M381_keeper Vdd GND #929 Vdd pmos W=0.0975U L=2.535U
M382_ Vdd w__0i #fb934# Vdd pmos W=0.1625U L=0.13U
M383_keeper Vdd GND #932 Vdd pmos W=0.0975U L=0.91U
M384_ Vdd s #fb937# Vdd pmos W=0.1625U L=0.13U
M385_keeper Vdd GND #935 Vdd pmos W=0.0975U L=0.585U
M386_ Vdd n__w__0 #fb940# Vdd pmos W=0.1625U L=0.13U
M387_keeper Vdd GND #938 Vdd pmos W=0.0975U L=1.235U
M388_ Vdd n__I__a #fb943# Vdd pmos W=0.1625U L=0.13U
M389_keeper Vdd GND #941 Vdd pmos W=0.0975U L=0.585U
M390_ Vdd n__w__1 #fb946# Vdd pmos W=0.1625U L=0.13U
M391_keeper Vdd GND #944 Vdd pmos W=0.0975U L=1.235U
M392_ Vdd n__v #fb949# Vdd pmos W=0.1625U L=0.13U
M393_keeper Vdd GND #947 Vdd pmos W=0.0975U L=0.585U
M394_ Vdd n__O0__t_50_6 #fb952# Vdd pmos W=0.1625U L=0.13U
M395_keeper Vdd GND #950 Vdd pmos W=0.0975U L=1.235U
M396_ Vdd n__O0__f_50_6 #fb955# Vdd pmos W=0.1625U L=0.13U
M397_keeper Vdd GND #953 Vdd pmos W=0.0975U L=0.91U
M398_ Vdd O1_at_50_6 #fb958# Vdd pmos W=0.1625U L=0.13U
M399_keeper Vdd GND #956 Vdd pmos W=0.0975U L=0.91U
M400_ Vdd O1_af_50_6 #fb961# Vdd pmos W=0.1625U L=0.13U
M401_keeper Vdd GND #959 Vdd pmos W=0.0975U L=0.26U
M402_ Vdd n__O0__t_51_6 #fb964# Vdd pmos W=0.1625U L=0.13U
M403_keeper Vdd GND #962 Vdd pmos W=0.0975U L=0.26U
M404_ Vdd n__O0__f_51_6 #fb967# Vdd pmos W=0.1625U L=0.13U
M405_keeper Vdd GND #965 Vdd pmos W=0.0975U L=0.91U
M406_ Vdd O1_at_51_6 #fb970# Vdd pmos W=0.1625U L=0.13U
M407_keeper Vdd GND #968 Vdd pmos W=0.0975U L=0.91U
M408_ Vdd O1_af_51_6 #fb973# Vdd pmos W=0.1625U L=0.13U
M409_keeper Vdd GND #971 Vdd pmos W=0.0975U L=0.26U
M410_ Vdd n__O0__t_52_6 #fb976# Vdd pmos W=0.1625U L=0.13U
M411_keeper Vdd GND #974 Vdd pmos W=0.0975U L=0.26U
M412_ Vdd n__O0__f_52_6 #fb979# Vdd pmos W=0.1625U L=0.13U
M413_keeper Vdd GND #977 Vdd pmos W=0.0975U L=0.91U
M414_ Vdd O1_at_52_6 #fb982# Vdd pmos W=0.1625U L=0.13U
M415_keeper Vdd GND #980 Vdd pmos W=0.0975U L=0.91U
M416_ Vdd O1_af_52_6 #fb985# Vdd pmos W=0.1625U L=0.13U
M417_keeper Vdd GND #983 Vdd pmos W=0.0975U L=0.26U
M418_ Vdd n__O0__t_53_6 #fb988# Vdd pmos W=0.1625U L=0.13U
M419_keeper Vdd GND #986 Vdd pmos W=0.0975U L=0.26U
M420_ Vdd n__O0__f_53_6 #fb991# Vdd pmos W=0.1625U L=0.13U
M421_keeper Vdd GND #989 Vdd pmos W=0.0975U L=0.91U
M422_ Vdd O1_at_53_6 #fb994# Vdd pmos W=0.1625U L=0.13U
M423_keeper Vdd GND #992 Vdd pmos W=0.0975U L=0.91U
M424_ Vdd O1_af_53_6 #fb997# Vdd pmos W=0.1625U L=0.13U
M425_keeper Vdd GND #995 Vdd pmos W=0.0975U L=0.26U
M426_ Vdd n__O0__t_54_6 #fb1000# Vdd pmos W=0.1625U L=0.13U
M427_keeper Vdd GND #998 Vdd pmos W=0.0975U L=0.26U
M428_ Vdd n__O0__f_54_6 #fb1003# Vdd pmos W=0.1625U L=0.13U
M429_keeper Vdd GND #1001 Vdd pmos W=0.0975U L=0.91U
M430_ Vdd O1_at_54_6 #fb1006# Vdd pmos W=0.1625U L=0.13U
M431_keeper Vdd GND #1004 Vdd pmos W=0.0975U L=0.91U
M432_ Vdd O1_af_54_6 #fb1009# Vdd pmos W=0.1625U L=0.13U
M433_keeper Vdd GND #1007 Vdd pmos W=0.0975U L=0.26U
M434_ Vdd n__O0__t_55_6 #fb1012# Vdd pmos W=0.1625U L=0.13U
M435_keeper Vdd GND #1010 Vdd pmos W=0.0975U L=0.26U
M436_ Vdd n__O0__f_55_6 #fb1015# Vdd pmos W=0.1625U L=0.13U
M437_keeper Vdd GND #1013 Vdd pmos W=0.0975U L=0.91U
M438_ Vdd O1_at_55_6 #fb1018# Vdd pmos W=0.1625U L=0.13U
M439_keeper Vdd GND #1016 Vdd pmos W=0.0975U L=0.91U
M440_ Vdd O1_af_55_6 #fb1021# Vdd pmos W=0.1625U L=0.13U
M441_keeper Vdd GND #1019 Vdd pmos W=0.0975U L=0.26U
M442_ Vdd n__O0__t_56_6 #fb1024# Vdd pmos W=0.1625U L=0.13U
M443_keeper Vdd GND #1022 Vdd pmos W=0.0975U L=0.26U
M444_ Vdd n__O0__f_56_6 #fb1027# Vdd pmos W=0.1625U L=0.13U
M445_keeper Vdd GND #1025 Vdd pmos W=0.0975U L=0.91U
M446_ Vdd O1_at_56_6 #fb1030# Vdd pmos W=0.1625U L=0.13U
M447_keeper Vdd GND #1028 Vdd pmos W=0.0975U L=0.91U
M448_ Vdd O1_af_56_6 #fb1033# Vdd pmos W=0.1625U L=0.13U
M449_keeper Vdd GND #1031 Vdd pmos W=0.0975U L=0.26U
M450_ Vdd n__O0__t_57_6 #fb1036# Vdd pmos W=0.1625U L=0.13U
M451_keeper Vdd GND #1034 Vdd pmos W=0.0975U L=0.26U
M452_ Vdd n__O0__f_57_6 #fb1039# Vdd pmos W=0.1625U L=0.13U
M453_keeper Vdd GND #1037 Vdd pmos W=0.0975U L=0.91U
M454_ Vdd O1_at_57_6 #fb1042# Vdd pmos W=0.1625U L=0.13U
M455_keeper Vdd GND #1040 Vdd pmos W=0.0975U L=0.91U
M456_ Vdd O1_af_57_6 #fb1045# Vdd pmos W=0.1625U L=0.13U
M457_keeper Vdd GND #1043 Vdd pmos W=0.0975U L=0.26U
M458_ Vdd n__O0__t_58_6 #fb1048# Vdd pmos W=0.1625U L=0.13U
M459_keeper Vdd GND #1046 Vdd pmos W=0.0975U L=0.26U
M460_ Vdd n__O0__f_58_6 #fb1051# Vdd pmos W=0.1625U L=0.13U
M461_keeper Vdd GND #1049 Vdd pmos W=0.0975U L=0.91U
M462_ Vdd O1_at_58_6 #fb1054# Vdd pmos W=0.1625U L=0.13U
M463_keeper Vdd GND #1052 Vdd pmos W=0.0975U L=0.91U
M464_ Vdd O1_af_58_6 #fb1057# Vdd pmos W=0.1625U L=0.13U
M465_keeper Vdd GND #1055 Vdd pmos W=0.0975U L=0.26U
M466_ Vdd n__O0__t_59_6 #fb1060# Vdd pmos W=0.1625U L=0.13U
M467_keeper Vdd GND #1058 Vdd pmos W=0.0975U L=0.26U
M468_ Vdd n__O0__f_59_6 #fb1063# Vdd pmos W=0.1625U L=0.13U
M469_keeper Vdd GND #1061 Vdd pmos W=0.0975U L=0.91U
M470_ Vdd O1_at_59_6 #fb1066# Vdd pmos W=0.1625U L=0.13U
M471_keeper Vdd GND #1064 Vdd pmos W=0.0975U L=0.91U
M472_ Vdd O1_af_59_6 #fb1069# Vdd pmos W=0.1625U L=0.13U
M473_keeper Vdd GND #1067 Vdd pmos W=0.0975U L=0.26U
M474_ Vdd n__O0__t_510_6 #fb1072# Vdd pmos W=0.1625U L=0.13U
M475_keeper Vdd GND #1070 Vdd pmos W=0.0975U L=0.26U
M476_ Vdd n__O0__f_510_6 #fb1075# Vdd pmos W=0.1625U L=0.13U
M477_keeper Vdd GND #1073 Vdd pmos W=0.0975U L=0.91U
M478_ Vdd O1_at_510_6 #fb1078# Vdd pmos W=0.1625U L=0.13U
M479_keeper Vdd GND #1076 Vdd pmos W=0.0975U L=0.91U
M480_ Vdd O1_af_510_6 #fb1081# Vdd pmos W=0.1625U L=0.13U
M481_keeper Vdd GND #1079 Vdd pmos W=0.0975U L=0.26U
M482_ Vdd n__O0__t_511_6 #fb1084# Vdd pmos W=0.1625U L=0.13U
M483_keeper Vdd GND #1082 Vdd pmos W=0.0975U L=0.26U
M484_ Vdd n__O0__f_511_6 #fb1087# Vdd pmos W=0.1625U L=0.13U
M485_keeper Vdd GND #1085 Vdd pmos W=0.0975U L=0.91U
M486_ Vdd O1_at_511_6 #fb1090# Vdd pmos W=0.1625U L=0.13U
M487_keeper Vdd GND #1088 Vdd pmos W=0.0975U L=0.91U
M488_ Vdd O1_af_511_6 #fb1093# Vdd pmos W=0.1625U L=0.13U
M489_keeper Vdd GND #1091 Vdd pmos W=0.0975U L=0.26U
M490_ Vdd n__O0__t_512_6 #fb1096# Vdd pmos W=0.1625U L=0.13U
M491_keeper Vdd GND #1094 Vdd pmos W=0.0975U L=0.26U
M492_ Vdd n__O0__f_512_6 #fb1099# Vdd pmos W=0.1625U L=0.13U
M493_keeper Vdd GND #1097 Vdd pmos W=0.0975U L=0.91U
M494_ Vdd O1_at_512_6 #fb1102# Vdd pmos W=0.1625U L=0.13U
M495_keeper Vdd GND #1100 Vdd pmos W=0.0975U L=0.91U
M496_ Vdd O1_af_512_6 #fb1105# Vdd pmos W=0.1625U L=0.13U
M497_keeper Vdd GND #1103 Vdd pmos W=0.0975U L=0.26U
M498_ Vdd n__O0__t_513_6 #fb1108# Vdd pmos W=0.1625U L=0.13U
M499_keeper Vdd GND #1106 Vdd pmos W=0.0975U L=0.26U
M500_ Vdd n__O0__f_513_6 #fb1111# Vdd pmos W=0.1625U L=0.13U
M501_keeper Vdd GND #1109 Vdd pmos W=0.0975U L=0.91U
M502_ Vdd O1_at_513_6 #fb1114# Vdd pmos W=0.1625U L=0.13U
M503_keeper Vdd GND #1112 Vdd pmos W=0.0975U L=0.91U
M504_ Vdd O1_af_513_6 #fb1117# Vdd pmos W=0.1625U L=0.13U
M505_keeper Vdd GND #1115 Vdd pmos W=0.0975U L=0.26U
M506_ Vdd n__O0__t_514_6 #fb1120# Vdd pmos W=0.1625U L=0.13U
M507_keeper Vdd GND #1118 Vdd pmos W=0.0975U L=0.26U
M508_ Vdd n__O0__f_514_6 #fb1123# Vdd pmos W=0.1625U L=0.13U
M509_keeper Vdd GND #1121 Vdd pmos W=0.0975U L=0.91U
M510_ Vdd O1_at_514_6 #fb1126# Vdd pmos W=0.1625U L=0.13U
M511_keeper Vdd GND #1124 Vdd pmos W=0.0975U L=0.91U
M512_ Vdd O1_af_514_6 #fb1129# Vdd pmos W=0.1625U L=0.13U
M513_keeper Vdd GND #1127 Vdd pmos W=0.0975U L=0.26U
M514_ Vdd n__O0__t_515_6 #fb1132# Vdd pmos W=0.1625U L=0.13U
M515_keeper Vdd GND #1130 Vdd pmos W=0.0975U L=0.26U
M516_ Vdd n__O0__f_515_6 #fb1135# Vdd pmos W=0.1625U L=0.13U
M517_keeper Vdd GND #1133 Vdd pmos W=0.0975U L=0.91U
M518_ Vdd O1_at_515_6 #fb1138# Vdd pmos W=0.1625U L=0.13U
M519_keeper Vdd GND #1136 Vdd pmos W=0.0975U L=0.91U
M520_ Vdd O1_af_515_6 #fb1141# Vdd pmos W=0.1625U L=0.13U
M521_keeper Vdd GND #1139 Vdd pmos W=0.0975U L=0.26U
M522_ Vdd n__O0__t_516_6 #fb1144# Vdd pmos W=0.1625U L=0.13U
M523_keeper Vdd GND #1142 Vdd pmos W=0.0975U L=0.26U
M524_ Vdd n__O0__f_516_6 #fb1147# Vdd pmos W=0.1625U L=0.13U
M525_keeper Vdd GND #1145 Vdd pmos W=0.0975U L=0.91U
M526_ Vdd O1_at_516_6 #fb1150# Vdd pmos W=0.1625U L=0.13U
M527_keeper Vdd GND #1148 Vdd pmos W=0.0975U L=0.91U
M528_ Vdd O1_af_516_6 #fb1153# Vdd pmos W=0.1625U L=0.13U
M529_keeper Vdd GND #1151 Vdd pmos W=0.0975U L=0.26U
M530_ Vdd n__O0__t_517_6 #fb1156# Vdd pmos W=0.1625U L=0.13U
M531_keeper Vdd GND #1154 Vdd pmos W=0.0975U L=0.26U
M532_ Vdd n__O0__f_517_6 #fb1159# Vdd pmos W=0.1625U L=0.13U
M533_keeper Vdd GND #1157 Vdd pmos W=0.0975U L=0.91U
M534_ Vdd O1_at_517_6 #fb1162# Vdd pmos W=0.1625U L=0.13U
M535_keeper Vdd GND #1160 Vdd pmos W=0.0975U L=0.91U
M536_ Vdd O1_af_517_6 #fb1165# Vdd pmos W=0.1625U L=0.13U
M537_keeper Vdd GND #1163 Vdd pmos W=0.0975U L=0.26U
M538_ Vdd n__O0__t_518_6 #fb1168# Vdd pmos W=0.1625U L=0.13U
M539_keeper Vdd GND #1166 Vdd pmos W=0.0975U L=0.26U
M540_ Vdd n__O0__f_518_6 #fb1171# Vdd pmos W=0.1625U L=0.13U
M541_keeper Vdd GND #1169 Vdd pmos W=0.0975U L=0.91U
M542_ Vdd O1_at_518_6 #fb1174# Vdd pmos W=0.1625U L=0.13U
M543_keeper Vdd GND #1172 Vdd pmos W=0.0975U L=0.91U
M544_ Vdd O1_af_518_6 #fb1177# Vdd pmos W=0.1625U L=0.13U
M545_keeper Vdd GND #1175 Vdd pmos W=0.0975U L=0.26U
M546_ Vdd n__O0__t_519_6 #fb1180# Vdd pmos W=0.1625U L=0.13U
M547_keeper Vdd GND #1178 Vdd pmos W=0.0975U L=0.26U
M548_ Vdd n__O0__f_519_6 #fb1183# Vdd pmos W=0.1625U L=0.13U
M549_keeper Vdd GND #1181 Vdd pmos W=0.0975U L=0.91U
M550_ Vdd O1_at_519_6 #fb1186# Vdd pmos W=0.1625U L=0.13U
M551_keeper Vdd GND #1184 Vdd pmos W=0.0975U L=0.91U
M552_ Vdd O1_af_519_6 #fb1189# Vdd pmos W=0.1625U L=0.13U
M553_keeper Vdd GND #1187 Vdd pmos W=0.0975U L=0.26U
M554_ Vdd n__O0__t_520_6 #fb1192# Vdd pmos W=0.1625U L=0.13U
M555_keeper Vdd GND #1190 Vdd pmos W=0.0975U L=0.26U
M556_ Vdd n__O0__f_520_6 #fb1195# Vdd pmos W=0.1625U L=0.13U
M557_keeper Vdd GND #1193 Vdd pmos W=0.0975U L=0.91U
M558_ Vdd O1_at_520_6 #fb1198# Vdd pmos W=0.1625U L=0.13U
M559_keeper Vdd GND #1196 Vdd pmos W=0.0975U L=0.91U
M560_ Vdd O1_af_520_6 #fb1201# Vdd pmos W=0.1625U L=0.13U
M561_keeper Vdd GND #1199 Vdd pmos W=0.0975U L=0.26U
M562_ Vdd n__O0__t_521_6 #fb1204# Vdd pmos W=0.1625U L=0.13U
M563_keeper Vdd GND #1202 Vdd pmos W=0.0975U L=0.26U
M564_ Vdd n__O0__f_521_6 #fb1207# Vdd pmos W=0.1625U L=0.13U
M565_keeper Vdd GND #1205 Vdd pmos W=0.0975U L=0.91U
M566_ Vdd O1_at_521_6 #fb1210# Vdd pmos W=0.1625U L=0.13U
M567_keeper Vdd GND #1208 Vdd pmos W=0.0975U L=0.91U
M568_ Vdd O1_af_521_6 #fb1213# Vdd pmos W=0.1625U L=0.13U
M569_keeper Vdd GND #1211 Vdd pmos W=0.0975U L=0.26U
M570_ Vdd n__O0__t_522_6 #fb1216# Vdd pmos W=0.1625U L=0.13U
M571_keeper Vdd GND #1214 Vdd pmos W=0.0975U L=0.26U
M572_ Vdd n__O0__f_522_6 #fb1219# Vdd pmos W=0.1625U L=0.13U
M573_keeper Vdd GND #1217 Vdd pmos W=0.0975U L=0.91U
M574_ Vdd O1_at_522_6 #fb1222# Vdd pmos W=0.1625U L=0.13U
M575_keeper Vdd GND #1220 Vdd pmos W=0.0975U L=0.91U
M576_ Vdd O1_af_522_6 #fb1225# Vdd pmos W=0.1625U L=0.13U
M577_keeper Vdd GND #1223 Vdd pmos W=0.0975U L=0.26U
M578_ Vdd n__O0__t_523_6 #fb1228# Vdd pmos W=0.1625U L=0.13U
M579_keeper Vdd GND #1226 Vdd pmos W=0.0975U L=0.26U
M580_ Vdd n__O0__f_523_6 #fb1231# Vdd pmos W=0.1625U L=0.13U
M581_keeper Vdd GND #1229 Vdd pmos W=0.0975U L=0.91U
M582_ Vdd O1_at_523_6 #fb1234# Vdd pmos W=0.1625U L=0.13U
M583_keeper Vdd GND #1232 Vdd pmos W=0.0975U L=0.91U
M584_ Vdd O1_af_523_6 #fb1237# Vdd pmos W=0.1625U L=0.13U
M585_keeper Vdd GND #1235 Vdd pmos W=0.0975U L=0.26U
M586_ Vdd n__O0__t_524_6 #fb1240# Vdd pmos W=0.1625U L=0.13U
M587_keeper Vdd GND #1238 Vdd pmos W=0.0975U L=0.26U
M588_ Vdd n__O0__f_524_6 #fb1243# Vdd pmos W=0.1625U L=0.13U
M589_keeper Vdd GND #1241 Vdd pmos W=0.0975U L=0.91U
M590_ Vdd O1_at_524_6 #fb1246# Vdd pmos W=0.1625U L=0.13U
M591_keeper Vdd GND #1244 Vdd pmos W=0.0975U L=0.91U
M592_ Vdd O1_af_524_6 #fb1249# Vdd pmos W=0.1625U L=0.13U
M593_keeper Vdd GND #1247 Vdd pmos W=0.0975U L=0.26U
M594_ Vdd n__O0__t_525_6 #fb1252# Vdd pmos W=0.1625U L=0.13U
M595_keeper Vdd GND #1250 Vdd pmos W=0.0975U L=0.26U
M596_ Vdd n__O0__f_525_6 #fb1255# Vdd pmos W=0.1625U L=0.13U
M597_keeper Vdd GND #1253 Vdd pmos W=0.0975U L=0.91U
M598_ Vdd O1_at_525_6 #fb1258# Vdd pmos W=0.1625U L=0.13U
M599_keeper Vdd GND #1256 Vdd pmos W=0.0975U L=0.91U
M600_ Vdd O1_af_525_6 #fb1261# Vdd pmos W=0.1625U L=0.13U
M601_keeper Vdd GND #1259 Vdd pmos W=0.0975U L=0.26U
M602_ Vdd n__O0__t_526_6 #fb1264# Vdd pmos W=0.1625U L=0.13U
M603_keeper Vdd GND #1262 Vdd pmos W=0.0975U L=0.26U
M604_ Vdd n__O0__f_526_6 #fb1267# Vdd pmos W=0.1625U L=0.13U
M605_keeper Vdd GND #1265 Vdd pmos W=0.0975U L=0.91U
M606_ Vdd O1_at_526_6 #fb1270# Vdd pmos W=0.1625U L=0.13U
M607_keeper Vdd GND #1268 Vdd pmos W=0.0975U L=0.91U
M608_ Vdd O1_af_526_6 #fb1273# Vdd pmos W=0.1625U L=0.13U
M609_keeper Vdd GND #1271 Vdd pmos W=0.0975U L=0.26U
M610_ Vdd n__O0__t_527_6 #fb1276# Vdd pmos W=0.1625U L=0.13U
M611_keeper Vdd GND #1274 Vdd pmos W=0.0975U L=0.26U
M612_ Vdd n__O0__f_527_6 #fb1279# Vdd pmos W=0.1625U L=0.13U
M613_keeper Vdd GND #1277 Vdd pmos W=0.0975U L=0.91U
M614_ Vdd O1_at_527_6 #fb1282# Vdd pmos W=0.1625U L=0.13U
M615_keeper Vdd GND #1280 Vdd pmos W=0.0975U L=0.91U
M616_ Vdd O1_af_527_6 #fb1285# Vdd pmos W=0.1625U L=0.13U
M617_keeper Vdd GND #1283 Vdd pmos W=0.0975U L=0.26U
M618_ Vdd n__O0__t_528_6 #fb1288# Vdd pmos W=0.1625U L=0.13U
M619_keeper Vdd GND #1286 Vdd pmos W=0.0975U L=0.26U
M620_ Vdd n__O0__f_528_6 #fb1291# Vdd pmos W=0.1625U L=0.13U
M621_keeper Vdd GND #1289 Vdd pmos W=0.0975U L=0.91U
M622_ Vdd O1_at_528_6 #fb1294# Vdd pmos W=0.1625U L=0.13U
M623_keeper Vdd GND #1292 Vdd pmos W=0.0975U L=0.91U
M624_ Vdd O1_af_528_6 #fb1297# Vdd pmos W=0.1625U L=0.13U
M625_keeper Vdd GND #1295 Vdd pmos W=0.0975U L=0.26U
M626_ Vdd n__O0__t_529_6 #fb1300# Vdd pmos W=0.1625U L=0.13U
M627_keeper Vdd GND #1298 Vdd pmos W=0.0975U L=0.26U
M628_ Vdd n__O0__f_529_6 #fb1303# Vdd pmos W=0.1625U L=0.13U
M629_keeper Vdd GND #1301 Vdd pmos W=0.0975U L=0.91U
M630_ Vdd O1_at_529_6 #fb1306# Vdd pmos W=0.1625U L=0.13U
M631_keeper Vdd GND #1304 Vdd pmos W=0.0975U L=0.91U
M632_ Vdd O1_af_529_6 #fb1309# Vdd pmos W=0.1625U L=0.13U
M633_keeper Vdd GND #1307 Vdd pmos W=0.0975U L=0.26U
M634_ Vdd n__O0__t_530_6 #fb1312# Vdd pmos W=0.1625U L=0.13U
M635_keeper Vdd GND #1310 Vdd pmos W=0.0975U L=0.26U
M636_ Vdd n__O0__f_530_6 #fb1315# Vdd pmos W=0.1625U L=0.13U
M637_keeper Vdd GND #1313 Vdd pmos W=0.0975U L=0.91U
M638_ Vdd O1_at_530_6 #fb1318# Vdd pmos W=0.1625U L=0.13U
M639_keeper Vdd GND #1316 Vdd pmos W=0.0975U L=0.91U
M640_ Vdd O1_af_530_6 #fb1321# Vdd pmos W=0.1625U L=0.13U
M641_keeper Vdd GND #1319 Vdd pmos W=0.0975U L=0.26U
M642_ Vdd n__O0__t_531_6 #fb1324# Vdd pmos W=0.1625U L=0.13U
M643_keeper Vdd GND #1322 Vdd pmos W=0.0975U L=0.26U
M644_ Vdd n__O0__f_531_6 #fb1327# Vdd pmos W=0.1625U L=0.13U
M645_keeper Vdd GND #1325 Vdd pmos W=0.0975U L=0.91U
M646_ Vdd O1_at_531_6 #fb1330# Vdd pmos W=0.1625U L=0.13U
M647_keeper Vdd GND #1328 Vdd pmos W=0.0975U L=0.91U
M648_ Vdd O1_af_531_6 #fb1333# Vdd pmos W=0.1625U L=0.13U
M649_keeper Vdd GND #1331 Vdd pmos W=0.0975U L=0.26U
M650_keeper Vdd GND #1334 Vdd pmos W=0.0975U L=0.26U
M651_ GND I_at_53_6 #5 GND nmos W=0.0975U L=0.065U
M652_ GND I_af_53_6 #5 GND nmos W=0.0975U L=0.065U
M653_ GND I_at_57_6 #24 GND nmos W=0.0975U L=0.065U
M654_ GND I_af_57_6 #24 GND nmos W=0.0975U L=0.065U
M655_ GND I_at_511_6 #43 GND nmos W=0.0975U L=0.065U
M656_ GND I_af_511_6 #43 GND nmos W=0.0975U L=0.065U
M657_ GND I_at_515_6 #62 GND nmos W=0.0975U L=0.065U
M658_ GND I_af_515_6 #62 GND nmos W=0.0975U L=0.065U
M659_ GND I_at_519_6 #81 GND nmos W=0.0975U L=0.065U
M660_ GND I_af_519_6 #81 GND nmos W=0.0975U L=0.065U
M661_ GND I_at_523_6 #100 GND nmos W=0.0975U L=0.065U
M662_ GND I_af_523_6 #100 GND nmos W=0.0975U L=0.065U
M663_ GND I_at_527_6 #119 GND nmos W=0.0975U L=0.065U
M664_ GND I_af_527_6 #119 GND nmos W=0.0975U L=0.065U
M665_ GND I_at_531_6 #138 GND nmos W=0.0975U L=0.065U
M666_ GND I_af_531_6 #138 GND nmos W=0.0975U L=0.065U
M667_ GND __c_51_6 #156 GND nmos W=0.0975U L=0.065U
M668_ GND __c_53_6 #159 GND nmos W=0.0975U L=0.065U
M669_ GND __c_55_6 #162 GND nmos W=0.0975U L=0.065U
M670_ GND __c_57_6 #165 GND nmos W=0.0975U L=0.065U
M671_ GND d_51_6 #167 GND nmos W=0.0975U L=0.065U
M672_ GND d_53_6 #170 GND nmos W=0.0975U L=0.065U
M673_ GND __e_51_6 #174 GND nmos W=0.0975U L=0.065U
M674_ GND inv__w__0i f GND nmos W=0.0975U L=0.065U
M675_ GND reset f GND nmos W=0.0975U L=0.065U
M676_ GND I_at_531_6 #180 GND nmos W=0.0975U L=0.065U
M677_ GND I_af_526_6 #197 GND nmos W=0.0975U L=0.065U
M678_ GND I_af_521_6 #211 GND nmos W=0.0975U L=0.065U
M679_ GND I_af_516_6 #224 GND nmos W=0.0975U L=0.065U
M680_ GND __g_51_6 #234 GND nmos W=0.0975U L=0.065U
M681_ GND __g_53_6 #237 GND nmos W=0.0975U L=0.065U
M682_ GND h_51_6 #239 GND nmos W=0.0975U L=0.065U
M683_ GND inv__I__t_531_6 #251 GND nmos W=0.0975U L=0.065U
M684_ GND inv__I__t_526_6 #271 GND nmos W=0.0975U L=0.065U
M685_ GND inv__I__t_521_6 #291 GND nmos W=0.0975U L=0.065U
M686_ GND inv__I__t_516_6 #309 GND nmos W=0.0975U L=0.065U
M687_ GND u_51_6 __x_50_6 GND nmos W=0.0975U L=0.065U
M688_ GND u_50_6 __x_50_6 GND nmos W=0.0975U L=0.065U
M689_ GND u_53_6 __x_51_6 GND nmos W=0.0975U L=0.065U
M690_ GND u_52_6 __x_51_6 GND nmos W=0.0975U L=0.065U
M691_ GND __x_51_6 #322 GND nmos W=0.0975U L=0.065U
M692_ GND inv__w__0i #330 GND nmos W=0.78U L=0.065U
M693_ GND inv__s #336 GND nmos W=0.0975U L=0.065U
M694_ GND reset w__0i GND nmos W=0.0975U L=0.065U
M695_ GND inv__s #340 GND nmos W=0.0975U L=0.065U
M696_ GND inv__s #346 GND nmos W=0.0975U L=0.065U
M697_ GND w__0i #353 GND nmos W=0.78U L=0.065U
M698_ GND O0_aa #359 GND nmos W=0.0975U L=0.065U
M699_ GND O1_aa #359 GND nmos W=0.0975U L=0.065U
M700_ GND inv__s #366 GND nmos W=0.0975U L=0.065U
M701_ GND s #370 GND nmos W=0.0975U L=0.065U
M702_ GND p #375 GND nmos W=0.0975U L=0.065U
M703_ GND p #378 GND nmos W=0.0975U L=0.065U
M704_ GND inv__I__t_50_6 O1_at_50_6 GND nmos W=0.0975U L=0.065U
M705_ GND inv__I__f_50_6 O1_af_50_6 GND nmos W=0.0975U L=0.065U
M706_ GND p #389 GND nmos W=0.0975U L=0.065U
M707_ GND p #392 GND nmos W=0.0975U L=0.065U
M708_ GND inv__I__t_51_6 O1_at_51_6 GND nmos W=0.0975U L=0.065U
M709_ GND inv__I__f_51_6 O1_af_51_6 GND nmos W=0.0975U L=0.065U
M710_ GND p #403 GND nmos W=0.0975U L=0.065U
M711_ GND p #406 GND nmos W=0.0975U L=0.065U
M712_ GND inv__I__t_52_6 O1_at_52_6 GND nmos W=0.0975U L=0.065U
M713_ GND inv__I__f_52_6 O1_af_52_6 GND nmos W=0.0975U L=0.065U
M714_ GND p #417 GND nmos W=0.0975U L=0.065U
M715_ GND p #420 GND nmos W=0.0975U L=0.065U
M716_ GND inv__I__t_53_6 O1_at_53_6 GND nmos W=0.0975U L=0.065U
M717_ GND inv__I__f_53_6 O1_af_53_6 GND nmos W=0.0975U L=0.065U
M718_ GND p #431 GND nmos W=0.0975U L=0.065U
M719_ GND p #434 GND nmos W=0.0975U L=0.065U
M720_ GND inv__I__t_54_6 O1_at_54_6 GND nmos W=0.0975U L=0.065U
M721_ GND inv__I__f_54_6 O1_af_54_6 GND nmos W=0.0975U L=0.065U
M722_ GND p #445 GND nmos W=0.0975U L=0.065U
M723_ GND p #448 GND nmos W=0.0975U L=0.065U
M724_ GND inv__I__t_55_6 O1_at_55_6 GND nmos W=0.0975U L=0.065U
M725_ GND inv__I__f_55_6 O1_af_55_6 GND nmos W=0.0975U L=0.065U
M726_ GND p #459 GND nmos W=0.0975U L=0.065U
M727_ GND p #462 GND nmos W=0.0975U L=0.065U
M728_ GND inv__I__t_56_6 O1_at_56_6 GND nmos W=0.0975U L=0.065U
M729_ GND inv__I__f_56_6 O1_af_56_6 GND nmos W=0.0975U L=0.065U
M730_ GND p #473 GND nmos W=0.0975U L=0.065U
M731_ GND p #476 GND nmos W=0.0975U L=0.065U
M732_ GND inv__I__t_57_6 O1_at_57_6 GND nmos W=0.0975U L=0.065U
M733_ GND inv__I__f_57_6 O1_af_57_6 GND nmos W=0.0975U L=0.065U
M734_ GND p #487 GND nmos W=0.0975U L=0.065U
M735_ GND p #490 GND nmos W=0.0975U L=0.065U
M736_ GND inv__I__t_58_6 O1_at_58_6 GND nmos W=0.0975U L=0.065U
M737_ GND inv__I__f_58_6 O1_af_58_6 GND nmos W=0.0975U L=0.065U
M738_ GND p #501 GND nmos W=0.0975U L=0.065U
M739_ GND p #504 GND nmos W=0.0975U L=0.065U
M740_ GND inv__I__t_59_6 O1_at_59_6 GND nmos W=0.0975U L=0.065U
M741_ GND inv__I__f_59_6 O1_af_59_6 GND nmos W=0.0975U L=0.065U
M742_ GND p #515 GND nmos W=0.0975U L=0.065U
M743_ GND p #518 GND nmos W=0.0975U L=0.065U
M744_ GND inv__I__t_510_6 O1_at_510_6 GND nmos W=0.0975U L=0.065U
M745_ GND inv__I__f_510_6 O1_af_510_6 GND nmos W=0.0975U L=0.065U
M746_ GND p #529 GND nmos W=0.0975U L=0.065U
M747_ GND p #532 GND nmos W=0.0975U L=0.065U
M748_ GND inv__I__t_511_6 O1_at_511_6 GND nmos W=0.0975U L=0.065U
M749_ GND inv__I__f_511_6 O1_af_511_6 GND nmos W=0.0975U L=0.065U
M750_ GND p #543 GND nmos W=0.0975U L=0.065U
M751_ GND p #546 GND nmos W=0.0975U L=0.065U
M752_ GND inv__I__t_512_6 O1_at_512_6 GND nmos W=0.0975U L=0.065U
M753_ GND inv__I__f_512_6 O1_af_512_6 GND nmos W=0.0975U L=0.065U
M754_ GND p #557 GND nmos W=0.0975U L=0.065U
M755_ GND p #560 GND nmos W=0.0975U L=0.065U
M756_ GND inv__I__t_513_6 O1_at_513_6 GND nmos W=0.0975U L=0.065U
M757_ GND inv__I__f_513_6 O1_af_513_6 GND nmos W=0.0975U L=0.065U
M758_ GND p #569 GND nmos W=0.0975U L=0.065U
M759_ GND p #572 GND nmos W=0.0975U L=0.065U
M760_ GND inv__I__t_514_6 O1_at_514_6 GND nmos W=0.0975U L=0.065U
M761_ GND inv__I__f_514_6 O1_af_514_6 GND nmos W=0.0975U L=0.065U
M762_ GND p #581 GND nmos W=0.0975U L=0.065U
M763_ GND p #584 GND nmos W=0.0975U L=0.065U
M764_ GND inv__I__t_515_6 O1_at_515_6 GND nmos W=0.0975U L=0.065U
M765_ GND inv__I__f_515_6 O1_af_515_6 GND nmos W=0.0975U L=0.065U
M766_ GND p #593 GND nmos W=0.0975U L=0.065U
M767_ GND p #596 GND nmos W=0.0975U L=0.065U
M768_ GND inv__I__t_516_6 O1_at_516_6 GND nmos W=0.0975U L=0.065U
M769_ GND inv__I__f_516_6 O1_af_516_6 GND nmos W=0.0975U L=0.065U
M770_ GND p #605 GND nmos W=0.0975U L=0.065U
M771_ GND p #608 GND nmos W=0.0975U L=0.065U
M772_ GND inv__I__t_517_6 O1_at_517_6 GND nmos W=0.0975U L=0.065U
M773_ GND inv__I__f_517_6 O1_af_517_6 GND nmos W=0.0975U L=0.065U
M774_ GND p #617 GND nmos W=0.0975U L=0.065U
M775_ GND p #620 GND nmos W=0.0975U L=0.065U
M776_ GND inv__I__t_518_6 O1_at_518_6 GND nmos W=0.0975U L=0.065U
M777_ GND inv__I__f_518_6 O1_af_518_6 GND nmos W=0.0975U L=0.065U
M778_ GND p #629 GND nmos W=0.0975U L=0.065U
M779_ GND p #632 GND nmos W=0.0975U L=0.065U
M780_ GND inv__I__t_519_6 O1_at_519_6 GND nmos W=0.0975U L=0.065U
M781_ GND inv__I__f_519_6 O1_af_519_6 GND nmos W=0.0975U L=0.065U
M782_ GND p #641 GND nmos W=0.0975U L=0.065U
M783_ GND p #644 GND nmos W=0.0975U L=0.065U
M784_ GND inv__I__t_520_6 O1_at_520_6 GND nmos W=0.0975U L=0.065U
M785_ GND inv__I__f_520_6 O1_af_520_6 GND nmos W=0.0975U L=0.065U
M786_ GND p #653 GND nmos W=0.0975U L=0.065U
M787_ GND p #656 GND nmos W=0.0975U L=0.065U
M788_ GND inv__I__t_521_6 O1_at_521_6 GND nmos W=0.0975U L=0.065U
M789_ GND inv__I__f_521_6 O1_af_521_6 GND nmos W=0.0975U L=0.065U
M790_ GND p #665 GND nmos W=0.0975U L=0.065U
M791_ GND p #668 GND nmos W=0.0975U L=0.065U
M792_ GND inv__I__t_522_6 O1_at_522_6 GND nmos W=0.0975U L=0.065U
M793_ GND inv__I__f_522_6 O1_af_522_6 GND nmos W=0.0975U L=0.065U
M794_ GND p #677 GND nmos W=0.0975U L=0.065U
M795_ GND p #680 GND nmos W=0.0975U L=0.065U
M796_ GND inv__I__t_523_6 O1_at_523_6 GND nmos W=0.0975U L=0.065U
M797_ GND inv__I__f_523_6 O1_af_523_6 GND nmos W=0.0975U L=0.065U
M798_ GND p #689 GND nmos W=0.0975U L=0.065U
M799_ GND p #692 GND nmos W=0.0975U L=0.065U
M800_ GND inv__I__t_524_6 O1_at_524_6 GND nmos W=0.0975U L=0.065U
M801_ GND inv__I__f_524_6 O1_af_524_6 GND nmos W=0.0975U L=0.065U
M802_ GND p #701 GND nmos W=0.0975U L=0.065U
M803_ GND p #704 GND nmos W=0.0975U L=0.065U
M804_ GND inv__I__t_525_6 O1_at_525_6 GND nmos W=0.0975U L=0.065U
M805_ GND inv__I__f_525_6 O1_af_525_6 GND nmos W=0.0975U L=0.065U
M806_ GND p #713 GND nmos W=0.0975U L=0.065U
M807_ GND p #716 GND nmos W=0.0975U L=0.065U
M808_ GND inv__I__t_526_6 O1_at_526_6 GND nmos W=0.0975U L=0.065U
M809_ GND inv__I__f_526_6 O1_af_526_6 GND nmos W=0.0975U L=0.065U
M810_ GND p #725 GND nmos W=0.0975U L=0.065U
M811_ GND p #728 GND nmos W=0.0975U L=0.065U
M812_ GND inv__I__t_527_6 O1_at_527_6 GND nmos W=0.0975U L=0.065U
M813_ GND inv__I__f_527_6 O1_af_527_6 GND nmos W=0.0975U L=0.065U
M814_ GND p #737 GND nmos W=0.0975U L=0.065U
M815_ GND p #740 GND nmos W=0.0975U L=0.065U
M816_ GND inv__I__t_528_6 O1_at_528_6 GND nmos W=0.0975U L=0.065U
M817_ GND inv__I__f_528_6 O1_af_528_6 GND nmos W=0.0975U L=0.065U
M818_ GND p #749 GND nmos W=0.0975U L=0.065U
M819_ GND p #752 GND nmos W=0.0975U L=0.065U
M820_ GND inv__I__t_529_6 O1_at_529_6 GND nmos W=0.0975U L=0.065U
M821_ GND inv__I__f_529_6 O1_af_529_6 GND nmos W=0.0975U L=0.065U
M822_ GND p #761 GND nmos W=0.0975U L=0.065U
M823_ GND p #764 GND nmos W=0.0975U L=0.065U
M824_ GND inv__I__t_530_6 O1_at_530_6 GND nmos W=0.0975U L=0.065U
M825_ GND inv__I__f_530_6 O1_af_530_6 GND nmos W=0.0975U L=0.065U
M826_ GND p #773 GND nmos W=0.0975U L=0.065U
M827_ GND p #776 GND nmos W=0.0975U L=0.065U
M828_ GND inv__I__t_531_6 O1_at_531_6 GND nmos W=0.0975U L=0.065U
M829_ GND inv__I__f_531_6 O1_af_531_6 GND nmos W=0.0975U L=0.065U
M830_ GND w__0i inv__w__0i GND nmos W=0.0975U L=0.065U
M831_ GND s inv__s GND nmos W=0.78U L=0.065U
M832_ GND reset inv__reset GND nmos W=0.0975U L=0.065U
M833_ GND p inv__p GND nmos W=0.0975U L=0.065U
M834_ GND O0_aa inv__O0__a GND nmos W=0.0975U L=0.065U
M835_ GND O1_aa inv__O1__a GND nmos W=0.0975U L=0.065U
M836_ GND n__w__0 w__0 GND nmos W=0.0975U L=0.065U
M837_ GND n__w__1 w__1 GND nmos W=0.0975U L=0.065U
M838_ GND n__v v GND nmos W=0.0975U L=0.065U
M839_ GND f inv__f GND nmos W=0.0975U L=0.065U
M840_ GND I_at_50_6 inv__I__t_50_6 GND nmos W=0.0975U L=0.065U
M841_ GND I_af_50_6 inv__I__f_50_6 GND nmos W=0.0975U L=0.065U
M842_ GND I_at_51_6 inv__I__t_51_6 GND nmos W=0.0975U L=0.065U
M843_ GND I_af_51_6 inv__I__f_51_6 GND nmos W=0.0975U L=0.065U
M844_ GND I_at_52_6 inv__I__t_52_6 GND nmos W=0.0975U L=0.065U
M845_ GND I_af_52_6 inv__I__f_52_6 GND nmos W=0.0975U L=0.065U
M846_ GND I_at_53_6 inv__I__t_53_6 GND nmos W=0.0975U L=0.065U
M847_ GND I_af_53_6 inv__I__f_53_6 GND nmos W=0.0975U L=0.065U
M848_ GND I_at_54_6 inv__I__t_54_6 GND nmos W=0.0975U L=0.065U
M849_ GND I_af_54_6 inv__I__f_54_6 GND nmos W=0.0975U L=0.065U
M850_ GND I_at_55_6 inv__I__t_55_6 GND nmos W=0.0975U L=0.065U
M851_ GND I_af_55_6 inv__I__f_55_6 GND nmos W=0.0975U L=0.065U
M852_ GND I_at_56_6 inv__I__t_56_6 GND nmos W=0.0975U L=0.065U
M853_ GND I_af_56_6 inv__I__f_56_6 GND nmos W=0.0975U L=0.065U
M854_ GND I_at_57_6 inv__I__t_57_6 GND nmos W=0.0975U L=0.065U
M855_ GND I_af_57_6 inv__I__f_57_6 GND nmos W=0.0975U L=0.065U
M856_ GND I_at_58_6 inv__I__t_58_6 GND nmos W=0.0975U L=0.065U
M857_ GND I_af_58_6 inv__I__f_58_6 GND nmos W=0.0975U L=0.065U
M858_ GND I_at_59_6 inv__I__t_59_6 GND nmos W=0.0975U L=0.065U
M859_ GND I_af_59_6 inv__I__f_59_6 GND nmos W=0.0975U L=0.065U
M860_ GND I_at_510_6 inv__I__t_510_6 GND nmos W=0.0975U L=0.065U
M861_ GND I_af_510_6 inv__I__f_510_6 GND nmos W=0.0975U L=0.065U
M862_ GND I_at_511_6 inv__I__t_511_6 GND nmos W=0.0975U L=0.065U
M863_ GND I_af_511_6 inv__I__f_511_6 GND nmos W=0.0975U L=0.065U
M864_ GND I_at_512_6 inv__I__t_512_6 GND nmos W=0.0975U L=0.065U
M865_ GND I_af_512_6 inv__I__f_512_6 GND nmos W=0.0975U L=0.065U
M866_ GND I_at_513_6 inv__I__t_513_6 GND nmos W=0.0975U L=0.065U
M867_ GND I_af_513_6 inv__I__f_513_6 GND nmos W=0.0975U L=0.065U
M868_ GND I_at_514_6 inv__I__t_514_6 GND nmos W=0.0975U L=0.065U
M869_ GND I_af_514_6 inv__I__f_514_6 GND nmos W=0.0975U L=0.065U
M870_ GND I_at_515_6 inv__I__t_515_6 GND nmos W=0.0975U L=0.065U
M871_ GND I_af_515_6 inv__I__f_515_6 GND nmos W=0.0975U L=0.065U
M872_ GND I_at_516_6 inv__I__t_516_6 GND nmos W=0.0975U L=0.065U
M873_ GND I_af_516_6 inv__I__f_516_6 GND nmos W=0.0975U L=0.065U
M874_ GND I_at_517_6 inv__I__t_517_6 GND nmos W=0.0975U L=0.065U
M875_ GND I_af_517_6 inv__I__f_517_6 GND nmos W=0.0975U L=0.065U
M876_ GND I_at_518_6 inv__I__t_518_6 GND nmos W=0.0975U L=0.065U
M877_ GND I_af_518_6 inv__I__f_518_6 GND nmos W=0.0975U L=0.065U
M878_ GND I_at_519_6 inv__I__t_519_6 GND nmos W=0.0975U L=0.065U
M879_ GND I_af_519_6 inv__I__f_519_6 GND nmos W=0.0975U L=0.065U
M880_ GND I_at_520_6 inv__I__t_520_6 GND nmos W=0.0975U L=0.065U
M881_ GND I_af_520_6 inv__I__f_520_6 GND nmos W=0.0975U L=0.065U
M882_ GND I_at_521_6 inv__I__t_521_6 GND nmos W=0.0975U L=0.065U
M883_ GND I_af_521_6 inv__I__f_521_6 GND nmos W=0.0975U L=0.065U
M884_ GND I_at_522_6 inv__I__t_522_6 GND nmos W=0.0975U L=0.065U
M885_ GND I_af_522_6 inv__I__f_522_6 GND nmos W=0.0975U L=0.065U
M886_ GND I_at_523_6 inv__I__t_523_6 GND nmos W=0.0975U L=0.065U
M887_ GND I_af_523_6 inv__I__f_523_6 GND nmos W=0.0975U L=0.065U
M888_ GND I_at_524_6 inv__I__t_524_6 GND nmos W=0.0975U L=0.065U
M889_ GND I_af_524_6 inv__I__f_524_6 GND nmos W=0.0975U L=0.065U
M890_ GND I_at_525_6 inv__I__t_525_6 GND nmos W=0.0975U L=0.065U
M891_ GND I_af_525_6 inv__I__f_525_6 GND nmos W=0.0975U L=0.065U
M892_ GND I_at_526_6 inv__I__t_526_6 GND nmos W=0.0975U L=0.065U
M893_ GND I_af_526_6 inv__I__f_526_6 GND nmos W=0.0975U L=0.065U
M894_ GND I_at_527_6 inv__I__t_527_6 GND nmos W=0.0975U L=0.065U
M895_ GND I_af_527_6 inv__I__f_527_6 GND nmos W=0.0975U L=0.065U
M896_ GND I_at_528_6 inv__I__t_528_6 GND nmos W=0.0975U L=0.065U
M897_ GND I_af_528_6 inv__I__f_528_6 GND nmos W=0.0975U L=0.065U
M898_ GND I_at_529_6 inv__I__t_529_6 GND nmos W=0.0975U L=0.065U
M899_ GND I_af_529_6 inv__I__f_529_6 GND nmos W=0.0975U L=0.065U
M900_ GND I_at_530_6 inv__I__t_530_6 GND nmos W=0.0975U L=0.065U
M901_ GND I_af_530_6 inv__I__f_530_6 GND nmos W=0.0975U L=0.065U
M902_ GND I_at_531_6 inv__I__t_531_6 GND nmos W=0.0975U L=0.065U
M903_ GND I_af_531_6 inv__I__f_531_6 GND nmos W=0.0975U L=0.065U
M904_ GND n__I__a I_aa GND nmos W=0.0975U L=0.065U
M905_ GND n__O0__t_50_6 O0_at_50_6 GND nmos W=0.0975U L=0.065U
M906_ GND n__O0__f_50_6 O0_af_50_6 GND nmos W=0.0975U L=0.065U
M907_ GND n__O0__t_51_6 O0_at_51_6 GND nmos W=0.0975U L=0.065U
M908_ GND n__O0__f_51_6 O0_af_51_6 GND nmos W=0.0975U L=0.065U
M909_ GND n__O0__t_52_6 O0_at_52_6 GND nmos W=0.0975U L=0.065U
M910_ GND n__O0__f_52_6 O0_af_52_6 GND nmos W=0.0975U L=0.065U
M911_ GND n__O0__t_53_6 O0_at_53_6 GND nmos W=0.0975U L=0.065U
M912_ GND n__O0__f_53_6 O0_af_53_6 GND nmos W=0.0975U L=0.065U
M913_ GND n__O0__t_54_6 O0_at_54_6 GND nmos W=0.0975U L=0.065U
M914_ GND n__O0__f_54_6 O0_af_54_6 GND nmos W=0.0975U L=0.065U
M915_ GND n__O0__t_55_6 O0_at_55_6 GND nmos W=0.0975U L=0.065U
M916_ GND n__O0__f_55_6 O0_af_55_6 GND nmos W=0.0975U L=0.065U
M917_ GND n__O0__t_56_6 O0_at_56_6 GND nmos W=0.0975U L=0.065U
M918_ GND n__O0__f_56_6 O0_af_56_6 GND nmos W=0.0975U L=0.065U
M919_ GND n__O0__t_57_6 O0_at_57_6 GND nmos W=0.0975U L=0.065U
M920_ GND n__O0__f_57_6 O0_af_57_6 GND nmos W=0.0975U L=0.065U
M921_ GND n__O0__t_58_6 O0_at_58_6 GND nmos W=0.0975U L=0.065U
M922_ GND n__O0__f_58_6 O0_af_58_6 GND nmos W=0.0975U L=0.065U
M923_ GND n__O0__t_59_6 O0_at_59_6 GND nmos W=0.0975U L=0.065U
M924_ GND n__O0__f_59_6 O0_af_59_6 GND nmos W=0.0975U L=0.065U
M925_ GND n__O0__t_510_6 O0_at_510_6 GND nmos W=0.0975U L=0.065U
M926_ GND n__O0__f_510_6 O0_af_510_6 GND nmos W=0.0975U L=0.065U
M927_ GND n__O0__t_511_6 O0_at_511_6 GND nmos W=0.0975U L=0.065U
M928_ GND n__O0__f_511_6 O0_af_511_6 GND nmos W=0.0975U L=0.065U
M929_ GND n__O0__t_512_6 O0_at_512_6 GND nmos W=0.0975U L=0.065U
M930_ GND n__O0__f_512_6 O0_af_512_6 GND nmos W=0.0975U L=0.065U
M931_ GND n__O0__t_513_6 O0_at_513_6 GND nmos W=0.0975U L=0.065U
M932_ GND n__O0__f_513_6 O0_af_513_6 GND nmos W=0.0975U L=0.065U
M933_ GND n__O0__t_514_6 O0_at_514_6 GND nmos W=0.0975U L=0.065U
M934_ GND n__O0__f_514_6 O0_af_514_6 GND nmos W=0.0975U L=0.065U
M935_ GND n__O0__t_515_6 O0_at_515_6 GND nmos W=0.0975U L=0.065U
M936_ GND n__O0__f_515_6 O0_af_515_6 GND nmos W=0.0975U L=0.065U
M937_ GND n__O0__t_516_6 O0_at_516_6 GND nmos W=0.0975U L=0.065U
M938_ GND n__O0__f_516_6 O0_af_516_6 GND nmos W=0.0975U L=0.065U
M939_ GND n__O0__t_517_6 O0_at_517_6 GND nmos W=0.0975U L=0.065U
M940_ GND n__O0__f_517_6 O0_af_517_6 GND nmos W=0.0975U L=0.065U
M941_ GND n__O0__t_518_6 O0_at_518_6 GND nmos W=0.0975U L=0.065U
M942_ GND n__O0__f_518_6 O0_af_518_6 GND nmos W=0.0975U L=0.065U
M943_ GND n__O0__t_519_6 O0_at_519_6 GND nmos W=0.0975U L=0.065U
M944_ GND n__O0__f_519_6 O0_af_519_6 GND nmos W=0.0975U L=0.065U
M945_ GND n__O0__t_520_6 O0_at_520_6 GND nmos W=0.0975U L=0.065U
M946_ GND n__O0__f_520_6 O0_af_520_6 GND nmos W=0.0975U L=0.065U
M947_ GND n__O0__t_521_6 O0_at_521_6 GND nmos W=0.0975U L=0.065U
M948_ GND n__O0__f_521_6 O0_af_521_6 GND nmos W=0.0975U L=0.065U
M949_ GND n__O0__t_522_6 O0_at_522_6 GND nmos W=0.0975U L=0.065U
M950_ GND n__O0__f_522_6 O0_af_522_6 GND nmos W=0.0975U L=0.065U
M951_ GND n__O0__t_523_6 O0_at_523_6 GND nmos W=0.0975U L=0.065U
M952_ GND n__O0__f_523_6 O0_af_523_6 GND nmos W=0.0975U L=0.065U
M953_ GND n__O0__t_524_6 O0_at_524_6 GND nmos W=0.0975U L=0.065U
M954_ GND n__O0__f_524_6 O0_af_524_6 GND nmos W=0.0975U L=0.065U
M955_ GND n__O0__t_525_6 O0_at_525_6 GND nmos W=0.0975U L=0.065U
M956_ GND n__O0__f_525_6 O0_af_525_6 GND nmos W=0.0975U L=0.065U
M957_ GND n__O0__t_526_6 O0_at_526_6 GND nmos W=0.0975U L=0.065U
M958_ GND n__O0__f_526_6 O0_af_526_6 GND nmos W=0.0975U L=0.065U
M959_ GND n__O0__t_527_6 O0_at_527_6 GND nmos W=0.0975U L=0.065U
M960_ GND n__O0__f_527_6 O0_af_527_6 GND nmos W=0.0975U L=0.065U
M961_ GND n__O0__t_528_6 O0_at_528_6 GND nmos W=0.0975U L=0.065U
M962_ GND n__O0__f_528_6 O0_af_528_6 GND nmos W=0.0975U L=0.065U
M963_ GND n__O0__t_529_6 O0_at_529_6 GND nmos W=0.0975U L=0.065U
M964_ GND n__O0__f_529_6 O0_af_529_6 GND nmos W=0.0975U L=0.065U
M965_ GND n__O0__t_530_6 O0_at_530_6 GND nmos W=0.0975U L=0.065U
M966_ GND n__O0__f_530_6 O0_af_530_6 GND nmos W=0.0975U L=0.065U
M967_ GND n__O0__t_531_6 O0_at_531_6 GND nmos W=0.0975U L=0.065U
M968_ GND n__O0__f_531_6 O0_af_531_6 GND nmos W=0.0975U L=0.065U
M969_ GND __c_50_6 #fb850# GND nmos W=0.0975U L=0.13U
M970_ GND __c_51_6 #fb853# GND nmos W=0.0975U L=0.13U
M971_keeper GND Vdd #852 GND nmos W=0.0975U L=6.175U
M972_ GND __c_52_6 #fb856# GND nmos W=0.0975U L=0.13U
M973_keeper GND Vdd #855 GND nmos W=0.0975U L=6.175U
M974_ GND __c_53_6 #fb859# GND nmos W=0.0975U L=0.13U
M975_keeper GND Vdd #858 GND nmos W=0.0975U L=6.175U
M976_ GND __c_54_6 #fb862# GND nmos W=0.0975U L=0.13U
M977_keeper GND Vdd #861 GND nmos W=0.0975U L=6.175U
M978_ GND __c_55_6 #fb865# GND nmos W=0.0975U L=0.13U
M979_keeper GND Vdd #864 GND nmos W=0.0975U L=6.175U
M980_ GND __c_56_6 #fb868# GND nmos W=0.0975U L=0.13U
M981_keeper GND Vdd #867 GND nmos W=0.0975U L=6.175U
M982_ GND __c_57_6 #fb871# GND nmos W=0.0975U L=0.13U
M983_keeper GND Vdd #870 GND nmos W=0.0975U L=6.175U
M984_ GND d_50_6 #fb874# GND nmos W=0.0975U L=0.13U
M985_keeper GND Vdd #873 GND nmos W=0.0975U L=6.175U
M986_ GND d_51_6 #fb877# GND nmos W=0.0975U L=0.13U
M987_keeper GND Vdd #876 GND nmos W=0.0975U L=1.495U
M988_ GND d_52_6 #fb880# GND nmos W=0.0975U L=0.13U
M989_keeper GND Vdd #879 GND nmos W=0.0975U L=1.495U
M990_ GND d_53_6 #fb883# GND nmos W=0.0975U L=0.13U
M991_keeper GND Vdd #882 GND nmos W=0.0975U L=1.495U
M992_ GND __e_50_6 #fb886# GND nmos W=0.0975U L=0.13U
M993_keeper GND Vdd #885 GND nmos W=0.0975U L=1.495U
M994_ GND __e_51_6 #fb889# GND nmos W=0.0975U L=0.13U
M995_keeper GND Vdd #888 GND nmos W=0.0975U L=1.495U
M996_ GND c #fb892# GND nmos W=0.0975U L=0.13U
M997_keeper GND Vdd #891 GND nmos W=0.0975U L=1.495U
M998_ GND f #fb895# GND nmos W=0.0975U L=0.13U
M999_keeper GND Vdd #894 GND nmos W=0.0975U L=1.495U
M1000_ GND __g_53_6 #fb898# GND nmos W=0.0975U L=0.13U
M1001_keeper GND Vdd #897 GND nmos W=0.0975U L=1.495U
M1002_ GND __g_52_6 #fb901# GND nmos W=0.0975U L=0.13U
M1003_keeper GND Vdd #900 GND nmos W=0.0975U L=7.735U
M1004_ GND __g_51_6 #fb904# GND nmos W=0.0975U L=0.13U
M1005_keeper GND Vdd #903 GND nmos W=0.0975U L=7.735U
M1006_ GND __g_50_6 #fb907# GND nmos W=0.0975U L=0.13U
M1007_keeper GND Vdd #906 GND nmos W=0.0975U L=7.735U
M1008_ GND h_50_6 #fb910# GND nmos W=0.0975U L=0.13U
M1009_keeper GND Vdd #909 GND nmos W=0.0975U L=6.175U
M1010_ GND h_51_6 #fb913# GND nmos W=0.0975U L=0.13U
M1011_keeper GND Vdd #912 GND nmos W=0.0975U L=1.495U
M1012_ GND __z #fb916# GND nmos W=0.0975U L=0.13U
M1013_keeper GND Vdd #915 GND nmos W=0.0975U L=1.495U
M1014_ GND u_53_6 #fb919# GND nmos W=0.0975U L=0.13U
M1015_keeper GND Vdd #918 GND nmos W=0.0975U L=1.495U
M1016_ GND u_52_6 #fb922# GND nmos W=0.0975U L=0.13U
M1017_keeper GND Vdd #921 GND nmos W=0.0975U L=0.715U
M1018_ GND u_51_6 #fb925# GND nmos W=0.0975U L=0.13U
M1019_keeper GND Vdd #924 GND nmos W=0.0975U L=0.715U
M1020_ GND u_50_6 #fb928# GND nmos W=0.0975U L=0.13U
M1021_keeper GND Vdd #927 GND nmos W=0.0975U L=0.715U
M1022_ GND p #fb931# GND nmos W=0.0975U L=0.13U
M1023_keeper GND Vdd #930 GND nmos W=0.0975U L=0.715U
M1024_ GND w__0i #fb934# GND nmos W=0.0975U L=0.13U
M1025_keeper GND Vdd #933 GND nmos W=0.0975U L=2.275U
M1026_ GND s #fb937# GND nmos W=0.0975U L=0.13U
M1027_keeper GND Vdd #936 GND nmos W=0.0975U L=2.275U
M1028_ GND n__w__0 #fb940# GND nmos W=0.0975U L=0.13U
M1029_keeper GND Vdd #939 GND nmos W=0.0975U L=3.055U
M1030_ GND n__I__a #fb943# GND nmos W=0.0975U L=0.13U
M1031_keeper GND Vdd #942 GND nmos W=0.0975U L=3.055U
M1032_ GND n__w__1 #fb946# GND nmos W=0.0975U L=0.13U
M1033_keeper GND Vdd #945 GND nmos W=0.0975U L=1.495U
M1034_ GND n__v #fb949# GND nmos W=0.0975U L=0.13U
M1035_keeper GND Vdd #948 GND nmos W=0.0975U L=3.055U
M1036_ GND n__O0__t_50_6 #fb952# GND nmos W=0.0975U L=0.13U
M1037_keeper GND Vdd #951 GND nmos W=0.0975U L=3.055U
M1038_ GND n__O0__f_50_6 #fb955# GND nmos W=0.0975U L=0.13U
M1039_keeper GND Vdd #954 GND nmos W=0.0975U L=0.715U
M1040_ GND O1_at_50_6 #fb958# GND nmos W=0.0975U L=0.13U
M1041_keeper GND Vdd #957 GND nmos W=0.0975U L=0.715U
M1042_ GND O1_af_50_6 #fb961# GND nmos W=0.0975U L=0.13U
M1043_keeper GND Vdd #960 GND nmos W=0.0975U L=2.275U
M1044_ GND n__O0__t_51_6 #fb964# GND nmos W=0.0975U L=0.13U
M1045_keeper GND Vdd #963 GND nmos W=0.0975U L=2.275U
M1046_ GND n__O0__f_51_6 #fb967# GND nmos W=0.0975U L=0.13U
M1047_keeper GND Vdd #966 GND nmos W=0.0975U L=0.715U
M1048_ GND O1_at_51_6 #fb970# GND nmos W=0.0975U L=0.13U
M1049_keeper GND Vdd #969 GND nmos W=0.0975U L=0.715U
M1050_ GND O1_af_51_6 #fb973# GND nmos W=0.0975U L=0.13U
M1051_keeper GND Vdd #972 GND nmos W=0.0975U L=2.275U
M1052_ GND n__O0__t_52_6 #fb976# GND nmos W=0.0975U L=0.13U
M1053_keeper GND Vdd #975 GND nmos W=0.0975U L=2.275U
M1054_ GND n__O0__f_52_6 #fb979# GND nmos W=0.0975U L=0.13U
M1055_keeper GND Vdd #978 GND nmos W=0.0975U L=0.715U
M1056_ GND O1_at_52_6 #fb982# GND nmos W=0.0975U L=0.13U
M1057_keeper GND Vdd #981 GND nmos W=0.0975U L=0.715U
M1058_ GND O1_af_52_6 #fb985# GND nmos W=0.0975U L=0.13U
M1059_keeper GND Vdd #984 GND nmos W=0.0975U L=2.275U
M1060_ GND n__O0__t_53_6 #fb988# GND nmos W=0.0975U L=0.13U
M1061_keeper GND Vdd #987 GND nmos W=0.0975U L=2.275U
M1062_ GND n__O0__f_53_6 #fb991# GND nmos W=0.0975U L=0.13U
M1063_keeper GND Vdd #990 GND nmos W=0.0975U L=0.715U
M1064_ GND O1_at_53_6 #fb994# GND nmos W=0.0975U L=0.13U
M1065_keeper GND Vdd #993 GND nmos W=0.0975U L=0.715U
M1066_ GND O1_af_53_6 #fb997# GND nmos W=0.0975U L=0.13U
M1067_keeper GND Vdd #996 GND nmos W=0.0975U L=2.275U
M1068_ GND n__O0__t_54_6 #fb1000# GND nmos W=0.0975U L=0.13U
M1069_keeper GND Vdd #999 GND nmos W=0.0975U L=2.275U
M1070_ GND n__O0__f_54_6 #fb1003# GND nmos W=0.0975U L=0.13U
M1071_keeper GND Vdd #1002 GND nmos W=0.0975U L=0.715U
M1072_ GND O1_at_54_6 #fb1006# GND nmos W=0.0975U L=0.13U
M1073_keeper GND Vdd #1005 GND nmos W=0.0975U L=0.715U
M1074_ GND O1_af_54_6 #fb1009# GND nmos W=0.0975U L=0.13U
M1075_keeper GND Vdd #1008 GND nmos W=0.0975U L=2.275U
M1076_ GND n__O0__t_55_6 #fb1012# GND nmos W=0.0975U L=0.13U
M1077_keeper GND Vdd #1011 GND nmos W=0.0975U L=2.275U
M1078_ GND n__O0__f_55_6 #fb1015# GND nmos W=0.0975U L=0.13U
M1079_keeper GND Vdd #1014 GND nmos W=0.0975U L=0.715U
M1080_ GND O1_at_55_6 #fb1018# GND nmos W=0.0975U L=0.13U
M1081_keeper GND Vdd #1017 GND nmos W=0.0975U L=0.715U
M1082_ GND O1_af_55_6 #fb1021# GND nmos W=0.0975U L=0.13U
M1083_keeper GND Vdd #1020 GND nmos W=0.0975U L=2.275U
M1084_ GND n__O0__t_56_6 #fb1024# GND nmos W=0.0975U L=0.13U
M1085_keeper GND Vdd #1023 GND nmos W=0.0975U L=2.275U
M1086_ GND n__O0__f_56_6 #fb1027# GND nmos W=0.0975U L=0.13U
M1087_keeper GND Vdd #1026 GND nmos W=0.0975U L=0.715U
M1088_ GND O1_at_56_6 #fb1030# GND nmos W=0.0975U L=0.13U
M1089_keeper GND Vdd #1029 GND nmos W=0.0975U L=0.715U
M1090_ GND O1_af_56_6 #fb1033# GND nmos W=0.0975U L=0.13U
M1091_keeper GND Vdd #1032 GND nmos W=0.0975U L=2.275U
M1092_ GND n__O0__t_57_6 #fb1036# GND nmos W=0.0975U L=0.13U
M1093_keeper GND Vdd #1035 GND nmos W=0.0975U L=2.275U
M1094_ GND n__O0__f_57_6 #fb1039# GND nmos W=0.0975U L=0.13U
M1095_keeper GND Vdd #1038 GND nmos W=0.0975U L=0.715U
M1096_ GND O1_at_57_6 #fb1042# GND nmos W=0.0975U L=0.13U
M1097_keeper GND Vdd #1041 GND nmos W=0.0975U L=0.715U
M1098_ GND O1_af_57_6 #fb1045# GND nmos W=0.0975U L=0.13U
M1099_keeper GND Vdd #1044 GND nmos W=0.0975U L=2.275U
M1100_ GND n__O0__t_58_6 #fb1048# GND nmos W=0.0975U L=0.13U
M1101_keeper GND Vdd #1047 GND nmos W=0.0975U L=2.275U
M1102_ GND n__O0__f_58_6 #fb1051# GND nmos W=0.0975U L=0.13U
M1103_keeper GND Vdd #1050 GND nmos W=0.0975U L=0.715U
M1104_ GND O1_at_58_6 #fb1054# GND nmos W=0.0975U L=0.13U
M1105_keeper GND Vdd #1053 GND nmos W=0.0975U L=0.715U
M1106_ GND O1_af_58_6 #fb1057# GND nmos W=0.0975U L=0.13U
M1107_keeper GND Vdd #1056 GND nmos W=0.0975U L=2.275U
M1108_ GND n__O0__t_59_6 #fb1060# GND nmos W=0.0975U L=0.13U
M1109_keeper GND Vdd #1059 GND nmos W=0.0975U L=2.275U
M1110_ GND n__O0__f_59_6 #fb1063# GND nmos W=0.0975U L=0.13U
M1111_keeper GND Vdd #1062 GND nmos W=0.0975U L=0.715U
M1112_ GND O1_at_59_6 #fb1066# GND nmos W=0.0975U L=0.13U
M1113_keeper GND Vdd #1065 GND nmos W=0.0975U L=0.715U
M1114_ GND O1_af_59_6 #fb1069# GND nmos W=0.0975U L=0.13U
M1115_keeper GND Vdd #1068 GND nmos W=0.0975U L=2.275U
M1116_ GND n__O0__t_510_6 #fb1072# GND nmos W=0.0975U L=0.13U
M1117_keeper GND Vdd #1071 GND nmos W=0.0975U L=2.275U
M1118_ GND n__O0__f_510_6 #fb1075# GND nmos W=0.0975U L=0.13U
M1119_keeper GND Vdd #1074 GND nmos W=0.0975U L=0.715U
M1120_ GND O1_at_510_6 #fb1078# GND nmos W=0.0975U L=0.13U
M1121_keeper GND Vdd #1077 GND nmos W=0.0975U L=0.715U
M1122_ GND O1_af_510_6 #fb1081# GND nmos W=0.0975U L=0.13U
M1123_keeper GND Vdd #1080 GND nmos W=0.0975U L=2.275U
M1124_ GND n__O0__t_511_6 #fb1084# GND nmos W=0.0975U L=0.13U
M1125_keeper GND Vdd #1083 GND nmos W=0.0975U L=2.275U
M1126_ GND n__O0__f_511_6 #fb1087# GND nmos W=0.0975U L=0.13U
M1127_keeper GND Vdd #1086 GND nmos W=0.0975U L=0.715U
M1128_ GND O1_at_511_6 #fb1090# GND nmos W=0.0975U L=0.13U
M1129_keeper GND Vdd #1089 GND nmos W=0.0975U L=0.715U
M1130_ GND O1_af_511_6 #fb1093# GND nmos W=0.0975U L=0.13U
M1131_keeper GND Vdd #1092 GND nmos W=0.0975U L=2.275U
M1132_ GND n__O0__t_512_6 #fb1096# GND nmos W=0.0975U L=0.13U
M1133_keeper GND Vdd #1095 GND nmos W=0.0975U L=2.275U
M1134_ GND n__O0__f_512_6 #fb1099# GND nmos W=0.0975U L=0.13U
M1135_keeper GND Vdd #1098 GND nmos W=0.0975U L=0.715U
M1136_ GND O1_at_512_6 #fb1102# GND nmos W=0.0975U L=0.13U
M1137_keeper GND Vdd #1101 GND nmos W=0.0975U L=0.715U
M1138_ GND O1_af_512_6 #fb1105# GND nmos W=0.0975U L=0.13U
M1139_keeper GND Vdd #1104 GND nmos W=0.0975U L=2.275U
M1140_ GND n__O0__t_513_6 #fb1108# GND nmos W=0.0975U L=0.13U
M1141_keeper GND Vdd #1107 GND nmos W=0.0975U L=2.275U
M1142_ GND n__O0__f_513_6 #fb1111# GND nmos W=0.0975U L=0.13U
M1143_keeper GND Vdd #1110 GND nmos W=0.0975U L=0.715U
M1144_ GND O1_at_513_6 #fb1114# GND nmos W=0.0975U L=0.13U
M1145_keeper GND Vdd #1113 GND nmos W=0.0975U L=0.715U
M1146_ GND O1_af_513_6 #fb1117# GND nmos W=0.0975U L=0.13U
M1147_keeper GND Vdd #1116 GND nmos W=0.0975U L=2.275U
M1148_ GND n__O0__t_514_6 #fb1120# GND nmos W=0.0975U L=0.13U
M1149_keeper GND Vdd #1119 GND nmos W=0.0975U L=2.275U
M1150_ GND n__O0__f_514_6 #fb1123# GND nmos W=0.0975U L=0.13U
M1151_keeper GND Vdd #1122 GND nmos W=0.0975U L=0.715U
M1152_ GND O1_at_514_6 #fb1126# GND nmos W=0.0975U L=0.13U
M1153_keeper GND Vdd #1125 GND nmos W=0.0975U L=0.715U
M1154_ GND O1_af_514_6 #fb1129# GND nmos W=0.0975U L=0.13U
M1155_keeper GND Vdd #1128 GND nmos W=0.0975U L=2.275U
M1156_ GND n__O0__t_515_6 #fb1132# GND nmos W=0.0975U L=0.13U
M1157_keeper GND Vdd #1131 GND nmos W=0.0975U L=2.275U
M1158_ GND n__O0__f_515_6 #fb1135# GND nmos W=0.0975U L=0.13U
M1159_keeper GND Vdd #1134 GND nmos W=0.0975U L=0.715U
M1160_ GND O1_at_515_6 #fb1138# GND nmos W=0.0975U L=0.13U
M1161_keeper GND Vdd #1137 GND nmos W=0.0975U L=0.715U
M1162_ GND O1_af_515_6 #fb1141# GND nmos W=0.0975U L=0.13U
M1163_keeper GND Vdd #1140 GND nmos W=0.0975U L=2.275U
M1164_ GND n__O0__t_516_6 #fb1144# GND nmos W=0.0975U L=0.13U
M1165_keeper GND Vdd #1143 GND nmos W=0.0975U L=2.275U
M1166_ GND n__O0__f_516_6 #fb1147# GND nmos W=0.0975U L=0.13U
M1167_keeper GND Vdd #1146 GND nmos W=0.0975U L=0.715U
M1168_ GND O1_at_516_6 #fb1150# GND nmos W=0.0975U L=0.13U
M1169_keeper GND Vdd #1149 GND nmos W=0.0975U L=0.715U
M1170_ GND O1_af_516_6 #fb1153# GND nmos W=0.0975U L=0.13U
M1171_keeper GND Vdd #1152 GND nmos W=0.0975U L=2.275U
M1172_ GND n__O0__t_517_6 #fb1156# GND nmos W=0.0975U L=0.13U
M1173_keeper GND Vdd #1155 GND nmos W=0.0975U L=2.275U
M1174_ GND n__O0__f_517_6 #fb1159# GND nmos W=0.0975U L=0.13U
M1175_keeper GND Vdd #1158 GND nmos W=0.0975U L=0.715U
M1176_ GND O1_at_517_6 #fb1162# GND nmos W=0.0975U L=0.13U
M1177_keeper GND Vdd #1161 GND nmos W=0.0975U L=0.715U
M1178_ GND O1_af_517_6 #fb1165# GND nmos W=0.0975U L=0.13U
M1179_keeper GND Vdd #1164 GND nmos W=0.0975U L=2.275U
M1180_ GND n__O0__t_518_6 #fb1168# GND nmos W=0.0975U L=0.13U
M1181_keeper GND Vdd #1167 GND nmos W=0.0975U L=2.275U
M1182_ GND n__O0__f_518_6 #fb1171# GND nmos W=0.0975U L=0.13U
M1183_keeper GND Vdd #1170 GND nmos W=0.0975U L=0.715U
M1184_ GND O1_at_518_6 #fb1174# GND nmos W=0.0975U L=0.13U
M1185_keeper GND Vdd #1173 GND nmos W=0.0975U L=0.715U
M1186_ GND O1_af_518_6 #fb1177# GND nmos W=0.0975U L=0.13U
M1187_keeper GND Vdd #1176 GND nmos W=0.0975U L=2.275U
M1188_ GND n__O0__t_519_6 #fb1180# GND nmos W=0.0975U L=0.13U
M1189_keeper GND Vdd #1179 GND nmos W=0.0975U L=2.275U
M1190_ GND n__O0__f_519_6 #fb1183# GND nmos W=0.0975U L=0.13U
M1191_keeper GND Vdd #1182 GND nmos W=0.0975U L=0.715U
M1192_ GND O1_at_519_6 #fb1186# GND nmos W=0.0975U L=0.13U
M1193_keeper GND Vdd #1185 GND nmos W=0.0975U L=0.715U
M1194_ GND O1_af_519_6 #fb1189# GND nmos W=0.0975U L=0.13U
M1195_keeper GND Vdd #1188 GND nmos W=0.0975U L=2.275U
M1196_ GND n__O0__t_520_6 #fb1192# GND nmos W=0.0975U L=0.13U
M1197_keeper GND Vdd #1191 GND nmos W=0.0975U L=2.275U
M1198_ GND n__O0__f_520_6 #fb1195# GND nmos W=0.0975U L=0.13U
M1199_keeper GND Vdd #1194 GND nmos W=0.0975U L=0.715U
M1200_ GND O1_at_520_6 #fb1198# GND nmos W=0.0975U L=0.13U
M1201_keeper GND Vdd #1197 GND nmos W=0.0975U L=0.715U
M1202_ GND O1_af_520_6 #fb1201# GND nmos W=0.0975U L=0.13U
M1203_keeper GND Vdd #1200 GND nmos W=0.0975U L=2.275U
M1204_ GND n__O0__t_521_6 #fb1204# GND nmos W=0.0975U L=0.13U
M1205_keeper GND Vdd #1203 GND nmos W=0.0975U L=2.275U
M1206_ GND n__O0__f_521_6 #fb1207# GND nmos W=0.0975U L=0.13U
M1207_keeper GND Vdd #1206 GND nmos W=0.0975U L=0.715U
M1208_ GND O1_at_521_6 #fb1210# GND nmos W=0.0975U L=0.13U
M1209_keeper GND Vdd #1209 GND nmos W=0.0975U L=0.715U
M1210_ GND O1_af_521_6 #fb1213# GND nmos W=0.0975U L=0.13U
M1211_keeper GND Vdd #1212 GND nmos W=0.0975U L=2.275U
M1212_ GND n__O0__t_522_6 #fb1216# GND nmos W=0.0975U L=0.13U
M1213_keeper GND Vdd #1215 GND nmos W=0.0975U L=2.275U
M1214_ GND n__O0__f_522_6 #fb1219# GND nmos W=0.0975U L=0.13U
M1215_keeper GND Vdd #1218 GND nmos W=0.0975U L=0.715U
M1216_ GND O1_at_522_6 #fb1222# GND nmos W=0.0975U L=0.13U
M1217_keeper GND Vdd #1221 GND nmos W=0.0975U L=0.715U
M1218_ GND O1_af_522_6 #fb1225# GND nmos W=0.0975U L=0.13U
M1219_keeper GND Vdd #1224 GND nmos W=0.0975U L=2.275U
M1220_ GND n__O0__t_523_6 #fb1228# GND nmos W=0.0975U L=0.13U
M1221_keeper GND Vdd #1227 GND nmos W=0.0975U L=2.275U
M1222_ GND n__O0__f_523_6 #fb1231# GND nmos W=0.0975U L=0.13U
M1223_keeper GND Vdd #1230 GND nmos W=0.0975U L=0.715U
M1224_ GND O1_at_523_6 #fb1234# GND nmos W=0.0975U L=0.13U
M1225_keeper GND Vdd #1233 GND nmos W=0.0975U L=0.715U
M1226_ GND O1_af_523_6 #fb1237# GND nmos W=0.0975U L=0.13U
M1227_keeper GND Vdd #1236 GND nmos W=0.0975U L=2.275U
M1228_ GND n__O0__t_524_6 #fb1240# GND nmos W=0.0975U L=0.13U
M1229_keeper GND Vdd #1239 GND nmos W=0.0975U L=2.275U
M1230_ GND n__O0__f_524_6 #fb1243# GND nmos W=0.0975U L=0.13U
M1231_keeper GND Vdd #1242 GND nmos W=0.0975U L=0.715U
M1232_ GND O1_at_524_6 #fb1246# GND nmos W=0.0975U L=0.13U
M1233_keeper GND Vdd #1245 GND nmos W=0.0975U L=0.715U
M1234_ GND O1_af_524_6 #fb1249# GND nmos W=0.0975U L=0.13U
M1235_keeper GND Vdd #1248 GND nmos W=0.0975U L=2.275U
M1236_ GND n__O0__t_525_6 #fb1252# GND nmos W=0.0975U L=0.13U
M1237_keeper GND Vdd #1251 GND nmos W=0.0975U L=2.275U
M1238_ GND n__O0__f_525_6 #fb1255# GND nmos W=0.0975U L=0.13U
M1239_keeper GND Vdd #1254 GND nmos W=0.0975U L=0.715U
M1240_ GND O1_at_525_6 #fb1258# GND nmos W=0.0975U L=0.13U
M1241_keeper GND Vdd #1257 GND nmos W=0.0975U L=0.715U
M1242_ GND O1_af_525_6 #fb1261# GND nmos W=0.0975U L=0.13U
M1243_keeper GND Vdd #1260 GND nmos W=0.0975U L=2.275U
M1244_ GND n__O0__t_526_6 #fb1264# GND nmos W=0.0975U L=0.13U
M1245_keeper GND Vdd #1263 GND nmos W=0.0975U L=2.275U
M1246_ GND n__O0__f_526_6 #fb1267# GND nmos W=0.0975U L=0.13U
M1247_keeper GND Vdd #1266 GND nmos W=0.0975U L=0.715U
M1248_ GND O1_at_526_6 #fb1270# GND nmos W=0.0975U L=0.13U
M1249_keeper GND Vdd #1269 GND nmos W=0.0975U L=0.715U
M1250_ GND O1_af_526_6 #fb1273# GND nmos W=0.0975U L=0.13U
M1251_keeper GND Vdd #1272 GND nmos W=0.0975U L=2.275U
M1252_ GND n__O0__t_527_6 #fb1276# GND nmos W=0.0975U L=0.13U
M1253_keeper GND Vdd #1275 GND nmos W=0.0975U L=2.275U
M1254_ GND n__O0__f_527_6 #fb1279# GND nmos W=0.0975U L=0.13U
M1255_keeper GND Vdd #1278 GND nmos W=0.0975U L=0.715U
M1256_ GND O1_at_527_6 #fb1282# GND nmos W=0.0975U L=0.13U
M1257_keeper GND Vdd #1281 GND nmos W=0.0975U L=0.715U
M1258_ GND O1_af_527_6 #fb1285# GND nmos W=0.0975U L=0.13U
M1259_keeper GND Vdd #1284 GND nmos W=0.0975U L=2.275U
M1260_ GND n__O0__t_528_6 #fb1288# GND nmos W=0.0975U L=0.13U
M1261_keeper GND Vdd #1287 GND nmos W=0.0975U L=2.275U
M1262_ GND n__O0__f_528_6 #fb1291# GND nmos W=0.0975U L=0.13U
M1263_keeper GND Vdd #1290 GND nmos W=0.0975U L=0.715U
M1264_ GND O1_at_528_6 #fb1294# GND nmos W=0.0975U L=0.13U
M1265_keeper GND Vdd #1293 GND nmos W=0.0975U L=0.715U
M1266_ GND O1_af_528_6 #fb1297# GND nmos W=0.0975U L=0.13U
M1267_keeper GND Vdd #1296 GND nmos W=0.0975U L=2.275U
M1268_ GND n__O0__t_529_6 #fb1300# GND nmos W=0.0975U L=0.13U
M1269_keeper GND Vdd #1299 GND nmos W=0.0975U L=2.275U
M1270_ GND n__O0__f_529_6 #fb1303# GND nmos W=0.0975U L=0.13U
M1271_keeper GND Vdd #1302 GND nmos W=0.0975U L=0.715U
M1272_ GND O1_at_529_6 #fb1306# GND nmos W=0.0975U L=0.13U
M1273_keeper GND Vdd #1305 GND nmos W=0.0975U L=0.715U
M1274_ GND O1_af_529_6 #fb1309# GND nmos W=0.0975U L=0.13U
M1275_keeper GND Vdd #1308 GND nmos W=0.0975U L=2.275U
M1276_ GND n__O0__t_530_6 #fb1312# GND nmos W=0.0975U L=0.13U
M1277_keeper GND Vdd #1311 GND nmos W=0.0975U L=2.275U
M1278_ GND n__O0__f_530_6 #fb1315# GND nmos W=0.0975U L=0.13U
M1279_keeper GND Vdd #1314 GND nmos W=0.0975U L=0.715U
M1280_ GND O1_at_530_6 #fb1318# GND nmos W=0.0975U L=0.13U
M1281_keeper GND Vdd #1317 GND nmos W=0.0975U L=0.715U
M1282_ GND O1_af_530_6 #fb1321# GND nmos W=0.0975U L=0.13U
M1283_keeper GND Vdd #1320 GND nmos W=0.0975U L=2.275U
M1284_ GND n__O0__t_531_6 #fb1324# GND nmos W=0.0975U L=0.13U
M1285_keeper GND Vdd #1323 GND nmos W=0.0975U L=2.275U
M1286_ GND n__O0__f_531_6 #fb1327# GND nmos W=0.0975U L=0.13U
M1287_keeper GND Vdd #1326 GND nmos W=0.0975U L=0.715U
M1288_ GND O1_at_531_6 #fb1330# GND nmos W=0.0975U L=0.13U
M1289_keeper GND Vdd #1329 GND nmos W=0.0975U L=0.715U
M1290_ GND O1_af_531_6 #fb1333# GND nmos W=0.0975U L=0.13U
M1291_keeper GND Vdd #1332 GND nmos W=0.0975U L=2.275U
M1292_keeper GND Vdd #1335 GND nmos W=0.0975U L=2.275U
M1293_ #3 I_at_50_6 __c_50_6 GND nmos W=0.0975U L=0.065U
M1294_ #3 I_af_50_6 __c_50_6 GND nmos W=0.0975U L=0.065U
M1295_ #20 I_af_50_6 __c_50_6 Vdd pmos W=0.1625U L=0.065U
M1296_keeper #851 #fb850# __c_50_6 Vdd pmos W=0.0975U L=0.065U
M1297_keeper #852 #fb850# __c_50_6 GND nmos W=0.0975U L=0.065U
M1298_ #4 I_at_51_6 #3 GND nmos W=0.0975U L=0.065U
M1299_ #4 I_af_51_6 #3 GND nmos W=0.0975U L=0.065U
M1300_ #5 I_at_52_6 #4 GND nmos W=0.0975U L=0.065U
M1301_ #5 I_af_52_6 #4 GND nmos W=0.0975U L=0.065U
M1302_ #19 I_af_51_6 #14 Vdd pmos W=0.1625U L=0.065U
M1303_ #14 I_at_50_6 #20 Vdd pmos W=0.1625U L=0.065U
M1304_ #18 I_af_52_6 #15 Vdd pmos W=0.1625U L=0.065U
M1305_ #15 I_at_51_6 #19 Vdd pmos W=0.1625U L=0.065U
M1306_ #17 I_af_53_6 #16 Vdd pmos W=0.1625U L=0.065U
M1307_ #16 I_at_52_6 #18 Vdd pmos W=0.1625U L=0.065U
M1308_ #22 I_at_54_6 __c_51_6 GND nmos W=0.0975U L=0.065U
M1309_ #22 I_af_54_6 __c_51_6 GND nmos W=0.0975U L=0.065U
M1310_ #39 I_af_54_6 __c_51_6 Vdd pmos W=0.1625U L=0.065U
M1311_keeper #854 #fb853# __c_51_6 Vdd pmos W=0.0975U L=0.065U
M1312_keeper #855 #fb853# __c_51_6 GND nmos W=0.0975U L=0.065U
M1313_ #23 I_at_55_6 #22 GND nmos W=0.0975U L=0.065U
M1314_ #23 I_af_55_6 #22 GND nmos W=0.0975U L=0.065U
M1315_ #24 I_at_56_6 #23 GND nmos W=0.0975U L=0.065U
M1316_ #24 I_af_56_6 #23 GND nmos W=0.0975U L=0.065U
M1317_ #38 I_af_55_6 #33 Vdd pmos W=0.1625U L=0.065U
M1318_ #33 I_at_54_6 #39 Vdd pmos W=0.1625U L=0.065U
M1319_ #37 I_af_56_6 #34 Vdd pmos W=0.1625U L=0.065U
M1320_ #34 I_at_55_6 #38 Vdd pmos W=0.1625U L=0.065U
M1321_ #36 I_af_57_6 #35 Vdd pmos W=0.1625U L=0.065U
M1322_ #35 I_at_56_6 #37 Vdd pmos W=0.1625U L=0.065U
M1323_ #41 I_at_58_6 __c_52_6 GND nmos W=0.0975U L=0.065U
M1324_ #41 I_af_58_6 __c_52_6 GND nmos W=0.0975U L=0.065U
M1325_ #58 I_af_58_6 __c_52_6 Vdd pmos W=0.1625U L=0.065U
M1326_keeper #857 #fb856# __c_52_6 Vdd pmos W=0.0975U L=0.065U
M1327_keeper #858 #fb856# __c_52_6 GND nmos W=0.0975U L=0.065U
M1328_ #42 I_at_59_6 #41 GND nmos W=0.0975U L=0.065U
M1329_ #42 I_af_59_6 #41 GND nmos W=0.0975U L=0.065U
M1330_ #43 I_at_510_6 #42 GND nmos W=0.0975U L=0.065U
M1331_ #43 I_af_510_6 #42 GND nmos W=0.0975U L=0.065U
M1332_ #57 I_af_59_6 #52 Vdd pmos W=0.1625U L=0.065U
M1333_ #52 I_at_58_6 #58 Vdd pmos W=0.1625U L=0.065U
M1334_ #56 I_af_510_6 #53 Vdd pmos W=0.1625U L=0.065U
M1335_ #53 I_at_59_6 #57 Vdd pmos W=0.1625U L=0.065U
M1336_ #55 I_af_511_6 #54 Vdd pmos W=0.1625U L=0.065U
M1337_ #54 I_at_510_6 #56 Vdd pmos W=0.1625U L=0.065U
M1338_ #60 I_at_512_6 __c_53_6 GND nmos W=0.0975U L=0.065U
M1339_ #60 I_af_512_6 __c_53_6 GND nmos W=0.0975U L=0.065U
M1340_ #77 I_af_512_6 __c_53_6 Vdd pmos W=0.1625U L=0.065U
M1341_keeper #860 #fb859# __c_53_6 Vdd pmos W=0.0975U L=0.065U
M1342_keeper #861 #fb859# __c_53_6 GND nmos W=0.0975U L=0.065U
M1343_ #61 I_at_513_6 #60 GND nmos W=0.0975U L=0.065U
M1344_ #61 I_af_513_6 #60 GND nmos W=0.0975U L=0.065U
M1345_ #62 I_at_514_6 #61 GND nmos W=0.0975U L=0.065U
M1346_ #62 I_af_514_6 #61 GND nmos W=0.0975U L=0.065U
M1347_ #76 I_af_513_6 #71 Vdd pmos W=0.1625U L=0.065U
M1348_ #71 I_at_512_6 #77 Vdd pmos W=0.1625U L=0.065U
M1349_ #75 I_af_514_6 #72 Vdd pmos W=0.1625U L=0.065U
M1350_ #72 I_at_513_6 #76 Vdd pmos W=0.1625U L=0.065U
M1351_ #74 I_af_515_6 #73 Vdd pmos W=0.1625U L=0.065U
M1352_ #73 I_at_514_6 #75 Vdd pmos W=0.1625U L=0.065U
M1353_ #79 I_at_516_6 __c_54_6 GND nmos W=0.0975U L=0.065U
M1354_ #79 I_af_516_6 __c_54_6 GND nmos W=0.0975U L=0.065U
M1355_ #96 I_af_516_6 __c_54_6 Vdd pmos W=0.1625U L=0.065U
M1356_keeper #863 #fb862# __c_54_6 Vdd pmos W=0.0975U L=0.065U
M1357_keeper #864 #fb862# __c_54_6 GND nmos W=0.0975U L=0.065U
M1358_ #80 I_at_517_6 #79 GND nmos W=0.0975U L=0.065U
M1359_ #80 I_af_517_6 #79 GND nmos W=0.0975U L=0.065U
M1360_ #81 I_at_518_6 #80 GND nmos W=0.0975U L=0.065U
M1361_ #81 I_af_518_6 #80 GND nmos W=0.0975U L=0.065U
M1362_ #95 I_af_517_6 #90 Vdd pmos W=0.1625U L=0.065U
M1363_ #90 I_at_516_6 #96 Vdd pmos W=0.1625U L=0.065U
M1364_ #94 I_af_518_6 #91 Vdd pmos W=0.1625U L=0.065U
M1365_ #91 I_at_517_6 #95 Vdd pmos W=0.1625U L=0.065U
M1366_ #93 I_af_519_6 #92 Vdd pmos W=0.1625U L=0.065U
M1367_ #92 I_at_518_6 #94 Vdd pmos W=0.1625U L=0.065U
M1368_ #98 I_at_520_6 __c_55_6 GND nmos W=0.0975U L=0.065U
M1369_ #98 I_af_520_6 __c_55_6 GND nmos W=0.0975U L=0.065U
M1370_ #115 I_af_520_6 __c_55_6 Vdd pmos W=0.1625U L=0.065U
M1371_keeper #866 #fb865# __c_55_6 Vdd pmos W=0.0975U L=0.065U
M1372_keeper #867 #fb865# __c_55_6 GND nmos W=0.0975U L=0.065U
M1373_ #99 I_at_521_6 #98 GND nmos W=0.0975U L=0.065U
M1374_ #99 I_af_521_6 #98 GND nmos W=0.0975U L=0.065U
M1375_ #100 I_at_522_6 #99 GND nmos W=0.0975U L=0.065U
M1376_ #100 I_af_522_6 #99 GND nmos W=0.0975U L=0.065U
M1377_ #114 I_af_521_6 #109 Vdd pmos W=0.1625U L=0.065U
M1378_ #109 I_at_520_6 #115 Vdd pmos W=0.1625U L=0.065U
M1379_ #113 I_af_522_6 #110 Vdd pmos W=0.1625U L=0.065U
M1380_ #110 I_at_521_6 #114 Vdd pmos W=0.1625U L=0.065U
M1381_ #112 I_af_523_6 #111 Vdd pmos W=0.1625U L=0.065U
M1382_ #111 I_at_522_6 #113 Vdd pmos W=0.1625U L=0.065U
M1383_ #117 I_at_524_6 __c_56_6 GND nmos W=0.0975U L=0.065U
M1384_ #117 I_af_524_6 __c_56_6 GND nmos W=0.0975U L=0.065U
M1385_ #134 I_af_524_6 __c_56_6 Vdd pmos W=0.1625U L=0.065U
M1386_keeper #869 #fb868# __c_56_6 Vdd pmos W=0.0975U L=0.065U
M1387_keeper #870 #fb868# __c_56_6 GND nmos W=0.0975U L=0.065U
M1388_ #118 I_at_525_6 #117 GND nmos W=0.0975U L=0.065U
M1389_ #118 I_af_525_6 #117 GND nmos W=0.0975U L=0.065U
M1390_ #119 I_at_526_6 #118 GND nmos W=0.0975U L=0.065U
M1391_ #119 I_af_526_6 #118 GND nmos W=0.0975U L=0.065U
M1392_ #133 I_af_525_6 #128 Vdd pmos W=0.1625U L=0.065U
M1393_ #128 I_at_524_6 #134 Vdd pmos W=0.1625U L=0.065U
M1394_ #132 I_af_526_6 #129 Vdd pmos W=0.1625U L=0.065U
M1395_ #129 I_at_525_6 #133 Vdd pmos W=0.1625U L=0.065U
M1396_ #131 I_af_527_6 #130 Vdd pmos W=0.1625U L=0.065U
M1397_ #130 I_at_526_6 #132 Vdd pmos W=0.1625U L=0.065U
M1398_ #136 I_at_528_6 __c_57_6 GND nmos W=0.0975U L=0.065U
M1399_ #136 I_af_528_6 __c_57_6 GND nmos W=0.0975U L=0.065U
M1400_ #153 I_af_528_6 __c_57_6 Vdd pmos W=0.1625U L=0.065U
M1401_keeper #872 #fb871# __c_57_6 Vdd pmos W=0.0975U L=0.065U
M1402_keeper #873 #fb871# __c_57_6 GND nmos W=0.0975U L=0.065U
M1403_ #137 I_at_529_6 #136 GND nmos W=0.0975U L=0.065U
M1404_ #137 I_af_529_6 #136 GND nmos W=0.0975U L=0.065U
M1405_ #138 I_at_530_6 #137 GND nmos W=0.0975U L=0.065U
M1406_ #138 I_af_530_6 #137 GND nmos W=0.0975U L=0.065U
M1407_ #152 I_af_529_6 #147 Vdd pmos W=0.1625U L=0.065U
M1408_ #147 I_at_528_6 #153 Vdd pmos W=0.1625U L=0.065U
M1409_ #151 I_af_530_6 #148 Vdd pmos W=0.1625U L=0.065U
M1410_ #148 I_at_529_6 #152 Vdd pmos W=0.1625U L=0.065U
M1411_ #150 I_af_531_6 #149 Vdd pmos W=0.1625U L=0.065U
M1412_ #149 I_at_530_6 #151 Vdd pmos W=0.1625U L=0.065U
M1413_ #155 __c_50_6 d_50_6 Vdd pmos W=0.1625U L=0.065U
M1414_ #156 __c_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M1415_keeper #875 #fb874# d_50_6 Vdd pmos W=0.0975U L=0.065U
M1416_keeper #876 #fb874# d_50_6 GND nmos W=0.0975U L=0.065U
M1417_ #158 __c_52_6 d_51_6 Vdd pmos W=0.1625U L=0.065U
M1418_ #159 __c_52_6 d_51_6 GND nmos W=0.0975U L=0.065U
M1419_keeper #878 #fb877# d_51_6 Vdd pmos W=0.0975U L=0.065U
M1420_keeper #879 #fb877# d_51_6 GND nmos W=0.0975U L=0.065U
M1421_ #161 __c_54_6 d_52_6 Vdd pmos W=0.1625U L=0.065U
M1422_ #162 __c_54_6 d_52_6 GND nmos W=0.0975U L=0.065U
M1423_keeper #881 #fb880# d_52_6 Vdd pmos W=0.0975U L=0.065U
M1424_keeper #882 #fb880# d_52_6 GND nmos W=0.0975U L=0.065U
M1425_ #164 __c_56_6 d_53_6 Vdd pmos W=0.1625U L=0.065U
M1426_ #165 __c_56_6 d_53_6 GND nmos W=0.0975U L=0.065U
M1427_keeper #884 #fb883# d_53_6 Vdd pmos W=0.0975U L=0.065U
M1428_keeper #885 #fb883# d_53_6 GND nmos W=0.0975U L=0.065U
M1429_ #167 d_50_6 __e_50_6 GND nmos W=0.0975U L=0.065U
M1430_ #168 d_50_6 __e_50_6 Vdd pmos W=0.1625U L=0.065U
M1431_keeper #887 #fb886# __e_50_6 Vdd pmos W=0.0975U L=0.065U
M1432_keeper #888 #fb886# __e_50_6 GND nmos W=0.0975U L=0.065U
M1433_ #170 d_52_6 __e_51_6 GND nmos W=0.0975U L=0.065U
M1434_ #171 d_52_6 __e_51_6 Vdd pmos W=0.1625U L=0.065U
M1435_keeper #890 #fb889# __e_51_6 Vdd pmos W=0.0975U L=0.065U
M1436_keeper #891 #fb889# __e_51_6 GND nmos W=0.0975U L=0.065U
M1437_ #173 __e_50_6 c Vdd pmos W=0.1625U L=0.065U
M1438_ #174 __e_50_6 c GND nmos W=0.0975U L=0.065U
M1439_keeper #893 #fb892# c Vdd pmos W=0.0975U L=0.065U
M1440_keeper #894 #fb892# c GND nmos W=0.0975U L=0.065U
M1441_ #176 c f Vdd pmos W=0.1625U L=0.065U
M1442_keeper #896 #fb895# f Vdd pmos W=0.0975U L=0.065U
M1443_keeper #897 #fb895# f GND nmos W=0.0975U L=0.065U
M1444_ #181 I_af_527_6 __g_53_6 GND nmos W=0.0975U L=0.065U
M1445_ #192 I_af_527_6 __g_53_6 Vdd pmos W=0.1625U L=0.065U
M1446_keeper #899 #fb898# __g_53_6 Vdd pmos W=0.0975U L=0.065U
M1447_keeper #900 #fb898# __g_53_6 GND nmos W=0.0975U L=0.065U
M1448_ #180 I_af_530_6 #183 GND nmos W=0.0975U L=0.065U
M1449_ #182 I_af_528_6 #181 GND nmos W=0.0975U L=0.065U
M1450_ #183 I_af_529_6 #182 GND nmos W=0.0975U L=0.065U
M1451_ #191 I_af_528_6 #184 Vdd pmos W=0.1625U L=0.065U
M1452_ #184 I_at_527_6 #192 Vdd pmos W=0.1625U L=0.065U
M1453_ #190 I_af_529_6 #185 Vdd pmos W=0.1625U L=0.065U
M1454_ #185 I_at_528_6 #191 Vdd pmos W=0.1625U L=0.065U
M1455_ #189 I_af_530_6 #186 Vdd pmos W=0.1625U L=0.065U
M1456_ #186 I_at_529_6 #190 Vdd pmos W=0.1625U L=0.065U
M1457_ #188 I_af_531_6 #187 Vdd pmos W=0.1625U L=0.065U
M1458_ #187 I_at_530_6 #189 Vdd pmos W=0.1625U L=0.065U
M1459_ #194 I_af_522_6 __g_52_6 GND nmos W=0.0975U L=0.065U
M1460_ #206 I_af_522_6 __g_52_6 Vdd pmos W=0.1625U L=0.065U
M1461_keeper #902 #fb901# __g_52_6 Vdd pmos W=0.0975U L=0.065U
M1462_keeper #903 #fb901# __g_52_6 GND nmos W=0.0975U L=0.065U
M1463_ #195 I_af_523_6 #194 GND nmos W=0.0975U L=0.065U
M1464_ #196 I_af_524_6 #195 GND nmos W=0.0975U L=0.065U
M1465_ #197 I_af_525_6 #196 GND nmos W=0.0975U L=0.065U
M1466_ #205 I_af_523_6 #198 Vdd pmos W=0.1625U L=0.065U
M1467_ #198 I_at_522_6 #206 Vdd pmos W=0.1625U L=0.065U
M1468_ #204 I_af_524_6 #199 Vdd pmos W=0.1625U L=0.065U
M1469_ #199 I_at_523_6 #205 Vdd pmos W=0.1625U L=0.065U
M1470_ #203 I_af_525_6 #200 Vdd pmos W=0.1625U L=0.065U
M1471_ #200 I_at_524_6 #204 Vdd pmos W=0.1625U L=0.065U
M1472_ #202 I_af_526_6 #201 Vdd pmos W=0.1625U L=0.065U
M1473_ #201 I_at_525_6 #203 Vdd pmos W=0.1625U L=0.065U
M1474_ #208 I_af_517_6 __g_51_6 GND nmos W=0.0975U L=0.065U
M1475_ #220 I_af_517_6 __g_51_6 Vdd pmos W=0.1625U L=0.065U
M1476_keeper #905 #fb904# __g_51_6 Vdd pmos W=0.0975U L=0.065U
M1477_keeper #906 #fb904# __g_51_6 GND nmos W=0.0975U L=0.065U
M1478_ #209 I_af_518_6 #208 GND nmos W=0.0975U L=0.065U
M1479_ #210 I_af_519_6 #209 GND nmos W=0.0975U L=0.065U
M1480_ #211 I_af_520_6 #210 GND nmos W=0.0975U L=0.065U
M1481_ #219 I_af_518_6 #212 Vdd pmos W=0.1625U L=0.065U
M1482_ #212 I_at_517_6 #220 Vdd pmos W=0.1625U L=0.065U
M1483_ #218 I_af_519_6 #213 Vdd pmos W=0.1625U L=0.065U
M1484_ #213 I_at_518_6 #219 Vdd pmos W=0.1625U L=0.065U
M1485_ #217 I_af_520_6 #214 Vdd pmos W=0.1625U L=0.065U
M1486_ #214 I_at_519_6 #218 Vdd pmos W=0.1625U L=0.065U
M1487_ #216 I_af_521_6 #215 Vdd pmos W=0.1625U L=0.065U
M1488_ #215 I_at_520_6 #217 Vdd pmos W=0.1625U L=0.065U
M1489_ #222 I_af_513_6 __g_50_6 GND nmos W=0.0975U L=0.065U
M1490_ #231 I_af_513_6 __g_50_6 Vdd pmos W=0.1625U L=0.065U
M1491_keeper #908 #fb907# __g_50_6 Vdd pmos W=0.0975U L=0.065U
M1492_keeper #909 #fb907# __g_50_6 GND nmos W=0.0975U L=0.065U
M1493_ #223 I_af_514_6 #222 GND nmos W=0.0975U L=0.065U
M1494_ #224 I_af_515_6 #223 GND nmos W=0.0975U L=0.065U
M1495_ #230 I_af_514_6 #225 Vdd pmos W=0.1625U L=0.065U
M1496_ #225 I_at_513_6 #231 Vdd pmos W=0.1625U L=0.065U
M1497_ #229 I_af_515_6 #226 Vdd pmos W=0.1625U L=0.065U
M1498_ #226 I_at_514_6 #230 Vdd pmos W=0.1625U L=0.065U
M1499_ #228 I_af_516_6 #227 Vdd pmos W=0.1625U L=0.065U
M1500_ #227 I_at_515_6 #229 Vdd pmos W=0.1625U L=0.065U
M1501_ #233 __g_50_6 h_50_6 Vdd pmos W=0.1625U L=0.065U
M1502_ #234 __g_50_6 h_50_6 GND nmos W=0.0975U L=0.065U
M1503_keeper #911 #fb910# h_50_6 Vdd pmos W=0.0975U L=0.065U
M1504_keeper #912 #fb910# h_50_6 GND nmos W=0.0975U L=0.065U
M1505_ #236 __g_52_6 h_51_6 Vdd pmos W=0.1625U L=0.065U
M1506_ #237 __g_52_6 h_51_6 GND nmos W=0.0975U L=0.065U
M1507_keeper #914 #fb913# h_51_6 Vdd pmos W=0.0975U L=0.065U
M1508_keeper #915 #fb913# h_51_6 GND nmos W=0.0975U L=0.065U
M1509_ #239 h_50_6 __z GND nmos W=0.0975U L=0.065U
M1510_ #240 h_50_6 __z Vdd pmos W=0.1625U L=0.065U
M1511_keeper #917 #fb916# __z Vdd pmos W=0.0975U L=0.065U
M1512_keeper #918 #fb916# __z GND nmos W=0.0975U L=0.065U
M1513_ #259 inv__I__f_527_6 u_53_6 GND nmos W=0.0975U L=0.065U
M1514_keeper #920 #fb919# u_53_6 Vdd pmos W=0.0975U L=0.065U
M1515_keeper #921 #fb919# u_53_6 GND nmos W=0.0975U L=0.065U
M1516_ #257 inv__I__f_528_6 #247 GND nmos W=0.0975U L=0.065U
M1517_ #247 inv__I__t_527_6 #259 GND nmos W=0.0975U L=0.065U
M1518_ #255 inv__I__f_529_6 #248 GND nmos W=0.0975U L=0.065U
M1519_ #248 inv__I__t_528_6 #257 GND nmos W=0.0975U L=0.065U
M1520_ #253 inv__I__f_530_6 #249 GND nmos W=0.0975U L=0.065U
M1521_ #249 inv__I__t_529_6 #255 GND nmos W=0.0975U L=0.065U
M1522_ #251 inv__I__f_531_6 #250 GND nmos W=0.0975U L=0.065U
M1523_ #250 inv__I__t_530_6 #253 GND nmos W=0.0975U L=0.065U
M1524_ #279 inv__I__f_522_6 u_52_6 GND nmos W=0.0975U L=0.065U
M1525_keeper #923 #fb922# u_52_6 Vdd pmos W=0.0975U L=0.065U
M1526_keeper #924 #fb922# u_52_6 GND nmos W=0.0975U L=0.065U
M1527_ #277 inv__I__f_523_6 #267 GND nmos W=0.0975U L=0.065U
M1528_ #267 inv__I__t_522_6 #279 GND nmos W=0.0975U L=0.065U
M1529_ #275 inv__I__f_524_6 #268 GND nmos W=0.0975U L=0.065U
M1530_ #268 inv__I__t_523_6 #277 GND nmos W=0.0975U L=0.065U
M1531_ #273 inv__I__f_525_6 #269 GND nmos W=0.0975U L=0.065U
M1532_ #269 inv__I__t_524_6 #275 GND nmos W=0.0975U L=0.065U
M1533_ #271 inv__I__f_526_6 #270 GND nmos W=0.0975U L=0.065U
M1534_ #270 inv__I__t_525_6 #273 GND nmos W=0.0975U L=0.065U
M1535_ #299 inv__I__f_517_6 u_51_6 GND nmos W=0.0975U L=0.065U
M1536_keeper #926 #fb925# u_51_6 Vdd pmos W=0.0975U L=0.065U
M1537_keeper #927 #fb925# u_51_6 GND nmos W=0.0975U L=0.065U
M1538_ #297 inv__I__f_518_6 #287 GND nmos W=0.0975U L=0.065U
M1539_ #287 inv__I__t_517_6 #299 GND nmos W=0.0975U L=0.065U
M1540_ #295 inv__I__f_519_6 #288 GND nmos W=0.0975U L=0.065U
M1541_ #288 inv__I__t_518_6 #297 GND nmos W=0.0975U L=0.065U
M1542_ #293 inv__I__f_520_6 #289 GND nmos W=0.0975U L=0.065U
M1543_ #289 inv__I__t_519_6 #295 GND nmos W=0.0975U L=0.065U
M1544_ #291 inv__I__f_521_6 #290 GND nmos W=0.0975U L=0.065U
M1545_ #290 inv__I__t_520_6 #293 GND nmos W=0.0975U L=0.065U
M1546_ #315 inv__I__f_513_6 u_50_6 GND nmos W=0.0975U L=0.065U
M1547_keeper #929 #fb928# u_50_6 Vdd pmos W=0.0975U L=0.065U
M1548_keeper #930 #fb928# u_50_6 GND nmos W=0.0975U L=0.065U
M1549_ #313 inv__I__f_514_6 #306 GND nmos W=0.0975U L=0.065U
M1550_ #306 inv__I__t_513_6 #315 GND nmos W=0.0975U L=0.065U
M1551_ #311 inv__I__f_515_6 #307 GND nmos W=0.0975U L=0.065U
M1552_ #307 inv__I__t_514_6 #313 GND nmos W=0.0975U L=0.065U
M1553_ #309 inv__I__f_516_6 #308 GND nmos W=0.0975U L=0.065U
M1554_ #308 inv__I__t_515_6 #311 GND nmos W=0.0975U L=0.065U
M1555_ #318 u_50_6 __x_50_6 Vdd pmos W=0.1625U L=0.065U
M1556_ #320 u_52_6 __x_51_6 Vdd pmos W=0.1625U L=0.065U
M1557_ #322 __x_50_6 y GND nmos W=0.0975U L=0.065U
M1558_ #324 inv__s p Vdd pmos W=1.3U L=0.065U
M1559_ #329 s p GND nmos W=0.78U L=0.065U
M1560_keeper #932 #fb931# p Vdd pmos W=0.0975U L=0.065U
M1561_keeper #933 #fb931# p GND nmos W=0.0975U L=0.065U
M1562_ #325 __z #324 Vdd pmos W=1.3U L=0.065U
M1563_ #333 inv__p w__0i Vdd pmos W=0.1625U L=0.065U
M1564_ #335 p w__0i Vdd pmos W=0.1625U L=0.065U
M1565_ #336 O0_aa w__0i GND nmos W=0.0975U L=0.065U
M1566_ #336 O1_aa w__0i GND nmos W=0.0975U L=0.065U
M1567_keeper #935 #fb934# w__0i Vdd pmos W=0.0975U L=0.065U
M1568_keeper #936 #fb934# w__0i GND nmos W=0.0975U L=0.065U
M1569_ #330 y #329 GND nmos W=0.78U L=0.065U
M1570_ #352 O1_aa s Vdd pmos W=1.3U L=0.065U
M1571_ #354 n__I__a s GND nmos W=0.78U L=0.065U
M1572_ #353 inv__p s GND nmos W=0.78U L=0.065U
M1573_keeper #938 #fb937# s Vdd pmos W=0.0975U L=0.065U
M1574_keeper #939 #fb937# s GND nmos W=0.0975U L=0.065U
M1575_ #332 __z #333 Vdd pmos W=0.1625U L=0.065U
M1576_ #332 __x_51_6 #335 Vdd pmos W=0.1625U L=0.065U
M1577_ #332 __x_50_6 #335 Vdd pmos W=0.1625U L=0.065U
M1578_ #340 I_af_50_6 n__w__0 GND nmos W=0.0975U L=0.065U
M1579_ #344 O1_aa n__w__0 Vdd pmos W=0.1625U L=0.065U
M1580_keeper #941 #fb940# n__w__0 Vdd pmos W=0.0975U L=0.065U
M1581_keeper #942 #fb940# n__w__0 GND nmos W=0.0975U L=0.065U
M1582_ #342 n__I__a #341 Vdd pmos W=0.1625U L=0.065U
M1583_ #341 O0_aa #344 Vdd pmos W=0.1625U L=0.065U
M1584_ #366 v n__I__a GND nmos W=0.0975U L=0.065U
M1585_ #368 inv__f n__I__a GND nmos W=0.0975U L=0.065U
M1586_ #371 v n__I__a Vdd pmos W=0.1625U L=0.065U
M1587_ #372 inv__f n__I__a Vdd pmos W=0.1625U L=0.065U
M1588_keeper #944 #fb943# n__I__a Vdd pmos W=0.0975U L=0.065U
M1589_keeper #945 #fb943# n__I__a GND nmos W=0.0975U L=0.065U
M1590_ #346 I_at_50_6 n__w__1 GND nmos W=0.0975U L=0.065U
M1591_ #349 O1_aa n__w__1 Vdd pmos W=0.1625U L=0.065U
M1592_keeper #947 #fb946# n__w__1 Vdd pmos W=0.0975U L=0.065U
M1593_keeper #948 #fb946# n__w__1 GND nmos W=0.0975U L=0.065U
M1594_ #348 n__I__a #347 Vdd pmos W=0.1625U L=0.065U
M1595_ #347 O0_aa #349 Vdd pmos W=0.1625U L=0.065U
M1596_ #351 n__I__a #350 Vdd pmos W=1.3U L=0.065U
M1597_ #350 O0_aa #352 Vdd pmos W=1.3U L=0.065U
M1598_ #353 p #355 GND nmos W=0.78U L=0.065U
M1599_ #355 f #354 GND nmos W=0.78U L=0.065U
M1600_ #357 inv__f n__v GND nmos W=0.0975U L=0.065U
M1601_ #365 w__0 n__v Vdd pmos W=0.1625U L=0.065U
M1602_keeper #950 #fb949# n__v Vdd pmos W=0.0975U L=0.065U
M1603_keeper #951 #fb949# n__v GND nmos W=0.0975U L=0.065U
M1604_ #358 inv__w__0i #357 GND nmos W=0.0975U L=0.065U
M1605_ #359 w__1 #358 GND nmos W=0.0975U L=0.065U
M1606_ #359 w__0 #358 GND nmos W=0.0975U L=0.065U
M1607_ #364 O1_aa #363 Vdd pmos W=0.1625U L=0.065U
M1608_ #363 w__1 #365 Vdd pmos W=0.1625U L=0.065U
M1609_ #369 p #368 GND nmos W=0.0975U L=0.065U
M1610_ #370 w__0i #369 GND nmos W=0.0975U L=0.065U
M1611_ #374 I_at_50_6 n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1612_keeper #953 #fb952# n__O0__t_50_6 Vdd pmos W=0.0975U L=0.065U
M1613_keeper #954 #fb952# n__O0__t_50_6 GND nmos W=0.0975U L=0.065U
M1614_ #375 inv__s #374 GND nmos W=0.0975U L=0.065U
M1615_ #377 I_af_50_6 n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1616_keeper #956 #fb955# n__O0__f_50_6 Vdd pmos W=0.0975U L=0.065U
M1617_keeper #957 #fb955# n__O0__f_50_6 GND nmos W=0.0975U L=0.065U
M1618_ #378 inv__s #377 GND nmos W=0.0975U L=0.065U
M1619_ #380 inv__I__t_50_6 O1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1620_keeper #959 #fb958# O1_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1621_keeper #960 #fb958# O1_at_50_6 GND nmos W=0.0975U L=0.065U
M1622_ #381 s #380 Vdd pmos W=0.1625U L=0.065U
M1623_ #384 inv__I__f_50_6 O1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1624_keeper #962 #fb961# O1_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1625_keeper #963 #fb961# O1_af_50_6 GND nmos W=0.0975U L=0.065U
M1626_ #385 s #384 Vdd pmos W=0.1625U L=0.065U
M1627_ #388 I_at_51_6 n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1628_keeper #965 #fb964# n__O0__t_51_6 Vdd pmos W=0.0975U L=0.065U
M1629_keeper #966 #fb964# n__O0__t_51_6 GND nmos W=0.0975U L=0.065U
M1630_ #389 inv__s #388 GND nmos W=0.0975U L=0.065U
M1631_ #391 I_af_51_6 n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1632_keeper #968 #fb967# n__O0__f_51_6 Vdd pmos W=0.0975U L=0.065U
M1633_keeper #969 #fb967# n__O0__f_51_6 GND nmos W=0.0975U L=0.065U
M1634_ #392 inv__s #391 GND nmos W=0.0975U L=0.065U
M1635_ #394 inv__I__t_51_6 O1_at_51_6 Vdd pmos W=0.1625U L=0.065U
M1636_keeper #971 #fb970# O1_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1637_keeper #972 #fb970# O1_at_51_6 GND nmos W=0.0975U L=0.065U
M1638_ #395 s #394 Vdd pmos W=0.1625U L=0.065U
M1639_ #398 inv__I__f_51_6 O1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1640_keeper #974 #fb973# O1_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1641_keeper #975 #fb973# O1_af_51_6 GND nmos W=0.0975U L=0.065U
M1642_ #399 s #398 Vdd pmos W=0.1625U L=0.065U
M1643_ #402 I_at_52_6 n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1644_keeper #977 #fb976# n__O0__t_52_6 Vdd pmos W=0.0975U L=0.065U
M1645_keeper #978 #fb976# n__O0__t_52_6 GND nmos W=0.0975U L=0.065U
M1646_ #403 inv__s #402 GND nmos W=0.0975U L=0.065U
M1647_ #405 I_af_52_6 n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1648_keeper #980 #fb979# n__O0__f_52_6 Vdd pmos W=0.0975U L=0.065U
M1649_keeper #981 #fb979# n__O0__f_52_6 GND nmos W=0.0975U L=0.065U
M1650_ #406 inv__s #405 GND nmos W=0.0975U L=0.065U
M1651_ #408 inv__I__t_52_6 O1_at_52_6 Vdd pmos W=0.1625U L=0.065U
M1652_keeper #983 #fb982# O1_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1653_keeper #984 #fb982# O1_at_52_6 GND nmos W=0.0975U L=0.065U
M1654_ #409 s #408 Vdd pmos W=0.1625U L=0.065U
M1655_ #412 inv__I__f_52_6 O1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1656_keeper #986 #fb985# O1_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1657_keeper #987 #fb985# O1_af_52_6 GND nmos W=0.0975U L=0.065U
M1658_ #413 s #412 Vdd pmos W=0.1625U L=0.065U
M1659_ #416 I_at_53_6 n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1660_keeper #989 #fb988# n__O0__t_53_6 Vdd pmos W=0.0975U L=0.065U
M1661_keeper #990 #fb988# n__O0__t_53_6 GND nmos W=0.0975U L=0.065U
M1662_ #417 inv__s #416 GND nmos W=0.0975U L=0.065U
M1663_ #419 I_af_53_6 n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1664_keeper #992 #fb991# n__O0__f_53_6 Vdd pmos W=0.0975U L=0.065U
M1665_keeper #993 #fb991# n__O0__f_53_6 GND nmos W=0.0975U L=0.065U
M1666_ #420 inv__s #419 GND nmos W=0.0975U L=0.065U
M1667_ #422 inv__I__t_53_6 O1_at_53_6 Vdd pmos W=0.1625U L=0.065U
M1668_keeper #995 #fb994# O1_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1669_keeper #996 #fb994# O1_at_53_6 GND nmos W=0.0975U L=0.065U
M1670_ #423 s #422 Vdd pmos W=0.1625U L=0.065U
M1671_ #426 inv__I__f_53_6 O1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1672_keeper #998 #fb997# O1_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1673_keeper #999 #fb997# O1_af_53_6 GND nmos W=0.0975U L=0.065U
M1674_ #427 s #426 Vdd pmos W=0.1625U L=0.065U
M1675_ #430 I_at_54_6 n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1676_keeper #1001 #fb1000# n__O0__t_54_6 Vdd pmos W=0.0975U L=0.065U
M1677_keeper #1002 #fb1000# n__O0__t_54_6 GND nmos W=0.0975U L=0.065U
M1678_ #431 inv__s #430 GND nmos W=0.0975U L=0.065U
M1679_ #433 I_af_54_6 n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M1680_keeper #1004 #fb1003# n__O0__f_54_6 Vdd pmos W=0.0975U L=0.065U
M1681_keeper #1005 #fb1003# n__O0__f_54_6 GND nmos W=0.0975U L=0.065U
M1682_ #434 inv__s #433 GND nmos W=0.0975U L=0.065U
M1683_ #436 inv__I__t_54_6 O1_at_54_6 Vdd pmos W=0.1625U L=0.065U
M1684_keeper #1007 #fb1006# O1_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1685_keeper #1008 #fb1006# O1_at_54_6 GND nmos W=0.0975U L=0.065U
M1686_ #437 s #436 Vdd pmos W=0.1625U L=0.065U
M1687_ #440 inv__I__f_54_6 O1_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1688_keeper #1010 #fb1009# O1_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1689_keeper #1011 #fb1009# O1_af_54_6 GND nmos W=0.0975U L=0.065U
M1690_ #441 s #440 Vdd pmos W=0.1625U L=0.065U
M1691_ #444 I_at_55_6 n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M1692_keeper #1013 #fb1012# n__O0__t_55_6 Vdd pmos W=0.0975U L=0.065U
M1693_keeper #1014 #fb1012# n__O0__t_55_6 GND nmos W=0.0975U L=0.065U
M1694_ #445 inv__s #444 GND nmos W=0.0975U L=0.065U
M1695_ #447 I_af_55_6 n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M1696_keeper #1016 #fb1015# n__O0__f_55_6 Vdd pmos W=0.0975U L=0.065U
M1697_keeper #1017 #fb1015# n__O0__f_55_6 GND nmos W=0.0975U L=0.065U
M1698_ #448 inv__s #447 GND nmos W=0.0975U L=0.065U
M1699_ #450 inv__I__t_55_6 O1_at_55_6 Vdd pmos W=0.1625U L=0.065U
M1700_keeper #1019 #fb1018# O1_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1701_keeper #1020 #fb1018# O1_at_55_6 GND nmos W=0.0975U L=0.065U
M1702_ #451 s #450 Vdd pmos W=0.1625U L=0.065U
M1703_ #454 inv__I__f_55_6 O1_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1704_keeper #1022 #fb1021# O1_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1705_keeper #1023 #fb1021# O1_af_55_6 GND nmos W=0.0975U L=0.065U
M1706_ #455 s #454 Vdd pmos W=0.1625U L=0.065U
M1707_ #458 I_at_56_6 n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M1708_keeper #1025 #fb1024# n__O0__t_56_6 Vdd pmos W=0.0975U L=0.065U
M1709_keeper #1026 #fb1024# n__O0__t_56_6 GND nmos W=0.0975U L=0.065U
M1710_ #459 inv__s #458 GND nmos W=0.0975U L=0.065U
M1711_ #461 I_af_56_6 n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M1712_keeper #1028 #fb1027# n__O0__f_56_6 Vdd pmos W=0.0975U L=0.065U
M1713_keeper #1029 #fb1027# n__O0__f_56_6 GND nmos W=0.0975U L=0.065U
M1714_ #462 inv__s #461 GND nmos W=0.0975U L=0.065U
M1715_ #464 inv__I__t_56_6 O1_at_56_6 Vdd pmos W=0.1625U L=0.065U
M1716_keeper #1031 #fb1030# O1_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1717_keeper #1032 #fb1030# O1_at_56_6 GND nmos W=0.0975U L=0.065U
M1718_ #465 s #464 Vdd pmos W=0.1625U L=0.065U
M1719_ #468 inv__I__f_56_6 O1_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1720_keeper #1034 #fb1033# O1_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1721_keeper #1035 #fb1033# O1_af_56_6 GND nmos W=0.0975U L=0.065U
M1722_ #469 s #468 Vdd pmos W=0.1625U L=0.065U
M1723_ #472 I_at_57_6 n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M1724_keeper #1037 #fb1036# n__O0__t_57_6 Vdd pmos W=0.0975U L=0.065U
M1725_keeper #1038 #fb1036# n__O0__t_57_6 GND nmos W=0.0975U L=0.065U
M1726_ #473 inv__s #472 GND nmos W=0.0975U L=0.065U
M1727_ #475 I_af_57_6 n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M1728_keeper #1040 #fb1039# n__O0__f_57_6 Vdd pmos W=0.0975U L=0.065U
M1729_keeper #1041 #fb1039# n__O0__f_57_6 GND nmos W=0.0975U L=0.065U
M1730_ #476 inv__s #475 GND nmos W=0.0975U L=0.065U
M1731_ #478 inv__I__t_57_6 O1_at_57_6 Vdd pmos W=0.1625U L=0.065U
M1732_keeper #1043 #fb1042# O1_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1733_keeper #1044 #fb1042# O1_at_57_6 GND nmos W=0.0975U L=0.065U
M1734_ #479 s #478 Vdd pmos W=0.1625U L=0.065U
M1735_ #482 inv__I__f_57_6 O1_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1736_keeper #1046 #fb1045# O1_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1737_keeper #1047 #fb1045# O1_af_57_6 GND nmos W=0.0975U L=0.065U
M1738_ #483 s #482 Vdd pmos W=0.1625U L=0.065U
M1739_ #486 I_at_58_6 n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M1740_keeper #1049 #fb1048# n__O0__t_58_6 Vdd pmos W=0.0975U L=0.065U
M1741_keeper #1050 #fb1048# n__O0__t_58_6 GND nmos W=0.0975U L=0.065U
M1742_ #487 inv__s #486 GND nmos W=0.0975U L=0.065U
M1743_ #489 I_af_58_6 n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M1744_keeper #1052 #fb1051# n__O0__f_58_6 Vdd pmos W=0.0975U L=0.065U
M1745_keeper #1053 #fb1051# n__O0__f_58_6 GND nmos W=0.0975U L=0.065U
M1746_ #490 inv__s #489 GND nmos W=0.0975U L=0.065U
M1747_ #492 inv__I__t_58_6 O1_at_58_6 Vdd pmos W=0.1625U L=0.065U
M1748_keeper #1055 #fb1054# O1_at_58_6 Vdd pmos W=0.0975U L=0.065U
M1749_keeper #1056 #fb1054# O1_at_58_6 GND nmos W=0.0975U L=0.065U
M1750_ #493 s #492 Vdd pmos W=0.1625U L=0.065U
M1751_ #496 inv__I__f_58_6 O1_af_58_6 Vdd pmos W=0.1625U L=0.065U
M1752_keeper #1058 #fb1057# O1_af_58_6 Vdd pmos W=0.0975U L=0.065U
M1753_keeper #1059 #fb1057# O1_af_58_6 GND nmos W=0.0975U L=0.065U
M1754_ #497 s #496 Vdd pmos W=0.1625U L=0.065U
M1755_ #500 I_at_59_6 n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M1756_keeper #1061 #fb1060# n__O0__t_59_6 Vdd pmos W=0.0975U L=0.065U
M1757_keeper #1062 #fb1060# n__O0__t_59_6 GND nmos W=0.0975U L=0.065U
M1758_ #501 inv__s #500 GND nmos W=0.0975U L=0.065U
M1759_ #503 I_af_59_6 n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M1760_keeper #1064 #fb1063# n__O0__f_59_6 Vdd pmos W=0.0975U L=0.065U
M1761_keeper #1065 #fb1063# n__O0__f_59_6 GND nmos W=0.0975U L=0.065U
M1762_ #504 inv__s #503 GND nmos W=0.0975U L=0.065U
M1763_ #506 inv__I__t_59_6 O1_at_59_6 Vdd pmos W=0.1625U L=0.065U
M1764_keeper #1067 #fb1066# O1_at_59_6 Vdd pmos W=0.0975U L=0.065U
M1765_keeper #1068 #fb1066# O1_at_59_6 GND nmos W=0.0975U L=0.065U
M1766_ #507 s #506 Vdd pmos W=0.1625U L=0.065U
M1767_ #510 inv__I__f_59_6 O1_af_59_6 Vdd pmos W=0.1625U L=0.065U
M1768_keeper #1070 #fb1069# O1_af_59_6 Vdd pmos W=0.0975U L=0.065U
M1769_keeper #1071 #fb1069# O1_af_59_6 GND nmos W=0.0975U L=0.065U
M1770_ #511 s #510 Vdd pmos W=0.1625U L=0.065U
M1771_ #514 I_at_510_6 n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M1772_keeper #1073 #fb1072# n__O0__t_510_6 Vdd pmos W=0.0975U L=0.065U
M1773_keeper #1074 #fb1072# n__O0__t_510_6 GND nmos W=0.0975U L=0.065U
M1774_ #515 inv__s #514 GND nmos W=0.0975U L=0.065U
M1775_ #517 I_af_510_6 n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M1776_keeper #1076 #fb1075# n__O0__f_510_6 Vdd pmos W=0.0975U L=0.065U
M1777_keeper #1077 #fb1075# n__O0__f_510_6 GND nmos W=0.0975U L=0.065U
M1778_ #518 inv__s #517 GND nmos W=0.0975U L=0.065U
M1779_ #520 inv__I__t_510_6 O1_at_510_6 Vdd pmos W=0.1625U L=0.065U
M1780_keeper #1079 #fb1078# O1_at_510_6 Vdd pmos W=0.0975U L=0.065U
M1781_keeper #1080 #fb1078# O1_at_510_6 GND nmos W=0.0975U L=0.065U
M1782_ #521 s #520 Vdd pmos W=0.1625U L=0.065U
M1783_ #524 inv__I__f_510_6 O1_af_510_6 Vdd pmos W=0.1625U L=0.065U
M1784_keeper #1082 #fb1081# O1_af_510_6 Vdd pmos W=0.0975U L=0.065U
M1785_keeper #1083 #fb1081# O1_af_510_6 GND nmos W=0.0975U L=0.065U
M1786_ #525 s #524 Vdd pmos W=0.1625U L=0.065U
M1787_ #528 I_at_511_6 n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M1788_keeper #1085 #fb1084# n__O0__t_511_6 Vdd pmos W=0.0975U L=0.065U
M1789_keeper #1086 #fb1084# n__O0__t_511_6 GND nmos W=0.0975U L=0.065U
M1790_ #529 inv__s #528 GND nmos W=0.0975U L=0.065U
M1791_ #531 I_af_511_6 n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M1792_keeper #1088 #fb1087# n__O0__f_511_6 Vdd pmos W=0.0975U L=0.065U
M1793_keeper #1089 #fb1087# n__O0__f_511_6 GND nmos W=0.0975U L=0.065U
M1794_ #532 inv__s #531 GND nmos W=0.0975U L=0.065U
M1795_ #534 inv__I__t_511_6 O1_at_511_6 Vdd pmos W=0.1625U L=0.065U
M1796_keeper #1091 #fb1090# O1_at_511_6 Vdd pmos W=0.0975U L=0.065U
M1797_keeper #1092 #fb1090# O1_at_511_6 GND nmos W=0.0975U L=0.065U
M1798_ #535 s #534 Vdd pmos W=0.1625U L=0.065U
M1799_ #538 inv__I__f_511_6 O1_af_511_6 Vdd pmos W=0.1625U L=0.065U
M1800_keeper #1094 #fb1093# O1_af_511_6 Vdd pmos W=0.0975U L=0.065U
M1801_keeper #1095 #fb1093# O1_af_511_6 GND nmos W=0.0975U L=0.065U
M1802_ #539 s #538 Vdd pmos W=0.1625U L=0.065U
M1803_ #542 I_at_512_6 n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M1804_keeper #1097 #fb1096# n__O0__t_512_6 Vdd pmos W=0.0975U L=0.065U
M1805_keeper #1098 #fb1096# n__O0__t_512_6 GND nmos W=0.0975U L=0.065U
M1806_ #543 inv__s #542 GND nmos W=0.0975U L=0.065U
M1807_ #545 I_af_512_6 n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M1808_keeper #1100 #fb1099# n__O0__f_512_6 Vdd pmos W=0.0975U L=0.065U
M1809_keeper #1101 #fb1099# n__O0__f_512_6 GND nmos W=0.0975U L=0.065U
M1810_ #546 inv__s #545 GND nmos W=0.0975U L=0.065U
M1811_ #548 inv__I__t_512_6 O1_at_512_6 Vdd pmos W=0.1625U L=0.065U
M1812_keeper #1103 #fb1102# O1_at_512_6 Vdd pmos W=0.0975U L=0.065U
M1813_keeper #1104 #fb1102# O1_at_512_6 GND nmos W=0.0975U L=0.065U
M1814_ #549 s #548 Vdd pmos W=0.1625U L=0.065U
M1815_ #552 inv__I__f_512_6 O1_af_512_6 Vdd pmos W=0.1625U L=0.065U
M1816_keeper #1106 #fb1105# O1_af_512_6 Vdd pmos W=0.0975U L=0.065U
M1817_keeper #1107 #fb1105# O1_af_512_6 GND nmos W=0.0975U L=0.065U
M1818_ #553 s #552 Vdd pmos W=0.1625U L=0.065U
M1819_ #556 I_at_513_6 n__O0__t_513_6 GND nmos W=0.0975U L=0.065U
M1820_keeper #1109 #fb1108# n__O0__t_513_6 Vdd pmos W=0.0975U L=0.065U
M1821_keeper #1110 #fb1108# n__O0__t_513_6 GND nmos W=0.0975U L=0.065U
M1822_ #557 inv__s #556 GND nmos W=0.0975U L=0.065U
M1823_ #559 I_af_513_6 n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1824_keeper #1112 #fb1111# n__O0__f_513_6 Vdd pmos W=0.0975U L=0.065U
M1825_keeper #1113 #fb1111# n__O0__f_513_6 GND nmos W=0.0975U L=0.065U
M1826_ #560 inv__s #559 GND nmos W=0.0975U L=0.065U
M1827_ #562 inv__I__t_513_6 O1_at_513_6 Vdd pmos W=0.1625U L=0.065U
M1828_keeper #1115 #fb1114# O1_at_513_6 Vdd pmos W=0.0975U L=0.065U
M1829_keeper #1116 #fb1114# O1_at_513_6 GND nmos W=0.0975U L=0.065U
M1830_ #563 s #562 Vdd pmos W=0.1625U L=0.065U
M1831_ #565 inv__I__f_513_6 O1_af_513_6 Vdd pmos W=0.1625U L=0.065U
M1832_keeper #1118 #fb1117# O1_af_513_6 Vdd pmos W=0.0975U L=0.065U
M1833_keeper #1119 #fb1117# O1_af_513_6 GND nmos W=0.0975U L=0.065U
M1834_ #566 s #565 Vdd pmos W=0.1625U L=0.065U
M1835_ #568 I_at_514_6 n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1836_keeper #1121 #fb1120# n__O0__t_514_6 Vdd pmos W=0.0975U L=0.065U
M1837_keeper #1122 #fb1120# n__O0__t_514_6 GND nmos W=0.0975U L=0.065U
M1838_ #569 inv__s #568 GND nmos W=0.0975U L=0.065U
M1839_ #571 I_af_514_6 n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1840_keeper #1124 #fb1123# n__O0__f_514_6 Vdd pmos W=0.0975U L=0.065U
M1841_keeper #1125 #fb1123# n__O0__f_514_6 GND nmos W=0.0975U L=0.065U
M1842_ #572 inv__s #571 GND nmos W=0.0975U L=0.065U
M1843_ #574 inv__I__t_514_6 O1_at_514_6 Vdd pmos W=0.1625U L=0.065U
M1844_keeper #1127 #fb1126# O1_at_514_6 Vdd pmos W=0.0975U L=0.065U
M1845_keeper #1128 #fb1126# O1_at_514_6 GND nmos W=0.0975U L=0.065U
M1846_ #575 s #574 Vdd pmos W=0.1625U L=0.065U
M1847_ #577 inv__I__f_514_6 O1_af_514_6 Vdd pmos W=0.1625U L=0.065U
M1848_keeper #1130 #fb1129# O1_af_514_6 Vdd pmos W=0.0975U L=0.065U
M1849_keeper #1131 #fb1129# O1_af_514_6 GND nmos W=0.0975U L=0.065U
M1850_ #578 s #577 Vdd pmos W=0.1625U L=0.065U
M1851_ #580 I_at_515_6 n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1852_keeper #1133 #fb1132# n__O0__t_515_6 Vdd pmos W=0.0975U L=0.065U
M1853_keeper #1134 #fb1132# n__O0__t_515_6 GND nmos W=0.0975U L=0.065U
M1854_ #581 inv__s #580 GND nmos W=0.0975U L=0.065U
M1855_ #583 I_af_515_6 n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1856_keeper #1136 #fb1135# n__O0__f_515_6 Vdd pmos W=0.0975U L=0.065U
M1857_keeper #1137 #fb1135# n__O0__f_515_6 GND nmos W=0.0975U L=0.065U
M1858_ #584 inv__s #583 GND nmos W=0.0975U L=0.065U
M1859_ #586 inv__I__t_515_6 O1_at_515_6 Vdd pmos W=0.1625U L=0.065U
M1860_keeper #1139 #fb1138# O1_at_515_6 Vdd pmos W=0.0975U L=0.065U
M1861_keeper #1140 #fb1138# O1_at_515_6 GND nmos W=0.0975U L=0.065U
M1862_ #587 s #586 Vdd pmos W=0.1625U L=0.065U
M1863_ #589 inv__I__f_515_6 O1_af_515_6 Vdd pmos W=0.1625U L=0.065U
M1864_keeper #1142 #fb1141# O1_af_515_6 Vdd pmos W=0.0975U L=0.065U
M1865_keeper #1143 #fb1141# O1_af_515_6 GND nmos W=0.0975U L=0.065U
M1866_ #590 s #589 Vdd pmos W=0.1625U L=0.065U
M1867_ #592 I_at_516_6 n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1868_keeper #1145 #fb1144# n__O0__t_516_6 Vdd pmos W=0.0975U L=0.065U
M1869_keeper #1146 #fb1144# n__O0__t_516_6 GND nmos W=0.0975U L=0.065U
M1870_ #593 inv__s #592 GND nmos W=0.0975U L=0.065U
M1871_ #595 I_af_516_6 n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1872_keeper #1148 #fb1147# n__O0__f_516_6 Vdd pmos W=0.0975U L=0.065U
M1873_keeper #1149 #fb1147# n__O0__f_516_6 GND nmos W=0.0975U L=0.065U
M1874_ #596 inv__s #595 GND nmos W=0.0975U L=0.065U
M1875_ #598 inv__I__t_516_6 O1_at_516_6 Vdd pmos W=0.1625U L=0.065U
M1876_keeper #1151 #fb1150# O1_at_516_6 Vdd pmos W=0.0975U L=0.065U
M1877_keeper #1152 #fb1150# O1_at_516_6 GND nmos W=0.0975U L=0.065U
M1878_ #599 s #598 Vdd pmos W=0.1625U L=0.065U
M1879_ #601 inv__I__f_516_6 O1_af_516_6 Vdd pmos W=0.1625U L=0.065U
M1880_keeper #1154 #fb1153# O1_af_516_6 Vdd pmos W=0.0975U L=0.065U
M1881_keeper #1155 #fb1153# O1_af_516_6 GND nmos W=0.0975U L=0.065U
M1882_ #602 s #601 Vdd pmos W=0.1625U L=0.065U
M1883_ #604 I_at_517_6 n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1884_keeper #1157 #fb1156# n__O0__t_517_6 Vdd pmos W=0.0975U L=0.065U
M1885_keeper #1158 #fb1156# n__O0__t_517_6 GND nmos W=0.0975U L=0.065U
M1886_ #605 inv__s #604 GND nmos W=0.0975U L=0.065U
M1887_ #607 I_af_517_6 n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1888_keeper #1160 #fb1159# n__O0__f_517_6 Vdd pmos W=0.0975U L=0.065U
M1889_keeper #1161 #fb1159# n__O0__f_517_6 GND nmos W=0.0975U L=0.065U
M1890_ #608 inv__s #607 GND nmos W=0.0975U L=0.065U
M1891_ #610 inv__I__t_517_6 O1_at_517_6 Vdd pmos W=0.1625U L=0.065U
M1892_keeper #1163 #fb1162# O1_at_517_6 Vdd pmos W=0.0975U L=0.065U
M1893_keeper #1164 #fb1162# O1_at_517_6 GND nmos W=0.0975U L=0.065U
M1894_ #611 s #610 Vdd pmos W=0.1625U L=0.065U
M1895_ #613 inv__I__f_517_6 O1_af_517_6 Vdd pmos W=0.1625U L=0.065U
M1896_keeper #1166 #fb1165# O1_af_517_6 Vdd pmos W=0.0975U L=0.065U
M1897_keeper #1167 #fb1165# O1_af_517_6 GND nmos W=0.0975U L=0.065U
M1898_ #614 s #613 Vdd pmos W=0.1625U L=0.065U
M1899_ #616 I_at_518_6 n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1900_keeper #1169 #fb1168# n__O0__t_518_6 Vdd pmos W=0.0975U L=0.065U
M1901_keeper #1170 #fb1168# n__O0__t_518_6 GND nmos W=0.0975U L=0.065U
M1902_ #617 inv__s #616 GND nmos W=0.0975U L=0.065U
M1903_ #619 I_af_518_6 n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1904_keeper #1172 #fb1171# n__O0__f_518_6 Vdd pmos W=0.0975U L=0.065U
M1905_keeper #1173 #fb1171# n__O0__f_518_6 GND nmos W=0.0975U L=0.065U
M1906_ #620 inv__s #619 GND nmos W=0.0975U L=0.065U
M1907_ #622 inv__I__t_518_6 O1_at_518_6 Vdd pmos W=0.1625U L=0.065U
M1908_keeper #1175 #fb1174# O1_at_518_6 Vdd pmos W=0.0975U L=0.065U
M1909_keeper #1176 #fb1174# O1_at_518_6 GND nmos W=0.0975U L=0.065U
M1910_ #623 s #622 Vdd pmos W=0.1625U L=0.065U
M1911_ #625 inv__I__f_518_6 O1_af_518_6 Vdd pmos W=0.1625U L=0.065U
M1912_keeper #1178 #fb1177# O1_af_518_6 Vdd pmos W=0.0975U L=0.065U
M1913_keeper #1179 #fb1177# O1_af_518_6 GND nmos W=0.0975U L=0.065U
M1914_ #626 s #625 Vdd pmos W=0.1625U L=0.065U
M1915_ #628 I_at_519_6 n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1916_keeper #1181 #fb1180# n__O0__t_519_6 Vdd pmos W=0.0975U L=0.065U
M1917_keeper #1182 #fb1180# n__O0__t_519_6 GND nmos W=0.0975U L=0.065U
M1918_ #629 inv__s #628 GND nmos W=0.0975U L=0.065U
M1919_ #631 I_af_519_6 n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1920_keeper #1184 #fb1183# n__O0__f_519_6 Vdd pmos W=0.0975U L=0.065U
M1921_keeper #1185 #fb1183# n__O0__f_519_6 GND nmos W=0.0975U L=0.065U
M1922_ #632 inv__s #631 GND nmos W=0.0975U L=0.065U
M1923_ #634 inv__I__t_519_6 O1_at_519_6 Vdd pmos W=0.1625U L=0.065U
M1924_keeper #1187 #fb1186# O1_at_519_6 Vdd pmos W=0.0975U L=0.065U
M1925_keeper #1188 #fb1186# O1_at_519_6 GND nmos W=0.0975U L=0.065U
M1926_ #635 s #634 Vdd pmos W=0.1625U L=0.065U
M1927_ #637 inv__I__f_519_6 O1_af_519_6 Vdd pmos W=0.1625U L=0.065U
M1928_keeper #1190 #fb1189# O1_af_519_6 Vdd pmos W=0.0975U L=0.065U
M1929_keeper #1191 #fb1189# O1_af_519_6 GND nmos W=0.0975U L=0.065U
M1930_ #638 s #637 Vdd pmos W=0.1625U L=0.065U
M1931_ #640 I_at_520_6 n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1932_keeper #1193 #fb1192# n__O0__t_520_6 Vdd pmos W=0.0975U L=0.065U
M1933_keeper #1194 #fb1192# n__O0__t_520_6 GND nmos W=0.0975U L=0.065U
M1934_ #641 inv__s #640 GND nmos W=0.0975U L=0.065U
M1935_ #643 I_af_520_6 n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1936_keeper #1196 #fb1195# n__O0__f_520_6 Vdd pmos W=0.0975U L=0.065U
M1937_keeper #1197 #fb1195# n__O0__f_520_6 GND nmos W=0.0975U L=0.065U
M1938_ #644 inv__s #643 GND nmos W=0.0975U L=0.065U
M1939_ #646 inv__I__t_520_6 O1_at_520_6 Vdd pmos W=0.1625U L=0.065U
M1940_keeper #1199 #fb1198# O1_at_520_6 Vdd pmos W=0.0975U L=0.065U
M1941_keeper #1200 #fb1198# O1_at_520_6 GND nmos W=0.0975U L=0.065U
M1942_ #647 s #646 Vdd pmos W=0.1625U L=0.065U
M1943_ #649 inv__I__f_520_6 O1_af_520_6 Vdd pmos W=0.1625U L=0.065U
M1944_keeper #1202 #fb1201# O1_af_520_6 Vdd pmos W=0.0975U L=0.065U
M1945_keeper #1203 #fb1201# O1_af_520_6 GND nmos W=0.0975U L=0.065U
M1946_ #650 s #649 Vdd pmos W=0.1625U L=0.065U
M1947_ #652 I_at_521_6 n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1948_keeper #1205 #fb1204# n__O0__t_521_6 Vdd pmos W=0.0975U L=0.065U
M1949_keeper #1206 #fb1204# n__O0__t_521_6 GND nmos W=0.0975U L=0.065U
M1950_ #653 inv__s #652 GND nmos W=0.0975U L=0.065U
M1951_ #655 I_af_521_6 n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1952_keeper #1208 #fb1207# n__O0__f_521_6 Vdd pmos W=0.0975U L=0.065U
M1953_keeper #1209 #fb1207# n__O0__f_521_6 GND nmos W=0.0975U L=0.065U
M1954_ #656 inv__s #655 GND nmos W=0.0975U L=0.065U
M1955_ #658 inv__I__t_521_6 O1_at_521_6 Vdd pmos W=0.1625U L=0.065U
M1956_keeper #1211 #fb1210# O1_at_521_6 Vdd pmos W=0.0975U L=0.065U
M1957_keeper #1212 #fb1210# O1_at_521_6 GND nmos W=0.0975U L=0.065U
M1958_ #659 s #658 Vdd pmos W=0.1625U L=0.065U
M1959_ #661 inv__I__f_521_6 O1_af_521_6 Vdd pmos W=0.1625U L=0.065U
M1960_keeper #1214 #fb1213# O1_af_521_6 Vdd pmos W=0.0975U L=0.065U
M1961_keeper #1215 #fb1213# O1_af_521_6 GND nmos W=0.0975U L=0.065U
M1962_ #662 s #661 Vdd pmos W=0.1625U L=0.065U
M1963_ #664 I_at_522_6 n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1964_keeper #1217 #fb1216# n__O0__t_522_6 Vdd pmos W=0.0975U L=0.065U
M1965_keeper #1218 #fb1216# n__O0__t_522_6 GND nmos W=0.0975U L=0.065U
M1966_ #665 inv__s #664 GND nmos W=0.0975U L=0.065U
M1967_ #667 I_af_522_6 n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1968_keeper #1220 #fb1219# n__O0__f_522_6 Vdd pmos W=0.0975U L=0.065U
M1969_keeper #1221 #fb1219# n__O0__f_522_6 GND nmos W=0.0975U L=0.065U
M1970_ #668 inv__s #667 GND nmos W=0.0975U L=0.065U
M1971_ #670 inv__I__t_522_6 O1_at_522_6 Vdd pmos W=0.1625U L=0.065U
M1972_keeper #1223 #fb1222# O1_at_522_6 Vdd pmos W=0.0975U L=0.065U
M1973_keeper #1224 #fb1222# O1_at_522_6 GND nmos W=0.0975U L=0.065U
M1974_ #671 s #670 Vdd pmos W=0.1625U L=0.065U
M1975_ #673 inv__I__f_522_6 O1_af_522_6 Vdd pmos W=0.1625U L=0.065U
M1976_keeper #1226 #fb1225# O1_af_522_6 Vdd pmos W=0.0975U L=0.065U
M1977_keeper #1227 #fb1225# O1_af_522_6 GND nmos W=0.0975U L=0.065U
M1978_ #674 s #673 Vdd pmos W=0.1625U L=0.065U
M1979_ #676 I_at_523_6 n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1980_keeper #1229 #fb1228# n__O0__t_523_6 Vdd pmos W=0.0975U L=0.065U
M1981_keeper #1230 #fb1228# n__O0__t_523_6 GND nmos W=0.0975U L=0.065U
M1982_ #677 inv__s #676 GND nmos W=0.0975U L=0.065U
M1983_ #679 I_af_523_6 n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1984_keeper #1232 #fb1231# n__O0__f_523_6 Vdd pmos W=0.0975U L=0.065U
M1985_keeper #1233 #fb1231# n__O0__f_523_6 GND nmos W=0.0975U L=0.065U
M1986_ #680 inv__s #679 GND nmos W=0.0975U L=0.065U
M1987_ #682 inv__I__t_523_6 O1_at_523_6 Vdd pmos W=0.1625U L=0.065U
M1988_keeper #1235 #fb1234# O1_at_523_6 Vdd pmos W=0.0975U L=0.065U
M1989_keeper #1236 #fb1234# O1_at_523_6 GND nmos W=0.0975U L=0.065U
M1990_ #683 s #682 Vdd pmos W=0.1625U L=0.065U
M1991_ #685 inv__I__f_523_6 O1_af_523_6 Vdd pmos W=0.1625U L=0.065U
M1992_keeper #1238 #fb1237# O1_af_523_6 Vdd pmos W=0.0975U L=0.065U
M1993_keeper #1239 #fb1237# O1_af_523_6 GND nmos W=0.0975U L=0.065U
M1994_ #686 s #685 Vdd pmos W=0.1625U L=0.065U
M1995_ #688 I_at_524_6 n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1996_keeper #1241 #fb1240# n__O0__t_524_6 Vdd pmos W=0.0975U L=0.065U
M1997_keeper #1242 #fb1240# n__O0__t_524_6 GND nmos W=0.0975U L=0.065U
M1998_ #689 inv__s #688 GND nmos W=0.0975U L=0.065U
M1999_ #691 I_af_524_6 n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M2000_keeper #1244 #fb1243# n__O0__f_524_6 Vdd pmos W=0.0975U L=0.065U
M2001_keeper #1245 #fb1243# n__O0__f_524_6 GND nmos W=0.0975U L=0.065U
M2002_ #692 inv__s #691 GND nmos W=0.0975U L=0.065U
M2003_ #694 inv__I__t_524_6 O1_at_524_6 Vdd pmos W=0.1625U L=0.065U
M2004_keeper #1247 #fb1246# O1_at_524_6 Vdd pmos W=0.0975U L=0.065U
M2005_keeper #1248 #fb1246# O1_at_524_6 GND nmos W=0.0975U L=0.065U
M2006_ #695 s #694 Vdd pmos W=0.1625U L=0.065U
M2007_ #697 inv__I__f_524_6 O1_af_524_6 Vdd pmos W=0.1625U L=0.065U
M2008_keeper #1250 #fb1249# O1_af_524_6 Vdd pmos W=0.0975U L=0.065U
M2009_keeper #1251 #fb1249# O1_af_524_6 GND nmos W=0.0975U L=0.065U
M2010_ #698 s #697 Vdd pmos W=0.1625U L=0.065U
M2011_ #700 I_at_525_6 n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M2012_keeper #1253 #fb1252# n__O0__t_525_6 Vdd pmos W=0.0975U L=0.065U
M2013_keeper #1254 #fb1252# n__O0__t_525_6 GND nmos W=0.0975U L=0.065U
M2014_ #701 inv__s #700 GND nmos W=0.0975U L=0.065U
M2015_ #703 I_af_525_6 n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M2016_keeper #1256 #fb1255# n__O0__f_525_6 Vdd pmos W=0.0975U L=0.065U
M2017_keeper #1257 #fb1255# n__O0__f_525_6 GND nmos W=0.0975U L=0.065U
M2018_ #704 inv__s #703 GND nmos W=0.0975U L=0.065U
M2019_ #706 inv__I__t_525_6 O1_at_525_6 Vdd pmos W=0.1625U L=0.065U
M2020_keeper #1259 #fb1258# O1_at_525_6 Vdd pmos W=0.0975U L=0.065U
M2021_keeper #1260 #fb1258# O1_at_525_6 GND nmos W=0.0975U L=0.065U
M2022_ #707 s #706 Vdd pmos W=0.1625U L=0.065U
M2023_ #709 inv__I__f_525_6 O1_af_525_6 Vdd pmos W=0.1625U L=0.065U
M2024_keeper #1262 #fb1261# O1_af_525_6 Vdd pmos W=0.0975U L=0.065U
M2025_keeper #1263 #fb1261# O1_af_525_6 GND nmos W=0.0975U L=0.065U
M2026_ #710 s #709 Vdd pmos W=0.1625U L=0.065U
M2027_ #712 I_at_526_6 n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M2028_keeper #1265 #fb1264# n__O0__t_526_6 Vdd pmos W=0.0975U L=0.065U
M2029_keeper #1266 #fb1264# n__O0__t_526_6 GND nmos W=0.0975U L=0.065U
M2030_ #713 inv__s #712 GND nmos W=0.0975U L=0.065U
M2031_ #715 I_af_526_6 n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M2032_keeper #1268 #fb1267# n__O0__f_526_6 Vdd pmos W=0.0975U L=0.065U
M2033_keeper #1269 #fb1267# n__O0__f_526_6 GND nmos W=0.0975U L=0.065U
M2034_ #716 inv__s #715 GND nmos W=0.0975U L=0.065U
M2035_ #718 inv__I__t_526_6 O1_at_526_6 Vdd pmos W=0.1625U L=0.065U
M2036_keeper #1271 #fb1270# O1_at_526_6 Vdd pmos W=0.0975U L=0.065U
M2037_keeper #1272 #fb1270# O1_at_526_6 GND nmos W=0.0975U L=0.065U
M2038_ #719 s #718 Vdd pmos W=0.1625U L=0.065U
M2039_ #721 inv__I__f_526_6 O1_af_526_6 Vdd pmos W=0.1625U L=0.065U
M2040_keeper #1274 #fb1273# O1_af_526_6 Vdd pmos W=0.0975U L=0.065U
M2041_keeper #1275 #fb1273# O1_af_526_6 GND nmos W=0.0975U L=0.065U
M2042_ #722 s #721 Vdd pmos W=0.1625U L=0.065U
M2043_ #724 I_at_527_6 n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M2044_keeper #1277 #fb1276# n__O0__t_527_6 Vdd pmos W=0.0975U L=0.065U
M2045_keeper #1278 #fb1276# n__O0__t_527_6 GND nmos W=0.0975U L=0.065U
M2046_ #725 inv__s #724 GND nmos W=0.0975U L=0.065U
M2047_ #727 I_af_527_6 n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M2048_keeper #1280 #fb1279# n__O0__f_527_6 Vdd pmos W=0.0975U L=0.065U
M2049_keeper #1281 #fb1279# n__O0__f_527_6 GND nmos W=0.0975U L=0.065U
M2050_ #728 inv__s #727 GND nmos W=0.0975U L=0.065U
M2051_ #730 inv__I__t_527_6 O1_at_527_6 Vdd pmos W=0.1625U L=0.065U
M2052_keeper #1283 #fb1282# O1_at_527_6 Vdd pmos W=0.0975U L=0.065U
M2053_keeper #1284 #fb1282# O1_at_527_6 GND nmos W=0.0975U L=0.065U
M2054_ #731 s #730 Vdd pmos W=0.1625U L=0.065U
M2055_ #733 inv__I__f_527_6 O1_af_527_6 Vdd pmos W=0.1625U L=0.065U
M2056_keeper #1286 #fb1285# O1_af_527_6 Vdd pmos W=0.0975U L=0.065U
M2057_keeper #1287 #fb1285# O1_af_527_6 GND nmos W=0.0975U L=0.065U
M2058_ #734 s #733 Vdd pmos W=0.1625U L=0.065U
M2059_ #736 I_at_528_6 n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M2060_keeper #1289 #fb1288# n__O0__t_528_6 Vdd pmos W=0.0975U L=0.065U
M2061_keeper #1290 #fb1288# n__O0__t_528_6 GND nmos W=0.0975U L=0.065U
M2062_ #737 inv__s #736 GND nmos W=0.0975U L=0.065U
M2063_ #739 I_af_528_6 n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M2064_keeper #1292 #fb1291# n__O0__f_528_6 Vdd pmos W=0.0975U L=0.065U
M2065_keeper #1293 #fb1291# n__O0__f_528_6 GND nmos W=0.0975U L=0.065U
M2066_ #740 inv__s #739 GND nmos W=0.0975U L=0.065U
M2067_ #742 inv__I__t_528_6 O1_at_528_6 Vdd pmos W=0.1625U L=0.065U
M2068_keeper #1295 #fb1294# O1_at_528_6 Vdd pmos W=0.0975U L=0.065U
M2069_keeper #1296 #fb1294# O1_at_528_6 GND nmos W=0.0975U L=0.065U
M2070_ #743 s #742 Vdd pmos W=0.1625U L=0.065U
M2071_ #745 inv__I__f_528_6 O1_af_528_6 Vdd pmos W=0.1625U L=0.065U
M2072_keeper #1298 #fb1297# O1_af_528_6 Vdd pmos W=0.0975U L=0.065U
M2073_keeper #1299 #fb1297# O1_af_528_6 GND nmos W=0.0975U L=0.065U
M2074_ #746 s #745 Vdd pmos W=0.1625U L=0.065U
M2075_ #748 I_at_529_6 n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M2076_keeper #1301 #fb1300# n__O0__t_529_6 Vdd pmos W=0.0975U L=0.065U
M2077_keeper #1302 #fb1300# n__O0__t_529_6 GND nmos W=0.0975U L=0.065U
M2078_ #749 inv__s #748 GND nmos W=0.0975U L=0.065U
M2079_ #751 I_af_529_6 n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M2080_keeper #1304 #fb1303# n__O0__f_529_6 Vdd pmos W=0.0975U L=0.065U
M2081_keeper #1305 #fb1303# n__O0__f_529_6 GND nmos W=0.0975U L=0.065U
M2082_ #752 inv__s #751 GND nmos W=0.0975U L=0.065U
M2083_ #754 inv__I__t_529_6 O1_at_529_6 Vdd pmos W=0.1625U L=0.065U
M2084_keeper #1307 #fb1306# O1_at_529_6 Vdd pmos W=0.0975U L=0.065U
M2085_keeper #1308 #fb1306# O1_at_529_6 GND nmos W=0.0975U L=0.065U
M2086_ #755 s #754 Vdd pmos W=0.1625U L=0.065U
M2087_ #757 inv__I__f_529_6 O1_af_529_6 Vdd pmos W=0.1625U L=0.065U
M2088_keeper #1310 #fb1309# O1_af_529_6 Vdd pmos W=0.0975U L=0.065U
M2089_keeper #1311 #fb1309# O1_af_529_6 GND nmos W=0.0975U L=0.065U
M2090_ #758 s #757 Vdd pmos W=0.1625U L=0.065U
M2091_ #760 I_at_530_6 n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M2092_keeper #1313 #fb1312# n__O0__t_530_6 Vdd pmos W=0.0975U L=0.065U
M2093_keeper #1314 #fb1312# n__O0__t_530_6 GND nmos W=0.0975U L=0.065U
M2094_ #761 inv__s #760 GND nmos W=0.0975U L=0.065U
M2095_ #763 I_af_530_6 n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M2096_keeper #1316 #fb1315# n__O0__f_530_6 Vdd pmos W=0.0975U L=0.065U
M2097_keeper #1317 #fb1315# n__O0__f_530_6 GND nmos W=0.0975U L=0.065U
M2098_ #764 inv__s #763 GND nmos W=0.0975U L=0.065U
M2099_ #766 inv__I__t_530_6 O1_at_530_6 Vdd pmos W=0.1625U L=0.065U
M2100_keeper #1319 #fb1318# O1_at_530_6 Vdd pmos W=0.0975U L=0.065U
M2101_keeper #1320 #fb1318# O1_at_530_6 GND nmos W=0.0975U L=0.065U
M2102_ #767 s #766 Vdd pmos W=0.1625U L=0.065U
M2103_ #769 inv__I__f_530_6 O1_af_530_6 Vdd pmos W=0.1625U L=0.065U
M2104_keeper #1322 #fb1321# O1_af_530_6 Vdd pmos W=0.0975U L=0.065U
M2105_keeper #1323 #fb1321# O1_af_530_6 GND nmos W=0.0975U L=0.065U
M2106_ #770 s #769 Vdd pmos W=0.1625U L=0.065U
M2107_ #772 I_at_531_6 n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M2108_keeper #1325 #fb1324# n__O0__t_531_6 Vdd pmos W=0.0975U L=0.065U
M2109_keeper #1326 #fb1324# n__O0__t_531_6 GND nmos W=0.0975U L=0.065U
M2110_ #773 inv__s #772 GND nmos W=0.0975U L=0.065U
M2111_ #775 I_af_531_6 n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M2112_keeper #1328 #fb1327# n__O0__f_531_6 Vdd pmos W=0.0975U L=0.065U
M2113_keeper #1329 #fb1327# n__O0__f_531_6 GND nmos W=0.0975U L=0.065U
M2114_ #776 inv__s #775 GND nmos W=0.0975U L=0.065U
M2115_ #778 inv__I__t_531_6 O1_at_531_6 Vdd pmos W=0.1625U L=0.065U
M2116_keeper #1331 #fb1330# O1_at_531_6 Vdd pmos W=0.0975U L=0.065U
M2117_keeper #1332 #fb1330# O1_at_531_6 GND nmos W=0.0975U L=0.065U
M2118_ #779 s #778 Vdd pmos W=0.1625U L=0.065U
M2119_ #781 inv__I__f_531_6 O1_af_531_6 Vdd pmos W=0.1625U L=0.065U
M2120_keeper #1334 #fb1333# O1_af_531_6 Vdd pmos W=0.0975U L=0.065U
M2121_keeper #1335 #fb1333# O1_af_531_6 GND nmos W=0.0975U L=0.065U
M2122_ #782 s #781 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: StopcodeSel<> -----
*
*---- act defproc: Merge<32,t> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.t[4] I0.t[5] I0.t[6] I0.t[7] I0.t[8] I0.t[9] I0.t[10] I0.t[11] I0.t[12] I0.t[13] I0.t[14] I0.t[15] I0.t[16] I0.t[17] I0.t[18] I0.t[19] I0.t[20] I0.t[21] I0.t[22] I0.t[23] I0.t[24] I0.t[25] I0.t[26] I0.t[27] I0.t[28] I0.t[29] I0.t[30] I0.t[31] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.f[4] I0.f[5] I0.f[6] I0.f[7] I0.f[8] I0.f[9] I0.f[10] I0.f[11] I0.f[12] I0.f[13] I0.f[14] I0.f[15] I0.f[16] I0.f[17] I0.f[18] I0.f[19] I0.f[20] I0.f[21] I0.f[22] I0.f[23] I0.f[24] I0.f[25] I0.f[26] I0.f[27] I0.f[28] I0.f[29] I0.f[30] I0.f[31] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.t[4] I1.t[5] I1.t[6] I1.t[7] I1.t[8] I1.t[9] I1.t[10] I1.t[11] I1.t[12] I1.t[13] I1.t[14] I1.t[15] I1.t[16] I1.t[17] I1.t[18] I1.t[19] I1.t[20] I1.t[21] I1.t[22] I1.t[23] I1.t[24] I1.t[25] I1.t[26] I1.t[27] I1.t[28] I1.t[29] I1.t[30] I1.t[31] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.f[4] I1.f[5] I1.f[6] I1.f[7] I1.f[8] I1.f[9] I1.f[10] I1.f[11] I1.f[12] I1.f[13] I1.f[14] I1.f[15] I1.f[16] I1.f[17] I1.f[18] I1.f[19] I1.f[20] I1.f[21] I1.f[22] I1.f[23] I1.f[24] I1.f[25] I1.f[26] I1.f[27] I1.f[28] I1.f[29] I1.f[30] I1.f[31] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt Merge_332_7t_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_at_54_6 I0_at_55_6 I0_at_56_6 I0_at_57_6 I0_at_58_6 I0_at_59_6 I0_at_510_6 I0_at_511_6 I0_at_512_6 I0_at_513_6 I0_at_514_6 I0_at_515_6 I0_at_516_6 I0_at_517_6 I0_at_518_6 I0_at_519_6 I0_at_520_6 I0_at_521_6 I0_at_522_6 I0_at_523_6 I0_at_524_6 I0_at_525_6 I0_at_526_6 I0_at_527_6 I0_at_528_6 I0_at_529_6 I0_at_530_6 I0_at_531_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_af_54_6 I0_af_55_6 I0_af_56_6 I0_af_57_6 I0_af_58_6 I0_af_59_6 I0_af_510_6 I0_af_511_6 I0_af_512_6 I0_af_513_6 I0_af_514_6 I0_af_515_6 I0_af_516_6 I0_af_517_6 I0_af_518_6 I0_af_519_6 I0_af_520_6 I0_af_521_6 I0_af_522_6 I0_af_523_6 I0_af_524_6 I0_af_525_6 I0_af_526_6 I0_af_527_6 I0_af_528_6 I0_af_529_6 I0_af_530_6 I0_af_531_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_at_54_6 I1_at_55_6 I1_at_56_6 I1_at_57_6 I1_at_58_6 I1_at_59_6 I1_at_510_6 I1_at_511_6 I1_at_512_6 I1_at_513_6 I1_at_514_6 I1_at_515_6 I1_at_516_6 I1_at_517_6 I1_at_518_6 I1_at_519_6 I1_at_520_6 I1_at_521_6 I1_at_522_6 I1_at_523_6 I1_at_524_6 I1_at_525_6 I1_at_526_6 I1_at_527_6 I1_at_528_6 I1_at_529_6 I1_at_530_6 I1_at_531_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_af_54_6 I1_af_55_6 I1_af_56_6 I1_af_57_6 I1_af_58_6 I1_af_59_6 I1_af_510_6 I1_af_511_6 I1_af_512_6 I1_af_513_6 I1_af_514_6 I1_af_515_6 I1_af_516_6 I1_af_517_6 I1_af_518_6 I1_af_519_6 I1_af_520_6 I1_af_521_6 I1_af_522_6 I1_af_523_6 I1_af_524_6 I1_af_525_6 I1_af_526_6 I1_af_527_6 I1_af_528_6 I1_af_529_6 I1_af_530_6 I1_af_531_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa
*.PININFO I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_at_54_6:I I0_at_55_6:I I0_at_56_6:I I0_at_57_6:I I0_at_58_6:I I0_at_59_6:I I0_at_510_6:I I0_at_511_6:I I0_at_512_6:I I0_at_513_6:I I0_at_514_6:I I0_at_515_6:I I0_at_516_6:I I0_at_517_6:I I0_at_518_6:I I0_at_519_6:I I0_at_520_6:I I0_at_521_6:I I0_at_522_6:I I0_at_523_6:I I0_at_524_6:I I0_at_525_6:I I0_at_526_6:I I0_at_527_6:I I0_at_528_6:I I0_at_529_6:I I0_at_530_6:I I0_at_531_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_af_54_6:I I0_af_55_6:I I0_af_56_6:I I0_af_57_6:I I0_af_58_6:I I0_af_59_6:I I0_af_510_6:I I0_af_511_6:I I0_af_512_6:I I0_af_513_6:I I0_af_514_6:I I0_af_515_6:I I0_af_516_6:I I0_af_517_6:I I0_af_518_6:I I0_af_519_6:I I0_af_520_6:I I0_af_521_6:I I0_af_522_6:I I0_af_523_6:I I0_af_524_6:I I0_af_525_6:I I0_af_526_6:I I0_af_527_6:I I0_af_528_6:I I0_af_529_6:I I0_af_530_6:I I0_af_531_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_at_54_6:I I1_at_55_6:I I1_at_56_6:I I1_at_57_6:I I1_at_58_6:I I1_at_59_6:I I1_at_510_6:I I1_at_511_6:I I1_at_512_6:I I1_at_513_6:I I1_at_514_6:I I1_at_515_6:I I1_at_516_6:I I1_at_517_6:I I1_at_518_6:I I1_at_519_6:I I1_at_520_6:I I1_at_521_6:I I1_at_522_6:I I1_at_523_6:I I1_at_524_6:I I1_at_525_6:I I1_at_526_6:I I1_at_527_6:I I1_at_528_6:I I1_at_529_6:I I1_at_530_6:I I1_at_531_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_af_54_6:I I1_af_55_6:I I1_af_56_6:I I1_af_57_6:I I1_af_58_6:I I1_af_59_6:I I1_af_510_6:I I1_af_511_6:I I1_af_512_6:I I1_af_513_6:I I1_af_514_6:I I1_af_515_6:I I1_af_516_6:I I1_af_517_6:I I1_af_518_6:I I1_af_519_6:I I1_af_520_6:I I1_af_521_6:I I1_af_522_6:I I1_af_523_6:I I1_af_524_6:I I1_af_525_6:I I1_af_526_6:I I1_af_527_6:I I1_af_528_6:I I1_af_529_6:I I1_af_530_6:I I1_af_531_6:I I1_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_at_58_6:O O_at_59_6:O O_at_510_6:O O_at_511_6:O O_at_512_6:O O_at_513_6:O O_at_514_6:O O_at_515_6:O O_at_516_6:O O_at_517_6:O O_at_518_6:O O_at_519_6:O O_at_520_6:O O_at_521_6:O O_at_522_6:O O_at_523_6:O O_at_524_6:O O_at_525_6:O O_at_526_6:O O_at_527_6:O O_at_528_6:O O_at_529_6:O O_at_530_6:O O_at_531_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O O_af_58_6:O O_af_59_6:O O_af_510_6:O O_af_511_6:O O_af_512_6:O O_af_513_6:O O_af_514_6:O O_af_515_6:O O_af_516_6:O O_af_517_6:O O_af_518_6:O O_af_519_6:O O_af_520_6:O O_af_521_6:O O_af_522_6:O O_af_523_6:O O_af_524_6:O O_af_525_6:O O_af_526_6:O O_af_527_6:O O_af_528_6:O O_af_529_6:O O_af_530_6:O O_af_531_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* n__I0__a (state-holding): pup_reff=0.4; pdn_reff=1.33333
* n__I1__a (state-holding): pup_reff=0.4; pdn_reff=1.33333
* n__O__t_50_6 (combinational)
* n__O__f_50_6 (combinational)
* n__O__t_51_6 (combinational)
* n__O__f_51_6 (combinational)
* n__O__t_52_6 (combinational)
* n__O__f_52_6 (combinational)
* n__O__t_53_6 (combinational)
* n__O__f_53_6 (combinational)
* n__O__t_54_6 (combinational)
* n__O__f_54_6 (combinational)
* n__O__t_55_6 (combinational)
* n__O__f_55_6 (combinational)
* n__O__t_56_6 (combinational)
* n__O__f_56_6 (combinational)
* n__O__t_57_6 (combinational)
* n__O__f_57_6 (combinational)
* n__O__t_58_6 (combinational)
* n__O__f_58_6 (combinational)
* n__O__t_59_6 (combinational)
* n__O__f_59_6 (combinational)
* n__O__t_510_6 (combinational)
* n__O__f_510_6 (combinational)
* n__O__t_511_6 (combinational)
* n__O__f_511_6 (combinational)
* n__O__t_512_6 (combinational)
* n__O__f_512_6 (combinational)
* n__O__t_513_6 (combinational)
* n__O__f_513_6 (combinational)
* n__O__t_514_6 (combinational)
* n__O__f_514_6 (combinational)
* n__O__t_515_6 (combinational)
* n__O__f_515_6 (combinational)
* n__O__t_516_6 (combinational)
* n__O__f_516_6 (combinational)
* n__O__t_517_6 (combinational)
* n__O__f_517_6 (combinational)
* n__O__t_518_6 (combinational)
* n__O__f_518_6 (combinational)
* n__O__t_519_6 (combinational)
* n__O__f_519_6 (combinational)
* n__O__t_520_6 (combinational)
* n__O__f_520_6 (combinational)
* n__O__t_521_6 (combinational)
* n__O__f_521_6 (combinational)
* n__O__t_522_6 (combinational)
* n__O__f_522_6 (combinational)
* n__O__t_523_6 (combinational)
* n__O__f_523_6 (combinational)
* n__O__t_524_6 (combinational)
* n__O__f_524_6 (combinational)
* n__O__t_525_6 (combinational)
* n__O__f_525_6 (combinational)
* n__O__t_526_6 (combinational)
* n__O__f_526_6 (combinational)
* n__O__t_527_6 (combinational)
* n__O__f_527_6 (combinational)
* n__O__t_528_6 (combinational)
* n__O__f_528_6 (combinational)
* n__O__t_529_6 (combinational)
* n__O__f_529_6 (combinational)
* n__O__t_530_6 (combinational)
* n__O__f_530_6 (combinational)
* n__O__t_531_6 (combinational)
* n__O__f_531_6 (combinational)
* I0_aa (combinational)
* I1_aa (combinational)
* O_at_50_6 (combinational)
* O_af_50_6 (combinational)
* O_at_51_6 (combinational)
* O_af_51_6 (combinational)
* O_at_52_6 (combinational)
* O_af_52_6 (combinational)
* O_at_53_6 (combinational)
* O_af_53_6 (combinational)
* O_at_54_6 (combinational)
* O_af_54_6 (combinational)
* O_at_55_6 (combinational)
* O_af_55_6 (combinational)
* O_at_56_6 (combinational)
* O_af_56_6 (combinational)
* O_at_57_6 (combinational)
* O_af_57_6 (combinational)
* O_at_58_6 (combinational)
* O_af_58_6 (combinational)
* O_at_59_6 (combinational)
* O_af_59_6 (combinational)
* O_at_510_6 (combinational)
* O_af_510_6 (combinational)
* O_at_511_6 (combinational)
* O_af_511_6 (combinational)
* O_at_512_6 (combinational)
* O_af_512_6 (combinational)
* O_at_513_6 (combinational)
* O_af_513_6 (combinational)
* O_at_514_6 (combinational)
* O_af_514_6 (combinational)
* O_at_515_6 (combinational)
* O_af_515_6 (combinational)
* O_at_516_6 (combinational)
* O_af_516_6 (combinational)
* O_at_517_6 (combinational)
* O_af_517_6 (combinational)
* O_at_518_6 (combinational)
* O_af_518_6 (combinational)
* O_at_519_6 (combinational)
* O_af_519_6 (combinational)
* O_at_520_6 (combinational)
* O_af_520_6 (combinational)
* O_at_521_6 (combinational)
* O_af_521_6 (combinational)
* O_at_522_6 (combinational)
* O_af_522_6 (combinational)
* O_at_523_6 (combinational)
* O_af_523_6 (combinational)
* O_at_524_6 (combinational)
* O_af_524_6 (combinational)
* O_at_525_6 (combinational)
* O_af_525_6 (combinational)
* O_at_526_6 (combinational)
* O_af_526_6 (combinational)
* O_at_527_6 (combinational)
* O_af_527_6 (combinational)
* O_at_528_6 (combinational)
* O_af_528_6 (combinational)
* O_at_529_6 (combinational)
* O_af_529_6 (combinational)
* O_at_530_6 (combinational)
* O_af_530_6 (combinational)
* O_at_531_6 (combinational)
* O_af_531_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd O_aa n__I0__a Vdd pmos W=0.1625U L=0.065U
M1_ Vdd O_aa n__I1__a Vdd pmos W=0.1625U L=0.065U
M2_ Vdd I0_at_50_6 #14 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I0_af_50_6 #18 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I0_at_51_6 #22 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I0_af_51_6 #26 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd I0_at_52_6 #30 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd I0_af_52_6 #34 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd I0_at_53_6 #38 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd I0_af_53_6 #42 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd I0_at_54_6 #46 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd I0_af_54_6 #50 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd I0_at_55_6 #54 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd I0_af_55_6 #58 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd I0_at_56_6 #62 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd I0_af_56_6 #66 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd I0_at_57_6 #70 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I0_af_57_6 #74 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd I0_at_58_6 #78 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd I0_af_58_6 #82 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd I0_at_59_6 #86 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd I0_af_59_6 #90 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd I0_at_510_6 #94 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd I0_af_510_6 #98 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd I0_at_511_6 #102 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd I0_af_511_6 #106 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I0_at_512_6 #110 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd I0_af_512_6 #114 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd I0_at_513_6 #118 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd I0_af_513_6 #122 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd I0_at_514_6 #126 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd I0_af_514_6 #130 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd I0_at_515_6 #134 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd I0_af_515_6 #138 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd I0_at_516_6 #142 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd I0_af_516_6 #146 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd I0_at_517_6 #150 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd I0_af_517_6 #154 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd I0_at_518_6 #158 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd I0_af_518_6 #162 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd I0_at_519_6 #166 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd I0_af_519_6 #170 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd I0_at_520_6 #174 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd I0_af_520_6 #178 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd I0_at_521_6 #182 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd I0_af_521_6 #186 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd I0_at_522_6 #190 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd I0_af_522_6 #194 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd I0_at_523_6 #198 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd I0_af_523_6 #202 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd I0_at_524_6 #206 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd I0_af_524_6 #210 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd I0_at_525_6 #214 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd I0_af_525_6 #218 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd I0_at_526_6 #222 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd I0_af_526_6 #226 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd I0_at_527_6 #230 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd I0_af_527_6 #234 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd I0_at_528_6 #238 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd I0_af_528_6 #242 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd I0_at_529_6 #246 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd I0_af_529_6 #250 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd I0_at_530_6 #254 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd I0_af_530_6 #258 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd I0_at_531_6 #260 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd I0_af_531_6 #262 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd n__I0__a I0_aa Vdd pmos W=0.1625U L=0.065U
M67_ Vdd n__I1__a I1_aa Vdd pmos W=0.1625U L=0.065U
M68_ Vdd n__O__t_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd n__O__f_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd n__O__t_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd n__O__f_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd n__O__t_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd n__O__f_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd n__O__t_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd n__O__f_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd n__O__t_54_6 O_at_54_6 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd n__O__f_54_6 O_af_54_6 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd n__O__t_55_6 O_at_55_6 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd n__O__f_55_6 O_af_55_6 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd n__O__t_56_6 O_at_56_6 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd n__O__f_56_6 O_af_56_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd n__O__t_57_6 O_at_57_6 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd n__O__f_57_6 O_af_57_6 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd n__O__t_58_6 O_at_58_6 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd n__O__f_58_6 O_af_58_6 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd n__O__t_59_6 O_at_59_6 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd n__O__f_59_6 O_af_59_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd n__O__t_510_6 O_at_510_6 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd n__O__f_510_6 O_af_510_6 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd n__O__t_511_6 O_at_511_6 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd n__O__f_511_6 O_af_511_6 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd n__O__t_512_6 O_at_512_6 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd n__O__f_512_6 O_af_512_6 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd n__O__t_513_6 O_at_513_6 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd n__O__f_513_6 O_af_513_6 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd n__O__t_514_6 O_at_514_6 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd n__O__f_514_6 O_af_514_6 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd n__O__t_515_6 O_at_515_6 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd n__O__f_515_6 O_af_515_6 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd n__O__t_516_6 O_at_516_6 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd n__O__f_516_6 O_af_516_6 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd n__O__t_517_6 O_at_517_6 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd n__O__f_517_6 O_af_517_6 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd n__O__t_518_6 O_at_518_6 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd n__O__f_518_6 O_af_518_6 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd n__O__t_519_6 O_at_519_6 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd n__O__f_519_6 O_af_519_6 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd n__O__t_520_6 O_at_520_6 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd n__O__f_520_6 O_af_520_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd n__O__t_521_6 O_at_521_6 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd n__O__f_521_6 O_af_521_6 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd n__O__t_522_6 O_at_522_6 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd n__O__f_522_6 O_af_522_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd n__O__t_523_6 O_at_523_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd n__O__f_523_6 O_af_523_6 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd n__O__t_524_6 O_at_524_6 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd n__O__f_524_6 O_af_524_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd n__O__t_525_6 O_at_525_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd n__O__f_525_6 O_af_525_6 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd n__O__t_526_6 O_at_526_6 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd n__O__f_526_6 O_af_526_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd n__O__t_527_6 O_at_527_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd n__O__f_527_6 O_af_527_6 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd n__O__t_528_6 O_at_528_6 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd n__O__f_528_6 O_af_528_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd n__O__t_529_6 O_at_529_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd n__O__f_529_6 O_af_529_6 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd n__O__t_530_6 O_at_530_6 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd n__O__f_530_6 O_af_530_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd n__O__t_531_6 O_at_531_6 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd n__O__f_531_6 O_af_531_6 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd n__I0__a #fb329# Vdd pmos W=0.1625U L=0.13U
M133_ Vdd n__I1__a #fb332# Vdd pmos W=0.1625U L=0.13U
M134_keeper Vdd GND #330 Vdd pmos W=0.0975U L=0.585U
M135_keeper Vdd GND #333 Vdd pmos W=0.0975U L=0.585U
M136_ GND O_aa #3 GND nmos W=0.0975U L=0.065U
M137_ GND O_aa #8 GND nmos W=0.0975U L=0.065U
M138_ GND I0_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M139_ GND I1_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M140_ GND I0_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M141_ GND I1_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M142_ GND I0_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M143_ GND I1_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M144_ GND I0_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M145_ GND I1_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M146_ GND I0_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M147_ GND I1_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M148_ GND I0_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M149_ GND I1_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M150_ GND I0_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M151_ GND I1_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M152_ GND I0_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M153_ GND I1_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M154_ GND I0_at_54_6 n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M155_ GND I1_at_54_6 n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M156_ GND I0_af_54_6 n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M157_ GND I1_af_54_6 n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M158_ GND I0_at_55_6 n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M159_ GND I1_at_55_6 n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M160_ GND I0_af_55_6 n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M161_ GND I1_af_55_6 n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M162_ GND I0_at_56_6 n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M163_ GND I1_at_56_6 n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M164_ GND I0_af_56_6 n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M165_ GND I1_af_56_6 n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M166_ GND I0_at_57_6 n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M167_ GND I1_at_57_6 n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M168_ GND I0_af_57_6 n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M169_ GND I1_af_57_6 n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M170_ GND I0_at_58_6 n__O__t_58_6 GND nmos W=0.0975U L=0.065U
M171_ GND I1_at_58_6 n__O__t_58_6 GND nmos W=0.0975U L=0.065U
M172_ GND I0_af_58_6 n__O__f_58_6 GND nmos W=0.0975U L=0.065U
M173_ GND I1_af_58_6 n__O__f_58_6 GND nmos W=0.0975U L=0.065U
M174_ GND I0_at_59_6 n__O__t_59_6 GND nmos W=0.0975U L=0.065U
M175_ GND I1_at_59_6 n__O__t_59_6 GND nmos W=0.0975U L=0.065U
M176_ GND I0_af_59_6 n__O__f_59_6 GND nmos W=0.0975U L=0.065U
M177_ GND I1_af_59_6 n__O__f_59_6 GND nmos W=0.0975U L=0.065U
M178_ GND I0_at_510_6 n__O__t_510_6 GND nmos W=0.0975U L=0.065U
M179_ GND I1_at_510_6 n__O__t_510_6 GND nmos W=0.0975U L=0.065U
M180_ GND I0_af_510_6 n__O__f_510_6 GND nmos W=0.0975U L=0.065U
M181_ GND I1_af_510_6 n__O__f_510_6 GND nmos W=0.0975U L=0.065U
M182_ GND I0_at_511_6 n__O__t_511_6 GND nmos W=0.0975U L=0.065U
M183_ GND I1_at_511_6 n__O__t_511_6 GND nmos W=0.0975U L=0.065U
M184_ GND I0_af_511_6 n__O__f_511_6 GND nmos W=0.0975U L=0.065U
M185_ GND I1_af_511_6 n__O__f_511_6 GND nmos W=0.0975U L=0.065U
M186_ GND I0_at_512_6 n__O__t_512_6 GND nmos W=0.0975U L=0.065U
M187_ GND I1_at_512_6 n__O__t_512_6 GND nmos W=0.0975U L=0.065U
M188_ GND I0_af_512_6 n__O__f_512_6 GND nmos W=0.0975U L=0.065U
M189_ GND I1_af_512_6 n__O__f_512_6 GND nmos W=0.0975U L=0.065U
M190_ GND I0_at_513_6 n__O__t_513_6 GND nmos W=0.0975U L=0.065U
M191_ GND I1_at_513_6 n__O__t_513_6 GND nmos W=0.0975U L=0.065U
M192_ GND I0_af_513_6 n__O__f_513_6 GND nmos W=0.0975U L=0.065U
M193_ GND I1_af_513_6 n__O__f_513_6 GND nmos W=0.0975U L=0.065U
M194_ GND I0_at_514_6 n__O__t_514_6 GND nmos W=0.0975U L=0.065U
M195_ GND I1_at_514_6 n__O__t_514_6 GND nmos W=0.0975U L=0.065U
M196_ GND I0_af_514_6 n__O__f_514_6 GND nmos W=0.0975U L=0.065U
M197_ GND I1_af_514_6 n__O__f_514_6 GND nmos W=0.0975U L=0.065U
M198_ GND I0_at_515_6 n__O__t_515_6 GND nmos W=0.0975U L=0.065U
M199_ GND I1_at_515_6 n__O__t_515_6 GND nmos W=0.0975U L=0.065U
M200_ GND I0_af_515_6 n__O__f_515_6 GND nmos W=0.0975U L=0.065U
M201_ GND I1_af_515_6 n__O__f_515_6 GND nmos W=0.0975U L=0.065U
M202_ GND I0_at_516_6 n__O__t_516_6 GND nmos W=0.0975U L=0.065U
M203_ GND I1_at_516_6 n__O__t_516_6 GND nmos W=0.0975U L=0.065U
M204_ GND I0_af_516_6 n__O__f_516_6 GND nmos W=0.0975U L=0.065U
M205_ GND I1_af_516_6 n__O__f_516_6 GND nmos W=0.0975U L=0.065U
M206_ GND I0_at_517_6 n__O__t_517_6 GND nmos W=0.0975U L=0.065U
M207_ GND I1_at_517_6 n__O__t_517_6 GND nmos W=0.0975U L=0.065U
M208_ GND I0_af_517_6 n__O__f_517_6 GND nmos W=0.0975U L=0.065U
M209_ GND I1_af_517_6 n__O__f_517_6 GND nmos W=0.0975U L=0.065U
M210_ GND I0_at_518_6 n__O__t_518_6 GND nmos W=0.0975U L=0.065U
M211_ GND I1_at_518_6 n__O__t_518_6 GND nmos W=0.0975U L=0.065U
M212_ GND I0_af_518_6 n__O__f_518_6 GND nmos W=0.0975U L=0.065U
M213_ GND I1_af_518_6 n__O__f_518_6 GND nmos W=0.0975U L=0.065U
M214_ GND I0_at_519_6 n__O__t_519_6 GND nmos W=0.0975U L=0.065U
M215_ GND I1_at_519_6 n__O__t_519_6 GND nmos W=0.0975U L=0.065U
M216_ GND I0_af_519_6 n__O__f_519_6 GND nmos W=0.0975U L=0.065U
M217_ GND I1_af_519_6 n__O__f_519_6 GND nmos W=0.0975U L=0.065U
M218_ GND I0_at_520_6 n__O__t_520_6 GND nmos W=0.0975U L=0.065U
M219_ GND I1_at_520_6 n__O__t_520_6 GND nmos W=0.0975U L=0.065U
M220_ GND I0_af_520_6 n__O__f_520_6 GND nmos W=0.0975U L=0.065U
M221_ GND I1_af_520_6 n__O__f_520_6 GND nmos W=0.0975U L=0.065U
M222_ GND I0_at_521_6 n__O__t_521_6 GND nmos W=0.0975U L=0.065U
M223_ GND I1_at_521_6 n__O__t_521_6 GND nmos W=0.0975U L=0.065U
M224_ GND I0_af_521_6 n__O__f_521_6 GND nmos W=0.0975U L=0.065U
M225_ GND I1_af_521_6 n__O__f_521_6 GND nmos W=0.0975U L=0.065U
M226_ GND I0_at_522_6 n__O__t_522_6 GND nmos W=0.0975U L=0.065U
M227_ GND I1_at_522_6 n__O__t_522_6 GND nmos W=0.0975U L=0.065U
M228_ GND I0_af_522_6 n__O__f_522_6 GND nmos W=0.0975U L=0.065U
M229_ GND I1_af_522_6 n__O__f_522_6 GND nmos W=0.0975U L=0.065U
M230_ GND I0_at_523_6 n__O__t_523_6 GND nmos W=0.0975U L=0.065U
M231_ GND I1_at_523_6 n__O__t_523_6 GND nmos W=0.0975U L=0.065U
M232_ GND I0_af_523_6 n__O__f_523_6 GND nmos W=0.0975U L=0.065U
M233_ GND I1_af_523_6 n__O__f_523_6 GND nmos W=0.0975U L=0.065U
M234_ GND I0_at_524_6 n__O__t_524_6 GND nmos W=0.0975U L=0.065U
M235_ GND I1_at_524_6 n__O__t_524_6 GND nmos W=0.0975U L=0.065U
M236_ GND I0_af_524_6 n__O__f_524_6 GND nmos W=0.0975U L=0.065U
M237_ GND I1_af_524_6 n__O__f_524_6 GND nmos W=0.0975U L=0.065U
M238_ GND I0_at_525_6 n__O__t_525_6 GND nmos W=0.0975U L=0.065U
M239_ GND I1_at_525_6 n__O__t_525_6 GND nmos W=0.0975U L=0.065U
M240_ GND I0_af_525_6 n__O__f_525_6 GND nmos W=0.0975U L=0.065U
M241_ GND I1_af_525_6 n__O__f_525_6 GND nmos W=0.0975U L=0.065U
M242_ GND I0_at_526_6 n__O__t_526_6 GND nmos W=0.0975U L=0.065U
M243_ GND I1_at_526_6 n__O__t_526_6 GND nmos W=0.0975U L=0.065U
M244_ GND I0_af_526_6 n__O__f_526_6 GND nmos W=0.0975U L=0.065U
M245_ GND I1_af_526_6 n__O__f_526_6 GND nmos W=0.0975U L=0.065U
M246_ GND I0_at_527_6 n__O__t_527_6 GND nmos W=0.0975U L=0.065U
M247_ GND I1_at_527_6 n__O__t_527_6 GND nmos W=0.0975U L=0.065U
M248_ GND I0_af_527_6 n__O__f_527_6 GND nmos W=0.0975U L=0.065U
M249_ GND I1_af_527_6 n__O__f_527_6 GND nmos W=0.0975U L=0.065U
M250_ GND I0_at_528_6 n__O__t_528_6 GND nmos W=0.0975U L=0.065U
M251_ GND I1_at_528_6 n__O__t_528_6 GND nmos W=0.0975U L=0.065U
M252_ GND I0_af_528_6 n__O__f_528_6 GND nmos W=0.0975U L=0.065U
M253_ GND I1_af_528_6 n__O__f_528_6 GND nmos W=0.0975U L=0.065U
M254_ GND I0_at_529_6 n__O__t_529_6 GND nmos W=0.0975U L=0.065U
M255_ GND I1_at_529_6 n__O__t_529_6 GND nmos W=0.0975U L=0.065U
M256_ GND I0_af_529_6 n__O__f_529_6 GND nmos W=0.0975U L=0.065U
M257_ GND I1_af_529_6 n__O__f_529_6 GND nmos W=0.0975U L=0.065U
M258_ GND I0_at_530_6 n__O__t_530_6 GND nmos W=0.0975U L=0.065U
M259_ GND I1_at_530_6 n__O__t_530_6 GND nmos W=0.0975U L=0.065U
M260_ GND I0_af_530_6 n__O__f_530_6 GND nmos W=0.0975U L=0.065U
M261_ GND I1_af_530_6 n__O__f_530_6 GND nmos W=0.0975U L=0.065U
M262_ GND I0_at_531_6 n__O__t_531_6 GND nmos W=0.0975U L=0.065U
M263_ GND I1_at_531_6 n__O__t_531_6 GND nmos W=0.0975U L=0.065U
M264_ GND I0_af_531_6 n__O__f_531_6 GND nmos W=0.0975U L=0.065U
M265_ GND I1_af_531_6 n__O__f_531_6 GND nmos W=0.0975U L=0.065U
M266_ GND n__I0__a I0_aa GND nmos W=0.0975U L=0.065U
M267_ GND n__I1__a I1_aa GND nmos W=0.0975U L=0.065U
M268_ GND n__O__t_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M269_ GND n__O__f_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M270_ GND n__O__t_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M271_ GND n__O__f_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M272_ GND n__O__t_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M273_ GND n__O__f_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M274_ GND n__O__t_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M275_ GND n__O__f_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M276_ GND n__O__t_54_6 O_at_54_6 GND nmos W=0.0975U L=0.065U
M277_ GND n__O__f_54_6 O_af_54_6 GND nmos W=0.0975U L=0.065U
M278_ GND n__O__t_55_6 O_at_55_6 GND nmos W=0.0975U L=0.065U
M279_ GND n__O__f_55_6 O_af_55_6 GND nmos W=0.0975U L=0.065U
M280_ GND n__O__t_56_6 O_at_56_6 GND nmos W=0.0975U L=0.065U
M281_ GND n__O__f_56_6 O_af_56_6 GND nmos W=0.0975U L=0.065U
M282_ GND n__O__t_57_6 O_at_57_6 GND nmos W=0.0975U L=0.065U
M283_ GND n__O__f_57_6 O_af_57_6 GND nmos W=0.0975U L=0.065U
M284_ GND n__O__t_58_6 O_at_58_6 GND nmos W=0.0975U L=0.065U
M285_ GND n__O__f_58_6 O_af_58_6 GND nmos W=0.0975U L=0.065U
M286_ GND n__O__t_59_6 O_at_59_6 GND nmos W=0.0975U L=0.065U
M287_ GND n__O__f_59_6 O_af_59_6 GND nmos W=0.0975U L=0.065U
M288_ GND n__O__t_510_6 O_at_510_6 GND nmos W=0.0975U L=0.065U
M289_ GND n__O__f_510_6 O_af_510_6 GND nmos W=0.0975U L=0.065U
M290_ GND n__O__t_511_6 O_at_511_6 GND nmos W=0.0975U L=0.065U
M291_ GND n__O__f_511_6 O_af_511_6 GND nmos W=0.0975U L=0.065U
M292_ GND n__O__t_512_6 O_at_512_6 GND nmos W=0.0975U L=0.065U
M293_ GND n__O__f_512_6 O_af_512_6 GND nmos W=0.0975U L=0.065U
M294_ GND n__O__t_513_6 O_at_513_6 GND nmos W=0.0975U L=0.065U
M295_ GND n__O__f_513_6 O_af_513_6 GND nmos W=0.0975U L=0.065U
M296_ GND n__O__t_514_6 O_at_514_6 GND nmos W=0.0975U L=0.065U
M297_ GND n__O__f_514_6 O_af_514_6 GND nmos W=0.0975U L=0.065U
M298_ GND n__O__t_515_6 O_at_515_6 GND nmos W=0.0975U L=0.065U
M299_ GND n__O__f_515_6 O_af_515_6 GND nmos W=0.0975U L=0.065U
M300_ GND n__O__t_516_6 O_at_516_6 GND nmos W=0.0975U L=0.065U
M301_ GND n__O__f_516_6 O_af_516_6 GND nmos W=0.0975U L=0.065U
M302_ GND n__O__t_517_6 O_at_517_6 GND nmos W=0.0975U L=0.065U
M303_ GND n__O__f_517_6 O_af_517_6 GND nmos W=0.0975U L=0.065U
M304_ GND n__O__t_518_6 O_at_518_6 GND nmos W=0.0975U L=0.065U
M305_ GND n__O__f_518_6 O_af_518_6 GND nmos W=0.0975U L=0.065U
M306_ GND n__O__t_519_6 O_at_519_6 GND nmos W=0.0975U L=0.065U
M307_ GND n__O__f_519_6 O_af_519_6 GND nmos W=0.0975U L=0.065U
M308_ GND n__O__t_520_6 O_at_520_6 GND nmos W=0.0975U L=0.065U
M309_ GND n__O__f_520_6 O_af_520_6 GND nmos W=0.0975U L=0.065U
M310_ GND n__O__t_521_6 O_at_521_6 GND nmos W=0.0975U L=0.065U
M311_ GND n__O__f_521_6 O_af_521_6 GND nmos W=0.0975U L=0.065U
M312_ GND n__O__t_522_6 O_at_522_6 GND nmos W=0.0975U L=0.065U
M313_ GND n__O__f_522_6 O_af_522_6 GND nmos W=0.0975U L=0.065U
M314_ GND n__O__t_523_6 O_at_523_6 GND nmos W=0.0975U L=0.065U
M315_ GND n__O__f_523_6 O_af_523_6 GND nmos W=0.0975U L=0.065U
M316_ GND n__O__t_524_6 O_at_524_6 GND nmos W=0.0975U L=0.065U
M317_ GND n__O__f_524_6 O_af_524_6 GND nmos W=0.0975U L=0.065U
M318_ GND n__O__t_525_6 O_at_525_6 GND nmos W=0.0975U L=0.065U
M319_ GND n__O__f_525_6 O_af_525_6 GND nmos W=0.0975U L=0.065U
M320_ GND n__O__t_526_6 O_at_526_6 GND nmos W=0.0975U L=0.065U
M321_ GND n__O__f_526_6 O_af_526_6 GND nmos W=0.0975U L=0.065U
M322_ GND n__O__t_527_6 O_at_527_6 GND nmos W=0.0975U L=0.065U
M323_ GND n__O__f_527_6 O_af_527_6 GND nmos W=0.0975U L=0.065U
M324_ GND n__O__t_528_6 O_at_528_6 GND nmos W=0.0975U L=0.065U
M325_ GND n__O__f_528_6 O_af_528_6 GND nmos W=0.0975U L=0.065U
M326_ GND n__O__t_529_6 O_at_529_6 GND nmos W=0.0975U L=0.065U
M327_ GND n__O__f_529_6 O_af_529_6 GND nmos W=0.0975U L=0.065U
M328_ GND n__O__t_530_6 O_at_530_6 GND nmos W=0.0975U L=0.065U
M329_ GND n__O__f_530_6 O_af_530_6 GND nmos W=0.0975U L=0.065U
M330_ GND n__O__t_531_6 O_at_531_6 GND nmos W=0.0975U L=0.065U
M331_ GND n__O__f_531_6 O_af_531_6 GND nmos W=0.0975U L=0.065U
M332_ GND n__I0__a #fb329# GND nmos W=0.0975U L=0.13U
M333_ GND n__I1__a #fb332# GND nmos W=0.0975U L=0.13U
M334_keeper GND Vdd #331 GND nmos W=0.0975U L=0.715U
M335_keeper GND Vdd #334 GND nmos W=0.0975U L=0.715U
M336_ #3 I0_at_531_6 n__I0__a GND nmos W=0.0975U L=0.065U
M337_ #3 I0_af_531_6 n__I0__a GND nmos W=0.0975U L=0.065U
M338_keeper #330 #fb329# n__I0__a Vdd pmos W=0.0975U L=0.065U
M339_keeper #331 #fb329# n__I0__a GND nmos W=0.0975U L=0.065U
M340_ #8 I1_at_531_6 n__I1__a GND nmos W=0.0975U L=0.065U
M341_ #8 I1_af_531_6 n__I1__a GND nmos W=0.0975U L=0.065U
M342_keeper #333 #fb332# n__I1__a Vdd pmos W=0.0975U L=0.065U
M343_keeper #334 #fb332# n__I1__a GND nmos W=0.0975U L=0.065U
M344_ #14 I1_at_50_6 n__O__t_50_6 Vdd pmos W=0.1625U L=0.065U
M345_ #18 I1_af_50_6 n__O__f_50_6 Vdd pmos W=0.1625U L=0.065U
M346_ #22 I1_at_51_6 n__O__t_51_6 Vdd pmos W=0.1625U L=0.065U
M347_ #26 I1_af_51_6 n__O__f_51_6 Vdd pmos W=0.1625U L=0.065U
M348_ #30 I1_at_52_6 n__O__t_52_6 Vdd pmos W=0.1625U L=0.065U
M349_ #34 I1_af_52_6 n__O__f_52_6 Vdd pmos W=0.1625U L=0.065U
M350_ #38 I1_at_53_6 n__O__t_53_6 Vdd pmos W=0.1625U L=0.065U
M351_ #42 I1_af_53_6 n__O__f_53_6 Vdd pmos W=0.1625U L=0.065U
M352_ #46 I1_at_54_6 n__O__t_54_6 Vdd pmos W=0.1625U L=0.065U
M353_ #50 I1_af_54_6 n__O__f_54_6 Vdd pmos W=0.1625U L=0.065U
M354_ #54 I1_at_55_6 n__O__t_55_6 Vdd pmos W=0.1625U L=0.065U
M355_ #58 I1_af_55_6 n__O__f_55_6 Vdd pmos W=0.1625U L=0.065U
M356_ #62 I1_at_56_6 n__O__t_56_6 Vdd pmos W=0.1625U L=0.065U
M357_ #66 I1_af_56_6 n__O__f_56_6 Vdd pmos W=0.1625U L=0.065U
M358_ #70 I1_at_57_6 n__O__t_57_6 Vdd pmos W=0.1625U L=0.065U
M359_ #74 I1_af_57_6 n__O__f_57_6 Vdd pmos W=0.1625U L=0.065U
M360_ #78 I1_at_58_6 n__O__t_58_6 Vdd pmos W=0.1625U L=0.065U
M361_ #82 I1_af_58_6 n__O__f_58_6 Vdd pmos W=0.1625U L=0.065U
M362_ #86 I1_at_59_6 n__O__t_59_6 Vdd pmos W=0.1625U L=0.065U
M363_ #90 I1_af_59_6 n__O__f_59_6 Vdd pmos W=0.1625U L=0.065U
M364_ #94 I1_at_510_6 n__O__t_510_6 Vdd pmos W=0.1625U L=0.065U
M365_ #98 I1_af_510_6 n__O__f_510_6 Vdd pmos W=0.1625U L=0.065U
M366_ #102 I1_at_511_6 n__O__t_511_6 Vdd pmos W=0.1625U L=0.065U
M367_ #106 I1_af_511_6 n__O__f_511_6 Vdd pmos W=0.1625U L=0.065U
M368_ #110 I1_at_512_6 n__O__t_512_6 Vdd pmos W=0.1625U L=0.065U
M369_ #114 I1_af_512_6 n__O__f_512_6 Vdd pmos W=0.1625U L=0.065U
M370_ #118 I1_at_513_6 n__O__t_513_6 Vdd pmos W=0.1625U L=0.065U
M371_ #122 I1_af_513_6 n__O__f_513_6 Vdd pmos W=0.1625U L=0.065U
M372_ #126 I1_at_514_6 n__O__t_514_6 Vdd pmos W=0.1625U L=0.065U
M373_ #130 I1_af_514_6 n__O__f_514_6 Vdd pmos W=0.1625U L=0.065U
M374_ #134 I1_at_515_6 n__O__t_515_6 Vdd pmos W=0.1625U L=0.065U
M375_ #138 I1_af_515_6 n__O__f_515_6 Vdd pmos W=0.1625U L=0.065U
M376_ #142 I1_at_516_6 n__O__t_516_6 Vdd pmos W=0.1625U L=0.065U
M377_ #146 I1_af_516_6 n__O__f_516_6 Vdd pmos W=0.1625U L=0.065U
M378_ #150 I1_at_517_6 n__O__t_517_6 Vdd pmos W=0.1625U L=0.065U
M379_ #154 I1_af_517_6 n__O__f_517_6 Vdd pmos W=0.1625U L=0.065U
M380_ #158 I1_at_518_6 n__O__t_518_6 Vdd pmos W=0.1625U L=0.065U
M381_ #162 I1_af_518_6 n__O__f_518_6 Vdd pmos W=0.1625U L=0.065U
M382_ #166 I1_at_519_6 n__O__t_519_6 Vdd pmos W=0.1625U L=0.065U
M383_ #170 I1_af_519_6 n__O__f_519_6 Vdd pmos W=0.1625U L=0.065U
M384_ #174 I1_at_520_6 n__O__t_520_6 Vdd pmos W=0.1625U L=0.065U
M385_ #178 I1_af_520_6 n__O__f_520_6 Vdd pmos W=0.1625U L=0.065U
M386_ #182 I1_at_521_6 n__O__t_521_6 Vdd pmos W=0.1625U L=0.065U
M387_ #186 I1_af_521_6 n__O__f_521_6 Vdd pmos W=0.1625U L=0.065U
M388_ #190 I1_at_522_6 n__O__t_522_6 Vdd pmos W=0.1625U L=0.065U
M389_ #194 I1_af_522_6 n__O__f_522_6 Vdd pmos W=0.1625U L=0.065U
M390_ #198 I1_at_523_6 n__O__t_523_6 Vdd pmos W=0.1625U L=0.065U
M391_ #202 I1_af_523_6 n__O__f_523_6 Vdd pmos W=0.1625U L=0.065U
M392_ #206 I1_at_524_6 n__O__t_524_6 Vdd pmos W=0.1625U L=0.065U
M393_ #210 I1_af_524_6 n__O__f_524_6 Vdd pmos W=0.1625U L=0.065U
M394_ #214 I1_at_525_6 n__O__t_525_6 Vdd pmos W=0.1625U L=0.065U
M395_ #218 I1_af_525_6 n__O__f_525_6 Vdd pmos W=0.1625U L=0.065U
M396_ #222 I1_at_526_6 n__O__t_526_6 Vdd pmos W=0.1625U L=0.065U
M397_ #226 I1_af_526_6 n__O__f_526_6 Vdd pmos W=0.1625U L=0.065U
M398_ #230 I1_at_527_6 n__O__t_527_6 Vdd pmos W=0.1625U L=0.065U
M399_ #234 I1_af_527_6 n__O__f_527_6 Vdd pmos W=0.1625U L=0.065U
M400_ #238 I1_at_528_6 n__O__t_528_6 Vdd pmos W=0.1625U L=0.065U
M401_ #242 I1_af_528_6 n__O__f_528_6 Vdd pmos W=0.1625U L=0.065U
M402_ #246 I1_at_529_6 n__O__t_529_6 Vdd pmos W=0.1625U L=0.065U
M403_ #250 I1_af_529_6 n__O__f_529_6 Vdd pmos W=0.1625U L=0.065U
M404_ #254 I1_at_530_6 n__O__t_530_6 Vdd pmos W=0.1625U L=0.065U
M405_ #258 I1_af_530_6 n__O__f_530_6 Vdd pmos W=0.1625U L=0.065U
M406_ #260 I1_at_531_6 n__O__t_531_6 Vdd pmos W=0.1625U L=0.065U
M407_ #262 I1_af_531_6 n__O__f_531_6 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: Merge<32,t> -----
*
*---- act defproc: ParentRouter<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a M.t[0] M.t[1] M.t[2] M.t[3] M.t[4] M.t[5] M.t[6] M.t[7] M.t[8] M.t[9] M.t[10] M.t[11] M.t[12] M.t[13] M.t[14] M.t[15] M.t[16] M.t[17] M.t[18] M.t[19] M.t[20] M.t[21] M.t[22] M.t[23] M.t[24] M.t[25] M.t[26] M.t[27] M.t[28] M.t[29] M.t[30] M.t[31] M.f[0] M.f[1] M.f[2] M.f[3] M.f[4] M.f[5] M.f[6] M.f[7] M.f[8] M.f[9] M.f[10] M.f[11] M.f[12] M.f[13] M.f[14] M.f[15] M.f[16] M.f[17] M.f[18] M.f[19] M.f[20] M.f[21] M.f[22] M.f[23] M.f[24] M.f[25] M.f[26] M.f[27] M.f[28] M.f[29] M.f[30] M.f[31] M.a C0.t[0] C0.t[1] C0.t[2] C0.t[3] C0.t[4] C0.t[5] C0.t[6] C0.t[7] C0.t[8] C0.t[9] C0.t[10] C0.t[11] C0.t[12] C0.t[13] C0.t[14] C0.t[15] C0.t[16] C0.t[17] C0.t[18] C0.t[19] C0.t[20] C0.t[21] C0.t[22] C0.t[23] C0.t[24] C0.t[25] C0.t[26] C0.t[27] C0.t[28] C0.t[29] C0.t[30] C0.t[31] C0.f[0] C0.f[1] C0.f[2] C0.f[3] C0.f[4] C0.f[5] C0.f[6] C0.f[7] C0.f[8] C0.f[9] C0.f[10] C0.f[11] C0.f[12] C0.f[13] C0.f[14] C0.f[15] C0.f[16] C0.f[17] C0.f[18] C0.f[19] C0.f[20] C0.f[21] C0.f[22] C0.f[23] C0.f[24] C0.f[25] C0.f[26] C0.f[27] C0.f[28] C0.f[29] C0.f[30] C0.f[31] C0.a C1.t[0] C1.t[1] C1.t[2] C1.t[3] C1.t[4] C1.t[5] C1.t[6] C1.t[7] C1.t[8] C1.t[9] C1.t[10] C1.t[11] C1.t[12] C1.t[13] C1.t[14] C1.t[15] C1.t[16] C1.t[17] C1.t[18] C1.t[19] C1.t[20] C1.t[21] C1.t[22] C1.t[23] C1.t[24] C1.t[25] C1.t[26] C1.t[27] C1.t[28] C1.t[29] C1.t[30] C1.t[31] C1.f[0] C1.f[1] C1.f[2] C1.f[3] C1.f[4] C1.f[5] C1.f[6] C1.f[7] C1.f[8] C1.f[9] C1.f[10] C1.f[11] C1.f[12] C1.f[13] C1.f[14] C1.f[15] C1.f[16] C1.f[17] C1.f[18] C1.f[19] C1.f[20] C1.f[21] C1.f[22] C1.f[23] C1.f[24] C1.f[25] C1.f[26] C1.f[27] C1.f[28] C1.f[29] C1.f[30] C1.f[31] C1.a C2.t[0] C2.t[1] C2.t[2] C2.t[3] C2.t[4] C2.t[5] C2.t[6] C2.t[7] C2.t[8] C2.t[9] C2.t[10] C2.t[11] C2.t[12] C2.t[13] C2.t[14] C2.t[15] C2.t[16] C2.t[17] C2.t[18] C2.t[19] C2.t[20] C2.t[21] C2.t[22] C2.t[23] C2.t[24] C2.t[25] C2.t[26] C2.t[27] C2.t[28] C2.t[29] C2.t[30] C2.t[31] C2.f[0] C2.f[1] C2.f[2] C2.f[3] C2.f[4] C2.f[5] C2.f[6] C2.f[7] C2.f[8] C2.f[9] C2.f[10] C2.f[11] C2.f[12] C2.f[13] C2.f[14] C2.f[15] C2.f[16] C2.f[17] C2.f[18] C2.f[19] C2.f[20] C2.f[21] C2.f[22] C2.f[23] C2.f[24] C2.f[25] C2.f[26] C2.f[27] C2.f[28] C2.f[29] C2.f[30] C2.f[31] C2.a C3.t[0] C3.t[1] C3.t[2] C3.t[3] C3.t[4] C3.t[5] C3.t[6] C3.t[7] C3.t[8] C3.t[9] C3.t[10] C3.t[11] C3.t[12] C3.t[13] C3.t[14] C3.t[15] C3.t[16] C3.t[17] C3.t[18] C3.t[19] C3.t[20] C3.t[21] C3.t[22] C3.t[23] C3.t[24] C3.t[25] C3.t[26] C3.t[27] C3.t[28] C3.t[29] C3.t[30] C3.t[31] C3.f[0] C3.f[1] C3.f[2] C3.f[3] C3.f[4] C3.f[5] C3.f[6] C3.f[7] C3.f[8] C3.f[9] C3.f[10] C3.f[11] C3.f[12] C3.f[13] C3.f[14] C3.f[15] C3.f[16] C3.f[17] C3.f[18] C3.f[19] C3.f[20] C3.f[21] C3.f[22] C3.f[23] C3.f[24] C3.f[25] C3.f[26] C3.f[27] C3.f[28] C3.f[29] C3.f[30] C3.f[31] C3.a
*
.subckt ParentRouter reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa M_at_50_6 M_at_51_6 M_at_52_6 M_at_53_6 M_at_54_6 M_at_55_6 M_at_56_6 M_at_57_6 M_at_58_6 M_at_59_6 M_at_510_6 M_at_511_6 M_at_512_6 M_at_513_6 M_at_514_6 M_at_515_6 M_at_516_6 M_at_517_6 M_at_518_6 M_at_519_6 M_at_520_6 M_at_521_6 M_at_522_6 M_at_523_6 M_at_524_6 M_at_525_6 M_at_526_6 M_at_527_6 M_at_528_6 M_at_529_6 M_at_530_6 M_at_531_6 M_af_50_6 M_af_51_6 M_af_52_6 M_af_53_6 M_af_54_6 M_af_55_6 M_af_56_6 M_af_57_6 M_af_58_6 M_af_59_6 M_af_510_6 M_af_511_6 M_af_512_6 M_af_513_6 M_af_514_6 M_af_515_6 M_af_516_6 M_af_517_6 M_af_518_6 M_af_519_6 M_af_520_6 M_af_521_6 M_af_522_6 M_af_523_6 M_af_524_6 M_af_525_6 M_af_526_6 M_af_527_6 M_af_528_6 M_af_529_6 M_af_530_6 M_af_531_6 M_aa C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6 C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6 C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6 C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6 C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6 C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6 C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6 C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6 C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6 C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6 C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6 C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6 C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6 C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O M_at_50_6:O M_at_51_6:O M_at_52_6:O M_at_53_6:O M_at_54_6:O M_at_55_6:O M_at_56_6:O M_at_57_6:O M_at_58_6:O M_at_59_6:O M_at_510_6:O M_at_511_6:O M_at_512_6:O M_at_513_6:O M_at_514_6:O M_at_515_6:O M_at_516_6:O M_at_517_6:O M_at_518_6:O M_at_519_6:O M_at_520_6:O M_at_521_6:O M_at_522_6:O M_at_523_6:O M_at_524_6:O M_at_525_6:O M_at_526_6:O M_at_527_6:O M_at_528_6:O M_at_529_6:O M_at_530_6:O M_at_531_6:O M_af_50_6:O M_af_51_6:O M_af_52_6:O M_af_53_6:O M_af_54_6:O M_af_55_6:O M_af_56_6:O M_af_57_6:O M_af_58_6:O M_af_59_6:O M_af_510_6:O M_af_511_6:O M_af_512_6:O M_af_513_6:O M_af_514_6:O M_af_515_6:O M_af_516_6:O M_af_517_6:O M_af_518_6:O M_af_519_6:O M_af_520_6:O M_af_521_6:O M_af_522_6:O M_af_523_6:O M_af_524_6:O M_af_525_6:O M_af_526_6:O M_af_527_6:O M_af_528_6:O M_af_529_6:O M_af_530_6:O M_af_531_6:O M_aa:I C0_at_50_6:O C0_at_51_6:O C0_at_52_6:O C0_at_53_6:O C0_at_54_6:O C0_at_55_6:O C0_at_56_6:O C0_at_57_6:O C0_at_58_6:O C0_at_59_6:O C0_at_510_6:O C0_at_511_6:O C0_at_512_6:O C0_at_513_6:O C0_at_514_6:O C0_at_515_6:O C0_at_516_6:O C0_at_517_6:O C0_at_518_6:O C0_at_519_6:O C0_at_520_6:O C0_at_521_6:O C0_at_522_6:O C0_at_523_6:O C0_at_524_6:O C0_at_525_6:O C0_at_526_6:O C0_at_527_6:O C0_at_528_6:O C0_at_529_6:O C0_at_530_6:O C0_at_531_6:O C0_af_50_6:O C0_af_51_6:O C0_af_52_6:O C0_af_53_6:O C0_af_54_6:O C0_af_55_6:O C0_af_56_6:O C0_af_57_6:O C0_af_58_6:O C0_af_59_6:O C0_af_510_6:O C0_af_511_6:O C0_af_512_6:O C0_af_513_6:O C0_af_514_6:O C0_af_515_6:O C0_af_516_6:O C0_af_517_6:O C0_af_518_6:O C0_af_519_6:O C0_af_520_6:O C0_af_521_6:O C0_af_522_6:O C0_af_523_6:O C0_af_524_6:O C0_af_525_6:O C0_af_526_6:O C0_af_527_6:O C0_af_528_6:O C0_af_529_6:O C0_af_530_6:O C0_af_531_6:O C0_aa:I C1_at_50_6:O C1_at_51_6:O C1_at_52_6:O C1_at_53_6:O C1_at_54_6:O C1_at_55_6:O C1_at_56_6:O C1_at_57_6:O C1_at_58_6:O C1_at_59_6:O C1_at_510_6:O C1_at_511_6:O C1_at_512_6:O C1_at_513_6:O C1_at_514_6:O C1_at_515_6:O C1_at_516_6:O C1_at_517_6:O C1_at_518_6:O C1_at_519_6:O C1_at_520_6:O C1_at_521_6:O C1_at_522_6:O C1_at_523_6:O C1_at_524_6:O C1_at_525_6:O C1_at_526_6:O C1_at_527_6:O C1_at_528_6:O C1_at_529_6:O C1_at_530_6:O C1_at_531_6:O C1_af_50_6:O C1_af_51_6:O C1_af_52_6:O C1_af_53_6:O C1_af_54_6:O C1_af_55_6:O C1_af_56_6:O C1_af_57_6:O C1_af_58_6:O C1_af_59_6:O C1_af_510_6:O C1_af_511_6:O C1_af_512_6:O C1_af_513_6:O C1_af_514_6:O C1_af_515_6:O C1_af_516_6:O C1_af_517_6:O C1_af_518_6:O C1_af_519_6:O C1_af_520_6:O C1_af_521_6:O C1_af_522_6:O C1_af_523_6:O C1_af_524_6:O C1_af_525_6:O C1_af_526_6:O C1_af_527_6:O C1_af_528_6:O C1_af_529_6:O C1_af_530_6:O C1_af_531_6:O C1_aa:I C2_at_50_6:O C2_at_51_6:O C2_at_52_6:O C2_at_53_6:O C2_at_54_6:O C2_at_55_6:O C2_at_56_6:O C2_at_57_6:O C2_at_58_6:O C2_at_59_6:O C2_at_510_6:O C2_at_511_6:O C2_at_512_6:O C2_at_513_6:O C2_at_514_6:O C2_at_515_6:O C2_at_516_6:O C2_at_517_6:O C2_at_518_6:O C2_at_519_6:O C2_at_520_6:O C2_at_521_6:O C2_at_522_6:O C2_at_523_6:O C2_at_524_6:O C2_at_525_6:O C2_at_526_6:O C2_at_527_6:O C2_at_528_6:O C2_at_529_6:O C2_at_530_6:O C2_at_531_6:O C2_af_50_6:O C2_af_51_6:O C2_af_52_6:O C2_af_53_6:O C2_af_54_6:O C2_af_55_6:O C2_af_56_6:O C2_af_57_6:O C2_af_58_6:O C2_af_59_6:O C2_af_510_6:O C2_af_511_6:O C2_af_512_6:O C2_af_513_6:O C2_af_514_6:O C2_af_515_6:O C2_af_516_6:O C2_af_517_6:O C2_af_518_6:O C2_af_519_6:O C2_af_520_6:O C2_af_521_6:O C2_af_522_6:O C2_af_523_6:O C2_af_524_6:O C2_af_525_6:O C2_af_526_6:O C2_af_527_6:O C2_af_528_6:O C2_af_529_6:O C2_af_530_6:O C2_af_531_6:O C2_aa:I C3_at_50_6:O C3_at_51_6:O C3_at_52_6:O C3_at_53_6:O C3_at_54_6:O C3_at_55_6:O C3_at_56_6:O C3_at_57_6:O C3_at_58_6:O C3_at_59_6:O C3_at_510_6:O C3_at_511_6:O C3_at_512_6:O C3_at_513_6:O C3_at_514_6:O C3_at_515_6:O C3_at_516_6:O C3_at_517_6:O C3_at_518_6:O C3_at_519_6:O C3_at_520_6:O C3_at_521_6:O C3_at_522_6:O C3_at_523_6:O C3_at_524_6:O C3_at_525_6:O C3_at_526_6:O C3_at_527_6:O C3_at_528_6:O C3_at_529_6:O C3_at_530_6:O C3_at_531_6:O C3_af_50_6:O C3_af_51_6:O C3_af_52_6:O C3_af_53_6:O C3_af_54_6:O C3_af_55_6:O C3_af_56_6:O C3_af_57_6:O C3_af_58_6:O C3_af_59_6:O C3_af_510_6:O C3_af_511_6:O C3_af_512_6:O C3_af_513_6:O C3_af_514_6:O C3_af_515_6:O C3_af_516_6:O C3_af_517_6:O C3_af_518_6:O C3_af_519_6:O C3_af_520_6:O C3_af_521_6:O C3_af_522_6:O C3_af_523_6:O C3_af_524_6:O C3_af_525_6:O C3_af_526_6:O C3_af_527_6:O C3_af_528_6:O C3_af_529_6:O C3_af_530_6:O C3_af_531_6:O C3_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xCS reset CS_aI_at_50_6 CS_aI_at_51_6 CS_aI_at_52_6 CS_aI_at_53_6 CS_aI_at_54_6 CS_aI_at_55_6 CS_aI_at_56_6 CS_aI_at_57_6 CS_aI_at_58_6 CS_aI_at_59_6 CS_aI_at_510_6 CS_aI_at_511_6 CS_aI_at_512_6 CS_aI_at_513_6 CS_aI_at_514_6 CS_aI_at_515_6 CS_aI_at_516_6 CS_aI_at_517_6 CS_aI_at_518_6 CS_aI_at_519_6 CS_aI_at_520_6 CS_aI_at_521_6 CS_aI_at_522_6 CS_aI_at_523_6 CS_aI_at_524_6 CS_aI_at_525_6 CS_aI_at_526_6 CS_aI_at_527_6 CS_aI_at_528_6 CS_aI_at_529_6 CS_aI_at_530_6 CS_aI_at_531_6 CS_aI_af_50_6 CS_aI_af_51_6 CS_aI_af_52_6 CS_aI_af_53_6 CS_aI_af_54_6 CS_aI_af_55_6 CS_aI_af_56_6 CS_aI_af_57_6 CS_aI_af_58_6 CS_aI_af_59_6 CS_aI_af_510_6 CS_aI_af_511_6 CS_aI_af_512_6 CS_aI_af_513_6 CS_aI_af_514_6 CS_aI_af_515_6 CS_aI_af_516_6 CS_aI_af_517_6 CS_aI_af_518_6 CS_aI_af_519_6 CS_aI_af_520_6 CS_aI_af_521_6 CS_aI_af_522_6 CS_aI_af_523_6 CS_aI_af_524_6 CS_aI_af_525_6 CS_aI_af_526_6 CS_aI_af_527_6 CS_aI_af_528_6 CS_aI_af_529_6 CS_aI_af_530_6 CS_aI_af_531_6 CS_aI_aa C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6 C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6 C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6 C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6 C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6 C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6 C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6 C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6 C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6 C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6 C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6 C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6 C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6 C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa ChildSel
xMUS reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa M2_aI0_at_50_6 M2_aI0_at_51_6 M2_aI0_at_52_6 M2_aI0_at_53_6 M2_aI0_at_54_6 M2_aI0_at_55_6 M2_aI0_at_56_6 M2_aI0_at_57_6 M2_aI0_at_58_6 M2_aI0_at_59_6 M2_aI0_at_510_6 M2_aI0_at_511_6 M2_aI0_at_512_6 M2_aI0_at_513_6 M2_aI0_at_514_6 M2_aI0_at_515_6 M2_aI0_at_516_6 M2_aI0_at_517_6 M2_aI0_at_518_6 M2_aI0_at_519_6 M2_aI0_at_520_6 M2_aI0_at_521_6 M2_aI0_at_522_6 M2_aI0_at_523_6 M2_aI0_at_524_6 M2_aI0_at_525_6 M2_aI0_at_526_6 M2_aI0_at_527_6 M2_aI0_at_528_6 M2_aI0_at_529_6 M2_aI0_at_530_6 M2_aI0_at_531_6 M2_aI0_af_50_6 M2_aI0_af_51_6 M2_aI0_af_52_6 M2_aI0_af_53_6 M2_aI0_af_54_6 M2_aI0_af_55_6 M2_aI0_af_56_6 M2_aI0_af_57_6 M2_aI0_af_58_6 M2_aI0_af_59_6 M2_aI0_af_510_6 M2_aI0_af_511_6 M2_aI0_af_512_6 M2_aI0_af_513_6 M2_aI0_af_514_6 M2_aI0_af_515_6 M2_aI0_af_516_6 M2_aI0_af_517_6 M2_aI0_af_518_6 M2_aI0_af_519_6 M2_aI0_af_520_6 M2_aI0_af_521_6 M2_aI0_af_522_6 M2_aI0_af_523_6 M2_aI0_af_524_6 M2_aI0_af_525_6 M2_aI0_af_526_6 M2_aI0_af_527_6 M2_aI0_af_528_6 M2_aI0_af_529_6 M2_aI0_af_530_6 M2_aI0_af_531_6 M2_aI0_aa SS_aI_at_50_6 SS_aI_at_51_6 SS_aI_at_52_6 SS_aI_at_53_6 SS_aI_at_54_6 SS_aI_at_55_6 SS_aI_at_56_6 SS_aI_at_57_6 SS_aI_at_58_6 SS_aI_at_59_6 SS_aI_at_510_6 SS_aI_at_511_6 SS_aI_at_512_6 SS_aI_at_513_6 SS_aI_at_514_6 SS_aI_at_515_6 SS_aI_at_516_6 SS_aI_at_517_6 SS_aI_at_518_6 SS_aI_at_519_6 SS_aI_at_520_6 SS_aI_at_521_6 SS_aI_at_522_6 SS_aI_at_523_6 SS_aI_at_524_6 SS_aI_at_525_6 SS_aI_at_526_6 SS_aI_at_527_6 SS_aI_at_528_6 SS_aI_at_529_6 SS_aI_at_530_6 SS_aI_at_531_6 SS_aI_af_50_6 SS_aI_af_51_6 SS_aI_af_52_6 SS_aI_af_53_6 SS_aI_af_54_6 SS_aI_af_55_6 SS_aI_af_56_6 SS_aI_af_57_6 SS_aI_af_58_6 SS_aI_af_59_6 SS_aI_af_510_6 SS_aI_af_511_6 SS_aI_af_512_6 SS_aI_af_513_6 SS_aI_af_514_6 SS_aI_af_515_6 SS_aI_af_516_6 SS_aI_af_517_6 SS_aI_af_518_6 SS_aI_af_519_6 SS_aI_af_520_6 SS_aI_af_521_6 SS_aI_af_522_6 SS_aI_af_523_6 SS_aI_af_524_6 SS_aI_af_525_6 SS_aI_af_526_6 SS_aI_af_527_6 SS_aI_af_528_6 SS_aI_af_529_6 SS_aI_af_530_6 SS_aI_af_531_6 SS_aI_aa MltcSel
xSS reset SS_aI_at_50_6 SS_aI_at_51_6 SS_aI_at_52_6 SS_aI_at_53_6 SS_aI_at_54_6 SS_aI_at_55_6 SS_aI_at_56_6 SS_aI_at_57_6 SS_aI_at_58_6 SS_aI_at_59_6 SS_aI_at_510_6 SS_aI_at_511_6 SS_aI_at_512_6 SS_aI_at_513_6 SS_aI_at_514_6 SS_aI_at_515_6 SS_aI_at_516_6 SS_aI_at_517_6 SS_aI_at_518_6 SS_aI_at_519_6 SS_aI_at_520_6 SS_aI_at_521_6 SS_aI_at_522_6 SS_aI_at_523_6 SS_aI_at_524_6 SS_aI_at_525_6 SS_aI_at_526_6 SS_aI_at_527_6 SS_aI_at_528_6 SS_aI_at_529_6 SS_aI_at_530_6 SS_aI_at_531_6 SS_aI_af_50_6 SS_aI_af_51_6 SS_aI_af_52_6 SS_aI_af_53_6 SS_aI_af_54_6 SS_aI_af_55_6 SS_aI_af_56_6 SS_aI_af_57_6 SS_aI_af_58_6 SS_aI_af_59_6 SS_aI_af_510_6 SS_aI_af_511_6 SS_aI_af_512_6 SS_aI_af_513_6 SS_aI_af_514_6 SS_aI_af_515_6 SS_aI_af_516_6 SS_aI_af_517_6 SS_aI_af_518_6 SS_aI_af_519_6 SS_aI_af_520_6 SS_aI_af_521_6 SS_aI_af_522_6 SS_aI_af_523_6 SS_aI_af_524_6 SS_aI_af_525_6 SS_aI_af_526_6 SS_aI_af_527_6 SS_aI_af_528_6 SS_aI_af_529_6 SS_aI_af_530_6 SS_aI_af_531_6 SS_aI_aa M2_aI1_at_50_6 M2_aI1_at_51_6 M2_aI1_at_52_6 M2_aI1_at_53_6 M2_aI1_at_54_6 M2_aI1_at_55_6 M2_aI1_at_56_6 M2_aI1_at_57_6 M2_aI1_at_58_6 M2_aI1_at_59_6 M2_aI1_at_510_6 M2_aI1_at_511_6 M2_aI1_at_512_6 M2_aI1_at_513_6 M2_aI1_at_514_6 M2_aI1_at_515_6 M2_aI1_at_516_6 M2_aI1_at_517_6 M2_aI1_at_518_6 M2_aI1_at_519_6 M2_aI1_at_520_6 M2_aI1_at_521_6 M2_aI1_at_522_6 M2_aI1_at_523_6 M2_aI1_at_524_6 M2_aI1_at_525_6 M2_aI1_at_526_6 M2_aI1_at_527_6 M2_aI1_at_528_6 M2_aI1_at_529_6 M2_aI1_at_530_6 M2_aI1_at_531_6 M2_aI1_af_50_6 M2_aI1_af_51_6 M2_aI1_af_52_6 M2_aI1_af_53_6 M2_aI1_af_54_6 M2_aI1_af_55_6 M2_aI1_af_56_6 M2_aI1_af_57_6 M2_aI1_af_58_6 M2_aI1_af_59_6 M2_aI1_af_510_6 M2_aI1_af_511_6 M2_aI1_af_512_6 M2_aI1_af_513_6 M2_aI1_af_514_6 M2_aI1_af_515_6 M2_aI1_af_516_6 M2_aI1_af_517_6 M2_aI1_af_518_6 M2_aI1_af_519_6 M2_aI1_af_520_6 M2_aI1_af_521_6 M2_aI1_af_522_6 M2_aI1_af_523_6 M2_aI1_af_524_6 M2_aI1_af_525_6 M2_aI1_af_526_6 M2_aI1_af_527_6 M2_aI1_af_528_6 M2_aI1_af_529_6 M2_aI1_af_530_6 M2_aI1_af_531_6 M2_aI1_aa CS_aI_at_50_6 CS_aI_at_51_6 CS_aI_at_52_6 CS_aI_at_53_6 CS_aI_at_54_6 CS_aI_at_55_6 CS_aI_at_56_6 CS_aI_at_57_6 CS_aI_at_58_6 CS_aI_at_59_6 CS_aI_at_510_6 CS_aI_at_511_6 CS_aI_at_512_6 CS_aI_at_513_6 CS_aI_at_514_6 CS_aI_at_515_6 CS_aI_at_516_6 CS_aI_at_517_6 CS_aI_at_518_6 CS_aI_at_519_6 CS_aI_at_520_6 CS_aI_at_521_6 CS_aI_at_522_6 CS_aI_at_523_6 CS_aI_at_524_6 CS_aI_at_525_6 CS_aI_at_526_6 CS_aI_at_527_6 CS_aI_at_528_6 CS_aI_at_529_6 CS_aI_at_530_6 CS_aI_at_531_6 CS_aI_af_50_6 CS_aI_af_51_6 CS_aI_af_52_6 CS_aI_af_53_6 CS_aI_af_54_6 CS_aI_af_55_6 CS_aI_af_56_6 CS_aI_af_57_6 CS_aI_af_58_6 CS_aI_af_59_6 CS_aI_af_510_6 CS_aI_af_511_6 CS_aI_af_512_6 CS_aI_af_513_6 CS_aI_af_514_6 CS_aI_af_515_6 CS_aI_af_516_6 CS_aI_af_517_6 CS_aI_af_518_6 CS_aI_af_519_6 CS_aI_af_520_6 CS_aI_af_521_6 CS_aI_af_522_6 CS_aI_af_523_6 CS_aI_af_524_6 CS_aI_af_525_6 CS_aI_af_526_6 CS_aI_af_527_6 CS_aI_af_528_6 CS_aI_af_529_6 CS_aI_af_530_6 CS_aI_af_531_6 CS_aI_aa StopcodeSel
xM2 M2_aI0_at_50_6 M2_aI0_at_51_6 M2_aI0_at_52_6 M2_aI0_at_53_6 M2_aI0_at_54_6 M2_aI0_at_55_6 M2_aI0_at_56_6 M2_aI0_at_57_6 M2_aI0_at_58_6 M2_aI0_at_59_6 M2_aI0_at_510_6 M2_aI0_at_511_6 M2_aI0_at_512_6 M2_aI0_at_513_6 M2_aI0_at_514_6 M2_aI0_at_515_6 M2_aI0_at_516_6 M2_aI0_at_517_6 M2_aI0_at_518_6 M2_aI0_at_519_6 M2_aI0_at_520_6 M2_aI0_at_521_6 M2_aI0_at_522_6 M2_aI0_at_523_6 M2_aI0_at_524_6 M2_aI0_at_525_6 M2_aI0_at_526_6 M2_aI0_at_527_6 M2_aI0_at_528_6 M2_aI0_at_529_6 M2_aI0_at_530_6 M2_aI0_at_531_6 M2_aI0_af_50_6 M2_aI0_af_51_6 M2_aI0_af_52_6 M2_aI0_af_53_6 M2_aI0_af_54_6 M2_aI0_af_55_6 M2_aI0_af_56_6 M2_aI0_af_57_6 M2_aI0_af_58_6 M2_aI0_af_59_6 M2_aI0_af_510_6 M2_aI0_af_511_6 M2_aI0_af_512_6 M2_aI0_af_513_6 M2_aI0_af_514_6 M2_aI0_af_515_6 M2_aI0_af_516_6 M2_aI0_af_517_6 M2_aI0_af_518_6 M2_aI0_af_519_6 M2_aI0_af_520_6 M2_aI0_af_521_6 M2_aI0_af_522_6 M2_aI0_af_523_6 M2_aI0_af_524_6 M2_aI0_af_525_6 M2_aI0_af_526_6 M2_aI0_af_527_6 M2_aI0_af_528_6 M2_aI0_af_529_6 M2_aI0_af_530_6 M2_aI0_af_531_6 M2_aI0_aa M2_aI1_at_50_6 M2_aI1_at_51_6 M2_aI1_at_52_6 M2_aI1_at_53_6 M2_aI1_at_54_6 M2_aI1_at_55_6 M2_aI1_at_56_6 M2_aI1_at_57_6 M2_aI1_at_58_6 M2_aI1_at_59_6 M2_aI1_at_510_6 M2_aI1_at_511_6 M2_aI1_at_512_6 M2_aI1_at_513_6 M2_aI1_at_514_6 M2_aI1_at_515_6 M2_aI1_at_516_6 M2_aI1_at_517_6 M2_aI1_at_518_6 M2_aI1_at_519_6 M2_aI1_at_520_6 M2_aI1_at_521_6 M2_aI1_at_522_6 M2_aI1_at_523_6 M2_aI1_at_524_6 M2_aI1_at_525_6 M2_aI1_at_526_6 M2_aI1_at_527_6 M2_aI1_at_528_6 M2_aI1_at_529_6 M2_aI1_at_530_6 M2_aI1_at_531_6 M2_aI1_af_50_6 M2_aI1_af_51_6 M2_aI1_af_52_6 M2_aI1_af_53_6 M2_aI1_af_54_6 M2_aI1_af_55_6 M2_aI1_af_56_6 M2_aI1_af_57_6 M2_aI1_af_58_6 M2_aI1_af_59_6 M2_aI1_af_510_6 M2_aI1_af_511_6 M2_aI1_af_512_6 M2_aI1_af_513_6 M2_aI1_af_514_6 M2_aI1_af_515_6 M2_aI1_af_516_6 M2_aI1_af_517_6 M2_aI1_af_518_6 M2_aI1_af_519_6 M2_aI1_af_520_6 M2_aI1_af_521_6 M2_aI1_af_522_6 M2_aI1_af_523_6 M2_aI1_af_524_6 M2_aI1_af_525_6 M2_aI1_af_526_6 M2_aI1_af_527_6 M2_aI1_af_528_6 M2_aI1_af_529_6 M2_aI1_af_530_6 M2_aI1_af_531_6 M2_aI1_aa M_at_50_6 M_at_51_6 M_at_52_6 M_at_53_6 M_at_54_6 M_at_55_6 M_at_56_6 M_at_57_6 M_at_58_6 M_at_59_6 M_at_510_6 M_at_511_6 M_at_512_6 M_at_513_6 M_at_514_6 M_at_515_6 M_at_516_6 M_at_517_6 M_at_518_6 M_at_519_6 M_at_520_6 M_at_521_6 M_at_522_6 M_at_523_6 M_at_524_6 M_at_525_6 M_at_526_6 M_at_527_6 M_at_528_6 M_at_529_6 M_at_530_6 M_at_531_6 M_af_50_6 M_af_51_6 M_af_52_6 M_af_53_6 M_af_54_6 M_af_55_6 M_af_56_6 M_af_57_6 M_af_58_6 M_af_59_6 M_af_510_6 M_af_511_6 M_af_512_6 M_af_513_6 M_af_514_6 M_af_515_6 M_af_516_6 M_af_517_6 M_af_518_6 M_af_519_6 M_af_520_6 M_af_521_6 M_af_522_6 M_af_523_6 M_af_524_6 M_af_525_6 M_af_526_6 M_af_527_6 M_af_528_6 M_af_529_6 M_af_530_6 M_af_531_6 M_aa Merge_332_7t_4
.ends
*---- end of process: ParentRouter<> -----
