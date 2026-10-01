* MltcSel: literal supplied bubble PRS; 1629 MOS devices; no added RC delays.
* PTM65 TT, VDD=1.1 V, T=27 C; prs2net lambda=32.5 nm.
*
*---- act defproc: MltcSel<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.t[4] O0.t[5] O0.t[6] O0.t[7] O0.t[8] O0.t[9] O0.t[10] O0.t[11] O0.t[12] O0.t[13] O0.t[14] O0.t[15] O0.t[16] O0.t[17] O0.t[18] O0.t[19] O0.t[20] O0.t[21] O0.t[22] O0.t[23] O0.t[24] O0.t[25] O0.t[26] O0.t[27] O0.t[28] O0.t[29] O0.t[30] O0.t[31] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O0.f[4] O0.f[5] O0.f[6] O0.f[7] O0.f[8] O0.f[9] O0.f[10] O0.f[11] O0.f[12] O0.f[13] O0.f[14] O0.f[15] O0.f[16] O0.f[17] O0.f[18] O0.f[19] O0.f[20] O0.f[21] O0.f[22] O0.f[23] O0.f[24] O0.f[25] O0.f[26] O0.f[27] O0.f[28] O0.f[29] O0.f[30] O0.f[31] O0.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.t[4] O1.t[5] O1.t[6] O1.t[7] O1.t[8] O1.t[9] O1.t[10] O1.t[11] O1.t[12] O1.t[13] O1.t[14] O1.t[15] O1.t[16] O1.t[17] O1.t[18] O1.t[19] O1.t[20] O1.t[21] O1.t[22] O1.t[23] O1.t[24] O1.t[25] O1.t[26] O1.t[27] O1.t[28] O1.t[29] O1.t[30] O1.t[31] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.f[4] O1.f[5] O1.f[6] O1.f[7] O1.f[8] O1.f[9] O1.f[10] O1.f[11] O1.f[12] O1.f[13] O1.f[14] O1.f[15] O1.f[16] O1.f[17] O1.f[18] O1.f[19] O1.f[20] O1.f[21] O1.f[22] O1.f[23] O1.f[24] O1.f[25] O1.f[26] O1.f[27] O1.f[28] O1.f[29] O1.f[30] O1.f[31] O1.a
*
.subckt MltcSel reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6
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
