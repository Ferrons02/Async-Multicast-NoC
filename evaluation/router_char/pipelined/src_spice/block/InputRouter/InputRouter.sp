*
*---- act defproc: InputRouter<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a
*
.subckt InputRouter reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6
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
* __w0 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __p (combinational)
* p (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a (combinational)
* __r (combinational)
* __w1 (state-holding): pup_reff=0.8; pdn_reff=3.33333
* a (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __i__a (combinational)
* w1 (combinational)
* I_aa (state-holding): pup_reff=0.8; pdn_reff=2
* __o0a (combinational)
* __o1a (combinational)
* __o0t_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_50_6 (combinational)
* O1_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_50_6 (combinational)
* __o0t_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_51_6 (combinational)
* O1_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_51_6 (combinational)
* __o0t_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_52_6 (combinational)
* O1_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_52_6 (combinational)
* __o0t_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_53_6 (combinational)
* O1_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_53_6 (combinational)
* __o0t_54_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_54_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_54_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_54_6 (combinational)
* O1_af_54_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_54_6 (combinational)
* __o0t_55_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_55_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_55_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_55_6 (combinational)
* O1_af_55_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_55_6 (combinational)
* __o0t_56_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_56_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_56_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_56_6 (combinational)
* O1_af_56_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_56_6 (combinational)
* __o0t_57_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_57_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_57_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_57_6 (combinational)
* O1_af_57_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_57_6 (combinational)
* __o0t_58_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_58_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_58_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_58_6 (combinational)
* O1_af_58_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_58_6 (combinational)
* __o0t_59_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_59_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_59_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_59_6 (combinational)
* O1_af_59_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_59_6 (combinational)
* __o0t_510_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_510_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_510_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_510_6 (combinational)
* O1_af_510_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_510_6 (combinational)
* __o0t_511_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_511_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_511_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_511_6 (combinational)
* O1_af_511_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_511_6 (combinational)
* __o0t_512_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_512_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_512_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_512_6 (combinational)
* O1_af_512_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_512_6 (combinational)
* __o0t_513_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_513_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_513_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_513_6 (combinational)
* O1_af_513_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_513_6 (combinational)
* __o0t_514_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_514_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_514_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_514_6 (combinational)
* O1_af_514_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_514_6 (combinational)
* __o0t_515_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_515_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_515_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_515_6 (combinational)
* O1_af_515_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_515_6 (combinational)
* __o0t_516_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_516_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_516_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_516_6 (combinational)
* O1_af_516_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_516_6 (combinational)
* __o0t_517_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_517_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_517_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_517_6 (combinational)
* O1_af_517_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_517_6 (combinational)
* __o0t_518_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_518_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_518_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_518_6 (combinational)
* O1_af_518_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_518_6 (combinational)
* __o0t_519_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_519_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_519_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_519_6 (combinational)
* O1_af_519_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_519_6 (combinational)
* __o0t_520_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_520_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_520_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_520_6 (combinational)
* O1_af_520_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_520_6 (combinational)
* __o0t_521_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_521_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_521_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_521_6 (combinational)
* O1_af_521_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_521_6 (combinational)
* __o0t_522_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_522_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_522_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_522_6 (combinational)
* O1_af_522_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_522_6 (combinational)
* __o0t_523_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_523_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_523_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_523_6 (combinational)
* O1_af_523_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_523_6 (combinational)
* __o0t_524_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_524_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_524_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_524_6 (combinational)
* O1_af_524_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_524_6 (combinational)
* __o0t_525_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_525_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_525_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_525_6 (combinational)
* O1_af_525_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_525_6 (combinational)
* __o0t_526_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_526_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_526_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_526_6 (combinational)
* O1_af_526_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_526_6 (combinational)
* __o0t_527_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_527_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_527_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_527_6 (combinational)
* O1_af_527_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_527_6 (combinational)
* __o0t_528_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_528_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_528_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_528_6 (combinational)
* O1_af_528_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_528_6 (combinational)
* __o0t_529_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_529_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_529_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_529_6 (combinational)
* O1_af_529_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_529_6 (combinational)
* __o0t_530_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_530_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_530_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_530_6 (combinational)
* O1_af_530_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_530_6 (combinational)
* __o0t_531_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_531_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O1_at_531_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__t_531_6 (combinational)
* O1_af_531_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __i__f_531_6 (combinational)
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
M0_ Vdd __p #12 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd __r __w0 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd p #26 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __r __w1 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __i__a #30 Vdd pmos W=0.325U L=0.065U
M5_ Vdd __w0 #35 Vdd pmos W=0.65U L=0.065U
M6_ Vdd __r p Vdd pmos W=0.65U L=0.065U
M7_ Vdd __w0 #39 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __w1 #39 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd I_at_50_6 __o0t_50_6 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd I_af_50_6 __o0f_50_6 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd p #49 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd p #52 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd I_at_51_6 __o0t_51_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd I_af_51_6 __o0f_51_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd p #61 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd p #64 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I_at_52_6 __o0t_52_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd I_af_52_6 __o0f_52_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd p #73 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd p #76 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd I_at_53_6 __o0t_53_6 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd I_af_53_6 __o0f_53_6 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd p #85 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd p #88 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd I_at_54_6 __o0t_54_6 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I_af_54_6 __o0f_54_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd p #95 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd p #98 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd I_at_55_6 __o0t_55_6 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd I_af_55_6 __o0f_55_6 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd p #105 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd p #108 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd I_at_56_6 __o0t_56_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd I_af_56_6 __o0f_56_6 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd p #115 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd p #118 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd I_at_57_6 __o0t_57_6 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd I_af_57_6 __o0f_57_6 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd p #125 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd p #128 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd I_at_58_6 __o0t_58_6 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd I_af_58_6 __o0f_58_6 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd p #137 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd p #140 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd I_at_59_6 __o0t_59_6 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd I_af_59_6 __o0f_59_6 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd p #149 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd p #152 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd I_at_510_6 __o0t_510_6 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd I_af_510_6 __o0f_510_6 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd p #161 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd p #164 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd I_at_511_6 __o0t_511_6 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd I_af_511_6 __o0f_511_6 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd p #173 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd p #176 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd I_at_512_6 __o0t_512_6 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd I_af_512_6 __o0f_512_6 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd p #185 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd p #188 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd I_at_513_6 __o0t_513_6 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd I_af_513_6 __o0f_513_6 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd p #197 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd p #200 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd I_at_514_6 __o0t_514_6 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd I_af_514_6 __o0f_514_6 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd p #209 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd p #212 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd I_at_515_6 __o0t_515_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd I_af_515_6 __o0f_515_6 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd p #221 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd p #224 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd I_at_516_6 __o0t_516_6 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd I_af_516_6 __o0f_516_6 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd p #233 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd p #236 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd I_at_517_6 __o0t_517_6 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd I_af_517_6 __o0f_517_6 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd p #245 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd p #248 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd I_at_518_6 __o0t_518_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd I_af_518_6 __o0f_518_6 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd p #257 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd p #260 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd I_at_519_6 __o0t_519_6 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd I_af_519_6 __o0f_519_6 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd p #269 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd p #272 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd I_at_520_6 __o0t_520_6 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd I_af_520_6 __o0f_520_6 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd p #281 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd p #284 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd I_at_521_6 __o0t_521_6 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd I_af_521_6 __o0f_521_6 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd p #293 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd p #296 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd I_at_522_6 __o0t_522_6 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd I_af_522_6 __o0f_522_6 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd p #305 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd p #308 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd I_at_523_6 __o0t_523_6 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd I_af_523_6 __o0f_523_6 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd p #317 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd p #320 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd I_at_524_6 __o0t_524_6 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd I_af_524_6 __o0f_524_6 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd p #329 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd p #332 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd I_at_525_6 __o0t_525_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd I_af_525_6 __o0f_525_6 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd p #341 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd p #344 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd I_at_526_6 __o0t_526_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd I_af_526_6 __o0f_526_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd p #353 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd p #356 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd I_at_527_6 __o0t_527_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd I_af_527_6 __o0f_527_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd p #365 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd p #368 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd I_at_528_6 __o0t_528_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd I_af_528_6 __o0f_528_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd p #377 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd p #380 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd I_at_529_6 __o0t_529_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd I_af_529_6 __o0f_529_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd p #389 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd p #392 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd I_at_530_6 __o0t_530_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd I_af_530_6 __o0f_530_6 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd p #401 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd p #404 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd I_at_531_6 __o0t_531_6 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd I_af_531_6 __o0f_531_6 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd p #413 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd p #416 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd p __p Vdd pmos W=0.1625U L=0.065U
M138_ Vdd a __a Vdd pmos W=0.325U L=0.065U
M139_ Vdd I_aa __i__a Vdd pmos W=0.1625U L=0.065U
M140_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M141_ Vdd __w1 w1 Vdd pmos W=0.325U L=0.065U
M142_ Vdd O0_aa __o0a Vdd pmos W=0.1625U L=0.065U
M143_ Vdd O1_aa __o1a Vdd pmos W=0.1625U L=0.065U
M144_ Vdd I_at_50_6 __i__t_50_6 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd I_af_50_6 __i__f_50_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd __o0t_50_6 O0_at_50_6 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd __o0f_50_6 O0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd I_at_51_6 __i__t_51_6 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd I_af_51_6 __i__f_51_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd __o0t_51_6 O0_at_51_6 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd __o0f_51_6 O0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd I_at_52_6 __i__t_52_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd I_af_52_6 __i__f_52_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd __o0t_52_6 O0_at_52_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd __o0f_52_6 O0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd I_at_53_6 __i__t_53_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd I_af_53_6 __i__f_53_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd __o0t_53_6 O0_at_53_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd __o0f_53_6 O0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd I_at_54_6 __i__t_54_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd I_af_54_6 __i__f_54_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd __o0t_54_6 O0_at_54_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd __o0f_54_6 O0_af_54_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd I_at_55_6 __i__t_55_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd I_af_55_6 __i__f_55_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd __o0t_55_6 O0_at_55_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd __o0f_55_6 O0_af_55_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd I_at_56_6 __i__t_56_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd I_af_56_6 __i__f_56_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd __o0t_56_6 O0_at_56_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd __o0f_56_6 O0_af_56_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd I_at_57_6 __i__t_57_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd I_af_57_6 __i__f_57_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd __o0t_57_6 O0_at_57_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd __o0f_57_6 O0_af_57_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd I_at_58_6 __i__t_58_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd I_af_58_6 __i__f_58_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd __o0t_58_6 O0_at_58_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd __o0f_58_6 O0_af_58_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd I_at_59_6 __i__t_59_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd I_af_59_6 __i__f_59_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd __o0t_59_6 O0_at_59_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd __o0f_59_6 O0_af_59_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd I_at_510_6 __i__t_510_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd I_af_510_6 __i__f_510_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd __o0t_510_6 O0_at_510_6 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd __o0f_510_6 O0_af_510_6 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd I_at_511_6 __i__t_511_6 Vdd pmos W=0.1625U L=0.065U
M189_ Vdd I_af_511_6 __i__f_511_6 Vdd pmos W=0.1625U L=0.065U
M190_ Vdd __o0t_511_6 O0_at_511_6 Vdd pmos W=0.1625U L=0.065U
M191_ Vdd __o0f_511_6 O0_af_511_6 Vdd pmos W=0.1625U L=0.065U
M192_ Vdd I_at_512_6 __i__t_512_6 Vdd pmos W=0.1625U L=0.065U
M193_ Vdd I_af_512_6 __i__f_512_6 Vdd pmos W=0.1625U L=0.065U
M194_ Vdd __o0t_512_6 O0_at_512_6 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd __o0f_512_6 O0_af_512_6 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd I_at_513_6 __i__t_513_6 Vdd pmos W=0.1625U L=0.065U
M197_ Vdd I_af_513_6 __i__f_513_6 Vdd pmos W=0.1625U L=0.065U
M198_ Vdd __o0t_513_6 O0_at_513_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd __o0f_513_6 O0_af_513_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd I_at_514_6 __i__t_514_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd I_af_514_6 __i__f_514_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd __o0t_514_6 O0_at_514_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd __o0f_514_6 O0_af_514_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd I_at_515_6 __i__t_515_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd I_af_515_6 __i__f_515_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd __o0t_515_6 O0_at_515_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd __o0f_515_6 O0_af_515_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd I_at_516_6 __i__t_516_6 Vdd pmos W=0.1625U L=0.065U
M209_ Vdd I_af_516_6 __i__f_516_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd __o0t_516_6 O0_at_516_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd __o0f_516_6 O0_af_516_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd I_at_517_6 __i__t_517_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd I_af_517_6 __i__f_517_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd __o0t_517_6 O0_at_517_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd __o0f_517_6 O0_af_517_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd I_at_518_6 __i__t_518_6 Vdd pmos W=0.1625U L=0.065U
M217_ Vdd I_af_518_6 __i__f_518_6 Vdd pmos W=0.1625U L=0.065U
M218_ Vdd __o0t_518_6 O0_at_518_6 Vdd pmos W=0.1625U L=0.065U
M219_ Vdd __o0f_518_6 O0_af_518_6 Vdd pmos W=0.1625U L=0.065U
M220_ Vdd I_at_519_6 __i__t_519_6 Vdd pmos W=0.1625U L=0.065U
M221_ Vdd I_af_519_6 __i__f_519_6 Vdd pmos W=0.1625U L=0.065U
M222_ Vdd __o0t_519_6 O0_at_519_6 Vdd pmos W=0.1625U L=0.065U
M223_ Vdd __o0f_519_6 O0_af_519_6 Vdd pmos W=0.1625U L=0.065U
M224_ Vdd I_at_520_6 __i__t_520_6 Vdd pmos W=0.1625U L=0.065U
M225_ Vdd I_af_520_6 __i__f_520_6 Vdd pmos W=0.1625U L=0.065U
M226_ Vdd __o0t_520_6 O0_at_520_6 Vdd pmos W=0.1625U L=0.065U
M227_ Vdd __o0f_520_6 O0_af_520_6 Vdd pmos W=0.1625U L=0.065U
M228_ Vdd I_at_521_6 __i__t_521_6 Vdd pmos W=0.1625U L=0.065U
M229_ Vdd I_af_521_6 __i__f_521_6 Vdd pmos W=0.1625U L=0.065U
M230_ Vdd __o0t_521_6 O0_at_521_6 Vdd pmos W=0.1625U L=0.065U
M231_ Vdd __o0f_521_6 O0_af_521_6 Vdd pmos W=0.1625U L=0.065U
M232_ Vdd I_at_522_6 __i__t_522_6 Vdd pmos W=0.1625U L=0.065U
M233_ Vdd I_af_522_6 __i__f_522_6 Vdd pmos W=0.1625U L=0.065U
M234_ Vdd __o0t_522_6 O0_at_522_6 Vdd pmos W=0.1625U L=0.065U
M235_ Vdd __o0f_522_6 O0_af_522_6 Vdd pmos W=0.1625U L=0.065U
M236_ Vdd I_at_523_6 __i__t_523_6 Vdd pmos W=0.1625U L=0.065U
M237_ Vdd I_af_523_6 __i__f_523_6 Vdd pmos W=0.1625U L=0.065U
M238_ Vdd __o0t_523_6 O0_at_523_6 Vdd pmos W=0.1625U L=0.065U
M239_ Vdd __o0f_523_6 O0_af_523_6 Vdd pmos W=0.1625U L=0.065U
M240_ Vdd I_at_524_6 __i__t_524_6 Vdd pmos W=0.1625U L=0.065U
M241_ Vdd I_af_524_6 __i__f_524_6 Vdd pmos W=0.1625U L=0.065U
M242_ Vdd __o0t_524_6 O0_at_524_6 Vdd pmos W=0.1625U L=0.065U
M243_ Vdd __o0f_524_6 O0_af_524_6 Vdd pmos W=0.1625U L=0.065U
M244_ Vdd I_at_525_6 __i__t_525_6 Vdd pmos W=0.1625U L=0.065U
M245_ Vdd I_af_525_6 __i__f_525_6 Vdd pmos W=0.1625U L=0.065U
M246_ Vdd __o0t_525_6 O0_at_525_6 Vdd pmos W=0.1625U L=0.065U
M247_ Vdd __o0f_525_6 O0_af_525_6 Vdd pmos W=0.1625U L=0.065U
M248_ Vdd I_at_526_6 __i__t_526_6 Vdd pmos W=0.1625U L=0.065U
M249_ Vdd I_af_526_6 __i__f_526_6 Vdd pmos W=0.1625U L=0.065U
M250_ Vdd __o0t_526_6 O0_at_526_6 Vdd pmos W=0.1625U L=0.065U
M251_ Vdd __o0f_526_6 O0_af_526_6 Vdd pmos W=0.1625U L=0.065U
M252_ Vdd I_at_527_6 __i__t_527_6 Vdd pmos W=0.1625U L=0.065U
M253_ Vdd I_af_527_6 __i__f_527_6 Vdd pmos W=0.1625U L=0.065U
M254_ Vdd __o0t_527_6 O0_at_527_6 Vdd pmos W=0.1625U L=0.065U
M255_ Vdd __o0f_527_6 O0_af_527_6 Vdd pmos W=0.1625U L=0.065U
M256_ Vdd I_at_528_6 __i__t_528_6 Vdd pmos W=0.1625U L=0.065U
M257_ Vdd I_af_528_6 __i__f_528_6 Vdd pmos W=0.1625U L=0.065U
M258_ Vdd __o0t_528_6 O0_at_528_6 Vdd pmos W=0.1625U L=0.065U
M259_ Vdd __o0f_528_6 O0_af_528_6 Vdd pmos W=0.1625U L=0.065U
M260_ Vdd I_at_529_6 __i__t_529_6 Vdd pmos W=0.1625U L=0.065U
M261_ Vdd I_af_529_6 __i__f_529_6 Vdd pmos W=0.1625U L=0.065U
M262_ Vdd __o0t_529_6 O0_at_529_6 Vdd pmos W=0.1625U L=0.065U
M263_ Vdd __o0f_529_6 O0_af_529_6 Vdd pmos W=0.1625U L=0.065U
M264_ Vdd I_at_530_6 __i__t_530_6 Vdd pmos W=0.1625U L=0.065U
M265_ Vdd I_af_530_6 __i__f_530_6 Vdd pmos W=0.1625U L=0.065U
M266_ Vdd __o0t_530_6 O0_at_530_6 Vdd pmos W=0.1625U L=0.065U
M267_ Vdd __o0f_530_6 O0_af_530_6 Vdd pmos W=0.1625U L=0.065U
M268_ Vdd I_at_531_6 __i__t_531_6 Vdd pmos W=0.1625U L=0.065U
M269_ Vdd I_af_531_6 __i__f_531_6 Vdd pmos W=0.1625U L=0.065U
M270_ Vdd __o0t_531_6 O0_at_531_6 Vdd pmos W=0.1625U L=0.065U
M271_ Vdd __o0f_531_6 O0_af_531_6 Vdd pmos W=0.1625U L=0.065U
M272_ Vdd __w0 #fb483# Vdd pmos W=0.1625U L=0.13U
M273_ Vdd p #fb486# Vdd pmos W=0.1625U L=0.13U
M274_keeper Vdd GND #484 Vdd pmos W=0.0975U L=0.585U
M275_ Vdd __w1 #fb489# Vdd pmos W=0.1625U L=0.13U
M276_keeper Vdd GND #487 Vdd pmos W=0.0975U L=0.585U
M277_ Vdd a #fb492# Vdd pmos W=0.1625U L=0.13U
M278_keeper Vdd GND #490 Vdd pmos W=0.0975U L=1.56U
M279_ Vdd I_aa #fb495# Vdd pmos W=0.1625U L=0.13U
M280_keeper Vdd GND #493 Vdd pmos W=0.0975U L=0.585U
M281_ Vdd __o0t_50_6 #fb498# Vdd pmos W=0.1625U L=0.13U
M282_keeper Vdd GND #496 Vdd pmos W=0.0975U L=0.91U
M283_ Vdd __o0f_50_6 #fb501# Vdd pmos W=0.1625U L=0.13U
M284_keeper Vdd GND #499 Vdd pmos W=0.0975U L=0.585U
M285_ Vdd O1_at_50_6 #fb504# Vdd pmos W=0.1625U L=0.13U
M286_keeper Vdd GND #502 Vdd pmos W=0.0975U L=0.585U
M287_ Vdd O1_af_50_6 #fb507# Vdd pmos W=0.1625U L=0.13U
M288_keeper Vdd GND #505 Vdd pmos W=0.0975U L=0.26U
M289_ Vdd __o0t_51_6 #fb510# Vdd pmos W=0.1625U L=0.13U
M290_keeper Vdd GND #508 Vdd pmos W=0.0975U L=0.26U
M291_ Vdd __o0f_51_6 #fb513# Vdd pmos W=0.1625U L=0.13U
M292_keeper Vdd GND #511 Vdd pmos W=0.0975U L=0.585U
M293_ Vdd O1_at_51_6 #fb516# Vdd pmos W=0.1625U L=0.13U
M294_keeper Vdd GND #514 Vdd pmos W=0.0975U L=0.585U
M295_ Vdd O1_af_51_6 #fb519# Vdd pmos W=0.1625U L=0.13U
M296_keeper Vdd GND #517 Vdd pmos W=0.0975U L=0.26U
M297_ Vdd __o0t_52_6 #fb522# Vdd pmos W=0.1625U L=0.13U
M298_keeper Vdd GND #520 Vdd pmos W=0.0975U L=0.26U
M299_ Vdd __o0f_52_6 #fb525# Vdd pmos W=0.1625U L=0.13U
M300_keeper Vdd GND #523 Vdd pmos W=0.0975U L=0.585U
M301_ Vdd O1_at_52_6 #fb528# Vdd pmos W=0.1625U L=0.13U
M302_keeper Vdd GND #526 Vdd pmos W=0.0975U L=0.585U
M303_ Vdd O1_af_52_6 #fb531# Vdd pmos W=0.1625U L=0.13U
M304_keeper Vdd GND #529 Vdd pmos W=0.0975U L=0.26U
M305_ Vdd __o0t_53_6 #fb534# Vdd pmos W=0.1625U L=0.13U
M306_keeper Vdd GND #532 Vdd pmos W=0.0975U L=0.26U
M307_ Vdd __o0f_53_6 #fb537# Vdd pmos W=0.1625U L=0.13U
M308_keeper Vdd GND #535 Vdd pmos W=0.0975U L=0.585U
M309_ Vdd O1_at_53_6 #fb540# Vdd pmos W=0.1625U L=0.13U
M310_keeper Vdd GND #538 Vdd pmos W=0.0975U L=0.585U
M311_ Vdd O1_af_53_6 #fb543# Vdd pmos W=0.1625U L=0.13U
M312_keeper Vdd GND #541 Vdd pmos W=0.0975U L=0.26U
M313_ Vdd __o0t_54_6 #fb546# Vdd pmos W=0.1625U L=0.13U
M314_keeper Vdd GND #544 Vdd pmos W=0.0975U L=0.26U
M315_ Vdd __o0f_54_6 #fb549# Vdd pmos W=0.1625U L=0.13U
M316_keeper Vdd GND #547 Vdd pmos W=0.0975U L=0.585U
M317_ Vdd O1_at_54_6 #fb552# Vdd pmos W=0.1625U L=0.13U
M318_keeper Vdd GND #550 Vdd pmos W=0.0975U L=0.585U
M319_ Vdd O1_af_54_6 #fb555# Vdd pmos W=0.1625U L=0.13U
M320_keeper Vdd GND #553 Vdd pmos W=0.0975U L=0.26U
M321_ Vdd __o0t_55_6 #fb558# Vdd pmos W=0.1625U L=0.13U
M322_keeper Vdd GND #556 Vdd pmos W=0.0975U L=0.26U
M323_ Vdd __o0f_55_6 #fb561# Vdd pmos W=0.1625U L=0.13U
M324_keeper Vdd GND #559 Vdd pmos W=0.0975U L=0.585U
M325_ Vdd O1_at_55_6 #fb564# Vdd pmos W=0.1625U L=0.13U
M326_keeper Vdd GND #562 Vdd pmos W=0.0975U L=0.585U
M327_ Vdd O1_af_55_6 #fb567# Vdd pmos W=0.1625U L=0.13U
M328_keeper Vdd GND #565 Vdd pmos W=0.0975U L=0.26U
M329_ Vdd __o0t_56_6 #fb570# Vdd pmos W=0.1625U L=0.13U
M330_keeper Vdd GND #568 Vdd pmos W=0.0975U L=0.26U
M331_ Vdd __o0f_56_6 #fb573# Vdd pmos W=0.1625U L=0.13U
M332_keeper Vdd GND #571 Vdd pmos W=0.0975U L=0.585U
M333_ Vdd O1_at_56_6 #fb576# Vdd pmos W=0.1625U L=0.13U
M334_keeper Vdd GND #574 Vdd pmos W=0.0975U L=0.585U
M335_ Vdd O1_af_56_6 #fb579# Vdd pmos W=0.1625U L=0.13U
M336_keeper Vdd GND #577 Vdd pmos W=0.0975U L=0.26U
M337_ Vdd __o0t_57_6 #fb582# Vdd pmos W=0.1625U L=0.13U
M338_keeper Vdd GND #580 Vdd pmos W=0.0975U L=0.26U
M339_ Vdd __o0f_57_6 #fb585# Vdd pmos W=0.1625U L=0.13U
M340_keeper Vdd GND #583 Vdd pmos W=0.0975U L=0.585U
M341_ Vdd O1_at_57_6 #fb588# Vdd pmos W=0.1625U L=0.13U
M342_keeper Vdd GND #586 Vdd pmos W=0.0975U L=0.585U
M343_ Vdd O1_af_57_6 #fb591# Vdd pmos W=0.1625U L=0.13U
M344_keeper Vdd GND #589 Vdd pmos W=0.0975U L=0.26U
M345_ Vdd __o0t_58_6 #fb594# Vdd pmos W=0.1625U L=0.13U
M346_keeper Vdd GND #592 Vdd pmos W=0.0975U L=0.26U
M347_ Vdd __o0f_58_6 #fb597# Vdd pmos W=0.1625U L=0.13U
M348_keeper Vdd GND #595 Vdd pmos W=0.0975U L=0.585U
M349_ Vdd O1_at_58_6 #fb600# Vdd pmos W=0.1625U L=0.13U
M350_keeper Vdd GND #598 Vdd pmos W=0.0975U L=0.585U
M351_ Vdd O1_af_58_6 #fb603# Vdd pmos W=0.1625U L=0.13U
M352_keeper Vdd GND #601 Vdd pmos W=0.0975U L=0.26U
M353_ Vdd __o0t_59_6 #fb606# Vdd pmos W=0.1625U L=0.13U
M354_keeper Vdd GND #604 Vdd pmos W=0.0975U L=0.26U
M355_ Vdd __o0f_59_6 #fb609# Vdd pmos W=0.1625U L=0.13U
M356_keeper Vdd GND #607 Vdd pmos W=0.0975U L=0.585U
M357_ Vdd O1_at_59_6 #fb612# Vdd pmos W=0.1625U L=0.13U
M358_keeper Vdd GND #610 Vdd pmos W=0.0975U L=0.585U
M359_ Vdd O1_af_59_6 #fb615# Vdd pmos W=0.1625U L=0.13U
M360_keeper Vdd GND #613 Vdd pmos W=0.0975U L=0.26U
M361_ Vdd __o0t_510_6 #fb618# Vdd pmos W=0.1625U L=0.13U
M362_keeper Vdd GND #616 Vdd pmos W=0.0975U L=0.26U
M363_ Vdd __o0f_510_6 #fb621# Vdd pmos W=0.1625U L=0.13U
M364_keeper Vdd GND #619 Vdd pmos W=0.0975U L=0.585U
M365_ Vdd O1_at_510_6 #fb624# Vdd pmos W=0.1625U L=0.13U
M366_keeper Vdd GND #622 Vdd pmos W=0.0975U L=0.585U
M367_ Vdd O1_af_510_6 #fb627# Vdd pmos W=0.1625U L=0.13U
M368_keeper Vdd GND #625 Vdd pmos W=0.0975U L=0.26U
M369_ Vdd __o0t_511_6 #fb630# Vdd pmos W=0.1625U L=0.13U
M370_keeper Vdd GND #628 Vdd pmos W=0.0975U L=0.26U
M371_ Vdd __o0f_511_6 #fb633# Vdd pmos W=0.1625U L=0.13U
M372_keeper Vdd GND #631 Vdd pmos W=0.0975U L=0.585U
M373_ Vdd O1_at_511_6 #fb636# Vdd pmos W=0.1625U L=0.13U
M374_keeper Vdd GND #634 Vdd pmos W=0.0975U L=0.585U
M375_ Vdd O1_af_511_6 #fb639# Vdd pmos W=0.1625U L=0.13U
M376_keeper Vdd GND #637 Vdd pmos W=0.0975U L=0.26U
M377_ Vdd __o0t_512_6 #fb642# Vdd pmos W=0.1625U L=0.13U
M378_keeper Vdd GND #640 Vdd pmos W=0.0975U L=0.26U
M379_ Vdd __o0f_512_6 #fb645# Vdd pmos W=0.1625U L=0.13U
M380_keeper Vdd GND #643 Vdd pmos W=0.0975U L=0.585U
M381_ Vdd O1_at_512_6 #fb648# Vdd pmos W=0.1625U L=0.13U
M382_keeper Vdd GND #646 Vdd pmos W=0.0975U L=0.585U
M383_ Vdd O1_af_512_6 #fb651# Vdd pmos W=0.1625U L=0.13U
M384_keeper Vdd GND #649 Vdd pmos W=0.0975U L=0.26U
M385_ Vdd __o0t_513_6 #fb654# Vdd pmos W=0.1625U L=0.13U
M386_keeper Vdd GND #652 Vdd pmos W=0.0975U L=0.26U
M387_ Vdd __o0f_513_6 #fb657# Vdd pmos W=0.1625U L=0.13U
M388_keeper Vdd GND #655 Vdd pmos W=0.0975U L=0.585U
M389_ Vdd O1_at_513_6 #fb660# Vdd pmos W=0.1625U L=0.13U
M390_keeper Vdd GND #658 Vdd pmos W=0.0975U L=0.585U
M391_ Vdd O1_af_513_6 #fb663# Vdd pmos W=0.1625U L=0.13U
M392_keeper Vdd GND #661 Vdd pmos W=0.0975U L=0.26U
M393_ Vdd __o0t_514_6 #fb666# Vdd pmos W=0.1625U L=0.13U
M394_keeper Vdd GND #664 Vdd pmos W=0.0975U L=0.26U
M395_ Vdd __o0f_514_6 #fb669# Vdd pmos W=0.1625U L=0.13U
M396_keeper Vdd GND #667 Vdd pmos W=0.0975U L=0.585U
M397_ Vdd O1_at_514_6 #fb672# Vdd pmos W=0.1625U L=0.13U
M398_keeper Vdd GND #670 Vdd pmos W=0.0975U L=0.585U
M399_ Vdd O1_af_514_6 #fb675# Vdd pmos W=0.1625U L=0.13U
M400_keeper Vdd GND #673 Vdd pmos W=0.0975U L=0.26U
M401_ Vdd __o0t_515_6 #fb678# Vdd pmos W=0.1625U L=0.13U
M402_keeper Vdd GND #676 Vdd pmos W=0.0975U L=0.26U
M403_ Vdd __o0f_515_6 #fb681# Vdd pmos W=0.1625U L=0.13U
M404_keeper Vdd GND #679 Vdd pmos W=0.0975U L=0.585U
M405_ Vdd O1_at_515_6 #fb684# Vdd pmos W=0.1625U L=0.13U
M406_keeper Vdd GND #682 Vdd pmos W=0.0975U L=0.585U
M407_ Vdd O1_af_515_6 #fb687# Vdd pmos W=0.1625U L=0.13U
M408_keeper Vdd GND #685 Vdd pmos W=0.0975U L=0.26U
M409_ Vdd __o0t_516_6 #fb690# Vdd pmos W=0.1625U L=0.13U
M410_keeper Vdd GND #688 Vdd pmos W=0.0975U L=0.26U
M411_ Vdd __o0f_516_6 #fb693# Vdd pmos W=0.1625U L=0.13U
M412_keeper Vdd GND #691 Vdd pmos W=0.0975U L=0.585U
M413_ Vdd O1_at_516_6 #fb696# Vdd pmos W=0.1625U L=0.13U
M414_keeper Vdd GND #694 Vdd pmos W=0.0975U L=0.585U
M415_ Vdd O1_af_516_6 #fb699# Vdd pmos W=0.1625U L=0.13U
M416_keeper Vdd GND #697 Vdd pmos W=0.0975U L=0.26U
M417_ Vdd __o0t_517_6 #fb702# Vdd pmos W=0.1625U L=0.13U
M418_keeper Vdd GND #700 Vdd pmos W=0.0975U L=0.26U
M419_ Vdd __o0f_517_6 #fb705# Vdd pmos W=0.1625U L=0.13U
M420_keeper Vdd GND #703 Vdd pmos W=0.0975U L=0.585U
M421_ Vdd O1_at_517_6 #fb708# Vdd pmos W=0.1625U L=0.13U
M422_keeper Vdd GND #706 Vdd pmos W=0.0975U L=0.585U
M423_ Vdd O1_af_517_6 #fb711# Vdd pmos W=0.1625U L=0.13U
M424_keeper Vdd GND #709 Vdd pmos W=0.0975U L=0.26U
M425_ Vdd __o0t_518_6 #fb714# Vdd pmos W=0.1625U L=0.13U
M426_keeper Vdd GND #712 Vdd pmos W=0.0975U L=0.26U
M427_ Vdd __o0f_518_6 #fb717# Vdd pmos W=0.1625U L=0.13U
M428_keeper Vdd GND #715 Vdd pmos W=0.0975U L=0.585U
M429_ Vdd O1_at_518_6 #fb720# Vdd pmos W=0.1625U L=0.13U
M430_keeper Vdd GND #718 Vdd pmos W=0.0975U L=0.585U
M431_ Vdd O1_af_518_6 #fb723# Vdd pmos W=0.1625U L=0.13U
M432_keeper Vdd GND #721 Vdd pmos W=0.0975U L=0.26U
M433_ Vdd __o0t_519_6 #fb726# Vdd pmos W=0.1625U L=0.13U
M434_keeper Vdd GND #724 Vdd pmos W=0.0975U L=0.26U
M435_ Vdd __o0f_519_6 #fb729# Vdd pmos W=0.1625U L=0.13U
M436_keeper Vdd GND #727 Vdd pmos W=0.0975U L=0.585U
M437_ Vdd O1_at_519_6 #fb732# Vdd pmos W=0.1625U L=0.13U
M438_keeper Vdd GND #730 Vdd pmos W=0.0975U L=0.585U
M439_ Vdd O1_af_519_6 #fb735# Vdd pmos W=0.1625U L=0.13U
M440_keeper Vdd GND #733 Vdd pmos W=0.0975U L=0.26U
M441_ Vdd __o0t_520_6 #fb738# Vdd pmos W=0.1625U L=0.13U
M442_keeper Vdd GND #736 Vdd pmos W=0.0975U L=0.26U
M443_ Vdd __o0f_520_6 #fb741# Vdd pmos W=0.1625U L=0.13U
M444_keeper Vdd GND #739 Vdd pmos W=0.0975U L=0.585U
M445_ Vdd O1_at_520_6 #fb744# Vdd pmos W=0.1625U L=0.13U
M446_keeper Vdd GND #742 Vdd pmos W=0.0975U L=0.585U
M447_ Vdd O1_af_520_6 #fb747# Vdd pmos W=0.1625U L=0.13U
M448_keeper Vdd GND #745 Vdd pmos W=0.0975U L=0.26U
M449_ Vdd __o0t_521_6 #fb750# Vdd pmos W=0.1625U L=0.13U
M450_keeper Vdd GND #748 Vdd pmos W=0.0975U L=0.26U
M451_ Vdd __o0f_521_6 #fb753# Vdd pmos W=0.1625U L=0.13U
M452_keeper Vdd GND #751 Vdd pmos W=0.0975U L=0.585U
M453_ Vdd O1_at_521_6 #fb756# Vdd pmos W=0.1625U L=0.13U
M454_keeper Vdd GND #754 Vdd pmos W=0.0975U L=0.585U
M455_ Vdd O1_af_521_6 #fb759# Vdd pmos W=0.1625U L=0.13U
M456_keeper Vdd GND #757 Vdd pmos W=0.0975U L=0.26U
M457_ Vdd __o0t_522_6 #fb762# Vdd pmos W=0.1625U L=0.13U
M458_keeper Vdd GND #760 Vdd pmos W=0.0975U L=0.26U
M459_ Vdd __o0f_522_6 #fb765# Vdd pmos W=0.1625U L=0.13U
M460_keeper Vdd GND #763 Vdd pmos W=0.0975U L=0.585U
M461_ Vdd O1_at_522_6 #fb768# Vdd pmos W=0.1625U L=0.13U
M462_keeper Vdd GND #766 Vdd pmos W=0.0975U L=0.585U
M463_ Vdd O1_af_522_6 #fb771# Vdd pmos W=0.1625U L=0.13U
M464_keeper Vdd GND #769 Vdd pmos W=0.0975U L=0.26U
M465_ Vdd __o0t_523_6 #fb774# Vdd pmos W=0.1625U L=0.13U
M466_keeper Vdd GND #772 Vdd pmos W=0.0975U L=0.26U
M467_ Vdd __o0f_523_6 #fb777# Vdd pmos W=0.1625U L=0.13U
M468_keeper Vdd GND #775 Vdd pmos W=0.0975U L=0.585U
M469_ Vdd O1_at_523_6 #fb780# Vdd pmos W=0.1625U L=0.13U
M470_keeper Vdd GND #778 Vdd pmos W=0.0975U L=0.585U
M471_ Vdd O1_af_523_6 #fb783# Vdd pmos W=0.1625U L=0.13U
M472_keeper Vdd GND #781 Vdd pmos W=0.0975U L=0.26U
M473_ Vdd __o0t_524_6 #fb786# Vdd pmos W=0.1625U L=0.13U
M474_keeper Vdd GND #784 Vdd pmos W=0.0975U L=0.26U
M475_ Vdd __o0f_524_6 #fb789# Vdd pmos W=0.1625U L=0.13U
M476_keeper Vdd GND #787 Vdd pmos W=0.0975U L=0.585U
M477_ Vdd O1_at_524_6 #fb792# Vdd pmos W=0.1625U L=0.13U
M478_keeper Vdd GND #790 Vdd pmos W=0.0975U L=0.585U
M479_ Vdd O1_af_524_6 #fb795# Vdd pmos W=0.1625U L=0.13U
M480_keeper Vdd GND #793 Vdd pmos W=0.0975U L=0.26U
M481_ Vdd __o0t_525_6 #fb798# Vdd pmos W=0.1625U L=0.13U
M482_keeper Vdd GND #796 Vdd pmos W=0.0975U L=0.26U
M483_ Vdd __o0f_525_6 #fb801# Vdd pmos W=0.1625U L=0.13U
M484_keeper Vdd GND #799 Vdd pmos W=0.0975U L=0.585U
M485_ Vdd O1_at_525_6 #fb804# Vdd pmos W=0.1625U L=0.13U
M486_keeper Vdd GND #802 Vdd pmos W=0.0975U L=0.585U
M487_ Vdd O1_af_525_6 #fb807# Vdd pmos W=0.1625U L=0.13U
M488_keeper Vdd GND #805 Vdd pmos W=0.0975U L=0.26U
M489_ Vdd __o0t_526_6 #fb810# Vdd pmos W=0.1625U L=0.13U
M490_keeper Vdd GND #808 Vdd pmos W=0.0975U L=0.26U
M491_ Vdd __o0f_526_6 #fb813# Vdd pmos W=0.1625U L=0.13U
M492_keeper Vdd GND #811 Vdd pmos W=0.0975U L=0.585U
M493_ Vdd O1_at_526_6 #fb816# Vdd pmos W=0.1625U L=0.13U
M494_keeper Vdd GND #814 Vdd pmos W=0.0975U L=0.585U
M495_ Vdd O1_af_526_6 #fb819# Vdd pmos W=0.1625U L=0.13U
M496_keeper Vdd GND #817 Vdd pmos W=0.0975U L=0.26U
M497_ Vdd __o0t_527_6 #fb822# Vdd pmos W=0.1625U L=0.13U
M498_keeper Vdd GND #820 Vdd pmos W=0.0975U L=0.26U
M499_ Vdd __o0f_527_6 #fb825# Vdd pmos W=0.1625U L=0.13U
M500_keeper Vdd GND #823 Vdd pmos W=0.0975U L=0.585U
M501_ Vdd O1_at_527_6 #fb828# Vdd pmos W=0.1625U L=0.13U
M502_keeper Vdd GND #826 Vdd pmos W=0.0975U L=0.585U
M503_ Vdd O1_af_527_6 #fb831# Vdd pmos W=0.1625U L=0.13U
M504_keeper Vdd GND #829 Vdd pmos W=0.0975U L=0.26U
M505_ Vdd __o0t_528_6 #fb834# Vdd pmos W=0.1625U L=0.13U
M506_keeper Vdd GND #832 Vdd pmos W=0.0975U L=0.26U
M507_ Vdd __o0f_528_6 #fb837# Vdd pmos W=0.1625U L=0.13U
M508_keeper Vdd GND #835 Vdd pmos W=0.0975U L=0.585U
M509_ Vdd O1_at_528_6 #fb840# Vdd pmos W=0.1625U L=0.13U
M510_keeper Vdd GND #838 Vdd pmos W=0.0975U L=0.585U
M511_ Vdd O1_af_528_6 #fb843# Vdd pmos W=0.1625U L=0.13U
M512_keeper Vdd GND #841 Vdd pmos W=0.0975U L=0.26U
M513_ Vdd __o0t_529_6 #fb846# Vdd pmos W=0.1625U L=0.13U
M514_keeper Vdd GND #844 Vdd pmos W=0.0975U L=0.26U
M515_ Vdd __o0f_529_6 #fb849# Vdd pmos W=0.1625U L=0.13U
M516_keeper Vdd GND #847 Vdd pmos W=0.0975U L=0.585U
M517_ Vdd O1_at_529_6 #fb852# Vdd pmos W=0.1625U L=0.13U
M518_keeper Vdd GND #850 Vdd pmos W=0.0975U L=0.585U
M519_ Vdd O1_af_529_6 #fb855# Vdd pmos W=0.1625U L=0.13U
M520_keeper Vdd GND #853 Vdd pmos W=0.0975U L=0.26U
M521_ Vdd __o0t_530_6 #fb858# Vdd pmos W=0.1625U L=0.13U
M522_keeper Vdd GND #856 Vdd pmos W=0.0975U L=0.26U
M523_ Vdd __o0f_530_6 #fb861# Vdd pmos W=0.1625U L=0.13U
M524_keeper Vdd GND #859 Vdd pmos W=0.0975U L=0.585U
M525_ Vdd O1_at_530_6 #fb864# Vdd pmos W=0.1625U L=0.13U
M526_keeper Vdd GND #862 Vdd pmos W=0.0975U L=0.585U
M527_ Vdd O1_af_530_6 #fb867# Vdd pmos W=0.1625U L=0.13U
M528_keeper Vdd GND #865 Vdd pmos W=0.0975U L=0.26U
M529_ Vdd __o0t_531_6 #fb870# Vdd pmos W=0.1625U L=0.13U
M530_keeper Vdd GND #868 Vdd pmos W=0.0975U L=0.26U
M531_ Vdd __o0f_531_6 #fb873# Vdd pmos W=0.1625U L=0.13U
M532_keeper Vdd GND #871 Vdd pmos W=0.0975U L=0.585U
M533_ Vdd O1_at_531_6 #fb876# Vdd pmos W=0.1625U L=0.13U
M534_keeper Vdd GND #874 Vdd pmos W=0.0975U L=0.585U
M535_ Vdd O1_af_531_6 #fb879# Vdd pmos W=0.1625U L=0.13U
M536_keeper Vdd GND #877 Vdd pmos W=0.0975U L=0.26U
M537_keeper Vdd GND #880 Vdd pmos W=0.0975U L=0.26U
M538_ GND I_at_50_6 #3 GND nmos W=0.0975U L=0.065U
M539_ GND I_at_57_6 #6 GND nmos W=0.0975U L=0.065U
M540_ GND I_at_56_6 #6 GND nmos W=0.0975U L=0.065U
M541_ GND I_at_55_6 #6 GND nmos W=0.0975U L=0.065U
M542_ GND I_at_54_6 #6 GND nmos W=0.0975U L=0.065U
M543_ GND I_af_50_6 #16 GND nmos W=0.0975U L=0.065U
M544_ GND I_af_57_6 #21 GND nmos W=0.0975U L=0.065U
M545_ GND __w0 #34 GND nmos W=0.195U L=0.065U
M546_ GND w1 #36 GND nmos W=0.39U L=0.065U
M547_ GND __w0 #43 GND nmos W=0.0975U L=0.065U
M548_ GND p #45 GND nmos W=0.0975U L=0.065U
M549_ GND p #47 GND nmos W=0.0975U L=0.065U
M550_ GND __i__t_50_6 O1_at_50_6 GND nmos W=0.0975U L=0.065U
M551_ GND __i__f_50_6 O1_af_50_6 GND nmos W=0.0975U L=0.065U
M552_ GND p #55 GND nmos W=0.0975U L=0.065U
M553_ GND p #58 GND nmos W=0.0975U L=0.065U
M554_ GND __i__t_51_6 O1_at_51_6 GND nmos W=0.0975U L=0.065U
M555_ GND __i__f_51_6 O1_af_51_6 GND nmos W=0.0975U L=0.065U
M556_ GND p #67 GND nmos W=0.0975U L=0.065U
M557_ GND p #70 GND nmos W=0.0975U L=0.065U
M558_ GND __i__t_52_6 O1_at_52_6 GND nmos W=0.0975U L=0.065U
M559_ GND __i__f_52_6 O1_af_52_6 GND nmos W=0.0975U L=0.065U
M560_ GND p #79 GND nmos W=0.0975U L=0.065U
M561_ GND p #82 GND nmos W=0.0975U L=0.065U
M562_ GND __i__t_53_6 O1_at_53_6 GND nmos W=0.0975U L=0.065U
M563_ GND __i__f_53_6 O1_af_53_6 GND nmos W=0.0975U L=0.065U
M564_ GND p #91 GND nmos W=0.0975U L=0.065U
M565_ GND p #93 GND nmos W=0.0975U L=0.065U
M566_ GND __i__t_54_6 O1_at_54_6 GND nmos W=0.0975U L=0.065U
M567_ GND __i__f_54_6 O1_af_54_6 GND nmos W=0.0975U L=0.065U
M568_ GND p #101 GND nmos W=0.0975U L=0.065U
M569_ GND p #103 GND nmos W=0.0975U L=0.065U
M570_ GND __i__t_55_6 O1_at_55_6 GND nmos W=0.0975U L=0.065U
M571_ GND __i__f_55_6 O1_af_55_6 GND nmos W=0.0975U L=0.065U
M572_ GND p #111 GND nmos W=0.0975U L=0.065U
M573_ GND p #113 GND nmos W=0.0975U L=0.065U
M574_ GND __i__t_56_6 O1_at_56_6 GND nmos W=0.0975U L=0.065U
M575_ GND __i__f_56_6 O1_af_56_6 GND nmos W=0.0975U L=0.065U
M576_ GND p #121 GND nmos W=0.0975U L=0.065U
M577_ GND p #123 GND nmos W=0.0975U L=0.065U
M578_ GND __i__t_57_6 O1_at_57_6 GND nmos W=0.0975U L=0.065U
M579_ GND __i__f_57_6 O1_af_57_6 GND nmos W=0.0975U L=0.065U
M580_ GND p #131 GND nmos W=0.0975U L=0.065U
M581_ GND p #134 GND nmos W=0.0975U L=0.065U
M582_ GND __i__t_58_6 O1_at_58_6 GND nmos W=0.0975U L=0.065U
M583_ GND __i__f_58_6 O1_af_58_6 GND nmos W=0.0975U L=0.065U
M584_ GND p #143 GND nmos W=0.0975U L=0.065U
M585_ GND p #146 GND nmos W=0.0975U L=0.065U
M586_ GND __i__t_59_6 O1_at_59_6 GND nmos W=0.0975U L=0.065U
M587_ GND __i__f_59_6 O1_af_59_6 GND nmos W=0.0975U L=0.065U
M588_ GND p #155 GND nmos W=0.0975U L=0.065U
M589_ GND p #158 GND nmos W=0.0975U L=0.065U
M590_ GND __i__t_510_6 O1_at_510_6 GND nmos W=0.0975U L=0.065U
M591_ GND __i__f_510_6 O1_af_510_6 GND nmos W=0.0975U L=0.065U
M592_ GND p #167 GND nmos W=0.0975U L=0.065U
M593_ GND p #170 GND nmos W=0.0975U L=0.065U
M594_ GND __i__t_511_6 O1_at_511_6 GND nmos W=0.0975U L=0.065U
M595_ GND __i__f_511_6 O1_af_511_6 GND nmos W=0.0975U L=0.065U
M596_ GND p #179 GND nmos W=0.0975U L=0.065U
M597_ GND p #182 GND nmos W=0.0975U L=0.065U
M598_ GND __i__t_512_6 O1_at_512_6 GND nmos W=0.0975U L=0.065U
M599_ GND __i__f_512_6 O1_af_512_6 GND nmos W=0.0975U L=0.065U
M600_ GND p #191 GND nmos W=0.0975U L=0.065U
M601_ GND p #194 GND nmos W=0.0975U L=0.065U
M602_ GND __i__t_513_6 O1_at_513_6 GND nmos W=0.0975U L=0.065U
M603_ GND __i__f_513_6 O1_af_513_6 GND nmos W=0.0975U L=0.065U
M604_ GND p #203 GND nmos W=0.0975U L=0.065U
M605_ GND p #206 GND nmos W=0.0975U L=0.065U
M606_ GND __i__t_514_6 O1_at_514_6 GND nmos W=0.0975U L=0.065U
M607_ GND __i__f_514_6 O1_af_514_6 GND nmos W=0.0975U L=0.065U
M608_ GND p #215 GND nmos W=0.0975U L=0.065U
M609_ GND p #218 GND nmos W=0.0975U L=0.065U
M610_ GND __i__t_515_6 O1_at_515_6 GND nmos W=0.0975U L=0.065U
M611_ GND __i__f_515_6 O1_af_515_6 GND nmos W=0.0975U L=0.065U
M612_ GND p #227 GND nmos W=0.0975U L=0.065U
M613_ GND p #230 GND nmos W=0.0975U L=0.065U
M614_ GND __i__t_516_6 O1_at_516_6 GND nmos W=0.0975U L=0.065U
M615_ GND __i__f_516_6 O1_af_516_6 GND nmos W=0.0975U L=0.065U
M616_ GND p #239 GND nmos W=0.0975U L=0.065U
M617_ GND p #242 GND nmos W=0.0975U L=0.065U
M618_ GND __i__t_517_6 O1_at_517_6 GND nmos W=0.0975U L=0.065U
M619_ GND __i__f_517_6 O1_af_517_6 GND nmos W=0.0975U L=0.065U
M620_ GND p #251 GND nmos W=0.0975U L=0.065U
M621_ GND p #254 GND nmos W=0.0975U L=0.065U
M622_ GND __i__t_518_6 O1_at_518_6 GND nmos W=0.0975U L=0.065U
M623_ GND __i__f_518_6 O1_af_518_6 GND nmos W=0.0975U L=0.065U
M624_ GND p #263 GND nmos W=0.0975U L=0.065U
M625_ GND p #266 GND nmos W=0.0975U L=0.065U
M626_ GND __i__t_519_6 O1_at_519_6 GND nmos W=0.0975U L=0.065U
M627_ GND __i__f_519_6 O1_af_519_6 GND nmos W=0.0975U L=0.065U
M628_ GND p #275 GND nmos W=0.0975U L=0.065U
M629_ GND p #278 GND nmos W=0.0975U L=0.065U
M630_ GND __i__t_520_6 O1_at_520_6 GND nmos W=0.0975U L=0.065U
M631_ GND __i__f_520_6 O1_af_520_6 GND nmos W=0.0975U L=0.065U
M632_ GND p #287 GND nmos W=0.0975U L=0.065U
M633_ GND p #290 GND nmos W=0.0975U L=0.065U
M634_ GND __i__t_521_6 O1_at_521_6 GND nmos W=0.0975U L=0.065U
M635_ GND __i__f_521_6 O1_af_521_6 GND nmos W=0.0975U L=0.065U
M636_ GND p #299 GND nmos W=0.0975U L=0.065U
M637_ GND p #302 GND nmos W=0.0975U L=0.065U
M638_ GND __i__t_522_6 O1_at_522_6 GND nmos W=0.0975U L=0.065U
M639_ GND __i__f_522_6 O1_af_522_6 GND nmos W=0.0975U L=0.065U
M640_ GND p #311 GND nmos W=0.0975U L=0.065U
M641_ GND p #314 GND nmos W=0.0975U L=0.065U
M642_ GND __i__t_523_6 O1_at_523_6 GND nmos W=0.0975U L=0.065U
M643_ GND __i__f_523_6 O1_af_523_6 GND nmos W=0.0975U L=0.065U
M644_ GND p #323 GND nmos W=0.0975U L=0.065U
M645_ GND p #326 GND nmos W=0.0975U L=0.065U
M646_ GND __i__t_524_6 O1_at_524_6 GND nmos W=0.0975U L=0.065U
M647_ GND __i__f_524_6 O1_af_524_6 GND nmos W=0.0975U L=0.065U
M648_ GND p #335 GND nmos W=0.0975U L=0.065U
M649_ GND p #338 GND nmos W=0.0975U L=0.065U
M650_ GND __i__t_525_6 O1_at_525_6 GND nmos W=0.0975U L=0.065U
M651_ GND __i__f_525_6 O1_af_525_6 GND nmos W=0.0975U L=0.065U
M652_ GND p #347 GND nmos W=0.0975U L=0.065U
M653_ GND p #350 GND nmos W=0.0975U L=0.065U
M654_ GND __i__t_526_6 O1_at_526_6 GND nmos W=0.0975U L=0.065U
M655_ GND __i__f_526_6 O1_af_526_6 GND nmos W=0.0975U L=0.065U
M656_ GND p #359 GND nmos W=0.0975U L=0.065U
M657_ GND p #362 GND nmos W=0.0975U L=0.065U
M658_ GND __i__t_527_6 O1_at_527_6 GND nmos W=0.0975U L=0.065U
M659_ GND __i__f_527_6 O1_af_527_6 GND nmos W=0.0975U L=0.065U
M660_ GND p #371 GND nmos W=0.0975U L=0.065U
M661_ GND p #374 GND nmos W=0.0975U L=0.065U
M662_ GND __i__t_528_6 O1_at_528_6 GND nmos W=0.0975U L=0.065U
M663_ GND __i__f_528_6 O1_af_528_6 GND nmos W=0.0975U L=0.065U
M664_ GND p #383 GND nmos W=0.0975U L=0.065U
M665_ GND p #386 GND nmos W=0.0975U L=0.065U
M666_ GND __i__t_529_6 O1_at_529_6 GND nmos W=0.0975U L=0.065U
M667_ GND __i__f_529_6 O1_af_529_6 GND nmos W=0.0975U L=0.065U
M668_ GND p #395 GND nmos W=0.0975U L=0.065U
M669_ GND p #398 GND nmos W=0.0975U L=0.065U
M670_ GND __i__t_530_6 O1_at_530_6 GND nmos W=0.0975U L=0.065U
M671_ GND __i__f_530_6 O1_af_530_6 GND nmos W=0.0975U L=0.065U
M672_ GND p #407 GND nmos W=0.0975U L=0.065U
M673_ GND p #410 GND nmos W=0.0975U L=0.065U
M674_ GND __i__t_531_6 O1_at_531_6 GND nmos W=0.0975U L=0.065U
M675_ GND __i__f_531_6 O1_af_531_6 GND nmos W=0.0975U L=0.065U
M676_ GND p __p GND nmos W=0.0975U L=0.065U
M677_ GND a __a GND nmos W=0.195U L=0.065U
M678_ GND I_aa __i__a GND nmos W=0.0975U L=0.065U
M679_ GND reset __r GND nmos W=0.0975U L=0.065U
M680_ GND __w1 w1 GND nmos W=0.195U L=0.065U
M681_ GND O0_aa __o0a GND nmos W=0.0975U L=0.065U
M682_ GND O1_aa __o1a GND nmos W=0.0975U L=0.065U
M683_ GND I_at_50_6 __i__t_50_6 GND nmos W=0.0975U L=0.065U
M684_ GND I_af_50_6 __i__f_50_6 GND nmos W=0.0975U L=0.065U
M685_ GND __o0t_50_6 O0_at_50_6 GND nmos W=0.0975U L=0.065U
M686_ GND __o0f_50_6 O0_af_50_6 GND nmos W=0.0975U L=0.065U
M687_ GND I_at_51_6 __i__t_51_6 GND nmos W=0.0975U L=0.065U
M688_ GND I_af_51_6 __i__f_51_6 GND nmos W=0.0975U L=0.065U
M689_ GND __o0t_51_6 O0_at_51_6 GND nmos W=0.0975U L=0.065U
M690_ GND __o0f_51_6 O0_af_51_6 GND nmos W=0.0975U L=0.065U
M691_ GND I_at_52_6 __i__t_52_6 GND nmos W=0.0975U L=0.065U
M692_ GND I_af_52_6 __i__f_52_6 GND nmos W=0.0975U L=0.065U
M693_ GND __o0t_52_6 O0_at_52_6 GND nmos W=0.0975U L=0.065U
M694_ GND __o0f_52_6 O0_af_52_6 GND nmos W=0.0975U L=0.065U
M695_ GND I_at_53_6 __i__t_53_6 GND nmos W=0.0975U L=0.065U
M696_ GND I_af_53_6 __i__f_53_6 GND nmos W=0.0975U L=0.065U
M697_ GND __o0t_53_6 O0_at_53_6 GND nmos W=0.0975U L=0.065U
M698_ GND __o0f_53_6 O0_af_53_6 GND nmos W=0.0975U L=0.065U
M699_ GND I_at_54_6 __i__t_54_6 GND nmos W=0.0975U L=0.065U
M700_ GND I_af_54_6 __i__f_54_6 GND nmos W=0.0975U L=0.065U
M701_ GND __o0t_54_6 O0_at_54_6 GND nmos W=0.0975U L=0.065U
M702_ GND __o0f_54_6 O0_af_54_6 GND nmos W=0.0975U L=0.065U
M703_ GND I_at_55_6 __i__t_55_6 GND nmos W=0.0975U L=0.065U
M704_ GND I_af_55_6 __i__f_55_6 GND nmos W=0.0975U L=0.065U
M705_ GND __o0t_55_6 O0_at_55_6 GND nmos W=0.0975U L=0.065U
M706_ GND __o0f_55_6 O0_af_55_6 GND nmos W=0.0975U L=0.065U
M707_ GND I_at_56_6 __i__t_56_6 GND nmos W=0.0975U L=0.065U
M708_ GND I_af_56_6 __i__f_56_6 GND nmos W=0.0975U L=0.065U
M709_ GND __o0t_56_6 O0_at_56_6 GND nmos W=0.0975U L=0.065U
M710_ GND __o0f_56_6 O0_af_56_6 GND nmos W=0.0975U L=0.065U
M711_ GND I_at_57_6 __i__t_57_6 GND nmos W=0.0975U L=0.065U
M712_ GND I_af_57_6 __i__f_57_6 GND nmos W=0.0975U L=0.065U
M713_ GND __o0t_57_6 O0_at_57_6 GND nmos W=0.0975U L=0.065U
M714_ GND __o0f_57_6 O0_af_57_6 GND nmos W=0.0975U L=0.065U
M715_ GND I_at_58_6 __i__t_58_6 GND nmos W=0.0975U L=0.065U
M716_ GND I_af_58_6 __i__f_58_6 GND nmos W=0.0975U L=0.065U
M717_ GND __o0t_58_6 O0_at_58_6 GND nmos W=0.0975U L=0.065U
M718_ GND __o0f_58_6 O0_af_58_6 GND nmos W=0.0975U L=0.065U
M719_ GND I_at_59_6 __i__t_59_6 GND nmos W=0.0975U L=0.065U
M720_ GND I_af_59_6 __i__f_59_6 GND nmos W=0.0975U L=0.065U
M721_ GND __o0t_59_6 O0_at_59_6 GND nmos W=0.0975U L=0.065U
M722_ GND __o0f_59_6 O0_af_59_6 GND nmos W=0.0975U L=0.065U
M723_ GND I_at_510_6 __i__t_510_6 GND nmos W=0.0975U L=0.065U
M724_ GND I_af_510_6 __i__f_510_6 GND nmos W=0.0975U L=0.065U
M725_ GND __o0t_510_6 O0_at_510_6 GND nmos W=0.0975U L=0.065U
M726_ GND __o0f_510_6 O0_af_510_6 GND nmos W=0.0975U L=0.065U
M727_ GND I_at_511_6 __i__t_511_6 GND nmos W=0.0975U L=0.065U
M728_ GND I_af_511_6 __i__f_511_6 GND nmos W=0.0975U L=0.065U
M729_ GND __o0t_511_6 O0_at_511_6 GND nmos W=0.0975U L=0.065U
M730_ GND __o0f_511_6 O0_af_511_6 GND nmos W=0.0975U L=0.065U
M731_ GND I_at_512_6 __i__t_512_6 GND nmos W=0.0975U L=0.065U
M732_ GND I_af_512_6 __i__f_512_6 GND nmos W=0.0975U L=0.065U
M733_ GND __o0t_512_6 O0_at_512_6 GND nmos W=0.0975U L=0.065U
M734_ GND __o0f_512_6 O0_af_512_6 GND nmos W=0.0975U L=0.065U
M735_ GND I_at_513_6 __i__t_513_6 GND nmos W=0.0975U L=0.065U
M736_ GND I_af_513_6 __i__f_513_6 GND nmos W=0.0975U L=0.065U
M737_ GND __o0t_513_6 O0_at_513_6 GND nmos W=0.0975U L=0.065U
M738_ GND __o0f_513_6 O0_af_513_6 GND nmos W=0.0975U L=0.065U
M739_ GND I_at_514_6 __i__t_514_6 GND nmos W=0.0975U L=0.065U
M740_ GND I_af_514_6 __i__f_514_6 GND nmos W=0.0975U L=0.065U
M741_ GND __o0t_514_6 O0_at_514_6 GND nmos W=0.0975U L=0.065U
M742_ GND __o0f_514_6 O0_af_514_6 GND nmos W=0.0975U L=0.065U
M743_ GND I_at_515_6 __i__t_515_6 GND nmos W=0.0975U L=0.065U
M744_ GND I_af_515_6 __i__f_515_6 GND nmos W=0.0975U L=0.065U
M745_ GND __o0t_515_6 O0_at_515_6 GND nmos W=0.0975U L=0.065U
M746_ GND __o0f_515_6 O0_af_515_6 GND nmos W=0.0975U L=0.065U
M747_ GND I_at_516_6 __i__t_516_6 GND nmos W=0.0975U L=0.065U
M748_ GND I_af_516_6 __i__f_516_6 GND nmos W=0.0975U L=0.065U
M749_ GND __o0t_516_6 O0_at_516_6 GND nmos W=0.0975U L=0.065U
M750_ GND __o0f_516_6 O0_af_516_6 GND nmos W=0.0975U L=0.065U
M751_ GND I_at_517_6 __i__t_517_6 GND nmos W=0.0975U L=0.065U
M752_ GND I_af_517_6 __i__f_517_6 GND nmos W=0.0975U L=0.065U
M753_ GND __o0t_517_6 O0_at_517_6 GND nmos W=0.0975U L=0.065U
M754_ GND __o0f_517_6 O0_af_517_6 GND nmos W=0.0975U L=0.065U
M755_ GND I_at_518_6 __i__t_518_6 GND nmos W=0.0975U L=0.065U
M756_ GND I_af_518_6 __i__f_518_6 GND nmos W=0.0975U L=0.065U
M757_ GND __o0t_518_6 O0_at_518_6 GND nmos W=0.0975U L=0.065U
M758_ GND __o0f_518_6 O0_af_518_6 GND nmos W=0.0975U L=0.065U
M759_ GND I_at_519_6 __i__t_519_6 GND nmos W=0.0975U L=0.065U
M760_ GND I_af_519_6 __i__f_519_6 GND nmos W=0.0975U L=0.065U
M761_ GND __o0t_519_6 O0_at_519_6 GND nmos W=0.0975U L=0.065U
M762_ GND __o0f_519_6 O0_af_519_6 GND nmos W=0.0975U L=0.065U
M763_ GND I_at_520_6 __i__t_520_6 GND nmos W=0.0975U L=0.065U
M764_ GND I_af_520_6 __i__f_520_6 GND nmos W=0.0975U L=0.065U
M765_ GND __o0t_520_6 O0_at_520_6 GND nmos W=0.0975U L=0.065U
M766_ GND __o0f_520_6 O0_af_520_6 GND nmos W=0.0975U L=0.065U
M767_ GND I_at_521_6 __i__t_521_6 GND nmos W=0.0975U L=0.065U
M768_ GND I_af_521_6 __i__f_521_6 GND nmos W=0.0975U L=0.065U
M769_ GND __o0t_521_6 O0_at_521_6 GND nmos W=0.0975U L=0.065U
M770_ GND __o0f_521_6 O0_af_521_6 GND nmos W=0.0975U L=0.065U
M771_ GND I_at_522_6 __i__t_522_6 GND nmos W=0.0975U L=0.065U
M772_ GND I_af_522_6 __i__f_522_6 GND nmos W=0.0975U L=0.065U
M773_ GND __o0t_522_6 O0_at_522_6 GND nmos W=0.0975U L=0.065U
M774_ GND __o0f_522_6 O0_af_522_6 GND nmos W=0.0975U L=0.065U
M775_ GND I_at_523_6 __i__t_523_6 GND nmos W=0.0975U L=0.065U
M776_ GND I_af_523_6 __i__f_523_6 GND nmos W=0.0975U L=0.065U
M777_ GND __o0t_523_6 O0_at_523_6 GND nmos W=0.0975U L=0.065U
M778_ GND __o0f_523_6 O0_af_523_6 GND nmos W=0.0975U L=0.065U
M779_ GND I_at_524_6 __i__t_524_6 GND nmos W=0.0975U L=0.065U
M780_ GND I_af_524_6 __i__f_524_6 GND nmos W=0.0975U L=0.065U
M781_ GND __o0t_524_6 O0_at_524_6 GND nmos W=0.0975U L=0.065U
M782_ GND __o0f_524_6 O0_af_524_6 GND nmos W=0.0975U L=0.065U
M783_ GND I_at_525_6 __i__t_525_6 GND nmos W=0.0975U L=0.065U
M784_ GND I_af_525_6 __i__f_525_6 GND nmos W=0.0975U L=0.065U
M785_ GND __o0t_525_6 O0_at_525_6 GND nmos W=0.0975U L=0.065U
M786_ GND __o0f_525_6 O0_af_525_6 GND nmos W=0.0975U L=0.065U
M787_ GND I_at_526_6 __i__t_526_6 GND nmos W=0.0975U L=0.065U
M788_ GND I_af_526_6 __i__f_526_6 GND nmos W=0.0975U L=0.065U
M789_ GND __o0t_526_6 O0_at_526_6 GND nmos W=0.0975U L=0.065U
M790_ GND __o0f_526_6 O0_af_526_6 GND nmos W=0.0975U L=0.065U
M791_ GND I_at_527_6 __i__t_527_6 GND nmos W=0.0975U L=0.065U
M792_ GND I_af_527_6 __i__f_527_6 GND nmos W=0.0975U L=0.065U
M793_ GND __o0t_527_6 O0_at_527_6 GND nmos W=0.0975U L=0.065U
M794_ GND __o0f_527_6 O0_af_527_6 GND nmos W=0.0975U L=0.065U
M795_ GND I_at_528_6 __i__t_528_6 GND nmos W=0.0975U L=0.065U
M796_ GND I_af_528_6 __i__f_528_6 GND nmos W=0.0975U L=0.065U
M797_ GND __o0t_528_6 O0_at_528_6 GND nmos W=0.0975U L=0.065U
M798_ GND __o0f_528_6 O0_af_528_6 GND nmos W=0.0975U L=0.065U
M799_ GND I_at_529_6 __i__t_529_6 GND nmos W=0.0975U L=0.065U
M800_ GND I_af_529_6 __i__f_529_6 GND nmos W=0.0975U L=0.065U
M801_ GND __o0t_529_6 O0_at_529_6 GND nmos W=0.0975U L=0.065U
M802_ GND __o0f_529_6 O0_af_529_6 GND nmos W=0.0975U L=0.065U
M803_ GND I_at_530_6 __i__t_530_6 GND nmos W=0.0975U L=0.065U
M804_ GND I_af_530_6 __i__f_530_6 GND nmos W=0.0975U L=0.065U
M805_ GND __o0t_530_6 O0_at_530_6 GND nmos W=0.0975U L=0.065U
M806_ GND __o0f_530_6 O0_af_530_6 GND nmos W=0.0975U L=0.065U
M807_ GND I_at_531_6 __i__t_531_6 GND nmos W=0.0975U L=0.065U
M808_ GND I_af_531_6 __i__f_531_6 GND nmos W=0.0975U L=0.065U
M809_ GND __o0t_531_6 O0_at_531_6 GND nmos W=0.0975U L=0.065U
M810_ GND __o0f_531_6 O0_af_531_6 GND nmos W=0.0975U L=0.065U
M811_ GND __w0 #fb483# GND nmos W=0.0975U L=0.13U
M812_ GND p #fb486# GND nmos W=0.0975U L=0.13U
M813_keeper GND Vdd #485 GND nmos W=0.0975U L=1.495U
M814_ GND __w1 #fb489# GND nmos W=0.0975U L=0.13U
M815_keeper GND Vdd #488 GND nmos W=0.0975U L=1.495U
M816_ GND a #fb492# GND nmos W=0.0975U L=0.13U
M817_keeper GND Vdd #491 GND nmos W=0.0975U L=1.495U
M818_ GND I_aa #fb495# GND nmos W=0.0975U L=0.13U
M819_keeper GND Vdd #494 GND nmos W=0.0975U L=3.055U
M820_ GND __o0t_50_6 #fb498# GND nmos W=0.0975U L=0.13U
M821_keeper GND Vdd #497 GND nmos W=0.0975U L=1.495U
M822_ GND __o0f_50_6 #fb501# GND nmos W=0.0975U L=0.13U
M823_keeper GND Vdd #500 GND nmos W=0.0975U L=0.715U
M824_ GND O1_at_50_6 #fb504# GND nmos W=0.0975U L=0.13U
M825_keeper GND Vdd #503 GND nmos W=0.0975U L=0.715U
M826_ GND O1_af_50_6 #fb507# GND nmos W=0.0975U L=0.13U
M827_keeper GND Vdd #506 GND nmos W=0.0975U L=1.495U
M828_ GND __o0t_51_6 #fb510# GND nmos W=0.0975U L=0.13U
M829_keeper GND Vdd #509 GND nmos W=0.0975U L=1.495U
M830_ GND __o0f_51_6 #fb513# GND nmos W=0.0975U L=0.13U
M831_keeper GND Vdd #512 GND nmos W=0.0975U L=0.715U
M832_ GND O1_at_51_6 #fb516# GND nmos W=0.0975U L=0.13U
M833_keeper GND Vdd #515 GND nmos W=0.0975U L=0.715U
M834_ GND O1_af_51_6 #fb519# GND nmos W=0.0975U L=0.13U
M835_keeper GND Vdd #518 GND nmos W=0.0975U L=1.495U
M836_ GND __o0t_52_6 #fb522# GND nmos W=0.0975U L=0.13U
M837_keeper GND Vdd #521 GND nmos W=0.0975U L=1.495U
M838_ GND __o0f_52_6 #fb525# GND nmos W=0.0975U L=0.13U
M839_keeper GND Vdd #524 GND nmos W=0.0975U L=0.715U
M840_ GND O1_at_52_6 #fb528# GND nmos W=0.0975U L=0.13U
M841_keeper GND Vdd #527 GND nmos W=0.0975U L=0.715U
M842_ GND O1_af_52_6 #fb531# GND nmos W=0.0975U L=0.13U
M843_keeper GND Vdd #530 GND nmos W=0.0975U L=1.495U
M844_ GND __o0t_53_6 #fb534# GND nmos W=0.0975U L=0.13U
M845_keeper GND Vdd #533 GND nmos W=0.0975U L=1.495U
M846_ GND __o0f_53_6 #fb537# GND nmos W=0.0975U L=0.13U
M847_keeper GND Vdd #536 GND nmos W=0.0975U L=0.715U
M848_ GND O1_at_53_6 #fb540# GND nmos W=0.0975U L=0.13U
M849_keeper GND Vdd #539 GND nmos W=0.0975U L=0.715U
M850_ GND O1_af_53_6 #fb543# GND nmos W=0.0975U L=0.13U
M851_keeper GND Vdd #542 GND nmos W=0.0975U L=1.495U
M852_ GND __o0t_54_6 #fb546# GND nmos W=0.0975U L=0.13U
M853_keeper GND Vdd #545 GND nmos W=0.0975U L=1.495U
M854_ GND __o0f_54_6 #fb549# GND nmos W=0.0975U L=0.13U
M855_keeper GND Vdd #548 GND nmos W=0.0975U L=0.715U
M856_ GND O1_at_54_6 #fb552# GND nmos W=0.0975U L=0.13U
M857_keeper GND Vdd #551 GND nmos W=0.0975U L=0.715U
M858_ GND O1_af_54_6 #fb555# GND nmos W=0.0975U L=0.13U
M859_keeper GND Vdd #554 GND nmos W=0.0975U L=1.495U
M860_ GND __o0t_55_6 #fb558# GND nmos W=0.0975U L=0.13U
M861_keeper GND Vdd #557 GND nmos W=0.0975U L=1.495U
M862_ GND __o0f_55_6 #fb561# GND nmos W=0.0975U L=0.13U
M863_keeper GND Vdd #560 GND nmos W=0.0975U L=0.715U
M864_ GND O1_at_55_6 #fb564# GND nmos W=0.0975U L=0.13U
M865_keeper GND Vdd #563 GND nmos W=0.0975U L=0.715U
M866_ GND O1_af_55_6 #fb567# GND nmos W=0.0975U L=0.13U
M867_keeper GND Vdd #566 GND nmos W=0.0975U L=1.495U
M868_ GND __o0t_56_6 #fb570# GND nmos W=0.0975U L=0.13U
M869_keeper GND Vdd #569 GND nmos W=0.0975U L=1.495U
M870_ GND __o0f_56_6 #fb573# GND nmos W=0.0975U L=0.13U
M871_keeper GND Vdd #572 GND nmos W=0.0975U L=0.715U
M872_ GND O1_at_56_6 #fb576# GND nmos W=0.0975U L=0.13U
M873_keeper GND Vdd #575 GND nmos W=0.0975U L=0.715U
M874_ GND O1_af_56_6 #fb579# GND nmos W=0.0975U L=0.13U
M875_keeper GND Vdd #578 GND nmos W=0.0975U L=1.495U
M876_ GND __o0t_57_6 #fb582# GND nmos W=0.0975U L=0.13U
M877_keeper GND Vdd #581 GND nmos W=0.0975U L=1.495U
M878_ GND __o0f_57_6 #fb585# GND nmos W=0.0975U L=0.13U
M879_keeper GND Vdd #584 GND nmos W=0.0975U L=0.715U
M880_ GND O1_at_57_6 #fb588# GND nmos W=0.0975U L=0.13U
M881_keeper GND Vdd #587 GND nmos W=0.0975U L=0.715U
M882_ GND O1_af_57_6 #fb591# GND nmos W=0.0975U L=0.13U
M883_keeper GND Vdd #590 GND nmos W=0.0975U L=1.495U
M884_ GND __o0t_58_6 #fb594# GND nmos W=0.0975U L=0.13U
M885_keeper GND Vdd #593 GND nmos W=0.0975U L=1.495U
M886_ GND __o0f_58_6 #fb597# GND nmos W=0.0975U L=0.13U
M887_keeper GND Vdd #596 GND nmos W=0.0975U L=0.715U
M888_ GND O1_at_58_6 #fb600# GND nmos W=0.0975U L=0.13U
M889_keeper GND Vdd #599 GND nmos W=0.0975U L=0.715U
M890_ GND O1_af_58_6 #fb603# GND nmos W=0.0975U L=0.13U
M891_keeper GND Vdd #602 GND nmos W=0.0975U L=1.495U
M892_ GND __o0t_59_6 #fb606# GND nmos W=0.0975U L=0.13U
M893_keeper GND Vdd #605 GND nmos W=0.0975U L=1.495U
M894_ GND __o0f_59_6 #fb609# GND nmos W=0.0975U L=0.13U
M895_keeper GND Vdd #608 GND nmos W=0.0975U L=0.715U
M896_ GND O1_at_59_6 #fb612# GND nmos W=0.0975U L=0.13U
M897_keeper GND Vdd #611 GND nmos W=0.0975U L=0.715U
M898_ GND O1_af_59_6 #fb615# GND nmos W=0.0975U L=0.13U
M899_keeper GND Vdd #614 GND nmos W=0.0975U L=1.495U
M900_ GND __o0t_510_6 #fb618# GND nmos W=0.0975U L=0.13U
M901_keeper GND Vdd #617 GND nmos W=0.0975U L=1.495U
M902_ GND __o0f_510_6 #fb621# GND nmos W=0.0975U L=0.13U
M903_keeper GND Vdd #620 GND nmos W=0.0975U L=0.715U
M904_ GND O1_at_510_6 #fb624# GND nmos W=0.0975U L=0.13U
M905_keeper GND Vdd #623 GND nmos W=0.0975U L=0.715U
M906_ GND O1_af_510_6 #fb627# GND nmos W=0.0975U L=0.13U
M907_keeper GND Vdd #626 GND nmos W=0.0975U L=1.495U
M908_ GND __o0t_511_6 #fb630# GND nmos W=0.0975U L=0.13U
M909_keeper GND Vdd #629 GND nmos W=0.0975U L=1.495U
M910_ GND __o0f_511_6 #fb633# GND nmos W=0.0975U L=0.13U
M911_keeper GND Vdd #632 GND nmos W=0.0975U L=0.715U
M912_ GND O1_at_511_6 #fb636# GND nmos W=0.0975U L=0.13U
M913_keeper GND Vdd #635 GND nmos W=0.0975U L=0.715U
M914_ GND O1_af_511_6 #fb639# GND nmos W=0.0975U L=0.13U
M915_keeper GND Vdd #638 GND nmos W=0.0975U L=1.495U
M916_ GND __o0t_512_6 #fb642# GND nmos W=0.0975U L=0.13U
M917_keeper GND Vdd #641 GND nmos W=0.0975U L=1.495U
M918_ GND __o0f_512_6 #fb645# GND nmos W=0.0975U L=0.13U
M919_keeper GND Vdd #644 GND nmos W=0.0975U L=0.715U
M920_ GND O1_at_512_6 #fb648# GND nmos W=0.0975U L=0.13U
M921_keeper GND Vdd #647 GND nmos W=0.0975U L=0.715U
M922_ GND O1_af_512_6 #fb651# GND nmos W=0.0975U L=0.13U
M923_keeper GND Vdd #650 GND nmos W=0.0975U L=1.495U
M924_ GND __o0t_513_6 #fb654# GND nmos W=0.0975U L=0.13U
M925_keeper GND Vdd #653 GND nmos W=0.0975U L=1.495U
M926_ GND __o0f_513_6 #fb657# GND nmos W=0.0975U L=0.13U
M927_keeper GND Vdd #656 GND nmos W=0.0975U L=0.715U
M928_ GND O1_at_513_6 #fb660# GND nmos W=0.0975U L=0.13U
M929_keeper GND Vdd #659 GND nmos W=0.0975U L=0.715U
M930_ GND O1_af_513_6 #fb663# GND nmos W=0.0975U L=0.13U
M931_keeper GND Vdd #662 GND nmos W=0.0975U L=1.495U
M932_ GND __o0t_514_6 #fb666# GND nmos W=0.0975U L=0.13U
M933_keeper GND Vdd #665 GND nmos W=0.0975U L=1.495U
M934_ GND __o0f_514_6 #fb669# GND nmos W=0.0975U L=0.13U
M935_keeper GND Vdd #668 GND nmos W=0.0975U L=0.715U
M936_ GND O1_at_514_6 #fb672# GND nmos W=0.0975U L=0.13U
M937_keeper GND Vdd #671 GND nmos W=0.0975U L=0.715U
M938_ GND O1_af_514_6 #fb675# GND nmos W=0.0975U L=0.13U
M939_keeper GND Vdd #674 GND nmos W=0.0975U L=1.495U
M940_ GND __o0t_515_6 #fb678# GND nmos W=0.0975U L=0.13U
M941_keeper GND Vdd #677 GND nmos W=0.0975U L=1.495U
M942_ GND __o0f_515_6 #fb681# GND nmos W=0.0975U L=0.13U
M943_keeper GND Vdd #680 GND nmos W=0.0975U L=0.715U
M944_ GND O1_at_515_6 #fb684# GND nmos W=0.0975U L=0.13U
M945_keeper GND Vdd #683 GND nmos W=0.0975U L=0.715U
M946_ GND O1_af_515_6 #fb687# GND nmos W=0.0975U L=0.13U
M947_keeper GND Vdd #686 GND nmos W=0.0975U L=1.495U
M948_ GND __o0t_516_6 #fb690# GND nmos W=0.0975U L=0.13U
M949_keeper GND Vdd #689 GND nmos W=0.0975U L=1.495U
M950_ GND __o0f_516_6 #fb693# GND nmos W=0.0975U L=0.13U
M951_keeper GND Vdd #692 GND nmos W=0.0975U L=0.715U
M952_ GND O1_at_516_6 #fb696# GND nmos W=0.0975U L=0.13U
M953_keeper GND Vdd #695 GND nmos W=0.0975U L=0.715U
M954_ GND O1_af_516_6 #fb699# GND nmos W=0.0975U L=0.13U
M955_keeper GND Vdd #698 GND nmos W=0.0975U L=1.495U
M956_ GND __o0t_517_6 #fb702# GND nmos W=0.0975U L=0.13U
M957_keeper GND Vdd #701 GND nmos W=0.0975U L=1.495U
M958_ GND __o0f_517_6 #fb705# GND nmos W=0.0975U L=0.13U
M959_keeper GND Vdd #704 GND nmos W=0.0975U L=0.715U
M960_ GND O1_at_517_6 #fb708# GND nmos W=0.0975U L=0.13U
M961_keeper GND Vdd #707 GND nmos W=0.0975U L=0.715U
M962_ GND O1_af_517_6 #fb711# GND nmos W=0.0975U L=0.13U
M963_keeper GND Vdd #710 GND nmos W=0.0975U L=1.495U
M964_ GND __o0t_518_6 #fb714# GND nmos W=0.0975U L=0.13U
M965_keeper GND Vdd #713 GND nmos W=0.0975U L=1.495U
M966_ GND __o0f_518_6 #fb717# GND nmos W=0.0975U L=0.13U
M967_keeper GND Vdd #716 GND nmos W=0.0975U L=0.715U
M968_ GND O1_at_518_6 #fb720# GND nmos W=0.0975U L=0.13U
M969_keeper GND Vdd #719 GND nmos W=0.0975U L=0.715U
M970_ GND O1_af_518_6 #fb723# GND nmos W=0.0975U L=0.13U
M971_keeper GND Vdd #722 GND nmos W=0.0975U L=1.495U
M972_ GND __o0t_519_6 #fb726# GND nmos W=0.0975U L=0.13U
M973_keeper GND Vdd #725 GND nmos W=0.0975U L=1.495U
M974_ GND __o0f_519_6 #fb729# GND nmos W=0.0975U L=0.13U
M975_keeper GND Vdd #728 GND nmos W=0.0975U L=0.715U
M976_ GND O1_at_519_6 #fb732# GND nmos W=0.0975U L=0.13U
M977_keeper GND Vdd #731 GND nmos W=0.0975U L=0.715U
M978_ GND O1_af_519_6 #fb735# GND nmos W=0.0975U L=0.13U
M979_keeper GND Vdd #734 GND nmos W=0.0975U L=1.495U
M980_ GND __o0t_520_6 #fb738# GND nmos W=0.0975U L=0.13U
M981_keeper GND Vdd #737 GND nmos W=0.0975U L=1.495U
M982_ GND __o0f_520_6 #fb741# GND nmos W=0.0975U L=0.13U
M983_keeper GND Vdd #740 GND nmos W=0.0975U L=0.715U
M984_ GND O1_at_520_6 #fb744# GND nmos W=0.0975U L=0.13U
M985_keeper GND Vdd #743 GND nmos W=0.0975U L=0.715U
M986_ GND O1_af_520_6 #fb747# GND nmos W=0.0975U L=0.13U
M987_keeper GND Vdd #746 GND nmos W=0.0975U L=1.495U
M988_ GND __o0t_521_6 #fb750# GND nmos W=0.0975U L=0.13U
M989_keeper GND Vdd #749 GND nmos W=0.0975U L=1.495U
M990_ GND __o0f_521_6 #fb753# GND nmos W=0.0975U L=0.13U
M991_keeper GND Vdd #752 GND nmos W=0.0975U L=0.715U
M992_ GND O1_at_521_6 #fb756# GND nmos W=0.0975U L=0.13U
M993_keeper GND Vdd #755 GND nmos W=0.0975U L=0.715U
M994_ GND O1_af_521_6 #fb759# GND nmos W=0.0975U L=0.13U
M995_keeper GND Vdd #758 GND nmos W=0.0975U L=1.495U
M996_ GND __o0t_522_6 #fb762# GND nmos W=0.0975U L=0.13U
M997_keeper GND Vdd #761 GND nmos W=0.0975U L=1.495U
M998_ GND __o0f_522_6 #fb765# GND nmos W=0.0975U L=0.13U
M999_keeper GND Vdd #764 GND nmos W=0.0975U L=0.715U
M1000_ GND O1_at_522_6 #fb768# GND nmos W=0.0975U L=0.13U
M1001_keeper GND Vdd #767 GND nmos W=0.0975U L=0.715U
M1002_ GND O1_af_522_6 #fb771# GND nmos W=0.0975U L=0.13U
M1003_keeper GND Vdd #770 GND nmos W=0.0975U L=1.495U
M1004_ GND __o0t_523_6 #fb774# GND nmos W=0.0975U L=0.13U
M1005_keeper GND Vdd #773 GND nmos W=0.0975U L=1.495U
M1006_ GND __o0f_523_6 #fb777# GND nmos W=0.0975U L=0.13U
M1007_keeper GND Vdd #776 GND nmos W=0.0975U L=0.715U
M1008_ GND O1_at_523_6 #fb780# GND nmos W=0.0975U L=0.13U
M1009_keeper GND Vdd #779 GND nmos W=0.0975U L=0.715U
M1010_ GND O1_af_523_6 #fb783# GND nmos W=0.0975U L=0.13U
M1011_keeper GND Vdd #782 GND nmos W=0.0975U L=1.495U
M1012_ GND __o0t_524_6 #fb786# GND nmos W=0.0975U L=0.13U
M1013_keeper GND Vdd #785 GND nmos W=0.0975U L=1.495U
M1014_ GND __o0f_524_6 #fb789# GND nmos W=0.0975U L=0.13U
M1015_keeper GND Vdd #788 GND nmos W=0.0975U L=0.715U
M1016_ GND O1_at_524_6 #fb792# GND nmos W=0.0975U L=0.13U
M1017_keeper GND Vdd #791 GND nmos W=0.0975U L=0.715U
M1018_ GND O1_af_524_6 #fb795# GND nmos W=0.0975U L=0.13U
M1019_keeper GND Vdd #794 GND nmos W=0.0975U L=1.495U
M1020_ GND __o0t_525_6 #fb798# GND nmos W=0.0975U L=0.13U
M1021_keeper GND Vdd #797 GND nmos W=0.0975U L=1.495U
M1022_ GND __o0f_525_6 #fb801# GND nmos W=0.0975U L=0.13U
M1023_keeper GND Vdd #800 GND nmos W=0.0975U L=0.715U
M1024_ GND O1_at_525_6 #fb804# GND nmos W=0.0975U L=0.13U
M1025_keeper GND Vdd #803 GND nmos W=0.0975U L=0.715U
M1026_ GND O1_af_525_6 #fb807# GND nmos W=0.0975U L=0.13U
M1027_keeper GND Vdd #806 GND nmos W=0.0975U L=1.495U
M1028_ GND __o0t_526_6 #fb810# GND nmos W=0.0975U L=0.13U
M1029_keeper GND Vdd #809 GND nmos W=0.0975U L=1.495U
M1030_ GND __o0f_526_6 #fb813# GND nmos W=0.0975U L=0.13U
M1031_keeper GND Vdd #812 GND nmos W=0.0975U L=0.715U
M1032_ GND O1_at_526_6 #fb816# GND nmos W=0.0975U L=0.13U
M1033_keeper GND Vdd #815 GND nmos W=0.0975U L=0.715U
M1034_ GND O1_af_526_6 #fb819# GND nmos W=0.0975U L=0.13U
M1035_keeper GND Vdd #818 GND nmos W=0.0975U L=1.495U
M1036_ GND __o0t_527_6 #fb822# GND nmos W=0.0975U L=0.13U
M1037_keeper GND Vdd #821 GND nmos W=0.0975U L=1.495U
M1038_ GND __o0f_527_6 #fb825# GND nmos W=0.0975U L=0.13U
M1039_keeper GND Vdd #824 GND nmos W=0.0975U L=0.715U
M1040_ GND O1_at_527_6 #fb828# GND nmos W=0.0975U L=0.13U
M1041_keeper GND Vdd #827 GND nmos W=0.0975U L=0.715U
M1042_ GND O1_af_527_6 #fb831# GND nmos W=0.0975U L=0.13U
M1043_keeper GND Vdd #830 GND nmos W=0.0975U L=1.495U
M1044_ GND __o0t_528_6 #fb834# GND nmos W=0.0975U L=0.13U
M1045_keeper GND Vdd #833 GND nmos W=0.0975U L=1.495U
M1046_ GND __o0f_528_6 #fb837# GND nmos W=0.0975U L=0.13U
M1047_keeper GND Vdd #836 GND nmos W=0.0975U L=0.715U
M1048_ GND O1_at_528_6 #fb840# GND nmos W=0.0975U L=0.13U
M1049_keeper GND Vdd #839 GND nmos W=0.0975U L=0.715U
M1050_ GND O1_af_528_6 #fb843# GND nmos W=0.0975U L=0.13U
M1051_keeper GND Vdd #842 GND nmos W=0.0975U L=1.495U
M1052_ GND __o0t_529_6 #fb846# GND nmos W=0.0975U L=0.13U
M1053_keeper GND Vdd #845 GND nmos W=0.0975U L=1.495U
M1054_ GND __o0f_529_6 #fb849# GND nmos W=0.0975U L=0.13U
M1055_keeper GND Vdd #848 GND nmos W=0.0975U L=0.715U
M1056_ GND O1_at_529_6 #fb852# GND nmos W=0.0975U L=0.13U
M1057_keeper GND Vdd #851 GND nmos W=0.0975U L=0.715U
M1058_ GND O1_af_529_6 #fb855# GND nmos W=0.0975U L=0.13U
M1059_keeper GND Vdd #854 GND nmos W=0.0975U L=1.495U
M1060_ GND __o0t_530_6 #fb858# GND nmos W=0.0975U L=0.13U
M1061_keeper GND Vdd #857 GND nmos W=0.0975U L=1.495U
M1062_ GND __o0f_530_6 #fb861# GND nmos W=0.0975U L=0.13U
M1063_keeper GND Vdd #860 GND nmos W=0.0975U L=0.715U
M1064_ GND O1_at_530_6 #fb864# GND nmos W=0.0975U L=0.13U
M1065_keeper GND Vdd #863 GND nmos W=0.0975U L=0.715U
M1066_ GND O1_af_530_6 #fb867# GND nmos W=0.0975U L=0.13U
M1067_keeper GND Vdd #866 GND nmos W=0.0975U L=1.495U
M1068_ GND __o0t_531_6 #fb870# GND nmos W=0.0975U L=0.13U
M1069_keeper GND Vdd #869 GND nmos W=0.0975U L=1.495U
M1070_ GND __o0f_531_6 #fb873# GND nmos W=0.0975U L=0.13U
M1071_keeper GND Vdd #872 GND nmos W=0.0975U L=0.715U
M1072_ GND O1_at_531_6 #fb876# GND nmos W=0.0975U L=0.13U
M1073_keeper GND Vdd #875 GND nmos W=0.0975U L=0.715U
M1074_ GND O1_af_531_6 #fb879# GND nmos W=0.0975U L=0.13U
M1075_keeper GND Vdd #878 GND nmos W=0.0975U L=1.495U
M1076_keeper GND Vdd #881 GND nmos W=0.0975U L=1.495U
M1077_ #3 __p __w0 GND nmos W=0.0975U L=0.065U
M1078_ #6 p __w0 GND nmos W=0.0975U L=0.065U
M1079_ #12 __a __w0 Vdd pmos W=0.1625U L=0.065U
M1080_keeper #484 #fb483# __w0 Vdd pmos W=0.0975U L=0.065U
M1081_keeper #485 #fb483# __w0 GND nmos W=0.0975U L=0.065U
M1082_ #35 __a p Vdd pmos W=0.65U L=0.065U
M1083_ #36 a p GND nmos W=0.39U L=0.065U
M1084_keeper #487 #fb486# p Vdd pmos W=0.0975U L=0.065U
M1085_keeper #488 #fb486# p GND nmos W=0.0975U L=0.065U
M1086_ #16 __p __w1 GND nmos W=0.0975U L=0.065U
M1087_ #18 p __w1 GND nmos W=0.0975U L=0.065U
M1088_ #26 __a __w1 Vdd pmos W=0.1625U L=0.065U
M1089_keeper #490 #fb489# __w1 Vdd pmos W=0.0975U L=0.065U
M1090_keeper #491 #fb489# __w1 GND nmos W=0.0975U L=0.065U
M1091_ #19 I_af_54_6 #18 GND nmos W=0.0975U L=0.065U
M1092_ #20 I_af_55_6 #19 GND nmos W=0.0975U L=0.065U
M1093_ #21 I_af_56_6 #20 GND nmos W=0.0975U L=0.065U
M1094_ #28 __w0 a Vdd pmos W=0.325U L=0.065U
M1095_ #28 __w1 a Vdd pmos W=0.325U L=0.065U
M1096_ #34 __w1 a GND nmos W=0.195U L=0.065U
M1097_keeper #493 #fb492# a Vdd pmos W=0.0975U L=0.065U
M1098_keeper #494 #fb492# a GND nmos W=0.0975U L=0.065U
M1099_ #29 O1_aa #28 Vdd pmos W=0.325U L=0.065U
M1100_ #30 O0_aa #29 Vdd pmos W=0.325U L=0.065U
M1101_ #39 __o0a I_aa Vdd pmos W=0.1625U L=0.065U
M1102_ #39 __o1a I_aa Vdd pmos W=0.1625U L=0.065U
M1103_ #42 __a I_aa GND nmos W=0.0975U L=0.065U
M1104_keeper #496 #fb495# I_aa Vdd pmos W=0.0975U L=0.065U
M1105_keeper #497 #fb495# I_aa GND nmos W=0.0975U L=0.065U
M1106_ #43 __w1 #42 GND nmos W=0.0975U L=0.065U
M1107_ #45 I_at_50_6 __o0t_50_6 GND nmos W=0.0975U L=0.065U
M1108_keeper #499 #fb498# __o0t_50_6 Vdd pmos W=0.0975U L=0.065U
M1109_keeper #500 #fb498# __o0t_50_6 GND nmos W=0.0975U L=0.065U
M1110_ #47 I_af_50_6 __o0f_50_6 GND nmos W=0.0975U L=0.065U
M1111_keeper #502 #fb501# __o0f_50_6 Vdd pmos W=0.0975U L=0.065U
M1112_keeper #503 #fb501# __o0f_50_6 GND nmos W=0.0975U L=0.065U
M1113_ #49 __i__t_50_6 O1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1114_keeper #505 #fb504# O1_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1115_keeper #506 #fb504# O1_at_50_6 GND nmos W=0.0975U L=0.065U
M1116_ #52 __i__f_50_6 O1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1117_keeper #508 #fb507# O1_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1118_keeper #509 #fb507# O1_af_50_6 GND nmos W=0.0975U L=0.065U
M1119_ #55 I_at_51_6 __o0t_51_6 GND nmos W=0.0975U L=0.065U
M1120_keeper #511 #fb510# __o0t_51_6 Vdd pmos W=0.0975U L=0.065U
M1121_keeper #512 #fb510# __o0t_51_6 GND nmos W=0.0975U L=0.065U
M1122_ #58 I_af_51_6 __o0f_51_6 GND nmos W=0.0975U L=0.065U
M1123_keeper #514 #fb513# __o0f_51_6 Vdd pmos W=0.0975U L=0.065U
M1124_keeper #515 #fb513# __o0f_51_6 GND nmos W=0.0975U L=0.065U
M1125_ #61 __i__t_51_6 O1_at_51_6 Vdd pmos W=0.1625U L=0.065U
M1126_keeper #517 #fb516# O1_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1127_keeper #518 #fb516# O1_at_51_6 GND nmos W=0.0975U L=0.065U
M1128_ #64 __i__f_51_6 O1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1129_keeper #520 #fb519# O1_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1130_keeper #521 #fb519# O1_af_51_6 GND nmos W=0.0975U L=0.065U
M1131_ #67 I_at_52_6 __o0t_52_6 GND nmos W=0.0975U L=0.065U
M1132_keeper #523 #fb522# __o0t_52_6 Vdd pmos W=0.0975U L=0.065U
M1133_keeper #524 #fb522# __o0t_52_6 GND nmos W=0.0975U L=0.065U
M1134_ #70 I_af_52_6 __o0f_52_6 GND nmos W=0.0975U L=0.065U
M1135_keeper #526 #fb525# __o0f_52_6 Vdd pmos W=0.0975U L=0.065U
M1136_keeper #527 #fb525# __o0f_52_6 GND nmos W=0.0975U L=0.065U
M1137_ #73 __i__t_52_6 O1_at_52_6 Vdd pmos W=0.1625U L=0.065U
M1138_keeper #529 #fb528# O1_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1139_keeper #530 #fb528# O1_at_52_6 GND nmos W=0.0975U L=0.065U
M1140_ #76 __i__f_52_6 O1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1141_keeper #532 #fb531# O1_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1142_keeper #533 #fb531# O1_af_52_6 GND nmos W=0.0975U L=0.065U
M1143_ #79 I_at_53_6 __o0t_53_6 GND nmos W=0.0975U L=0.065U
M1144_keeper #535 #fb534# __o0t_53_6 Vdd pmos W=0.0975U L=0.065U
M1145_keeper #536 #fb534# __o0t_53_6 GND nmos W=0.0975U L=0.065U
M1146_ #82 I_af_53_6 __o0f_53_6 GND nmos W=0.0975U L=0.065U
M1147_keeper #538 #fb537# __o0f_53_6 Vdd pmos W=0.0975U L=0.065U
M1148_keeper #539 #fb537# __o0f_53_6 GND nmos W=0.0975U L=0.065U
M1149_ #85 __i__t_53_6 O1_at_53_6 Vdd pmos W=0.1625U L=0.065U
M1150_keeper #541 #fb540# O1_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1151_keeper #542 #fb540# O1_at_53_6 GND nmos W=0.0975U L=0.065U
M1152_ #88 __i__f_53_6 O1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1153_keeper #544 #fb543# O1_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1154_keeper #545 #fb543# O1_af_53_6 GND nmos W=0.0975U L=0.065U
M1155_ #91 I_at_54_6 __o0t_54_6 GND nmos W=0.0975U L=0.065U
M1156_keeper #547 #fb546# __o0t_54_6 Vdd pmos W=0.0975U L=0.065U
M1157_keeper #548 #fb546# __o0t_54_6 GND nmos W=0.0975U L=0.065U
M1158_ #93 I_af_54_6 __o0f_54_6 GND nmos W=0.0975U L=0.065U
M1159_keeper #550 #fb549# __o0f_54_6 Vdd pmos W=0.0975U L=0.065U
M1160_keeper #551 #fb549# __o0f_54_6 GND nmos W=0.0975U L=0.065U
M1161_ #95 __i__t_54_6 O1_at_54_6 Vdd pmos W=0.1625U L=0.065U
M1162_keeper #553 #fb552# O1_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1163_keeper #554 #fb552# O1_at_54_6 GND nmos W=0.0975U L=0.065U
M1164_ #98 __i__f_54_6 O1_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1165_keeper #556 #fb555# O1_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1166_keeper #557 #fb555# O1_af_54_6 GND nmos W=0.0975U L=0.065U
M1167_ #101 I_at_55_6 __o0t_55_6 GND nmos W=0.0975U L=0.065U
M1168_keeper #559 #fb558# __o0t_55_6 Vdd pmos W=0.0975U L=0.065U
M1169_keeper #560 #fb558# __o0t_55_6 GND nmos W=0.0975U L=0.065U
M1170_ #103 I_af_55_6 __o0f_55_6 GND nmos W=0.0975U L=0.065U
M1171_keeper #562 #fb561# __o0f_55_6 Vdd pmos W=0.0975U L=0.065U
M1172_keeper #563 #fb561# __o0f_55_6 GND nmos W=0.0975U L=0.065U
M1173_ #105 __i__t_55_6 O1_at_55_6 Vdd pmos W=0.1625U L=0.065U
M1174_keeper #565 #fb564# O1_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1175_keeper #566 #fb564# O1_at_55_6 GND nmos W=0.0975U L=0.065U
M1176_ #108 __i__f_55_6 O1_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1177_keeper #568 #fb567# O1_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1178_keeper #569 #fb567# O1_af_55_6 GND nmos W=0.0975U L=0.065U
M1179_ #111 I_at_56_6 __o0t_56_6 GND nmos W=0.0975U L=0.065U
M1180_keeper #571 #fb570# __o0t_56_6 Vdd pmos W=0.0975U L=0.065U
M1181_keeper #572 #fb570# __o0t_56_6 GND nmos W=0.0975U L=0.065U
M1182_ #113 I_af_56_6 __o0f_56_6 GND nmos W=0.0975U L=0.065U
M1183_keeper #574 #fb573# __o0f_56_6 Vdd pmos W=0.0975U L=0.065U
M1184_keeper #575 #fb573# __o0f_56_6 GND nmos W=0.0975U L=0.065U
M1185_ #115 __i__t_56_6 O1_at_56_6 Vdd pmos W=0.1625U L=0.065U
M1186_keeper #577 #fb576# O1_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1187_keeper #578 #fb576# O1_at_56_6 GND nmos W=0.0975U L=0.065U
M1188_ #118 __i__f_56_6 O1_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1189_keeper #580 #fb579# O1_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1190_keeper #581 #fb579# O1_af_56_6 GND nmos W=0.0975U L=0.065U
M1191_ #121 I_at_57_6 __o0t_57_6 GND nmos W=0.0975U L=0.065U
M1192_keeper #583 #fb582# __o0t_57_6 Vdd pmos W=0.0975U L=0.065U
M1193_keeper #584 #fb582# __o0t_57_6 GND nmos W=0.0975U L=0.065U
M1194_ #123 I_af_57_6 __o0f_57_6 GND nmos W=0.0975U L=0.065U
M1195_keeper #586 #fb585# __o0f_57_6 Vdd pmos W=0.0975U L=0.065U
M1196_keeper #587 #fb585# __o0f_57_6 GND nmos W=0.0975U L=0.065U
M1197_ #125 __i__t_57_6 O1_at_57_6 Vdd pmos W=0.1625U L=0.065U
M1198_keeper #589 #fb588# O1_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1199_keeper #590 #fb588# O1_at_57_6 GND nmos W=0.0975U L=0.065U
M1200_ #128 __i__f_57_6 O1_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1201_keeper #592 #fb591# O1_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1202_keeper #593 #fb591# O1_af_57_6 GND nmos W=0.0975U L=0.065U
M1203_ #131 I_at_58_6 __o0t_58_6 GND nmos W=0.0975U L=0.065U
M1204_keeper #595 #fb594# __o0t_58_6 Vdd pmos W=0.0975U L=0.065U
M1205_keeper #596 #fb594# __o0t_58_6 GND nmos W=0.0975U L=0.065U
M1206_ #134 I_af_58_6 __o0f_58_6 GND nmos W=0.0975U L=0.065U
M1207_keeper #598 #fb597# __o0f_58_6 Vdd pmos W=0.0975U L=0.065U
M1208_keeper #599 #fb597# __o0f_58_6 GND nmos W=0.0975U L=0.065U
M1209_ #137 __i__t_58_6 O1_at_58_6 Vdd pmos W=0.1625U L=0.065U
M1210_keeper #601 #fb600# O1_at_58_6 Vdd pmos W=0.0975U L=0.065U
M1211_keeper #602 #fb600# O1_at_58_6 GND nmos W=0.0975U L=0.065U
M1212_ #140 __i__f_58_6 O1_af_58_6 Vdd pmos W=0.1625U L=0.065U
M1213_keeper #604 #fb603# O1_af_58_6 Vdd pmos W=0.0975U L=0.065U
M1214_keeper #605 #fb603# O1_af_58_6 GND nmos W=0.0975U L=0.065U
M1215_ #143 I_at_59_6 __o0t_59_6 GND nmos W=0.0975U L=0.065U
M1216_keeper #607 #fb606# __o0t_59_6 Vdd pmos W=0.0975U L=0.065U
M1217_keeper #608 #fb606# __o0t_59_6 GND nmos W=0.0975U L=0.065U
M1218_ #146 I_af_59_6 __o0f_59_6 GND nmos W=0.0975U L=0.065U
M1219_keeper #610 #fb609# __o0f_59_6 Vdd pmos W=0.0975U L=0.065U
M1220_keeper #611 #fb609# __o0f_59_6 GND nmos W=0.0975U L=0.065U
M1221_ #149 __i__t_59_6 O1_at_59_6 Vdd pmos W=0.1625U L=0.065U
M1222_keeper #613 #fb612# O1_at_59_6 Vdd pmos W=0.0975U L=0.065U
M1223_keeper #614 #fb612# O1_at_59_6 GND nmos W=0.0975U L=0.065U
M1224_ #152 __i__f_59_6 O1_af_59_6 Vdd pmos W=0.1625U L=0.065U
M1225_keeper #616 #fb615# O1_af_59_6 Vdd pmos W=0.0975U L=0.065U
M1226_keeper #617 #fb615# O1_af_59_6 GND nmos W=0.0975U L=0.065U
M1227_ #155 I_at_510_6 __o0t_510_6 GND nmos W=0.0975U L=0.065U
M1228_keeper #619 #fb618# __o0t_510_6 Vdd pmos W=0.0975U L=0.065U
M1229_keeper #620 #fb618# __o0t_510_6 GND nmos W=0.0975U L=0.065U
M1230_ #158 I_af_510_6 __o0f_510_6 GND nmos W=0.0975U L=0.065U
M1231_keeper #622 #fb621# __o0f_510_6 Vdd pmos W=0.0975U L=0.065U
M1232_keeper #623 #fb621# __o0f_510_6 GND nmos W=0.0975U L=0.065U
M1233_ #161 __i__t_510_6 O1_at_510_6 Vdd pmos W=0.1625U L=0.065U
M1234_keeper #625 #fb624# O1_at_510_6 Vdd pmos W=0.0975U L=0.065U
M1235_keeper #626 #fb624# O1_at_510_6 GND nmos W=0.0975U L=0.065U
M1236_ #164 __i__f_510_6 O1_af_510_6 Vdd pmos W=0.1625U L=0.065U
M1237_keeper #628 #fb627# O1_af_510_6 Vdd pmos W=0.0975U L=0.065U
M1238_keeper #629 #fb627# O1_af_510_6 GND nmos W=0.0975U L=0.065U
M1239_ #167 I_at_511_6 __o0t_511_6 GND nmos W=0.0975U L=0.065U
M1240_keeper #631 #fb630# __o0t_511_6 Vdd pmos W=0.0975U L=0.065U
M1241_keeper #632 #fb630# __o0t_511_6 GND nmos W=0.0975U L=0.065U
M1242_ #170 I_af_511_6 __o0f_511_6 GND nmos W=0.0975U L=0.065U
M1243_keeper #634 #fb633# __o0f_511_6 Vdd pmos W=0.0975U L=0.065U
M1244_keeper #635 #fb633# __o0f_511_6 GND nmos W=0.0975U L=0.065U
M1245_ #173 __i__t_511_6 O1_at_511_6 Vdd pmos W=0.1625U L=0.065U
M1246_keeper #637 #fb636# O1_at_511_6 Vdd pmos W=0.0975U L=0.065U
M1247_keeper #638 #fb636# O1_at_511_6 GND nmos W=0.0975U L=0.065U
M1248_ #176 __i__f_511_6 O1_af_511_6 Vdd pmos W=0.1625U L=0.065U
M1249_keeper #640 #fb639# O1_af_511_6 Vdd pmos W=0.0975U L=0.065U
M1250_keeper #641 #fb639# O1_af_511_6 GND nmos W=0.0975U L=0.065U
M1251_ #179 I_at_512_6 __o0t_512_6 GND nmos W=0.0975U L=0.065U
M1252_keeper #643 #fb642# __o0t_512_6 Vdd pmos W=0.0975U L=0.065U
M1253_keeper #644 #fb642# __o0t_512_6 GND nmos W=0.0975U L=0.065U
M1254_ #182 I_af_512_6 __o0f_512_6 GND nmos W=0.0975U L=0.065U
M1255_keeper #646 #fb645# __o0f_512_6 Vdd pmos W=0.0975U L=0.065U
M1256_keeper #647 #fb645# __o0f_512_6 GND nmos W=0.0975U L=0.065U
M1257_ #185 __i__t_512_6 O1_at_512_6 Vdd pmos W=0.1625U L=0.065U
M1258_keeper #649 #fb648# O1_at_512_6 Vdd pmos W=0.0975U L=0.065U
M1259_keeper #650 #fb648# O1_at_512_6 GND nmos W=0.0975U L=0.065U
M1260_ #188 __i__f_512_6 O1_af_512_6 Vdd pmos W=0.1625U L=0.065U
M1261_keeper #652 #fb651# O1_af_512_6 Vdd pmos W=0.0975U L=0.065U
M1262_keeper #653 #fb651# O1_af_512_6 GND nmos W=0.0975U L=0.065U
M1263_ #191 I_at_513_6 __o0t_513_6 GND nmos W=0.0975U L=0.065U
M1264_keeper #655 #fb654# __o0t_513_6 Vdd pmos W=0.0975U L=0.065U
M1265_keeper #656 #fb654# __o0t_513_6 GND nmos W=0.0975U L=0.065U
M1266_ #194 I_af_513_6 __o0f_513_6 GND nmos W=0.0975U L=0.065U
M1267_keeper #658 #fb657# __o0f_513_6 Vdd pmos W=0.0975U L=0.065U
M1268_keeper #659 #fb657# __o0f_513_6 GND nmos W=0.0975U L=0.065U
M1269_ #197 __i__t_513_6 O1_at_513_6 Vdd pmos W=0.1625U L=0.065U
M1270_keeper #661 #fb660# O1_at_513_6 Vdd pmos W=0.0975U L=0.065U
M1271_keeper #662 #fb660# O1_at_513_6 GND nmos W=0.0975U L=0.065U
M1272_ #200 __i__f_513_6 O1_af_513_6 Vdd pmos W=0.1625U L=0.065U
M1273_keeper #664 #fb663# O1_af_513_6 Vdd pmos W=0.0975U L=0.065U
M1274_keeper #665 #fb663# O1_af_513_6 GND nmos W=0.0975U L=0.065U
M1275_ #203 I_at_514_6 __o0t_514_6 GND nmos W=0.0975U L=0.065U
M1276_keeper #667 #fb666# __o0t_514_6 Vdd pmos W=0.0975U L=0.065U
M1277_keeper #668 #fb666# __o0t_514_6 GND nmos W=0.0975U L=0.065U
M1278_ #206 I_af_514_6 __o0f_514_6 GND nmos W=0.0975U L=0.065U
M1279_keeper #670 #fb669# __o0f_514_6 Vdd pmos W=0.0975U L=0.065U
M1280_keeper #671 #fb669# __o0f_514_6 GND nmos W=0.0975U L=0.065U
M1281_ #209 __i__t_514_6 O1_at_514_6 Vdd pmos W=0.1625U L=0.065U
M1282_keeper #673 #fb672# O1_at_514_6 Vdd pmos W=0.0975U L=0.065U
M1283_keeper #674 #fb672# O1_at_514_6 GND nmos W=0.0975U L=0.065U
M1284_ #212 __i__f_514_6 O1_af_514_6 Vdd pmos W=0.1625U L=0.065U
M1285_keeper #676 #fb675# O1_af_514_6 Vdd pmos W=0.0975U L=0.065U
M1286_keeper #677 #fb675# O1_af_514_6 GND nmos W=0.0975U L=0.065U
M1287_ #215 I_at_515_6 __o0t_515_6 GND nmos W=0.0975U L=0.065U
M1288_keeper #679 #fb678# __o0t_515_6 Vdd pmos W=0.0975U L=0.065U
M1289_keeper #680 #fb678# __o0t_515_6 GND nmos W=0.0975U L=0.065U
M1290_ #218 I_af_515_6 __o0f_515_6 GND nmos W=0.0975U L=0.065U
M1291_keeper #682 #fb681# __o0f_515_6 Vdd pmos W=0.0975U L=0.065U
M1292_keeper #683 #fb681# __o0f_515_6 GND nmos W=0.0975U L=0.065U
M1293_ #221 __i__t_515_6 O1_at_515_6 Vdd pmos W=0.1625U L=0.065U
M1294_keeper #685 #fb684# O1_at_515_6 Vdd pmos W=0.0975U L=0.065U
M1295_keeper #686 #fb684# O1_at_515_6 GND nmos W=0.0975U L=0.065U
M1296_ #224 __i__f_515_6 O1_af_515_6 Vdd pmos W=0.1625U L=0.065U
M1297_keeper #688 #fb687# O1_af_515_6 Vdd pmos W=0.0975U L=0.065U
M1298_keeper #689 #fb687# O1_af_515_6 GND nmos W=0.0975U L=0.065U
M1299_ #227 I_at_516_6 __o0t_516_6 GND nmos W=0.0975U L=0.065U
M1300_keeper #691 #fb690# __o0t_516_6 Vdd pmos W=0.0975U L=0.065U
M1301_keeper #692 #fb690# __o0t_516_6 GND nmos W=0.0975U L=0.065U
M1302_ #230 I_af_516_6 __o0f_516_6 GND nmos W=0.0975U L=0.065U
M1303_keeper #694 #fb693# __o0f_516_6 Vdd pmos W=0.0975U L=0.065U
M1304_keeper #695 #fb693# __o0f_516_6 GND nmos W=0.0975U L=0.065U
M1305_ #233 __i__t_516_6 O1_at_516_6 Vdd pmos W=0.1625U L=0.065U
M1306_keeper #697 #fb696# O1_at_516_6 Vdd pmos W=0.0975U L=0.065U
M1307_keeper #698 #fb696# O1_at_516_6 GND nmos W=0.0975U L=0.065U
M1308_ #236 __i__f_516_6 O1_af_516_6 Vdd pmos W=0.1625U L=0.065U
M1309_keeper #700 #fb699# O1_af_516_6 Vdd pmos W=0.0975U L=0.065U
M1310_keeper #701 #fb699# O1_af_516_6 GND nmos W=0.0975U L=0.065U
M1311_ #239 I_at_517_6 __o0t_517_6 GND nmos W=0.0975U L=0.065U
M1312_keeper #703 #fb702# __o0t_517_6 Vdd pmos W=0.0975U L=0.065U
M1313_keeper #704 #fb702# __o0t_517_6 GND nmos W=0.0975U L=0.065U
M1314_ #242 I_af_517_6 __o0f_517_6 GND nmos W=0.0975U L=0.065U
M1315_keeper #706 #fb705# __o0f_517_6 Vdd pmos W=0.0975U L=0.065U
M1316_keeper #707 #fb705# __o0f_517_6 GND nmos W=0.0975U L=0.065U
M1317_ #245 __i__t_517_6 O1_at_517_6 Vdd pmos W=0.1625U L=0.065U
M1318_keeper #709 #fb708# O1_at_517_6 Vdd pmos W=0.0975U L=0.065U
M1319_keeper #710 #fb708# O1_at_517_6 GND nmos W=0.0975U L=0.065U
M1320_ #248 __i__f_517_6 O1_af_517_6 Vdd pmos W=0.1625U L=0.065U
M1321_keeper #712 #fb711# O1_af_517_6 Vdd pmos W=0.0975U L=0.065U
M1322_keeper #713 #fb711# O1_af_517_6 GND nmos W=0.0975U L=0.065U
M1323_ #251 I_at_518_6 __o0t_518_6 GND nmos W=0.0975U L=0.065U
M1324_keeper #715 #fb714# __o0t_518_6 Vdd pmos W=0.0975U L=0.065U
M1325_keeper #716 #fb714# __o0t_518_6 GND nmos W=0.0975U L=0.065U
M1326_ #254 I_af_518_6 __o0f_518_6 GND nmos W=0.0975U L=0.065U
M1327_keeper #718 #fb717# __o0f_518_6 Vdd pmos W=0.0975U L=0.065U
M1328_keeper #719 #fb717# __o0f_518_6 GND nmos W=0.0975U L=0.065U
M1329_ #257 __i__t_518_6 O1_at_518_6 Vdd pmos W=0.1625U L=0.065U
M1330_keeper #721 #fb720# O1_at_518_6 Vdd pmos W=0.0975U L=0.065U
M1331_keeper #722 #fb720# O1_at_518_6 GND nmos W=0.0975U L=0.065U
M1332_ #260 __i__f_518_6 O1_af_518_6 Vdd pmos W=0.1625U L=0.065U
M1333_keeper #724 #fb723# O1_af_518_6 Vdd pmos W=0.0975U L=0.065U
M1334_keeper #725 #fb723# O1_af_518_6 GND nmos W=0.0975U L=0.065U
M1335_ #263 I_at_519_6 __o0t_519_6 GND nmos W=0.0975U L=0.065U
M1336_keeper #727 #fb726# __o0t_519_6 Vdd pmos W=0.0975U L=0.065U
M1337_keeper #728 #fb726# __o0t_519_6 GND nmos W=0.0975U L=0.065U
M1338_ #266 I_af_519_6 __o0f_519_6 GND nmos W=0.0975U L=0.065U
M1339_keeper #730 #fb729# __o0f_519_6 Vdd pmos W=0.0975U L=0.065U
M1340_keeper #731 #fb729# __o0f_519_6 GND nmos W=0.0975U L=0.065U
M1341_ #269 __i__t_519_6 O1_at_519_6 Vdd pmos W=0.1625U L=0.065U
M1342_keeper #733 #fb732# O1_at_519_6 Vdd pmos W=0.0975U L=0.065U
M1343_keeper #734 #fb732# O1_at_519_6 GND nmos W=0.0975U L=0.065U
M1344_ #272 __i__f_519_6 O1_af_519_6 Vdd pmos W=0.1625U L=0.065U
M1345_keeper #736 #fb735# O1_af_519_6 Vdd pmos W=0.0975U L=0.065U
M1346_keeper #737 #fb735# O1_af_519_6 GND nmos W=0.0975U L=0.065U
M1347_ #275 I_at_520_6 __o0t_520_6 GND nmos W=0.0975U L=0.065U
M1348_keeper #739 #fb738# __o0t_520_6 Vdd pmos W=0.0975U L=0.065U
M1349_keeper #740 #fb738# __o0t_520_6 GND nmos W=0.0975U L=0.065U
M1350_ #278 I_af_520_6 __o0f_520_6 GND nmos W=0.0975U L=0.065U
M1351_keeper #742 #fb741# __o0f_520_6 Vdd pmos W=0.0975U L=0.065U
M1352_keeper #743 #fb741# __o0f_520_6 GND nmos W=0.0975U L=0.065U
M1353_ #281 __i__t_520_6 O1_at_520_6 Vdd pmos W=0.1625U L=0.065U
M1354_keeper #745 #fb744# O1_at_520_6 Vdd pmos W=0.0975U L=0.065U
M1355_keeper #746 #fb744# O1_at_520_6 GND nmos W=0.0975U L=0.065U
M1356_ #284 __i__f_520_6 O1_af_520_6 Vdd pmos W=0.1625U L=0.065U
M1357_keeper #748 #fb747# O1_af_520_6 Vdd pmos W=0.0975U L=0.065U
M1358_keeper #749 #fb747# O1_af_520_6 GND nmos W=0.0975U L=0.065U
M1359_ #287 I_at_521_6 __o0t_521_6 GND nmos W=0.0975U L=0.065U
M1360_keeper #751 #fb750# __o0t_521_6 Vdd pmos W=0.0975U L=0.065U
M1361_keeper #752 #fb750# __o0t_521_6 GND nmos W=0.0975U L=0.065U
M1362_ #290 I_af_521_6 __o0f_521_6 GND nmos W=0.0975U L=0.065U
M1363_keeper #754 #fb753# __o0f_521_6 Vdd pmos W=0.0975U L=0.065U
M1364_keeper #755 #fb753# __o0f_521_6 GND nmos W=0.0975U L=0.065U
M1365_ #293 __i__t_521_6 O1_at_521_6 Vdd pmos W=0.1625U L=0.065U
M1366_keeper #757 #fb756# O1_at_521_6 Vdd pmos W=0.0975U L=0.065U
M1367_keeper #758 #fb756# O1_at_521_6 GND nmos W=0.0975U L=0.065U
M1368_ #296 __i__f_521_6 O1_af_521_6 Vdd pmos W=0.1625U L=0.065U
M1369_keeper #760 #fb759# O1_af_521_6 Vdd pmos W=0.0975U L=0.065U
M1370_keeper #761 #fb759# O1_af_521_6 GND nmos W=0.0975U L=0.065U
M1371_ #299 I_at_522_6 __o0t_522_6 GND nmos W=0.0975U L=0.065U
M1372_keeper #763 #fb762# __o0t_522_6 Vdd pmos W=0.0975U L=0.065U
M1373_keeper #764 #fb762# __o0t_522_6 GND nmos W=0.0975U L=0.065U
M1374_ #302 I_af_522_6 __o0f_522_6 GND nmos W=0.0975U L=0.065U
M1375_keeper #766 #fb765# __o0f_522_6 Vdd pmos W=0.0975U L=0.065U
M1376_keeper #767 #fb765# __o0f_522_6 GND nmos W=0.0975U L=0.065U
M1377_ #305 __i__t_522_6 O1_at_522_6 Vdd pmos W=0.1625U L=0.065U
M1378_keeper #769 #fb768# O1_at_522_6 Vdd pmos W=0.0975U L=0.065U
M1379_keeper #770 #fb768# O1_at_522_6 GND nmos W=0.0975U L=0.065U
M1380_ #308 __i__f_522_6 O1_af_522_6 Vdd pmos W=0.1625U L=0.065U
M1381_keeper #772 #fb771# O1_af_522_6 Vdd pmos W=0.0975U L=0.065U
M1382_keeper #773 #fb771# O1_af_522_6 GND nmos W=0.0975U L=0.065U
M1383_ #311 I_at_523_6 __o0t_523_6 GND nmos W=0.0975U L=0.065U
M1384_keeper #775 #fb774# __o0t_523_6 Vdd pmos W=0.0975U L=0.065U
M1385_keeper #776 #fb774# __o0t_523_6 GND nmos W=0.0975U L=0.065U
M1386_ #314 I_af_523_6 __o0f_523_6 GND nmos W=0.0975U L=0.065U
M1387_keeper #778 #fb777# __o0f_523_6 Vdd pmos W=0.0975U L=0.065U
M1388_keeper #779 #fb777# __o0f_523_6 GND nmos W=0.0975U L=0.065U
M1389_ #317 __i__t_523_6 O1_at_523_6 Vdd pmos W=0.1625U L=0.065U
M1390_keeper #781 #fb780# O1_at_523_6 Vdd pmos W=0.0975U L=0.065U
M1391_keeper #782 #fb780# O1_at_523_6 GND nmos W=0.0975U L=0.065U
M1392_ #320 __i__f_523_6 O1_af_523_6 Vdd pmos W=0.1625U L=0.065U
M1393_keeper #784 #fb783# O1_af_523_6 Vdd pmos W=0.0975U L=0.065U
M1394_keeper #785 #fb783# O1_af_523_6 GND nmos W=0.0975U L=0.065U
M1395_ #323 I_at_524_6 __o0t_524_6 GND nmos W=0.0975U L=0.065U
M1396_keeper #787 #fb786# __o0t_524_6 Vdd pmos W=0.0975U L=0.065U
M1397_keeper #788 #fb786# __o0t_524_6 GND nmos W=0.0975U L=0.065U
M1398_ #326 I_af_524_6 __o0f_524_6 GND nmos W=0.0975U L=0.065U
M1399_keeper #790 #fb789# __o0f_524_6 Vdd pmos W=0.0975U L=0.065U
M1400_keeper #791 #fb789# __o0f_524_6 GND nmos W=0.0975U L=0.065U
M1401_ #329 __i__t_524_6 O1_at_524_6 Vdd pmos W=0.1625U L=0.065U
M1402_keeper #793 #fb792# O1_at_524_6 Vdd pmos W=0.0975U L=0.065U
M1403_keeper #794 #fb792# O1_at_524_6 GND nmos W=0.0975U L=0.065U
M1404_ #332 __i__f_524_6 O1_af_524_6 Vdd pmos W=0.1625U L=0.065U
M1405_keeper #796 #fb795# O1_af_524_6 Vdd pmos W=0.0975U L=0.065U
M1406_keeper #797 #fb795# O1_af_524_6 GND nmos W=0.0975U L=0.065U
M1407_ #335 I_at_525_6 __o0t_525_6 GND nmos W=0.0975U L=0.065U
M1408_keeper #799 #fb798# __o0t_525_6 Vdd pmos W=0.0975U L=0.065U
M1409_keeper #800 #fb798# __o0t_525_6 GND nmos W=0.0975U L=0.065U
M1410_ #338 I_af_525_6 __o0f_525_6 GND nmos W=0.0975U L=0.065U
M1411_keeper #802 #fb801# __o0f_525_6 Vdd pmos W=0.0975U L=0.065U
M1412_keeper #803 #fb801# __o0f_525_6 GND nmos W=0.0975U L=0.065U
M1413_ #341 __i__t_525_6 O1_at_525_6 Vdd pmos W=0.1625U L=0.065U
M1414_keeper #805 #fb804# O1_at_525_6 Vdd pmos W=0.0975U L=0.065U
M1415_keeper #806 #fb804# O1_at_525_6 GND nmos W=0.0975U L=0.065U
M1416_ #344 __i__f_525_6 O1_af_525_6 Vdd pmos W=0.1625U L=0.065U
M1417_keeper #808 #fb807# O1_af_525_6 Vdd pmos W=0.0975U L=0.065U
M1418_keeper #809 #fb807# O1_af_525_6 GND nmos W=0.0975U L=0.065U
M1419_ #347 I_at_526_6 __o0t_526_6 GND nmos W=0.0975U L=0.065U
M1420_keeper #811 #fb810# __o0t_526_6 Vdd pmos W=0.0975U L=0.065U
M1421_keeper #812 #fb810# __o0t_526_6 GND nmos W=0.0975U L=0.065U
M1422_ #350 I_af_526_6 __o0f_526_6 GND nmos W=0.0975U L=0.065U
M1423_keeper #814 #fb813# __o0f_526_6 Vdd pmos W=0.0975U L=0.065U
M1424_keeper #815 #fb813# __o0f_526_6 GND nmos W=0.0975U L=0.065U
M1425_ #353 __i__t_526_6 O1_at_526_6 Vdd pmos W=0.1625U L=0.065U
M1426_keeper #817 #fb816# O1_at_526_6 Vdd pmos W=0.0975U L=0.065U
M1427_keeper #818 #fb816# O1_at_526_6 GND nmos W=0.0975U L=0.065U
M1428_ #356 __i__f_526_6 O1_af_526_6 Vdd pmos W=0.1625U L=0.065U
M1429_keeper #820 #fb819# O1_af_526_6 Vdd pmos W=0.0975U L=0.065U
M1430_keeper #821 #fb819# O1_af_526_6 GND nmos W=0.0975U L=0.065U
M1431_ #359 I_at_527_6 __o0t_527_6 GND nmos W=0.0975U L=0.065U
M1432_keeper #823 #fb822# __o0t_527_6 Vdd pmos W=0.0975U L=0.065U
M1433_keeper #824 #fb822# __o0t_527_6 GND nmos W=0.0975U L=0.065U
M1434_ #362 I_af_527_6 __o0f_527_6 GND nmos W=0.0975U L=0.065U
M1435_keeper #826 #fb825# __o0f_527_6 Vdd pmos W=0.0975U L=0.065U
M1436_keeper #827 #fb825# __o0f_527_6 GND nmos W=0.0975U L=0.065U
M1437_ #365 __i__t_527_6 O1_at_527_6 Vdd pmos W=0.1625U L=0.065U
M1438_keeper #829 #fb828# O1_at_527_6 Vdd pmos W=0.0975U L=0.065U
M1439_keeper #830 #fb828# O1_at_527_6 GND nmos W=0.0975U L=0.065U
M1440_ #368 __i__f_527_6 O1_af_527_6 Vdd pmos W=0.1625U L=0.065U
M1441_keeper #832 #fb831# O1_af_527_6 Vdd pmos W=0.0975U L=0.065U
M1442_keeper #833 #fb831# O1_af_527_6 GND nmos W=0.0975U L=0.065U
M1443_ #371 I_at_528_6 __o0t_528_6 GND nmos W=0.0975U L=0.065U
M1444_keeper #835 #fb834# __o0t_528_6 Vdd pmos W=0.0975U L=0.065U
M1445_keeper #836 #fb834# __o0t_528_6 GND nmos W=0.0975U L=0.065U
M1446_ #374 I_af_528_6 __o0f_528_6 GND nmos W=0.0975U L=0.065U
M1447_keeper #838 #fb837# __o0f_528_6 Vdd pmos W=0.0975U L=0.065U
M1448_keeper #839 #fb837# __o0f_528_6 GND nmos W=0.0975U L=0.065U
M1449_ #377 __i__t_528_6 O1_at_528_6 Vdd pmos W=0.1625U L=0.065U
M1450_keeper #841 #fb840# O1_at_528_6 Vdd pmos W=0.0975U L=0.065U
M1451_keeper #842 #fb840# O1_at_528_6 GND nmos W=0.0975U L=0.065U
M1452_ #380 __i__f_528_6 O1_af_528_6 Vdd pmos W=0.1625U L=0.065U
M1453_keeper #844 #fb843# O1_af_528_6 Vdd pmos W=0.0975U L=0.065U
M1454_keeper #845 #fb843# O1_af_528_6 GND nmos W=0.0975U L=0.065U
M1455_ #383 I_at_529_6 __o0t_529_6 GND nmos W=0.0975U L=0.065U
M1456_keeper #847 #fb846# __o0t_529_6 Vdd pmos W=0.0975U L=0.065U
M1457_keeper #848 #fb846# __o0t_529_6 GND nmos W=0.0975U L=0.065U
M1458_ #386 I_af_529_6 __o0f_529_6 GND nmos W=0.0975U L=0.065U
M1459_keeper #850 #fb849# __o0f_529_6 Vdd pmos W=0.0975U L=0.065U
M1460_keeper #851 #fb849# __o0f_529_6 GND nmos W=0.0975U L=0.065U
M1461_ #389 __i__t_529_6 O1_at_529_6 Vdd pmos W=0.1625U L=0.065U
M1462_keeper #853 #fb852# O1_at_529_6 Vdd pmos W=0.0975U L=0.065U
M1463_keeper #854 #fb852# O1_at_529_6 GND nmos W=0.0975U L=0.065U
M1464_ #392 __i__f_529_6 O1_af_529_6 Vdd pmos W=0.1625U L=0.065U
M1465_keeper #856 #fb855# O1_af_529_6 Vdd pmos W=0.0975U L=0.065U
M1466_keeper #857 #fb855# O1_af_529_6 GND nmos W=0.0975U L=0.065U
M1467_ #395 I_at_530_6 __o0t_530_6 GND nmos W=0.0975U L=0.065U
M1468_keeper #859 #fb858# __o0t_530_6 Vdd pmos W=0.0975U L=0.065U
M1469_keeper #860 #fb858# __o0t_530_6 GND nmos W=0.0975U L=0.065U
M1470_ #398 I_af_530_6 __o0f_530_6 GND nmos W=0.0975U L=0.065U
M1471_keeper #862 #fb861# __o0f_530_6 Vdd pmos W=0.0975U L=0.065U
M1472_keeper #863 #fb861# __o0f_530_6 GND nmos W=0.0975U L=0.065U
M1473_ #401 __i__t_530_6 O1_at_530_6 Vdd pmos W=0.1625U L=0.065U
M1474_keeper #865 #fb864# O1_at_530_6 Vdd pmos W=0.0975U L=0.065U
M1475_keeper #866 #fb864# O1_at_530_6 GND nmos W=0.0975U L=0.065U
M1476_ #404 __i__f_530_6 O1_af_530_6 Vdd pmos W=0.1625U L=0.065U
M1477_keeper #868 #fb867# O1_af_530_6 Vdd pmos W=0.0975U L=0.065U
M1478_keeper #869 #fb867# O1_af_530_6 GND nmos W=0.0975U L=0.065U
M1479_ #407 I_at_531_6 __o0t_531_6 GND nmos W=0.0975U L=0.065U
M1480_keeper #871 #fb870# __o0t_531_6 Vdd pmos W=0.0975U L=0.065U
M1481_keeper #872 #fb870# __o0t_531_6 GND nmos W=0.0975U L=0.065U
M1482_ #410 I_af_531_6 __o0f_531_6 GND nmos W=0.0975U L=0.065U
M1483_keeper #874 #fb873# __o0f_531_6 Vdd pmos W=0.0975U L=0.065U
M1484_keeper #875 #fb873# __o0f_531_6 GND nmos W=0.0975U L=0.065U
M1485_ #413 __i__t_531_6 O1_at_531_6 Vdd pmos W=0.1625U L=0.065U
M1486_keeper #877 #fb876# O1_at_531_6 Vdd pmos W=0.0975U L=0.065U
M1487_keeper #878 #fb876# O1_at_531_6 GND nmos W=0.0975U L=0.065U
M1488_ #416 __i__f_531_6 O1_af_531_6 Vdd pmos W=0.1625U L=0.065U
M1489_keeper #880 #fb879# O1_af_531_6 Vdd pmos W=0.0975U L=0.065U
M1490_keeper #881 #fb879# O1_af_531_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: InputRouter<> -----
