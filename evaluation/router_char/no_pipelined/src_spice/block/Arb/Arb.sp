* Arb top: five Arb2 instances; PTM65 TT, VDD=1.1 V, T=27 C.
* prs2net -p Arb; lambda=32.5 nm. 1235 MOS per Arb2, 6175 in the tree.
* Explicit supplied cross-coupled mutex: 12 MOS plus 4 grant-inverter MOS per Arb2.
* No explicit fork or settling RCs: former delayed branches are connected directly.
* User-authorized fork-capacitance reduction experiment; see analog_sim_diagnostics/Arb.
* All MOS dimensions, mutex logic, PRS logic and Arb hierarchy are unchanged.
*
*---- act defproc: Arb2<> -----
* raw ports:  reset I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.t[4] I0.t[5] I0.t[6] I0.t[7] I0.t[8] I0.t[9] I0.t[10] I0.t[11] I0.t[12] I0.t[13] I0.t[14] I0.t[15] I0.t[16] I0.t[17] I0.t[18] I0.t[19] I0.t[20] I0.t[21] I0.t[22] I0.t[23] I0.t[24] I0.t[25] I0.t[26] I0.t[27] I0.t[28] I0.t[29] I0.t[30] I0.t[31] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.f[4] I0.f[5] I0.f[6] I0.f[7] I0.f[8] I0.f[9] I0.f[10] I0.f[11] I0.f[12] I0.f[13] I0.f[14] I0.f[15] I0.f[16] I0.f[17] I0.f[18] I0.f[19] I0.f[20] I0.f[21] I0.f[22] I0.f[23] I0.f[24] I0.f[25] I0.f[26] I0.f[27] I0.f[28] I0.f[29] I0.f[30] I0.f[31] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.t[4] I1.t[5] I1.t[6] I1.t[7] I1.t[8] I1.t[9] I1.t[10] I1.t[11] I1.t[12] I1.t[13] I1.t[14] I1.t[15] I1.t[16] I1.t[17] I1.t[18] I1.t[19] I1.t[20] I1.t[21] I1.t[22] I1.t[23] I1.t[24] I1.t[25] I1.t[26] I1.t[27] I1.t[28] I1.t[29] I1.t[30] I1.t[31] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.f[4] I1.f[5] I1.f[6] I1.f[7] I1.f[8] I1.f[9] I1.f[10] I1.f[11] I1.f[12] I1.f[13] I1.f[14] I1.f[15] I1.f[16] I1.f[17] I1.f[18] I1.f[19] I1.f[20] I1.f[21] I1.f[22] I1.f[23] I1.f[24] I1.f[25] I1.f[26] I1.f[27] I1.f[28] I1.f[29] I1.f[30] I1.f[31] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt Arb2 reset I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_at_54_6 I0_at_55_6 I0_at_56_6
+ I0_at_57_6 I0_at_58_6 I0_at_59_6 I0_at_510_6 I0_at_511_6 I0_at_512_6 I0_at_513_6 I0_at_514_6
+ I0_at_515_6 I0_at_516_6 I0_at_517_6 I0_at_518_6 I0_at_519_6 I0_at_520_6 I0_at_521_6 I0_at_522_6
+ I0_at_523_6 I0_at_524_6 I0_at_525_6 I0_at_526_6 I0_at_527_6 I0_at_528_6 I0_at_529_6 I0_at_530_6
+ I0_at_531_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_af_54_6 I0_af_55_6 I0_af_56_6
+ I0_af_57_6 I0_af_58_6 I0_af_59_6 I0_af_510_6 I0_af_511_6 I0_af_512_6 I0_af_513_6 I0_af_514_6
+ I0_af_515_6 I0_af_516_6 I0_af_517_6 I0_af_518_6 I0_af_519_6 I0_af_520_6 I0_af_521_6 I0_af_522_6
+ I0_af_523_6 I0_af_524_6 I0_af_525_6 I0_af_526_6 I0_af_527_6 I0_af_528_6 I0_af_529_6 I0_af_530_6
+ I0_af_531_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_at_54_6 I1_at_55_6 I1_at_56_6
+ I1_at_57_6 I1_at_58_6 I1_at_59_6 I1_at_510_6 I1_at_511_6 I1_at_512_6 I1_at_513_6 I1_at_514_6
+ I1_at_515_6 I1_at_516_6 I1_at_517_6 I1_at_518_6 I1_at_519_6 I1_at_520_6 I1_at_521_6 I1_at_522_6
+ I1_at_523_6 I1_at_524_6 I1_at_525_6 I1_at_526_6 I1_at_527_6 I1_at_528_6 I1_at_529_6 I1_at_530_6
+ I1_at_531_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_af_54_6 I1_af_55_6 I1_af_56_6
+ I1_af_57_6 I1_af_58_6 I1_af_59_6 I1_af_510_6 I1_af_511_6 I1_af_512_6 I1_af_513_6 I1_af_514_6
+ I1_af_515_6 I1_af_516_6 I1_af_517_6 I1_af_518_6 I1_af_519_6 I1_af_520_6 I1_af_521_6 I1_af_522_6
+ I1_af_523_6 I1_af_524_6 I1_af_525_6 I1_af_526_6 I1_af_527_6 I1_af_528_6 I1_af_529_6 I1_af_530_6
+ I1_af_531_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6
+ O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6
+ O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6
+ O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6
+ O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6
+ O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6
+ O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6
+ O_af_530_6 O_af_531_6 O_aa
*.PININFO reset:I I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_at_54_6:I I0_at_55_6:I I0_at_56_6:I I0_at_57_6:I I0_at_58_6:I I0_at_59_6:I I0_at_510_6:I I0_at_511_6:I I0_at_512_6:I I0_at_513_6:I I0_at_514_6:I I0_at_515_6:I I0_at_516_6:I I0_at_517_6:I I0_at_518_6:I I0_at_519_6:I I0_at_520_6:I I0_at_521_6:I I0_at_522_6:I I0_at_523_6:I I0_at_524_6:I I0_at_525_6:I I0_at_526_6:I I0_at_527_6:I I0_at_528_6:I I0_at_529_6:I I0_at_530_6:I I0_at_531_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_af_54_6:I I0_af_55_6:I I0_af_56_6:I I0_af_57_6:I I0_af_58_6:I I0_af_59_6:I I0_af_510_6:I I0_af_511_6:I I0_af_512_6:I I0_af_513_6:I I0_af_514_6:I I0_af_515_6:I I0_af_516_6:I I0_af_517_6:I I0_af_518_6:I I0_af_519_6:I I0_af_520_6:I I0_af_521_6:I I0_af_522_6:I I0_af_523_6:I I0_af_524_6:I I0_af_525_6:I I0_af_526_6:I I0_af_527_6:I I0_af_528_6:I I0_af_529_6:I I0_af_530_6:I I0_af_531_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_at_54_6:I I1_at_55_6:I I1_at_56_6:I I1_at_57_6:I I1_at_58_6:I I1_at_59_6:I I1_at_510_6:I I1_at_511_6:I I1_at_512_6:I I1_at_513_6:I I1_at_514_6:I I1_at_515_6:I I1_at_516_6:I I1_at_517_6:I I1_at_518_6:I I1_at_519_6:I I1_at_520_6:I I1_at_521_6:I I1_at_522_6:I I1_at_523_6:I I1_at_524_6:I I1_at_525_6:I I1_at_526_6:I I1_at_527_6:I I1_at_528_6:I I1_at_529_6:I I1_at_530_6:I I1_at_531_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_af_54_6:I I1_af_55_6:I I1_af_56_6:I I1_af_57_6:I I1_af_58_6:I I1_af_59_6:I I1_af_510_6:I I1_af_511_6:I I1_af_512_6:I I1_af_513_6:I I1_af_514_6:I I1_af_515_6:I I1_af_516_6:I I1_af_517_6:I I1_af_518_6:I I1_af_519_6:I I1_af_520_6:I I1_af_521_6:I I1_af_522_6:I I1_af_523_6:I I1_af_524_6:I I1_af_525_6:I I1_af_526_6:I I1_af_527_6:I I1_af_528_6:I I1_af_529_6:I I1_af_530_6:I I1_af_531_6:I I1_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_at_58_6:O O_at_59_6:O O_at_510_6:O O_at_511_6:O O_at_512_6:O O_at_513_6:O O_at_514_6:O O_at_515_6:O O_at_516_6:O O_at_517_6:O O_at_518_6:O O_at_519_6:O O_at_520_6:O O_at_521_6:O O_at_522_6:O O_at_523_6:O O_at_524_6:O O_at_525_6:O O_at_526_6:O O_at_527_6:O O_at_528_6:O O_at_529_6:O O_at_530_6:O O_at_531_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O O_af_58_6:O O_af_59_6:O O_af_510_6:O O_af_511_6:O O_af_512_6:O O_af_513_6:O O_af_514_6:O O_af_515_6:O O_af_516_6:O O_af_517_6:O O_af_518_6:O O_af_519_6:O O_af_520_6:O O_af_521_6:O O_af_522_6:O O_af_523_6:O O_af_524_6:O O_af_525_6:O O_af_526_6:O O_af_527_6:O O_af_528_6:O O_af_529_6:O O_af_530_6:O O_af_531_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* p (state-holding): pup_reff=1.6; pdn_reff=2.66667
* I0_aa (combinational)
* I1_aa (combinational)
* n__u (combinational)
* n__s (state-holding): pup_reff=0.4; pdn_reff=1.33333
* inv__reset (combinational)
* n__I0__a (state-holding): pup_reff=1.2; pdn_reff=2.66667
* n__I1__a (state-holding): pup_reff=1.2; pdn_reff=2.66667
* v (combinational)
* s (combinational)
* w0i (state-holding): pup_reff=1.2; pdn_reff=1.33333
* inv__p (combinational)
* n__v (combinational)
* f (state-holding): pup_reff=2; pdn_reff=1.33333
* n__w0 (state-holding): pup_reff=0.8; pdn_reff=2
* n__w1 (state-holding): pup_reff=0.8; pdn_reff=2
* u (combinational)
* inv__f (combinational)
* w1 (combinational)
* inv__w0i (combinational)
* w0 (combinational)
* n__O__t_50_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_50_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_51_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_51_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_52_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_52_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_53_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_53_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_54_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_54_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_55_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_55_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_56_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_56_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_57_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_57_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_58_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_58_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_59_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_59_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_510_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_510_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_511_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_511_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_512_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_512_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_513_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_513_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_514_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_514_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_515_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_515_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_516_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_516_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_517_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_517_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_518_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_518_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_519_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_519_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_520_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_520_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_521_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_521_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_522_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_522_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_523_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_523_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_524_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_524_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_525_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_525_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_526_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_526_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_527_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_527_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_528_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_528_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_529_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_529_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_530_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_530_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__t_531_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__O__f_531_6 (state-holding): pup_reff=0.8; pdn_reff=2
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
M0_ Vdd I0_aa #4 Vdd pmos W=1.3U L=0.065U
M1_ Vdd inv__reset p Vdd pmos W=1.3U L=0.065U
M2_ Vdd n__s #19 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd O_aa #30 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd s #42 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd inv__reset n__w0 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd n__s #49 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd inv__reset n__w1 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd inv__w0i n__s Vdd pmos W=1.3U L=0.065U
M9_ Vdd f #57 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd f #62 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd inv__p #68 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd p #69 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd inv__p #74 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd p #75 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd inv__p #82 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd p #83 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd inv__p #90 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd p #91 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd inv__p #98 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd p #99 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd inv__p #106 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd p #107 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd inv__p #114 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd p #115 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd inv__p #122 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd p #123 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd inv__p #130 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd p #131 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd inv__p #138 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd p #139 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd inv__p #146 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd p #147 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd inv__p #154 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd p #155 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd inv__p #162 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd p #163 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd inv__p #170 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd p #171 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd inv__p #178 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd p #179 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd inv__p #186 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd p #187 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd inv__p #194 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd p #195 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd inv__p #202 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd p #203 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd inv__p #210 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd p #211 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd inv__p #218 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd p #219 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd inv__p #226 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd p #227 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd inv__p #234 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd p #235 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd inv__p #242 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd p #243 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd inv__p #250 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd p #251 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd inv__p #258 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd p #259 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd inv__p #266 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd p #267 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd inv__p #274 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd p #275 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd inv__p #282 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd p #283 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd inv__p #290 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd p #291 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd inv__p #298 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd p #299 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd inv__p #306 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd p #307 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd inv__p #314 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd p #315 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd inv__p #322 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd p #323 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd inv__p #330 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd p #331 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd inv__p #338 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd p #339 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd inv__p #346 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd p #347 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd inv__p #354 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd p #355 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd inv__p #362 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd p #363 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd inv__p #370 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd p #371 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd inv__p #378 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd p #379 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd inv__p #386 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd p #387 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd inv__p #394 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd p #395 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd inv__p #402 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd p #403 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd inv__p #410 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd p #411 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd inv__p #418 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd p #419 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd inv__p #426 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd p #427 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd inv__p #434 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd p #435 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd inv__p #442 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd p #443 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd inv__p #450 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd p #451 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd inv__p #458 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd p #459 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd inv__p #466 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd p #467 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd inv__p #474 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd p #475 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd inv__p #482 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd p #483 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd inv__p #490 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd p #491 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd inv__p #498 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd p #499 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd inv__p #506 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd p #507 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd inv__p #514 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd p #515 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd inv__p #522 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd p #523 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd inv__p #530 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd p #531 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd inv__p #538 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd p #539 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd inv__p #546 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd p #547 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd inv__p #554 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd p #555 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd inv__p #562 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd p #563 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd inv__p #570 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd p #571 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd I0_at_531_6 #573 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd n__v n__u Vdd pmos W=0.1625U L=0.065U
M141_ Vdd I1_at_531_6 #575 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd n__u n__v Vdd pmos W=0.1625U L=0.065U
M143_ Vdd p inv__p Vdd pmos W=1.3U L=0.065U
M144_ Vdd n__s s Vdd pmos W=0.1625U L=0.065U
M145_ Vdd w0i inv__w0i Vdd pmos W=0.1625U L=0.065U
M146_ Vdd n__w0 w0 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd n__w1 w1 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd f inv__f Vdd pmos W=0.1625U L=0.065U
M149_ Vdd reset inv__reset Vdd pmos W=0.1625U L=0.065U
M150_ Vdd n__u u Vdd pmos W=0.1625U L=0.065U
M151_ Vdd n__v v Vdd pmos W=0.1625U L=0.065U
M152_ Vdd n__I0__a I0_aa Vdd pmos W=0.1625U L=0.065U
M153_ Vdd n__I1__a I1_aa Vdd pmos W=0.1625U L=0.065U
M154_ Vdd n__O__t_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd n__O__f_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd n__O__t_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd n__O__f_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd n__O__t_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd n__O__f_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd n__O__t_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd n__O__f_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd n__O__t_54_6 O_at_54_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd n__O__f_54_6 O_af_54_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd n__O__t_55_6 O_at_55_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd n__O__f_55_6 O_af_55_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd n__O__t_56_6 O_at_56_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd n__O__f_56_6 O_af_56_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd n__O__t_57_6 O_at_57_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd n__O__f_57_6 O_af_57_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd n__O__t_58_6 O_at_58_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd n__O__f_58_6 O_af_58_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd n__O__t_59_6 O_at_59_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd n__O__f_59_6 O_af_59_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd n__O__t_510_6 O_at_510_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd n__O__f_510_6 O_af_510_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd n__O__t_511_6 O_at_511_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd n__O__f_511_6 O_af_511_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd n__O__t_512_6 O_at_512_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd n__O__f_512_6 O_af_512_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd n__O__t_513_6 O_at_513_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd n__O__f_513_6 O_af_513_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd n__O__t_514_6 O_at_514_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd n__O__f_514_6 O_af_514_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd n__O__t_515_6 O_at_515_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd n__O__f_515_6 O_af_515_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd n__O__t_516_6 O_at_516_6 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd n__O__f_516_6 O_af_516_6 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd n__O__t_517_6 O_at_517_6 Vdd pmos W=0.1625U L=0.065U
M189_ Vdd n__O__f_517_6 O_af_517_6 Vdd pmos W=0.1625U L=0.065U
M190_ Vdd n__O__t_518_6 O_at_518_6 Vdd pmos W=0.1625U L=0.065U
M191_ Vdd n__O__f_518_6 O_af_518_6 Vdd pmos W=0.1625U L=0.065U
M192_ Vdd n__O__t_519_6 O_at_519_6 Vdd pmos W=0.1625U L=0.065U
M193_ Vdd n__O__f_519_6 O_af_519_6 Vdd pmos W=0.1625U L=0.065U
M194_ Vdd n__O__t_520_6 O_at_520_6 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd n__O__f_520_6 O_af_520_6 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd n__O__t_521_6 O_at_521_6 Vdd pmos W=0.1625U L=0.065U
M197_ Vdd n__O__f_521_6 O_af_521_6 Vdd pmos W=0.1625U L=0.065U
M198_ Vdd n__O__t_522_6 O_at_522_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd n__O__f_522_6 O_af_522_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd n__O__t_523_6 O_at_523_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd n__O__f_523_6 O_af_523_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd n__O__t_524_6 O_at_524_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd n__O__f_524_6 O_af_524_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd n__O__t_525_6 O_at_525_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd n__O__f_525_6 O_af_525_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd n__O__t_526_6 O_at_526_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd n__O__f_526_6 O_af_526_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd n__O__t_527_6 O_at_527_6 Vdd pmos W=0.1625U L=0.065U
M209_ Vdd n__O__f_527_6 O_af_527_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd n__O__t_528_6 O_at_528_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd n__O__f_528_6 O_af_528_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd n__O__t_529_6 O_at_529_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd n__O__f_529_6 O_af_529_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd n__O__t_530_6 O_at_530_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd n__O__f_530_6 O_af_530_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd n__O__t_531_6 O_at_531_6 Vdd pmos W=0.1625U L=0.065U
M217_ Vdd n__O__f_531_6 O_af_531_6 Vdd pmos W=0.1625U L=0.065U
M218_ Vdd p #fb640# Vdd pmos W=0.1625U L=0.13U
M219_ Vdd n__s #fb643# Vdd pmos W=0.1625U L=0.13U
M220_keeper Vdd GND #641 Vdd pmos W=0.0975U L=1.235U
M221_ Vdd n__I0__a #fb646# Vdd pmos W=0.1625U L=0.13U
M222_keeper Vdd GND #644 Vdd pmos W=0.0975U L=0.585U
M223_ Vdd n__I1__a #fb649# Vdd pmos W=0.1625U L=0.13U
M224_keeper Vdd GND #647 Vdd pmos W=0.0975U L=1.235U
M225_ Vdd w0i #fb652# Vdd pmos W=0.1625U L=0.13U
M226_keeper Vdd GND #650 Vdd pmos W=0.0975U L=1.235U
M227_ Vdd f #fb655# Vdd pmos W=0.1625U L=0.13U
M228_keeper Vdd GND #653 Vdd pmos W=0.0975U L=0.585U
M229_ Vdd n__w0 #fb658# Vdd pmos W=0.1625U L=0.13U
M230_keeper Vdd GND #656 Vdd pmos W=0.0975U L=0.585U
M231_ Vdd n__w1 #fb661# Vdd pmos W=0.1625U L=0.13U
M232_keeper Vdd GND #659 Vdd pmos W=0.0975U L=0.91U
M233_ Vdd n__O__t_50_6 #fb664# Vdd pmos W=0.1625U L=0.13U
M234_keeper Vdd GND #662 Vdd pmos W=0.0975U L=0.91U
M235_ Vdd n__O__f_50_6 #fb667# Vdd pmos W=0.1625U L=0.13U
M236_keeper Vdd GND #665 Vdd pmos W=0.0975U L=0.91U
M237_ Vdd n__O__t_51_6 #fb670# Vdd pmos W=0.1625U L=0.13U
M238_keeper Vdd GND #668 Vdd pmos W=0.0975U L=0.91U
M239_ Vdd n__O__f_51_6 #fb673# Vdd pmos W=0.1625U L=0.13U
M240_keeper Vdd GND #671 Vdd pmos W=0.0975U L=0.91U
M241_ Vdd n__O__t_52_6 #fb676# Vdd pmos W=0.1625U L=0.13U
M242_keeper Vdd GND #674 Vdd pmos W=0.0975U L=0.91U
M243_ Vdd n__O__f_52_6 #fb679# Vdd pmos W=0.1625U L=0.13U
M244_keeper Vdd GND #677 Vdd pmos W=0.0975U L=0.91U
M245_ Vdd n__O__t_53_6 #fb682# Vdd pmos W=0.1625U L=0.13U
M246_keeper Vdd GND #680 Vdd pmos W=0.0975U L=0.91U
M247_ Vdd n__O__f_53_6 #fb685# Vdd pmos W=0.1625U L=0.13U
M248_keeper Vdd GND #683 Vdd pmos W=0.0975U L=0.91U
M249_ Vdd n__O__t_54_6 #fb688# Vdd pmos W=0.1625U L=0.13U
M250_keeper Vdd GND #686 Vdd pmos W=0.0975U L=0.91U
M251_ Vdd n__O__f_54_6 #fb691# Vdd pmos W=0.1625U L=0.13U
M252_keeper Vdd GND #689 Vdd pmos W=0.0975U L=0.91U
M253_ Vdd n__O__t_55_6 #fb694# Vdd pmos W=0.1625U L=0.13U
M254_keeper Vdd GND #692 Vdd pmos W=0.0975U L=0.91U
M255_ Vdd n__O__f_55_6 #fb697# Vdd pmos W=0.1625U L=0.13U
M256_keeper Vdd GND #695 Vdd pmos W=0.0975U L=0.91U
M257_ Vdd n__O__t_56_6 #fb700# Vdd pmos W=0.1625U L=0.13U
M258_keeper Vdd GND #698 Vdd pmos W=0.0975U L=0.91U
M259_ Vdd n__O__f_56_6 #fb703# Vdd pmos W=0.1625U L=0.13U
M260_keeper Vdd GND #701 Vdd pmos W=0.0975U L=0.91U
M261_ Vdd n__O__t_57_6 #fb706# Vdd pmos W=0.1625U L=0.13U
M262_keeper Vdd GND #704 Vdd pmos W=0.0975U L=0.91U
M263_ Vdd n__O__f_57_6 #fb709# Vdd pmos W=0.1625U L=0.13U
M264_keeper Vdd GND #707 Vdd pmos W=0.0975U L=0.91U
M265_ Vdd n__O__t_58_6 #fb712# Vdd pmos W=0.1625U L=0.13U
M266_keeper Vdd GND #710 Vdd pmos W=0.0975U L=0.91U
M267_ Vdd n__O__f_58_6 #fb715# Vdd pmos W=0.1625U L=0.13U
M268_keeper Vdd GND #713 Vdd pmos W=0.0975U L=0.91U
M269_ Vdd n__O__t_59_6 #fb718# Vdd pmos W=0.1625U L=0.13U
M270_keeper Vdd GND #716 Vdd pmos W=0.0975U L=0.91U
M271_ Vdd n__O__f_59_6 #fb721# Vdd pmos W=0.1625U L=0.13U
M272_keeper Vdd GND #719 Vdd pmos W=0.0975U L=0.91U
M273_ Vdd n__O__t_510_6 #fb724# Vdd pmos W=0.1625U L=0.13U
M274_keeper Vdd GND #722 Vdd pmos W=0.0975U L=0.91U
M275_ Vdd n__O__f_510_6 #fb727# Vdd pmos W=0.1625U L=0.13U
M276_keeper Vdd GND #725 Vdd pmos W=0.0975U L=0.91U
M277_ Vdd n__O__t_511_6 #fb730# Vdd pmos W=0.1625U L=0.13U
M278_keeper Vdd GND #728 Vdd pmos W=0.0975U L=0.91U
M279_ Vdd n__O__f_511_6 #fb733# Vdd pmos W=0.1625U L=0.13U
M280_keeper Vdd GND #731 Vdd pmos W=0.0975U L=0.91U
M281_ Vdd n__O__t_512_6 #fb736# Vdd pmos W=0.1625U L=0.13U
M282_keeper Vdd GND #734 Vdd pmos W=0.0975U L=0.91U
M283_ Vdd n__O__f_512_6 #fb739# Vdd pmos W=0.1625U L=0.13U
M284_keeper Vdd GND #737 Vdd pmos W=0.0975U L=0.91U
M285_ Vdd n__O__t_513_6 #fb742# Vdd pmos W=0.1625U L=0.13U
M286_keeper Vdd GND #740 Vdd pmos W=0.0975U L=0.91U
M287_ Vdd n__O__f_513_6 #fb745# Vdd pmos W=0.1625U L=0.13U
M288_keeper Vdd GND #743 Vdd pmos W=0.0975U L=0.91U
M289_ Vdd n__O__t_514_6 #fb748# Vdd pmos W=0.1625U L=0.13U
M290_keeper Vdd GND #746 Vdd pmos W=0.0975U L=0.91U
M291_ Vdd n__O__f_514_6 #fb751# Vdd pmos W=0.1625U L=0.13U
M292_keeper Vdd GND #749 Vdd pmos W=0.0975U L=0.91U
M293_ Vdd n__O__t_515_6 #fb754# Vdd pmos W=0.1625U L=0.13U
M294_keeper Vdd GND #752 Vdd pmos W=0.0975U L=0.91U
M295_ Vdd n__O__f_515_6 #fb757# Vdd pmos W=0.1625U L=0.13U
M296_keeper Vdd GND #755 Vdd pmos W=0.0975U L=0.91U
M297_ Vdd n__O__t_516_6 #fb760# Vdd pmos W=0.1625U L=0.13U
M298_keeper Vdd GND #758 Vdd pmos W=0.0975U L=0.91U
M299_ Vdd n__O__f_516_6 #fb763# Vdd pmos W=0.1625U L=0.13U
M300_keeper Vdd GND #761 Vdd pmos W=0.0975U L=0.91U
M301_ Vdd n__O__t_517_6 #fb766# Vdd pmos W=0.1625U L=0.13U
M302_keeper Vdd GND #764 Vdd pmos W=0.0975U L=0.91U
M303_ Vdd n__O__f_517_6 #fb769# Vdd pmos W=0.1625U L=0.13U
M304_keeper Vdd GND #767 Vdd pmos W=0.0975U L=0.91U
M305_ Vdd n__O__t_518_6 #fb772# Vdd pmos W=0.1625U L=0.13U
M306_keeper Vdd GND #770 Vdd pmos W=0.0975U L=0.91U
M307_ Vdd n__O__f_518_6 #fb775# Vdd pmos W=0.1625U L=0.13U
M308_keeper Vdd GND #773 Vdd pmos W=0.0975U L=0.91U
M309_ Vdd n__O__t_519_6 #fb778# Vdd pmos W=0.1625U L=0.13U
M310_keeper Vdd GND #776 Vdd pmos W=0.0975U L=0.91U
M311_ Vdd n__O__f_519_6 #fb781# Vdd pmos W=0.1625U L=0.13U
M312_keeper Vdd GND #779 Vdd pmos W=0.0975U L=0.91U
M313_ Vdd n__O__t_520_6 #fb784# Vdd pmos W=0.1625U L=0.13U
M314_keeper Vdd GND #782 Vdd pmos W=0.0975U L=0.91U
M315_ Vdd n__O__f_520_6 #fb787# Vdd pmos W=0.1625U L=0.13U
M316_keeper Vdd GND #785 Vdd pmos W=0.0975U L=0.91U
M317_ Vdd n__O__t_521_6 #fb790# Vdd pmos W=0.1625U L=0.13U
M318_keeper Vdd GND #788 Vdd pmos W=0.0975U L=0.91U
M319_ Vdd n__O__f_521_6 #fb793# Vdd pmos W=0.1625U L=0.13U
M320_keeper Vdd GND #791 Vdd pmos W=0.0975U L=0.91U
M321_ Vdd n__O__t_522_6 #fb796# Vdd pmos W=0.1625U L=0.13U
M322_keeper Vdd GND #794 Vdd pmos W=0.0975U L=0.91U
M323_ Vdd n__O__f_522_6 #fb799# Vdd pmos W=0.1625U L=0.13U
M324_keeper Vdd GND #797 Vdd pmos W=0.0975U L=0.91U
M325_ Vdd n__O__t_523_6 #fb802# Vdd pmos W=0.1625U L=0.13U
M326_keeper Vdd GND #800 Vdd pmos W=0.0975U L=0.91U
M327_ Vdd n__O__f_523_6 #fb805# Vdd pmos W=0.1625U L=0.13U
M328_keeper Vdd GND #803 Vdd pmos W=0.0975U L=0.91U
M329_ Vdd n__O__t_524_6 #fb808# Vdd pmos W=0.1625U L=0.13U
M330_keeper Vdd GND #806 Vdd pmos W=0.0975U L=0.91U
M331_ Vdd n__O__f_524_6 #fb811# Vdd pmos W=0.1625U L=0.13U
M332_keeper Vdd GND #809 Vdd pmos W=0.0975U L=0.91U
M333_ Vdd n__O__t_525_6 #fb814# Vdd pmos W=0.1625U L=0.13U
M334_keeper Vdd GND #812 Vdd pmos W=0.0975U L=0.91U
M335_ Vdd n__O__f_525_6 #fb817# Vdd pmos W=0.1625U L=0.13U
M336_keeper Vdd GND #815 Vdd pmos W=0.0975U L=0.91U
M337_ Vdd n__O__t_526_6 #fb820# Vdd pmos W=0.1625U L=0.13U
M338_keeper Vdd GND #818 Vdd pmos W=0.0975U L=0.91U
M339_ Vdd n__O__f_526_6 #fb823# Vdd pmos W=0.1625U L=0.13U
M340_keeper Vdd GND #821 Vdd pmos W=0.0975U L=0.91U
M341_ Vdd n__O__t_527_6 #fb826# Vdd pmos W=0.1625U L=0.13U
M342_keeper Vdd GND #824 Vdd pmos W=0.0975U L=0.91U
M343_ Vdd n__O__f_527_6 #fb829# Vdd pmos W=0.1625U L=0.13U
M344_keeper Vdd GND #827 Vdd pmos W=0.0975U L=0.91U
M345_ Vdd n__O__t_528_6 #fb832# Vdd pmos W=0.1625U L=0.13U
M346_keeper Vdd GND #830 Vdd pmos W=0.0975U L=0.91U
M347_ Vdd n__O__f_528_6 #fb835# Vdd pmos W=0.1625U L=0.13U
M348_keeper Vdd GND #833 Vdd pmos W=0.0975U L=0.91U
M349_ Vdd n__O__t_529_6 #fb838# Vdd pmos W=0.1625U L=0.13U
M350_keeper Vdd GND #836 Vdd pmos W=0.0975U L=0.91U
M351_ Vdd n__O__f_529_6 #fb841# Vdd pmos W=0.1625U L=0.13U
M352_keeper Vdd GND #839 Vdd pmos W=0.0975U L=0.91U
M353_ Vdd n__O__t_530_6 #fb844# Vdd pmos W=0.1625U L=0.13U
M354_keeper Vdd GND #842 Vdd pmos W=0.0975U L=0.91U
M355_ Vdd n__O__f_530_6 #fb847# Vdd pmos W=0.1625U L=0.13U
M356_keeper Vdd GND #845 Vdd pmos W=0.0975U L=0.91U
M357_ Vdd n__O__t_531_6 #fb850# Vdd pmos W=0.1625U L=0.13U
M358_keeper Vdd GND #848 Vdd pmos W=0.0975U L=0.91U
M359_ Vdd n__O__f_531_6 #fb853# Vdd pmos W=0.1625U L=0.13U
M360_keeper Vdd GND #851 Vdd pmos W=0.0975U L=0.91U
M361_keeper Vdd GND #854 Vdd pmos W=0.0975U L=0.91U
M362_ GND n__I0__a #12 GND nmos W=0.78U L=0.065U
M363_ GND n__s #24 GND nmos W=0.0975U L=0.065U
M364_ GND reset w0i GND nmos W=0.0975U L=0.065U
M365_ GND n__w0 #36 GND nmos W=0.0975U L=0.065U
M366_ GND reset f GND nmos W=0.0975U L=0.065U
M367_ GND n__s #37 GND nmos W=0.0975U L=0.065U
M368_ GND n__s #44 GND nmos W=0.0975U L=0.065U
M369_ GND w1 #50 GND nmos W=0.78U L=0.065U
M370_ GND reset n__s GND nmos W=0.78U L=0.065U
M371_ GND p #55 GND nmos W=0.0975U L=0.065U
M372_ GND inv__p #61 GND nmos W=0.0975U L=0.065U
M373_ GND n__s #65 GND nmos W=0.0975U L=0.065U
M374_ GND n__s #71 GND nmos W=0.0975U L=0.065U
M375_ GND n__s #77 GND nmos W=0.0975U L=0.065U
M376_ GND n__s #85 GND nmos W=0.0975U L=0.065U
M377_ GND n__s #93 GND nmos W=0.0975U L=0.065U
M378_ GND n__s #101 GND nmos W=0.0975U L=0.065U
M379_ GND n__s #109 GND nmos W=0.0975U L=0.065U
M380_ GND n__s #117 GND nmos W=0.0975U L=0.065U
M381_ GND n__s #125 GND nmos W=0.0975U L=0.065U
M382_ GND n__s #133 GND nmos W=0.0975U L=0.065U
M383_ GND n__s #141 GND nmos W=0.0975U L=0.065U
M384_ GND n__s #149 GND nmos W=0.0975U L=0.065U
M385_ GND n__s #157 GND nmos W=0.0975U L=0.065U
M386_ GND n__s #165 GND nmos W=0.0975U L=0.065U
M387_ GND n__s #173 GND nmos W=0.0975U L=0.065U
M388_ GND n__s #181 GND nmos W=0.0975U L=0.065U
M389_ GND n__s #189 GND nmos W=0.0975U L=0.065U
M390_ GND n__s #197 GND nmos W=0.0975U L=0.065U
M391_ GND n__s #205 GND nmos W=0.0975U L=0.065U
M392_ GND n__s #213 GND nmos W=0.0975U L=0.065U
M393_ GND n__s #221 GND nmos W=0.0975U L=0.065U
M394_ GND n__s #229 GND nmos W=0.0975U L=0.065U
M395_ GND n__s #237 GND nmos W=0.0975U L=0.065U
M396_ GND n__s #245 GND nmos W=0.0975U L=0.065U
M397_ GND n__s #253 GND nmos W=0.0975U L=0.065U
M398_ GND n__s #261 GND nmos W=0.0975U L=0.065U
M399_ GND n__s #269 GND nmos W=0.0975U L=0.065U
M400_ GND n__s #277 GND nmos W=0.0975U L=0.065U
M401_ GND n__s #285 GND nmos W=0.0975U L=0.065U
M402_ GND n__s #293 GND nmos W=0.0975U L=0.065U
M403_ GND n__s #301 GND nmos W=0.0975U L=0.065U
M404_ GND n__s #309 GND nmos W=0.0975U L=0.065U
M405_ GND n__s #317 GND nmos W=0.0975U L=0.065U
M406_ GND n__s #325 GND nmos W=0.0975U L=0.065U
M407_ GND n__s #333 GND nmos W=0.0975U L=0.065U
M408_ GND n__s #341 GND nmos W=0.0975U L=0.065U
M409_ GND n__s #349 GND nmos W=0.0975U L=0.065U
M410_ GND n__s #357 GND nmos W=0.0975U L=0.065U
M411_ GND n__s #365 GND nmos W=0.0975U L=0.065U
M412_ GND n__s #373 GND nmos W=0.0975U L=0.065U
M413_ GND n__s #381 GND nmos W=0.0975U L=0.065U
M414_ GND n__s #389 GND nmos W=0.0975U L=0.065U
M415_ GND n__s #397 GND nmos W=0.0975U L=0.065U
M416_ GND n__s #405 GND nmos W=0.0975U L=0.065U
M417_ GND n__s #413 GND nmos W=0.0975U L=0.065U
M418_ GND n__s #421 GND nmos W=0.0975U L=0.065U
M419_ GND n__s #429 GND nmos W=0.0975U L=0.065U
M420_ GND n__s #437 GND nmos W=0.0975U L=0.065U
M421_ GND n__s #445 GND nmos W=0.0975U L=0.065U
M422_ GND n__s #453 GND nmos W=0.0975U L=0.065U
M423_ GND n__s #461 GND nmos W=0.0975U L=0.065U
M424_ GND n__s #469 GND nmos W=0.0975U L=0.065U
M425_ GND n__s #477 GND nmos W=0.0975U L=0.065U
M426_ GND n__s #485 GND nmos W=0.0975U L=0.065U
M427_ GND n__s #493 GND nmos W=0.0975U L=0.065U
M428_ GND n__s #501 GND nmos W=0.0975U L=0.065U
M429_ GND n__s #509 GND nmos W=0.0975U L=0.065U
M430_ GND n__s #517 GND nmos W=0.0975U L=0.065U
M431_ GND n__s #525 GND nmos W=0.0975U L=0.065U
M432_ GND n__s #533 GND nmos W=0.0975U L=0.065U
M433_ GND n__s #541 GND nmos W=0.0975U L=0.065U
M434_ GND n__s #549 GND nmos W=0.0975U L=0.065U
M435_ GND n__s #557 GND nmos W=0.0975U L=0.065U
M436_ GND n__s #565 GND nmos W=0.0975U L=0.065U
M437_ GND I0_at_531_6 #572 GND nmos W=0.0975U L=0.065U
M438_ GND I0_af_531_6 #572 GND nmos W=0.0975U L=0.065U
M439_ GND I1_at_531_6 #574 GND nmos W=0.0975U L=0.065U
M440_ GND I1_af_531_6 #574 GND nmos W=0.0975U L=0.065U
M441_ GND p inv__p GND nmos W=0.78U L=0.065U
M442_ GND n__s s GND nmos W=0.0975U L=0.065U
M443_ GND w0i inv__w0i GND nmos W=0.0975U L=0.065U
M444_ GND n__w0 w0 GND nmos W=0.0975U L=0.065U
M445_ GND n__w1 w1 GND nmos W=0.0975U L=0.065U
M446_ GND f inv__f GND nmos W=0.0975U L=0.065U
M447_ GND reset inv__reset GND nmos W=0.0975U L=0.065U
M448_ GND n__u u GND nmos W=0.0975U L=0.065U
M449_ GND n__v v GND nmos W=0.0975U L=0.065U
M450_ GND n__I0__a I0_aa GND nmos W=0.0975U L=0.065U
M451_ GND n__I1__a I1_aa GND nmos W=0.0975U L=0.065U
M452_ GND n__O__t_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M453_ GND n__O__f_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M454_ GND n__O__t_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M455_ GND n__O__f_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M456_ GND n__O__t_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M457_ GND n__O__f_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M458_ GND n__O__t_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M459_ GND n__O__f_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M460_ GND n__O__t_54_6 O_at_54_6 GND nmos W=0.0975U L=0.065U
M461_ GND n__O__f_54_6 O_af_54_6 GND nmos W=0.0975U L=0.065U
M462_ GND n__O__t_55_6 O_at_55_6 GND nmos W=0.0975U L=0.065U
M463_ GND n__O__f_55_6 O_af_55_6 GND nmos W=0.0975U L=0.065U
M464_ GND n__O__t_56_6 O_at_56_6 GND nmos W=0.0975U L=0.065U
M465_ GND n__O__f_56_6 O_af_56_6 GND nmos W=0.0975U L=0.065U
M466_ GND n__O__t_57_6 O_at_57_6 GND nmos W=0.0975U L=0.065U
M467_ GND n__O__f_57_6 O_af_57_6 GND nmos W=0.0975U L=0.065U
M468_ GND n__O__t_58_6 O_at_58_6 GND nmos W=0.0975U L=0.065U
M469_ GND n__O__f_58_6 O_af_58_6 GND nmos W=0.0975U L=0.065U
M470_ GND n__O__t_59_6 O_at_59_6 GND nmos W=0.0975U L=0.065U
M471_ GND n__O__f_59_6 O_af_59_6 GND nmos W=0.0975U L=0.065U
M472_ GND n__O__t_510_6 O_at_510_6 GND nmos W=0.0975U L=0.065U
M473_ GND n__O__f_510_6 O_af_510_6 GND nmos W=0.0975U L=0.065U
M474_ GND n__O__t_511_6 O_at_511_6 GND nmos W=0.0975U L=0.065U
M475_ GND n__O__f_511_6 O_af_511_6 GND nmos W=0.0975U L=0.065U
M476_ GND n__O__t_512_6 O_at_512_6 GND nmos W=0.0975U L=0.065U
M477_ GND n__O__f_512_6 O_af_512_6 GND nmos W=0.0975U L=0.065U
M478_ GND n__O__t_513_6 O_at_513_6 GND nmos W=0.0975U L=0.065U
M479_ GND n__O__f_513_6 O_af_513_6 GND nmos W=0.0975U L=0.065U
M480_ GND n__O__t_514_6 O_at_514_6 GND nmos W=0.0975U L=0.065U
M481_ GND n__O__f_514_6 O_af_514_6 GND nmos W=0.0975U L=0.065U
M482_ GND n__O__t_515_6 O_at_515_6 GND nmos W=0.0975U L=0.065U
M483_ GND n__O__f_515_6 O_af_515_6 GND nmos W=0.0975U L=0.065U
M484_ GND n__O__t_516_6 O_at_516_6 GND nmos W=0.0975U L=0.065U
M485_ GND n__O__f_516_6 O_af_516_6 GND nmos W=0.0975U L=0.065U
M486_ GND n__O__t_517_6 O_at_517_6 GND nmos W=0.0975U L=0.065U
M487_ GND n__O__f_517_6 O_af_517_6 GND nmos W=0.0975U L=0.065U
M488_ GND n__O__t_518_6 O_at_518_6 GND nmos W=0.0975U L=0.065U
M489_ GND n__O__f_518_6 O_af_518_6 GND nmos W=0.0975U L=0.065U
M490_ GND n__O__t_519_6 O_at_519_6 GND nmos W=0.0975U L=0.065U
M491_ GND n__O__f_519_6 O_af_519_6 GND nmos W=0.0975U L=0.065U
M492_ GND n__O__t_520_6 O_at_520_6 GND nmos W=0.0975U L=0.065U
M493_ GND n__O__f_520_6 O_af_520_6 GND nmos W=0.0975U L=0.065U
M494_ GND n__O__t_521_6 O_at_521_6 GND nmos W=0.0975U L=0.065U
M495_ GND n__O__f_521_6 O_af_521_6 GND nmos W=0.0975U L=0.065U
M496_ GND n__O__t_522_6 O_at_522_6 GND nmos W=0.0975U L=0.065U
M497_ GND n__O__f_522_6 O_af_522_6 GND nmos W=0.0975U L=0.065U
M498_ GND n__O__t_523_6 O_at_523_6 GND nmos W=0.0975U L=0.065U
M499_ GND n__O__f_523_6 O_af_523_6 GND nmos W=0.0975U L=0.065U
M500_ GND n__O__t_524_6 O_at_524_6 GND nmos W=0.0975U L=0.065U
M501_ GND n__O__f_524_6 O_af_524_6 GND nmos W=0.0975U L=0.065U
M502_ GND n__O__t_525_6 O_at_525_6 GND nmos W=0.0975U L=0.065U
M503_ GND n__O__f_525_6 O_af_525_6 GND nmos W=0.0975U L=0.065U
M504_ GND n__O__t_526_6 O_at_526_6 GND nmos W=0.0975U L=0.065U
M505_ GND n__O__f_526_6 O_af_526_6 GND nmos W=0.0975U L=0.065U
M506_ GND n__O__t_527_6 O_at_527_6 GND nmos W=0.0975U L=0.065U
M507_ GND n__O__f_527_6 O_af_527_6 GND nmos W=0.0975U L=0.065U
M508_ GND n__O__t_528_6 O_at_528_6 GND nmos W=0.0975U L=0.065U
M509_ GND n__O__f_528_6 O_af_528_6 GND nmos W=0.0975U L=0.065U
M510_ GND n__O__t_529_6 O_at_529_6 GND nmos W=0.0975U L=0.065U
M511_ GND n__O__f_529_6 O_af_529_6 GND nmos W=0.0975U L=0.065U
M512_ GND n__O__t_530_6 O_at_530_6 GND nmos W=0.0975U L=0.065U
M513_ GND n__O__f_530_6 O_af_530_6 GND nmos W=0.0975U L=0.065U
M514_ GND n__O__t_531_6 O_at_531_6 GND nmos W=0.0975U L=0.065U
M515_ GND n__O__f_531_6 O_af_531_6 GND nmos W=0.0975U L=0.065U
M516_ GND p #fb640# GND nmos W=0.0975U L=0.13U
M517_ GND n__s #fb643# GND nmos W=0.0975U L=0.13U
M518_keeper GND Vdd #642 GND nmos W=0.0975U L=3.055U
M519_ GND n__I0__a #fb646# GND nmos W=0.0975U L=0.13U
M520_keeper GND Vdd #645 GND nmos W=0.0975U L=0.715U
M521_ GND n__I1__a #fb649# GND nmos W=0.0975U L=0.13U
M522_keeper GND Vdd #648 GND nmos W=0.0975U L=2.275U
M523_ GND w0i #fb652# GND nmos W=0.0975U L=0.13U
M524_keeper GND Vdd #651 GND nmos W=0.0975U L=2.275U
M525_ GND f #fb655# GND nmos W=0.0975U L=0.13U
M526_keeper GND Vdd #654 GND nmos W=0.0975U L=2.275U
M527_ GND n__w0 #fb658# GND nmos W=0.0975U L=0.13U
M528_keeper GND Vdd #657 GND nmos W=0.0975U L=3.835U
M529_ GND n__w1 #fb661# GND nmos W=0.0975U L=0.13U
M530_keeper GND Vdd #660 GND nmos W=0.0975U L=1.495U
M531_ GND n__O__t_50_6 #fb664# GND nmos W=0.0975U L=0.13U
M532_keeper GND Vdd #663 GND nmos W=0.0975U L=1.495U
M533_ GND n__O__f_50_6 #fb667# GND nmos W=0.0975U L=0.13U
M534_keeper GND Vdd #666 GND nmos W=0.0975U L=1.495U
M535_ GND n__O__t_51_6 #fb670# GND nmos W=0.0975U L=0.13U
M536_keeper GND Vdd #669 GND nmos W=0.0975U L=1.495U
M537_ GND n__O__f_51_6 #fb673# GND nmos W=0.0975U L=0.13U
M538_keeper GND Vdd #672 GND nmos W=0.0975U L=1.495U
M539_ GND n__O__t_52_6 #fb676# GND nmos W=0.0975U L=0.13U
M540_keeper GND Vdd #675 GND nmos W=0.0975U L=1.495U
M541_ GND n__O__f_52_6 #fb679# GND nmos W=0.0975U L=0.13U
M542_keeper GND Vdd #678 GND nmos W=0.0975U L=1.495U
M543_ GND n__O__t_53_6 #fb682# GND nmos W=0.0975U L=0.13U
M544_keeper GND Vdd #681 GND nmos W=0.0975U L=1.495U
M545_ GND n__O__f_53_6 #fb685# GND nmos W=0.0975U L=0.13U
M546_keeper GND Vdd #684 GND nmos W=0.0975U L=1.495U
M547_ GND n__O__t_54_6 #fb688# GND nmos W=0.0975U L=0.13U
M548_keeper GND Vdd #687 GND nmos W=0.0975U L=1.495U
M549_ GND n__O__f_54_6 #fb691# GND nmos W=0.0975U L=0.13U
M550_keeper GND Vdd #690 GND nmos W=0.0975U L=1.495U
M551_ GND n__O__t_55_6 #fb694# GND nmos W=0.0975U L=0.13U
M552_keeper GND Vdd #693 GND nmos W=0.0975U L=1.495U
M553_ GND n__O__f_55_6 #fb697# GND nmos W=0.0975U L=0.13U
M554_keeper GND Vdd #696 GND nmos W=0.0975U L=1.495U
M555_ GND n__O__t_56_6 #fb700# GND nmos W=0.0975U L=0.13U
M556_keeper GND Vdd #699 GND nmos W=0.0975U L=1.495U
M557_ GND n__O__f_56_6 #fb703# GND nmos W=0.0975U L=0.13U
M558_keeper GND Vdd #702 GND nmos W=0.0975U L=1.495U
M559_ GND n__O__t_57_6 #fb706# GND nmos W=0.0975U L=0.13U
M560_keeper GND Vdd #705 GND nmos W=0.0975U L=1.495U
M561_ GND n__O__f_57_6 #fb709# GND nmos W=0.0975U L=0.13U
M562_keeper GND Vdd #708 GND nmos W=0.0975U L=1.495U
M563_ GND n__O__t_58_6 #fb712# GND nmos W=0.0975U L=0.13U
M564_keeper GND Vdd #711 GND nmos W=0.0975U L=1.495U
M565_ GND n__O__f_58_6 #fb715# GND nmos W=0.0975U L=0.13U
M566_keeper GND Vdd #714 GND nmos W=0.0975U L=1.495U
M567_ GND n__O__t_59_6 #fb718# GND nmos W=0.0975U L=0.13U
M568_keeper GND Vdd #717 GND nmos W=0.0975U L=1.495U
M569_ GND n__O__f_59_6 #fb721# GND nmos W=0.0975U L=0.13U
M570_keeper GND Vdd #720 GND nmos W=0.0975U L=1.495U
M571_ GND n__O__t_510_6 #fb724# GND nmos W=0.0975U L=0.13U
M572_keeper GND Vdd #723 GND nmos W=0.0975U L=1.495U
M573_ GND n__O__f_510_6 #fb727# GND nmos W=0.0975U L=0.13U
M574_keeper GND Vdd #726 GND nmos W=0.0975U L=1.495U
M575_ GND n__O__t_511_6 #fb730# GND nmos W=0.0975U L=0.13U
M576_keeper GND Vdd #729 GND nmos W=0.0975U L=1.495U
M577_ GND n__O__f_511_6 #fb733# GND nmos W=0.0975U L=0.13U
M578_keeper GND Vdd #732 GND nmos W=0.0975U L=1.495U
M579_ GND n__O__t_512_6 #fb736# GND nmos W=0.0975U L=0.13U
M580_keeper GND Vdd #735 GND nmos W=0.0975U L=1.495U
M581_ GND n__O__f_512_6 #fb739# GND nmos W=0.0975U L=0.13U
M582_keeper GND Vdd #738 GND nmos W=0.0975U L=1.495U
M583_ GND n__O__t_513_6 #fb742# GND nmos W=0.0975U L=0.13U
M584_keeper GND Vdd #741 GND nmos W=0.0975U L=1.495U
M585_ GND n__O__f_513_6 #fb745# GND nmos W=0.0975U L=0.13U
M586_keeper GND Vdd #744 GND nmos W=0.0975U L=1.495U
M587_ GND n__O__t_514_6 #fb748# GND nmos W=0.0975U L=0.13U
M588_keeper GND Vdd #747 GND nmos W=0.0975U L=1.495U
M589_ GND n__O__f_514_6 #fb751# GND nmos W=0.0975U L=0.13U
M590_keeper GND Vdd #750 GND nmos W=0.0975U L=1.495U
M591_ GND n__O__t_515_6 #fb754# GND nmos W=0.0975U L=0.13U
M592_keeper GND Vdd #753 GND nmos W=0.0975U L=1.495U
M593_ GND n__O__f_515_6 #fb757# GND nmos W=0.0975U L=0.13U
M594_keeper GND Vdd #756 GND nmos W=0.0975U L=1.495U
M595_ GND n__O__t_516_6 #fb760# GND nmos W=0.0975U L=0.13U
M596_keeper GND Vdd #759 GND nmos W=0.0975U L=1.495U
M597_ GND n__O__f_516_6 #fb763# GND nmos W=0.0975U L=0.13U
M598_keeper GND Vdd #762 GND nmos W=0.0975U L=1.495U
M599_ GND n__O__t_517_6 #fb766# GND nmos W=0.0975U L=0.13U
M600_keeper GND Vdd #765 GND nmos W=0.0975U L=1.495U
M601_ GND n__O__f_517_6 #fb769# GND nmos W=0.0975U L=0.13U
M602_keeper GND Vdd #768 GND nmos W=0.0975U L=1.495U
M603_ GND n__O__t_518_6 #fb772# GND nmos W=0.0975U L=0.13U
M604_keeper GND Vdd #771 GND nmos W=0.0975U L=1.495U
M605_ GND n__O__f_518_6 #fb775# GND nmos W=0.0975U L=0.13U
M606_keeper GND Vdd #774 GND nmos W=0.0975U L=1.495U
M607_ GND n__O__t_519_6 #fb778# GND nmos W=0.0975U L=0.13U
M608_keeper GND Vdd #777 GND nmos W=0.0975U L=1.495U
M609_ GND n__O__f_519_6 #fb781# GND nmos W=0.0975U L=0.13U
M610_keeper GND Vdd #780 GND nmos W=0.0975U L=1.495U
M611_ GND n__O__t_520_6 #fb784# GND nmos W=0.0975U L=0.13U
M612_keeper GND Vdd #783 GND nmos W=0.0975U L=1.495U
M613_ GND n__O__f_520_6 #fb787# GND nmos W=0.0975U L=0.13U
M614_keeper GND Vdd #786 GND nmos W=0.0975U L=1.495U
M615_ GND n__O__t_521_6 #fb790# GND nmos W=0.0975U L=0.13U
M616_keeper GND Vdd #789 GND nmos W=0.0975U L=1.495U
M617_ GND n__O__f_521_6 #fb793# GND nmos W=0.0975U L=0.13U
M618_keeper GND Vdd #792 GND nmos W=0.0975U L=1.495U
M619_ GND n__O__t_522_6 #fb796# GND nmos W=0.0975U L=0.13U
M620_keeper GND Vdd #795 GND nmos W=0.0975U L=1.495U
M621_ GND n__O__f_522_6 #fb799# GND nmos W=0.0975U L=0.13U
M622_keeper GND Vdd #798 GND nmos W=0.0975U L=1.495U
M623_ GND n__O__t_523_6 #fb802# GND nmos W=0.0975U L=0.13U
M624_keeper GND Vdd #801 GND nmos W=0.0975U L=1.495U
M625_ GND n__O__f_523_6 #fb805# GND nmos W=0.0975U L=0.13U
M626_keeper GND Vdd #804 GND nmos W=0.0975U L=1.495U
M627_ GND n__O__t_524_6 #fb808# GND nmos W=0.0975U L=0.13U
M628_keeper GND Vdd #807 GND nmos W=0.0975U L=1.495U
M629_ GND n__O__f_524_6 #fb811# GND nmos W=0.0975U L=0.13U
M630_keeper GND Vdd #810 GND nmos W=0.0975U L=1.495U
M631_ GND n__O__t_525_6 #fb814# GND nmos W=0.0975U L=0.13U
M632_keeper GND Vdd #813 GND nmos W=0.0975U L=1.495U
M633_ GND n__O__f_525_6 #fb817# GND nmos W=0.0975U L=0.13U
M634_keeper GND Vdd #816 GND nmos W=0.0975U L=1.495U
M635_ GND n__O__t_526_6 #fb820# GND nmos W=0.0975U L=0.13U
M636_keeper GND Vdd #819 GND nmos W=0.0975U L=1.495U
M637_ GND n__O__f_526_6 #fb823# GND nmos W=0.0975U L=0.13U
M638_keeper GND Vdd #822 GND nmos W=0.0975U L=1.495U
M639_ GND n__O__t_527_6 #fb826# GND nmos W=0.0975U L=0.13U
M640_keeper GND Vdd #825 GND nmos W=0.0975U L=1.495U
M641_ GND n__O__f_527_6 #fb829# GND nmos W=0.0975U L=0.13U
M642_keeper GND Vdd #828 GND nmos W=0.0975U L=1.495U
M643_ GND n__O__t_528_6 #fb832# GND nmos W=0.0975U L=0.13U
M644_keeper GND Vdd #831 GND nmos W=0.0975U L=1.495U
M645_ GND n__O__f_528_6 #fb835# GND nmos W=0.0975U L=0.13U
M646_keeper GND Vdd #834 GND nmos W=0.0975U L=1.495U
M647_ GND n__O__t_529_6 #fb838# GND nmos W=0.0975U L=0.13U
M648_keeper GND Vdd #837 GND nmos W=0.0975U L=1.495U
M649_ GND n__O__f_529_6 #fb841# GND nmos W=0.0975U L=0.13U
M650_keeper GND Vdd #840 GND nmos W=0.0975U L=1.495U
M651_ GND n__O__t_530_6 #fb844# GND nmos W=0.0975U L=0.13U
M652_keeper GND Vdd #843 GND nmos W=0.0975U L=1.495U
M653_ GND n__O__f_530_6 #fb847# GND nmos W=0.0975U L=0.13U
M654_keeper GND Vdd #846 GND nmos W=0.0975U L=1.495U
M655_ GND n__O__t_531_6 #fb850# GND nmos W=0.0975U L=0.13U
M656_keeper GND Vdd #849 GND nmos W=0.0975U L=1.495U
M657_ GND n__O__f_531_6 #fb853# GND nmos W=0.0975U L=0.13U
M658_keeper GND Vdd #852 GND nmos W=0.0975U L=1.495U
M659_keeper GND Vdd #855 GND nmos W=0.0975U L=1.495U
M660_ #7 n__s p Vdd pmos W=1.3U L=0.065U
M661_ #15 s p GND nmos W=0.78U L=0.065U
M662_keeper #641 #fb640# p Vdd pmos W=0.0975U L=0.065U
M663_keeper #642 #fb640# p GND nmos W=0.0975U L=0.065U
M664_ #4 I1_aa #3 Vdd pmos W=1.3U L=0.065U
M665_ #3 n__u #7 Vdd pmos W=1.3U L=0.065U
M666_ #572 n__v n__u GND nmos W=0.0975U L=0.065U
M667_ #573 I0_af_531_6 n__u Vdd pmos W=0.1625U L=0.065U
M668_ #50 f n__s GND nmos W=0.78U L=0.065U
M669_keeper #644 #fb643# n__s Vdd pmos W=0.0975U L=0.065U
M670_keeper #645 #fb643# n__s GND nmos W=0.0975U L=0.065U
M671_ #12 n__I1__a #11 GND nmos W=0.78U L=0.065U
M672_ #11 v #15 GND nmos W=0.78U L=0.065U
M673_ #53 inv__w0i n__I0__a GND nmos W=0.0975U L=0.065U
M674_ #58 w1 n__I0__a Vdd pmos W=0.1625U L=0.065U
M675_keeper #647 #fb646# n__I0__a Vdd pmos W=0.0975U L=0.065U
M676_keeper #648 #fb646# n__I0__a GND nmos W=0.0975U L=0.065U
M677_ #59 inv__w0i n__I1__a GND nmos W=0.0975U L=0.065U
M678_ #63 w1 n__I1__a Vdd pmos W=0.1625U L=0.065U
M679_keeper #650 #fb649# n__I1__a Vdd pmos W=0.0975U L=0.065U
M680_keeper #651 #fb649# n__I1__a GND nmos W=0.0975U L=0.065U
M681_ #20 inv__p w0i Vdd pmos W=0.1625U L=0.065U
M682_ #22 p w0i Vdd pmos W=0.1625U L=0.065U
M683_ #24 O_aa w0i GND nmos W=0.0975U L=0.065U
M684_keeper #653 #fb652# w0i Vdd pmos W=0.0975U L=0.065U
M685_keeper #654 #fb652# w0i GND nmos W=0.0975U L=0.065U
M686_ #19 n__u #20 Vdd pmos W=0.1625U L=0.065U
M687_ #19 n__v #22 Vdd pmos W=0.1625U L=0.065U
M688_ #574 n__u n__v GND nmos W=0.0975U L=0.065U
M689_ #575 I1_af_531_6 n__v Vdd pmos W=0.1625U L=0.065U
M690_ #33 inv__p f Vdd pmos W=0.1625U L=0.065U
M691_ #35 p f Vdd pmos W=0.1625U L=0.065U
M692_ #36 n__w1 f GND nmos W=0.0975U L=0.065U
M693_keeper #656 #fb655# f Vdd pmos W=0.0975U L=0.065U
M694_keeper #657 #fb655# f GND nmos W=0.0975U L=0.065U
M695_ #29 n__w0 #28 Vdd pmos W=0.1625U L=0.065U
M696_ #29 n__w1 #28 Vdd pmos W=0.1625U L=0.065U
M697_ #28 u #33 Vdd pmos W=0.1625U L=0.065U
M698_ #28 v #35 Vdd pmos W=0.1625U L=0.065U
M699_ #30 n__I0__a #29 Vdd pmos W=0.1625U L=0.065U
M700_ #30 n__I1__a #29 Vdd pmos W=0.1625U L=0.065U
M701_ #38 p n__w0 GND nmos W=0.0975U L=0.065U
M702_ #40 inv__p n__w0 GND nmos W=0.0975U L=0.065U
M703_ #42 inv__f n__w0 Vdd pmos W=0.1625U L=0.065U
M704_keeper #659 #fb658# n__w0 Vdd pmos W=0.0975U L=0.065U
M705_keeper #660 #fb658# n__w0 GND nmos W=0.0975U L=0.065U
M706_ #45 p n__w1 GND nmos W=0.0975U L=0.065U
M707_ #47 inv__p n__w1 GND nmos W=0.0975U L=0.065U
M708_ #49 inv__f n__w1 Vdd pmos W=0.1625U L=0.065U
M709_keeper #662 #fb661# n__w1 Vdd pmos W=0.0975U L=0.065U
M710_keeper #663 #fb661# n__w1 GND nmos W=0.0975U L=0.065U
M711_ #37 I0_af_50_6 #38 GND nmos W=0.0975U L=0.065U
M712_ #37 I1_af_50_6 #40 GND nmos W=0.0975U L=0.065U
M713_ #44 I0_at_50_6 #45 GND nmos W=0.0975U L=0.065U
M714_ #44 I1_at_50_6 #47 GND nmos W=0.0975U L=0.065U
M715_ #54 w1 #53 GND nmos W=0.0975U L=0.065U
M716_ #54 w0 #53 GND nmos W=0.0975U L=0.065U
M717_ #55 O_aa #54 GND nmos W=0.0975U L=0.065U
M718_ #57 w0 #58 Vdd pmos W=0.1625U L=0.065U
M719_ #60 w1 #59 GND nmos W=0.0975U L=0.065U
M720_ #60 w0 #59 GND nmos W=0.0975U L=0.065U
M721_ #61 O_aa #60 GND nmos W=0.0975U L=0.065U
M722_ #62 w0 #63 Vdd pmos W=0.1625U L=0.065U
M723_ #66 I0_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M724_ #67 I1_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M725_ #68 I0_at_50_6 n__O__t_50_6 Vdd pmos W=0.1625U L=0.065U
M726_ #69 I1_at_50_6 n__O__t_50_6 Vdd pmos W=0.1625U L=0.065U
M727_keeper #665 #fb664# n__O__t_50_6 Vdd pmos W=0.0975U L=0.065U
M728_keeper #666 #fb664# n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M729_ #65 p #66 GND nmos W=0.0975U L=0.065U
M730_ #65 inv__p #67 GND nmos W=0.0975U L=0.065U
M731_ #72 I0_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M732_ #73 I1_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M733_ #74 I0_af_50_6 n__O__f_50_6 Vdd pmos W=0.1625U L=0.065U
M734_ #75 I1_af_50_6 n__O__f_50_6 Vdd pmos W=0.1625U L=0.065U
M735_keeper #668 #fb667# n__O__f_50_6 Vdd pmos W=0.0975U L=0.065U
M736_keeper #669 #fb667# n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M737_ #71 p #72 GND nmos W=0.0975U L=0.065U
M738_ #71 inv__p #73 GND nmos W=0.0975U L=0.065U
M739_ #78 I0_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M740_ #80 I1_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M741_ #82 I0_at_51_6 n__O__t_51_6 Vdd pmos W=0.1625U L=0.065U
M742_ #83 I1_at_51_6 n__O__t_51_6 Vdd pmos W=0.1625U L=0.065U
M743_keeper #671 #fb670# n__O__t_51_6 Vdd pmos W=0.0975U L=0.065U
M744_keeper #672 #fb670# n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M745_ #77 p #78 GND nmos W=0.0975U L=0.065U
M746_ #77 inv__p #80 GND nmos W=0.0975U L=0.065U
M747_ #86 I0_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M748_ #88 I1_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M749_ #90 I0_af_51_6 n__O__f_51_6 Vdd pmos W=0.1625U L=0.065U
M750_ #91 I1_af_51_6 n__O__f_51_6 Vdd pmos W=0.1625U L=0.065U
M751_keeper #674 #fb673# n__O__f_51_6 Vdd pmos W=0.0975U L=0.065U
M752_keeper #675 #fb673# n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M753_ #85 p #86 GND nmos W=0.0975U L=0.065U
M754_ #85 inv__p #88 GND nmos W=0.0975U L=0.065U
M755_ #94 I0_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M756_ #96 I1_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M757_ #98 I0_at_52_6 n__O__t_52_6 Vdd pmos W=0.1625U L=0.065U
M758_ #99 I1_at_52_6 n__O__t_52_6 Vdd pmos W=0.1625U L=0.065U
M759_keeper #677 #fb676# n__O__t_52_6 Vdd pmos W=0.0975U L=0.065U
M760_keeper #678 #fb676# n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M761_ #93 p #94 GND nmos W=0.0975U L=0.065U
M762_ #93 inv__p #96 GND nmos W=0.0975U L=0.065U
M763_ #102 I0_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M764_ #104 I1_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M765_ #106 I0_af_52_6 n__O__f_52_6 Vdd pmos W=0.1625U L=0.065U
M766_ #107 I1_af_52_6 n__O__f_52_6 Vdd pmos W=0.1625U L=0.065U
M767_keeper #680 #fb679# n__O__f_52_6 Vdd pmos W=0.0975U L=0.065U
M768_keeper #681 #fb679# n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M769_ #101 p #102 GND nmos W=0.0975U L=0.065U
M770_ #101 inv__p #104 GND nmos W=0.0975U L=0.065U
M771_ #110 I0_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M772_ #112 I1_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M773_ #114 I0_at_53_6 n__O__t_53_6 Vdd pmos W=0.1625U L=0.065U
M774_ #115 I1_at_53_6 n__O__t_53_6 Vdd pmos W=0.1625U L=0.065U
M775_keeper #683 #fb682# n__O__t_53_6 Vdd pmos W=0.0975U L=0.065U
M776_keeper #684 #fb682# n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M777_ #109 p #110 GND nmos W=0.0975U L=0.065U
M778_ #109 inv__p #112 GND nmos W=0.0975U L=0.065U
M779_ #118 I0_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M780_ #120 I1_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M781_ #122 I0_af_53_6 n__O__f_53_6 Vdd pmos W=0.1625U L=0.065U
M782_ #123 I1_af_53_6 n__O__f_53_6 Vdd pmos W=0.1625U L=0.065U
M783_keeper #686 #fb685# n__O__f_53_6 Vdd pmos W=0.0975U L=0.065U
M784_keeper #687 #fb685# n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M785_ #117 p #118 GND nmos W=0.0975U L=0.065U
M786_ #117 inv__p #120 GND nmos W=0.0975U L=0.065U
M787_ #126 I0_at_54_6 n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M788_ #128 I1_at_54_6 n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M789_ #130 I0_at_54_6 n__O__t_54_6 Vdd pmos W=0.1625U L=0.065U
M790_ #131 I1_at_54_6 n__O__t_54_6 Vdd pmos W=0.1625U L=0.065U
M791_keeper #689 #fb688# n__O__t_54_6 Vdd pmos W=0.0975U L=0.065U
M792_keeper #690 #fb688# n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M793_ #125 p #126 GND nmos W=0.0975U L=0.065U
M794_ #125 inv__p #128 GND nmos W=0.0975U L=0.065U
M795_ #134 I0_af_54_6 n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M796_ #136 I1_af_54_6 n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M797_ #138 I0_af_54_6 n__O__f_54_6 Vdd pmos W=0.1625U L=0.065U
M798_ #139 I1_af_54_6 n__O__f_54_6 Vdd pmos W=0.1625U L=0.065U
M799_keeper #692 #fb691# n__O__f_54_6 Vdd pmos W=0.0975U L=0.065U
M800_keeper #693 #fb691# n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M801_ #133 p #134 GND nmos W=0.0975U L=0.065U
M802_ #133 inv__p #136 GND nmos W=0.0975U L=0.065U
M803_ #142 I0_at_55_6 n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M804_ #144 I1_at_55_6 n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M805_ #146 I0_at_55_6 n__O__t_55_6 Vdd pmos W=0.1625U L=0.065U
M806_ #147 I1_at_55_6 n__O__t_55_6 Vdd pmos W=0.1625U L=0.065U
M807_keeper #695 #fb694# n__O__t_55_6 Vdd pmos W=0.0975U L=0.065U
M808_keeper #696 #fb694# n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M809_ #141 p #142 GND nmos W=0.0975U L=0.065U
M810_ #141 inv__p #144 GND nmos W=0.0975U L=0.065U
M811_ #150 I0_af_55_6 n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M812_ #152 I1_af_55_6 n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M813_ #154 I0_af_55_6 n__O__f_55_6 Vdd pmos W=0.1625U L=0.065U
M814_ #155 I1_af_55_6 n__O__f_55_6 Vdd pmos W=0.1625U L=0.065U
M815_keeper #698 #fb697# n__O__f_55_6 Vdd pmos W=0.0975U L=0.065U
M816_keeper #699 #fb697# n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M817_ #149 p #150 GND nmos W=0.0975U L=0.065U
M818_ #149 inv__p #152 GND nmos W=0.0975U L=0.065U
M819_ #158 I0_at_56_6 n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M820_ #160 I1_at_56_6 n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M821_ #162 I0_at_56_6 n__O__t_56_6 Vdd pmos W=0.1625U L=0.065U
M822_ #163 I1_at_56_6 n__O__t_56_6 Vdd pmos W=0.1625U L=0.065U
M823_keeper #701 #fb700# n__O__t_56_6 Vdd pmos W=0.0975U L=0.065U
M824_keeper #702 #fb700# n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M825_ #157 p #158 GND nmos W=0.0975U L=0.065U
M826_ #157 inv__p #160 GND nmos W=0.0975U L=0.065U
M827_ #166 I0_af_56_6 n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M828_ #168 I1_af_56_6 n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M829_ #170 I0_af_56_6 n__O__f_56_6 Vdd pmos W=0.1625U L=0.065U
M830_ #171 I1_af_56_6 n__O__f_56_6 Vdd pmos W=0.1625U L=0.065U
M831_keeper #704 #fb703# n__O__f_56_6 Vdd pmos W=0.0975U L=0.065U
M832_keeper #705 #fb703# n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M833_ #165 p #166 GND nmos W=0.0975U L=0.065U
M834_ #165 inv__p #168 GND nmos W=0.0975U L=0.065U
M835_ #174 I0_at_57_6 n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M836_ #176 I1_at_57_6 n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M837_ #178 I0_at_57_6 n__O__t_57_6 Vdd pmos W=0.1625U L=0.065U
M838_ #179 I1_at_57_6 n__O__t_57_6 Vdd pmos W=0.1625U L=0.065U
M839_keeper #707 #fb706# n__O__t_57_6 Vdd pmos W=0.0975U L=0.065U
M840_keeper #708 #fb706# n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M841_ #173 p #174 GND nmos W=0.0975U L=0.065U
M842_ #173 inv__p #176 GND nmos W=0.0975U L=0.065U
M843_ #182 I0_af_57_6 n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M844_ #184 I1_af_57_6 n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M845_ #186 I0_af_57_6 n__O__f_57_6 Vdd pmos W=0.1625U L=0.065U
M846_ #187 I1_af_57_6 n__O__f_57_6 Vdd pmos W=0.1625U L=0.065U
M847_keeper #710 #fb709# n__O__f_57_6 Vdd pmos W=0.0975U L=0.065U
M848_keeper #711 #fb709# n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M849_ #181 p #182 GND nmos W=0.0975U L=0.065U
M850_ #181 inv__p #184 GND nmos W=0.0975U L=0.065U
M851_ #190 I0_at_58_6 n__O__t_58_6 GND nmos W=0.0975U L=0.065U
M852_ #192 I1_at_58_6 n__O__t_58_6 GND nmos W=0.0975U L=0.065U
M853_ #194 I0_at_58_6 n__O__t_58_6 Vdd pmos W=0.1625U L=0.065U
M854_ #195 I1_at_58_6 n__O__t_58_6 Vdd pmos W=0.1625U L=0.065U
M855_keeper #713 #fb712# n__O__t_58_6 Vdd pmos W=0.0975U L=0.065U
M856_keeper #714 #fb712# n__O__t_58_6 GND nmos W=0.0975U L=0.065U
M857_ #189 p #190 GND nmos W=0.0975U L=0.065U
M858_ #189 inv__p #192 GND nmos W=0.0975U L=0.065U
M859_ #198 I0_af_58_6 n__O__f_58_6 GND nmos W=0.0975U L=0.065U
M860_ #200 I1_af_58_6 n__O__f_58_6 GND nmos W=0.0975U L=0.065U
M861_ #202 I0_af_58_6 n__O__f_58_6 Vdd pmos W=0.1625U L=0.065U
M862_ #203 I1_af_58_6 n__O__f_58_6 Vdd pmos W=0.1625U L=0.065U
M863_keeper #716 #fb715# n__O__f_58_6 Vdd pmos W=0.0975U L=0.065U
M864_keeper #717 #fb715# n__O__f_58_6 GND nmos W=0.0975U L=0.065U
M865_ #197 p #198 GND nmos W=0.0975U L=0.065U
M866_ #197 inv__p #200 GND nmos W=0.0975U L=0.065U
M867_ #206 I0_at_59_6 n__O__t_59_6 GND nmos W=0.0975U L=0.065U
M868_ #208 I1_at_59_6 n__O__t_59_6 GND nmos W=0.0975U L=0.065U
M869_ #210 I0_at_59_6 n__O__t_59_6 Vdd pmos W=0.1625U L=0.065U
M870_ #211 I1_at_59_6 n__O__t_59_6 Vdd pmos W=0.1625U L=0.065U
M871_keeper #719 #fb718# n__O__t_59_6 Vdd pmos W=0.0975U L=0.065U
M872_keeper #720 #fb718# n__O__t_59_6 GND nmos W=0.0975U L=0.065U
M873_ #205 p #206 GND nmos W=0.0975U L=0.065U
M874_ #205 inv__p #208 GND nmos W=0.0975U L=0.065U
M875_ #214 I0_af_59_6 n__O__f_59_6 GND nmos W=0.0975U L=0.065U
M876_ #216 I1_af_59_6 n__O__f_59_6 GND nmos W=0.0975U L=0.065U
M877_ #218 I0_af_59_6 n__O__f_59_6 Vdd pmos W=0.1625U L=0.065U
M878_ #219 I1_af_59_6 n__O__f_59_6 Vdd pmos W=0.1625U L=0.065U
M879_keeper #722 #fb721# n__O__f_59_6 Vdd pmos W=0.0975U L=0.065U
M880_keeper #723 #fb721# n__O__f_59_6 GND nmos W=0.0975U L=0.065U
M881_ #213 p #214 GND nmos W=0.0975U L=0.065U
M882_ #213 inv__p #216 GND nmos W=0.0975U L=0.065U
M883_ #222 I0_at_510_6 n__O__t_510_6 GND nmos W=0.0975U L=0.065U
M884_ #224 I1_at_510_6 n__O__t_510_6 GND nmos W=0.0975U L=0.065U
M885_ #226 I0_at_510_6 n__O__t_510_6 Vdd pmos W=0.1625U L=0.065U
M886_ #227 I1_at_510_6 n__O__t_510_6 Vdd pmos W=0.1625U L=0.065U
M887_keeper #725 #fb724# n__O__t_510_6 Vdd pmos W=0.0975U L=0.065U
M888_keeper #726 #fb724# n__O__t_510_6 GND nmos W=0.0975U L=0.065U
M889_ #221 p #222 GND nmos W=0.0975U L=0.065U
M890_ #221 inv__p #224 GND nmos W=0.0975U L=0.065U
M891_ #230 I0_af_510_6 n__O__f_510_6 GND nmos W=0.0975U L=0.065U
M892_ #232 I1_af_510_6 n__O__f_510_6 GND nmos W=0.0975U L=0.065U
M893_ #234 I0_af_510_6 n__O__f_510_6 Vdd pmos W=0.1625U L=0.065U
M894_ #235 I1_af_510_6 n__O__f_510_6 Vdd pmos W=0.1625U L=0.065U
M895_keeper #728 #fb727# n__O__f_510_6 Vdd pmos W=0.0975U L=0.065U
M896_keeper #729 #fb727# n__O__f_510_6 GND nmos W=0.0975U L=0.065U
M897_ #229 p #230 GND nmos W=0.0975U L=0.065U
M898_ #229 inv__p #232 GND nmos W=0.0975U L=0.065U
M899_ #238 I0_at_511_6 n__O__t_511_6 GND nmos W=0.0975U L=0.065U
M900_ #240 I1_at_511_6 n__O__t_511_6 GND nmos W=0.0975U L=0.065U
M901_ #242 I0_at_511_6 n__O__t_511_6 Vdd pmos W=0.1625U L=0.065U
M902_ #243 I1_at_511_6 n__O__t_511_6 Vdd pmos W=0.1625U L=0.065U
M903_keeper #731 #fb730# n__O__t_511_6 Vdd pmos W=0.0975U L=0.065U
M904_keeper #732 #fb730# n__O__t_511_6 GND nmos W=0.0975U L=0.065U
M905_ #237 p #238 GND nmos W=0.0975U L=0.065U
M906_ #237 inv__p #240 GND nmos W=0.0975U L=0.065U
M907_ #246 I0_af_511_6 n__O__f_511_6 GND nmos W=0.0975U L=0.065U
M908_ #248 I1_af_511_6 n__O__f_511_6 GND nmos W=0.0975U L=0.065U
M909_ #250 I0_af_511_6 n__O__f_511_6 Vdd pmos W=0.1625U L=0.065U
M910_ #251 I1_af_511_6 n__O__f_511_6 Vdd pmos W=0.1625U L=0.065U
M911_keeper #734 #fb733# n__O__f_511_6 Vdd pmos W=0.0975U L=0.065U
M912_keeper #735 #fb733# n__O__f_511_6 GND nmos W=0.0975U L=0.065U
M913_ #245 p #246 GND nmos W=0.0975U L=0.065U
M914_ #245 inv__p #248 GND nmos W=0.0975U L=0.065U
M915_ #254 I0_at_512_6 n__O__t_512_6 GND nmos W=0.0975U L=0.065U
M916_ #256 I1_at_512_6 n__O__t_512_6 GND nmos W=0.0975U L=0.065U
M917_ #258 I0_at_512_6 n__O__t_512_6 Vdd pmos W=0.1625U L=0.065U
M918_ #259 I1_at_512_6 n__O__t_512_6 Vdd pmos W=0.1625U L=0.065U
M919_keeper #737 #fb736# n__O__t_512_6 Vdd pmos W=0.0975U L=0.065U
M920_keeper #738 #fb736# n__O__t_512_6 GND nmos W=0.0975U L=0.065U
M921_ #253 p #254 GND nmos W=0.0975U L=0.065U
M922_ #253 inv__p #256 GND nmos W=0.0975U L=0.065U
M923_ #262 I0_af_512_6 n__O__f_512_6 GND nmos W=0.0975U L=0.065U
M924_ #264 I1_af_512_6 n__O__f_512_6 GND nmos W=0.0975U L=0.065U
M925_ #266 I0_af_512_6 n__O__f_512_6 Vdd pmos W=0.1625U L=0.065U
M926_ #267 I1_af_512_6 n__O__f_512_6 Vdd pmos W=0.1625U L=0.065U
M927_keeper #740 #fb739# n__O__f_512_6 Vdd pmos W=0.0975U L=0.065U
M928_keeper #741 #fb739# n__O__f_512_6 GND nmos W=0.0975U L=0.065U
M929_ #261 p #262 GND nmos W=0.0975U L=0.065U
M930_ #261 inv__p #264 GND nmos W=0.0975U L=0.065U
M931_ #270 I0_at_513_6 n__O__t_513_6 GND nmos W=0.0975U L=0.065U
M932_ #272 I1_at_513_6 n__O__t_513_6 GND nmos W=0.0975U L=0.065U
M933_ #274 I0_at_513_6 n__O__t_513_6 Vdd pmos W=0.1625U L=0.065U
M934_ #275 I1_at_513_6 n__O__t_513_6 Vdd pmos W=0.1625U L=0.065U
M935_keeper #743 #fb742# n__O__t_513_6 Vdd pmos W=0.0975U L=0.065U
M936_keeper #744 #fb742# n__O__t_513_6 GND nmos W=0.0975U L=0.065U
M937_ #269 p #270 GND nmos W=0.0975U L=0.065U
M938_ #269 inv__p #272 GND nmos W=0.0975U L=0.065U
M939_ #278 I0_af_513_6 n__O__f_513_6 GND nmos W=0.0975U L=0.065U
M940_ #280 I1_af_513_6 n__O__f_513_6 GND nmos W=0.0975U L=0.065U
M941_ #282 I0_af_513_6 n__O__f_513_6 Vdd pmos W=0.1625U L=0.065U
M942_ #283 I1_af_513_6 n__O__f_513_6 Vdd pmos W=0.1625U L=0.065U
M943_keeper #746 #fb745# n__O__f_513_6 Vdd pmos W=0.0975U L=0.065U
M944_keeper #747 #fb745# n__O__f_513_6 GND nmos W=0.0975U L=0.065U
M945_ #277 p #278 GND nmos W=0.0975U L=0.065U
M946_ #277 inv__p #280 GND nmos W=0.0975U L=0.065U
M947_ #286 I0_at_514_6 n__O__t_514_6 GND nmos W=0.0975U L=0.065U
M948_ #288 I1_at_514_6 n__O__t_514_6 GND nmos W=0.0975U L=0.065U
M949_ #290 I0_at_514_6 n__O__t_514_6 Vdd pmos W=0.1625U L=0.065U
M950_ #291 I1_at_514_6 n__O__t_514_6 Vdd pmos W=0.1625U L=0.065U
M951_keeper #749 #fb748# n__O__t_514_6 Vdd pmos W=0.0975U L=0.065U
M952_keeper #750 #fb748# n__O__t_514_6 GND nmos W=0.0975U L=0.065U
M953_ #285 p #286 GND nmos W=0.0975U L=0.065U
M954_ #285 inv__p #288 GND nmos W=0.0975U L=0.065U
M955_ #294 I0_af_514_6 n__O__f_514_6 GND nmos W=0.0975U L=0.065U
M956_ #296 I1_af_514_6 n__O__f_514_6 GND nmos W=0.0975U L=0.065U
M957_ #298 I0_af_514_6 n__O__f_514_6 Vdd pmos W=0.1625U L=0.065U
M958_ #299 I1_af_514_6 n__O__f_514_6 Vdd pmos W=0.1625U L=0.065U
M959_keeper #752 #fb751# n__O__f_514_6 Vdd pmos W=0.0975U L=0.065U
M960_keeper #753 #fb751# n__O__f_514_6 GND nmos W=0.0975U L=0.065U
M961_ #293 p #294 GND nmos W=0.0975U L=0.065U
M962_ #293 inv__p #296 GND nmos W=0.0975U L=0.065U
M963_ #302 I0_at_515_6 n__O__t_515_6 GND nmos W=0.0975U L=0.065U
M964_ #304 I1_at_515_6 n__O__t_515_6 GND nmos W=0.0975U L=0.065U
M965_ #306 I0_at_515_6 n__O__t_515_6 Vdd pmos W=0.1625U L=0.065U
M966_ #307 I1_at_515_6 n__O__t_515_6 Vdd pmos W=0.1625U L=0.065U
M967_keeper #755 #fb754# n__O__t_515_6 Vdd pmos W=0.0975U L=0.065U
M968_keeper #756 #fb754# n__O__t_515_6 GND nmos W=0.0975U L=0.065U
M969_ #301 p #302 GND nmos W=0.0975U L=0.065U
M970_ #301 inv__p #304 GND nmos W=0.0975U L=0.065U
M971_ #310 I0_af_515_6 n__O__f_515_6 GND nmos W=0.0975U L=0.065U
M972_ #312 I1_af_515_6 n__O__f_515_6 GND nmos W=0.0975U L=0.065U
M973_ #314 I0_af_515_6 n__O__f_515_6 Vdd pmos W=0.1625U L=0.065U
M974_ #315 I1_af_515_6 n__O__f_515_6 Vdd pmos W=0.1625U L=0.065U
M975_keeper #758 #fb757# n__O__f_515_6 Vdd pmos W=0.0975U L=0.065U
M976_keeper #759 #fb757# n__O__f_515_6 GND nmos W=0.0975U L=0.065U
M977_ #309 p #310 GND nmos W=0.0975U L=0.065U
M978_ #309 inv__p #312 GND nmos W=0.0975U L=0.065U
M979_ #318 I0_at_516_6 n__O__t_516_6 GND nmos W=0.0975U L=0.065U
M980_ #320 I1_at_516_6 n__O__t_516_6 GND nmos W=0.0975U L=0.065U
M981_ #322 I0_at_516_6 n__O__t_516_6 Vdd pmos W=0.1625U L=0.065U
M982_ #323 I1_at_516_6 n__O__t_516_6 Vdd pmos W=0.1625U L=0.065U
M983_keeper #761 #fb760# n__O__t_516_6 Vdd pmos W=0.0975U L=0.065U
M984_keeper #762 #fb760# n__O__t_516_6 GND nmos W=0.0975U L=0.065U
M985_ #317 p #318 GND nmos W=0.0975U L=0.065U
M986_ #317 inv__p #320 GND nmos W=0.0975U L=0.065U
M987_ #326 I0_af_516_6 n__O__f_516_6 GND nmos W=0.0975U L=0.065U
M988_ #328 I1_af_516_6 n__O__f_516_6 GND nmos W=0.0975U L=0.065U
M989_ #330 I0_af_516_6 n__O__f_516_6 Vdd pmos W=0.1625U L=0.065U
M990_ #331 I1_af_516_6 n__O__f_516_6 Vdd pmos W=0.1625U L=0.065U
M991_keeper #764 #fb763# n__O__f_516_6 Vdd pmos W=0.0975U L=0.065U
M992_keeper #765 #fb763# n__O__f_516_6 GND nmos W=0.0975U L=0.065U
M993_ #325 p #326 GND nmos W=0.0975U L=0.065U
M994_ #325 inv__p #328 GND nmos W=0.0975U L=0.065U
M995_ #334 I0_at_517_6 n__O__t_517_6 GND nmos W=0.0975U L=0.065U
M996_ #336 I1_at_517_6 n__O__t_517_6 GND nmos W=0.0975U L=0.065U
M997_ #338 I0_at_517_6 n__O__t_517_6 Vdd pmos W=0.1625U L=0.065U
M998_ #339 I1_at_517_6 n__O__t_517_6 Vdd pmos W=0.1625U L=0.065U
M999_keeper #767 #fb766# n__O__t_517_6 Vdd pmos W=0.0975U L=0.065U
M1000_keeper #768 #fb766# n__O__t_517_6 GND nmos W=0.0975U L=0.065U
M1001_ #333 p #334 GND nmos W=0.0975U L=0.065U
M1002_ #333 inv__p #336 GND nmos W=0.0975U L=0.065U
M1003_ #342 I0_af_517_6 n__O__f_517_6 GND nmos W=0.0975U L=0.065U
M1004_ #344 I1_af_517_6 n__O__f_517_6 GND nmos W=0.0975U L=0.065U
M1005_ #346 I0_af_517_6 n__O__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1006_ #347 I1_af_517_6 n__O__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1007_keeper #770 #fb769# n__O__f_517_6 Vdd pmos W=0.0975U L=0.065U
M1008_keeper #771 #fb769# n__O__f_517_6 GND nmos W=0.0975U L=0.065U
M1009_ #341 p #342 GND nmos W=0.0975U L=0.065U
M1010_ #341 inv__p #344 GND nmos W=0.0975U L=0.065U
M1011_ #350 I0_at_518_6 n__O__t_518_6 GND nmos W=0.0975U L=0.065U
M1012_ #352 I1_at_518_6 n__O__t_518_6 GND nmos W=0.0975U L=0.065U
M1013_ #354 I0_at_518_6 n__O__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1014_ #355 I1_at_518_6 n__O__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1015_keeper #773 #fb772# n__O__t_518_6 Vdd pmos W=0.0975U L=0.065U
M1016_keeper #774 #fb772# n__O__t_518_6 GND nmos W=0.0975U L=0.065U
M1017_ #349 p #350 GND nmos W=0.0975U L=0.065U
M1018_ #349 inv__p #352 GND nmos W=0.0975U L=0.065U
M1019_ #358 I0_af_518_6 n__O__f_518_6 GND nmos W=0.0975U L=0.065U
M1020_ #360 I1_af_518_6 n__O__f_518_6 GND nmos W=0.0975U L=0.065U
M1021_ #362 I0_af_518_6 n__O__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1022_ #363 I1_af_518_6 n__O__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1023_keeper #776 #fb775# n__O__f_518_6 Vdd pmos W=0.0975U L=0.065U
M1024_keeper #777 #fb775# n__O__f_518_6 GND nmos W=0.0975U L=0.065U
M1025_ #357 p #358 GND nmos W=0.0975U L=0.065U
M1026_ #357 inv__p #360 GND nmos W=0.0975U L=0.065U
M1027_ #366 I0_at_519_6 n__O__t_519_6 GND nmos W=0.0975U L=0.065U
M1028_ #368 I1_at_519_6 n__O__t_519_6 GND nmos W=0.0975U L=0.065U
M1029_ #370 I0_at_519_6 n__O__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1030_ #371 I1_at_519_6 n__O__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1031_keeper #779 #fb778# n__O__t_519_6 Vdd pmos W=0.0975U L=0.065U
M1032_keeper #780 #fb778# n__O__t_519_6 GND nmos W=0.0975U L=0.065U
M1033_ #365 p #366 GND nmos W=0.0975U L=0.065U
M1034_ #365 inv__p #368 GND nmos W=0.0975U L=0.065U
M1035_ #374 I0_af_519_6 n__O__f_519_6 GND nmos W=0.0975U L=0.065U
M1036_ #376 I1_af_519_6 n__O__f_519_6 GND nmos W=0.0975U L=0.065U
M1037_ #378 I0_af_519_6 n__O__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1038_ #379 I1_af_519_6 n__O__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1039_keeper #782 #fb781# n__O__f_519_6 Vdd pmos W=0.0975U L=0.065U
M1040_keeper #783 #fb781# n__O__f_519_6 GND nmos W=0.0975U L=0.065U
M1041_ #373 p #374 GND nmos W=0.0975U L=0.065U
M1042_ #373 inv__p #376 GND nmos W=0.0975U L=0.065U
M1043_ #382 I0_at_520_6 n__O__t_520_6 GND nmos W=0.0975U L=0.065U
M1044_ #384 I1_at_520_6 n__O__t_520_6 GND nmos W=0.0975U L=0.065U
M1045_ #386 I0_at_520_6 n__O__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1046_ #387 I1_at_520_6 n__O__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1047_keeper #785 #fb784# n__O__t_520_6 Vdd pmos W=0.0975U L=0.065U
M1048_keeper #786 #fb784# n__O__t_520_6 GND nmos W=0.0975U L=0.065U
M1049_ #381 p #382 GND nmos W=0.0975U L=0.065U
M1050_ #381 inv__p #384 GND nmos W=0.0975U L=0.065U
M1051_ #390 I0_af_520_6 n__O__f_520_6 GND nmos W=0.0975U L=0.065U
M1052_ #392 I1_af_520_6 n__O__f_520_6 GND nmos W=0.0975U L=0.065U
M1053_ #394 I0_af_520_6 n__O__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1054_ #395 I1_af_520_6 n__O__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1055_keeper #788 #fb787# n__O__f_520_6 Vdd pmos W=0.0975U L=0.065U
M1056_keeper #789 #fb787# n__O__f_520_6 GND nmos W=0.0975U L=0.065U
M1057_ #389 p #390 GND nmos W=0.0975U L=0.065U
M1058_ #389 inv__p #392 GND nmos W=0.0975U L=0.065U
M1059_ #398 I0_at_521_6 n__O__t_521_6 GND nmos W=0.0975U L=0.065U
M1060_ #400 I1_at_521_6 n__O__t_521_6 GND nmos W=0.0975U L=0.065U
M1061_ #402 I0_at_521_6 n__O__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1062_ #403 I1_at_521_6 n__O__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1063_keeper #791 #fb790# n__O__t_521_6 Vdd pmos W=0.0975U L=0.065U
M1064_keeper #792 #fb790# n__O__t_521_6 GND nmos W=0.0975U L=0.065U
M1065_ #397 p #398 GND nmos W=0.0975U L=0.065U
M1066_ #397 inv__p #400 GND nmos W=0.0975U L=0.065U
M1067_ #406 I0_af_521_6 n__O__f_521_6 GND nmos W=0.0975U L=0.065U
M1068_ #408 I1_af_521_6 n__O__f_521_6 GND nmos W=0.0975U L=0.065U
M1069_ #410 I0_af_521_6 n__O__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1070_ #411 I1_af_521_6 n__O__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1071_keeper #794 #fb793# n__O__f_521_6 Vdd pmos W=0.0975U L=0.065U
M1072_keeper #795 #fb793# n__O__f_521_6 GND nmos W=0.0975U L=0.065U
M1073_ #405 p #406 GND nmos W=0.0975U L=0.065U
M1074_ #405 inv__p #408 GND nmos W=0.0975U L=0.065U
M1075_ #414 I0_at_522_6 n__O__t_522_6 GND nmos W=0.0975U L=0.065U
M1076_ #416 I1_at_522_6 n__O__t_522_6 GND nmos W=0.0975U L=0.065U
M1077_ #418 I0_at_522_6 n__O__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1078_ #419 I1_at_522_6 n__O__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1079_keeper #797 #fb796# n__O__t_522_6 Vdd pmos W=0.0975U L=0.065U
M1080_keeper #798 #fb796# n__O__t_522_6 GND nmos W=0.0975U L=0.065U
M1081_ #413 p #414 GND nmos W=0.0975U L=0.065U
M1082_ #413 inv__p #416 GND nmos W=0.0975U L=0.065U
M1083_ #422 I0_af_522_6 n__O__f_522_6 GND nmos W=0.0975U L=0.065U
M1084_ #424 I1_af_522_6 n__O__f_522_6 GND nmos W=0.0975U L=0.065U
M1085_ #426 I0_af_522_6 n__O__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1086_ #427 I1_af_522_6 n__O__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1087_keeper #800 #fb799# n__O__f_522_6 Vdd pmos W=0.0975U L=0.065U
M1088_keeper #801 #fb799# n__O__f_522_6 GND nmos W=0.0975U L=0.065U
M1089_ #421 p #422 GND nmos W=0.0975U L=0.065U
M1090_ #421 inv__p #424 GND nmos W=0.0975U L=0.065U
M1091_ #430 I0_at_523_6 n__O__t_523_6 GND nmos W=0.0975U L=0.065U
M1092_ #432 I1_at_523_6 n__O__t_523_6 GND nmos W=0.0975U L=0.065U
M1093_ #434 I0_at_523_6 n__O__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1094_ #435 I1_at_523_6 n__O__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1095_keeper #803 #fb802# n__O__t_523_6 Vdd pmos W=0.0975U L=0.065U
M1096_keeper #804 #fb802# n__O__t_523_6 GND nmos W=0.0975U L=0.065U
M1097_ #429 p #430 GND nmos W=0.0975U L=0.065U
M1098_ #429 inv__p #432 GND nmos W=0.0975U L=0.065U
M1099_ #438 I0_af_523_6 n__O__f_523_6 GND nmos W=0.0975U L=0.065U
M1100_ #440 I1_af_523_6 n__O__f_523_6 GND nmos W=0.0975U L=0.065U
M1101_ #442 I0_af_523_6 n__O__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1102_ #443 I1_af_523_6 n__O__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1103_keeper #806 #fb805# n__O__f_523_6 Vdd pmos W=0.0975U L=0.065U
M1104_keeper #807 #fb805# n__O__f_523_6 GND nmos W=0.0975U L=0.065U
M1105_ #437 p #438 GND nmos W=0.0975U L=0.065U
M1106_ #437 inv__p #440 GND nmos W=0.0975U L=0.065U
M1107_ #446 I0_at_524_6 n__O__t_524_6 GND nmos W=0.0975U L=0.065U
M1108_ #448 I1_at_524_6 n__O__t_524_6 GND nmos W=0.0975U L=0.065U
M1109_ #450 I0_at_524_6 n__O__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1110_ #451 I1_at_524_6 n__O__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1111_keeper #809 #fb808# n__O__t_524_6 Vdd pmos W=0.0975U L=0.065U
M1112_keeper #810 #fb808# n__O__t_524_6 GND nmos W=0.0975U L=0.065U
M1113_ #445 p #446 GND nmos W=0.0975U L=0.065U
M1114_ #445 inv__p #448 GND nmos W=0.0975U L=0.065U
M1115_ #454 I0_af_524_6 n__O__f_524_6 GND nmos W=0.0975U L=0.065U
M1116_ #456 I1_af_524_6 n__O__f_524_6 GND nmos W=0.0975U L=0.065U
M1117_ #458 I0_af_524_6 n__O__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1118_ #459 I1_af_524_6 n__O__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1119_keeper #812 #fb811# n__O__f_524_6 Vdd pmos W=0.0975U L=0.065U
M1120_keeper #813 #fb811# n__O__f_524_6 GND nmos W=0.0975U L=0.065U
M1121_ #453 p #454 GND nmos W=0.0975U L=0.065U
M1122_ #453 inv__p #456 GND nmos W=0.0975U L=0.065U
M1123_ #462 I0_at_525_6 n__O__t_525_6 GND nmos W=0.0975U L=0.065U
M1124_ #464 I1_at_525_6 n__O__t_525_6 GND nmos W=0.0975U L=0.065U
M1125_ #466 I0_at_525_6 n__O__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1126_ #467 I1_at_525_6 n__O__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1127_keeper #815 #fb814# n__O__t_525_6 Vdd pmos W=0.0975U L=0.065U
M1128_keeper #816 #fb814# n__O__t_525_6 GND nmos W=0.0975U L=0.065U
M1129_ #461 p #462 GND nmos W=0.0975U L=0.065U
M1130_ #461 inv__p #464 GND nmos W=0.0975U L=0.065U
M1131_ #470 I0_af_525_6 n__O__f_525_6 GND nmos W=0.0975U L=0.065U
M1132_ #472 I1_af_525_6 n__O__f_525_6 GND nmos W=0.0975U L=0.065U
M1133_ #474 I0_af_525_6 n__O__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1134_ #475 I1_af_525_6 n__O__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1135_keeper #818 #fb817# n__O__f_525_6 Vdd pmos W=0.0975U L=0.065U
M1136_keeper #819 #fb817# n__O__f_525_6 GND nmos W=0.0975U L=0.065U
M1137_ #469 p #470 GND nmos W=0.0975U L=0.065U
M1138_ #469 inv__p #472 GND nmos W=0.0975U L=0.065U
M1139_ #478 I0_at_526_6 n__O__t_526_6 GND nmos W=0.0975U L=0.065U
M1140_ #480 I1_at_526_6 n__O__t_526_6 GND nmos W=0.0975U L=0.065U
M1141_ #482 I0_at_526_6 n__O__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1142_ #483 I1_at_526_6 n__O__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1143_keeper #821 #fb820# n__O__t_526_6 Vdd pmos W=0.0975U L=0.065U
M1144_keeper #822 #fb820# n__O__t_526_6 GND nmos W=0.0975U L=0.065U
M1145_ #477 p #478 GND nmos W=0.0975U L=0.065U
M1146_ #477 inv__p #480 GND nmos W=0.0975U L=0.065U
M1147_ #486 I0_af_526_6 n__O__f_526_6 GND nmos W=0.0975U L=0.065U
M1148_ #488 I1_af_526_6 n__O__f_526_6 GND nmos W=0.0975U L=0.065U
M1149_ #490 I0_af_526_6 n__O__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1150_ #491 I1_af_526_6 n__O__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1151_keeper #824 #fb823# n__O__f_526_6 Vdd pmos W=0.0975U L=0.065U
M1152_keeper #825 #fb823# n__O__f_526_6 GND nmos W=0.0975U L=0.065U
M1153_ #485 p #486 GND nmos W=0.0975U L=0.065U
M1154_ #485 inv__p #488 GND nmos W=0.0975U L=0.065U
M1155_ #494 I0_at_527_6 n__O__t_527_6 GND nmos W=0.0975U L=0.065U
M1156_ #496 I1_at_527_6 n__O__t_527_6 GND nmos W=0.0975U L=0.065U
M1157_ #498 I0_at_527_6 n__O__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1158_ #499 I1_at_527_6 n__O__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1159_keeper #827 #fb826# n__O__t_527_6 Vdd pmos W=0.0975U L=0.065U
M1160_keeper #828 #fb826# n__O__t_527_6 GND nmos W=0.0975U L=0.065U
M1161_ #493 p #494 GND nmos W=0.0975U L=0.065U
M1162_ #493 inv__p #496 GND nmos W=0.0975U L=0.065U
M1163_ #502 I0_af_527_6 n__O__f_527_6 GND nmos W=0.0975U L=0.065U
M1164_ #504 I1_af_527_6 n__O__f_527_6 GND nmos W=0.0975U L=0.065U
M1165_ #506 I0_af_527_6 n__O__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1166_ #507 I1_af_527_6 n__O__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1167_keeper #830 #fb829# n__O__f_527_6 Vdd pmos W=0.0975U L=0.065U
M1168_keeper #831 #fb829# n__O__f_527_6 GND nmos W=0.0975U L=0.065U
M1169_ #501 p #502 GND nmos W=0.0975U L=0.065U
M1170_ #501 inv__p #504 GND nmos W=0.0975U L=0.065U
M1171_ #510 I0_at_528_6 n__O__t_528_6 GND nmos W=0.0975U L=0.065U
M1172_ #512 I1_at_528_6 n__O__t_528_6 GND nmos W=0.0975U L=0.065U
M1173_ #514 I0_at_528_6 n__O__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1174_ #515 I1_at_528_6 n__O__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1175_keeper #833 #fb832# n__O__t_528_6 Vdd pmos W=0.0975U L=0.065U
M1176_keeper #834 #fb832# n__O__t_528_6 GND nmos W=0.0975U L=0.065U
M1177_ #509 p #510 GND nmos W=0.0975U L=0.065U
M1178_ #509 inv__p #512 GND nmos W=0.0975U L=0.065U
M1179_ #518 I0_af_528_6 n__O__f_528_6 GND nmos W=0.0975U L=0.065U
M1180_ #520 I1_af_528_6 n__O__f_528_6 GND nmos W=0.0975U L=0.065U
M1181_ #522 I0_af_528_6 n__O__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1182_ #523 I1_af_528_6 n__O__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1183_keeper #836 #fb835# n__O__f_528_6 Vdd pmos W=0.0975U L=0.065U
M1184_keeper #837 #fb835# n__O__f_528_6 GND nmos W=0.0975U L=0.065U
M1185_ #517 p #518 GND nmos W=0.0975U L=0.065U
M1186_ #517 inv__p #520 GND nmos W=0.0975U L=0.065U
M1187_ #526 I0_at_529_6 n__O__t_529_6 GND nmos W=0.0975U L=0.065U
M1188_ #528 I1_at_529_6 n__O__t_529_6 GND nmos W=0.0975U L=0.065U
M1189_ #530 I0_at_529_6 n__O__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1190_ #531 I1_at_529_6 n__O__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1191_keeper #839 #fb838# n__O__t_529_6 Vdd pmos W=0.0975U L=0.065U
M1192_keeper #840 #fb838# n__O__t_529_6 GND nmos W=0.0975U L=0.065U
M1193_ #525 p #526 GND nmos W=0.0975U L=0.065U
M1194_ #525 inv__p #528 GND nmos W=0.0975U L=0.065U
M1195_ #534 I0_af_529_6 n__O__f_529_6 GND nmos W=0.0975U L=0.065U
M1196_ #536 I1_af_529_6 n__O__f_529_6 GND nmos W=0.0975U L=0.065U
M1197_ #538 I0_af_529_6 n__O__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1198_ #539 I1_af_529_6 n__O__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1199_keeper #842 #fb841# n__O__f_529_6 Vdd pmos W=0.0975U L=0.065U
M1200_keeper #843 #fb841# n__O__f_529_6 GND nmos W=0.0975U L=0.065U
M1201_ #533 p #534 GND nmos W=0.0975U L=0.065U
M1202_ #533 inv__p #536 GND nmos W=0.0975U L=0.065U
M1203_ #542 I0_at_530_6 n__O__t_530_6 GND nmos W=0.0975U L=0.065U
M1204_ #544 I1_at_530_6 n__O__t_530_6 GND nmos W=0.0975U L=0.065U
M1205_ #546 I0_at_530_6 n__O__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1206_ #547 I1_at_530_6 n__O__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1207_keeper #845 #fb844# n__O__t_530_6 Vdd pmos W=0.0975U L=0.065U
M1208_keeper #846 #fb844# n__O__t_530_6 GND nmos W=0.0975U L=0.065U
M1209_ #541 p #542 GND nmos W=0.0975U L=0.065U
M1210_ #541 inv__p #544 GND nmos W=0.0975U L=0.065U
M1211_ #550 I0_af_530_6 n__O__f_530_6 GND nmos W=0.0975U L=0.065U
M1212_ #552 I1_af_530_6 n__O__f_530_6 GND nmos W=0.0975U L=0.065U
M1213_ #554 I0_af_530_6 n__O__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1214_ #555 I1_af_530_6 n__O__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1215_keeper #848 #fb847# n__O__f_530_6 Vdd pmos W=0.0975U L=0.065U
M1216_keeper #849 #fb847# n__O__f_530_6 GND nmos W=0.0975U L=0.065U
M1217_ #549 p #550 GND nmos W=0.0975U L=0.065U
M1218_ #549 inv__p #552 GND nmos W=0.0975U L=0.065U
M1219_ #558 I0_at_531_6 n__O__t_531_6 GND nmos W=0.0975U L=0.065U
M1220_ #560 I1_at_531_6 n__O__t_531_6 GND nmos W=0.0975U L=0.065U
M1221_ #562 I0_at_531_6 n__O__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1222_ #563 I1_at_531_6 n__O__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1223_keeper #851 #fb850# n__O__t_531_6 Vdd pmos W=0.0975U L=0.065U
M1224_keeper #852 #fb850# n__O__t_531_6 GND nmos W=0.0975U L=0.065U
M1225_ #557 p #558 GND nmos W=0.0975U L=0.065U
M1226_ #557 inv__p #560 GND nmos W=0.0975U L=0.065U
M1227_ #566 I0_af_531_6 n__O__f_531_6 GND nmos W=0.0975U L=0.065U
M1228_ #568 I1_af_531_6 n__O__f_531_6 GND nmos W=0.0975U L=0.065U
M1229_ #570 I0_af_531_6 n__O__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1230_ #571 I1_af_531_6 n__O__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1231_keeper #854 #fb853# n__O__f_531_6 Vdd pmos W=0.0975U L=0.065U
M1232_keeper #855 #fb853# n__O__f_531_6 GND nmos W=0.0975U L=0.065U
M1233_ #565 p #566 GND nmos W=0.0975U L=0.065U
M1234_ #565 inv__p #568 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: Arb2<> -----
*
*---- act defproc: Arb<> -----
* raw ports:  reset C0.t[0] C0.t[1] C0.t[2] C0.t[3] C0.t[4] C0.t[5] C0.t[6] C0.t[7] C0.t[8] C0.t[9] C0.t[10] C0.t[11] C0.t[12] C0.t[13] C0.t[14] C0.t[15] C0.t[16] C0.t[17] C0.t[18] C0.t[19] C0.t[20] C0.t[21] C0.t[22] C0.t[23] C0.t[24] C0.t[25] C0.t[26] C0.t[27] C0.t[28] C0.t[29] C0.t[30] C0.t[31] C0.f[0] C0.f[1] C0.f[2] C0.f[3] C0.f[4] C0.f[5] C0.f[6] C0.f[7] C0.f[8] C0.f[9] C0.f[10] C0.f[11] C0.f[12] C0.f[13] C0.f[14] C0.f[15] C0.f[16] C0.f[17] C0.f[18] C0.f[19] C0.f[20] C0.f[21] C0.f[22] C0.f[23] C0.f[24] C0.f[25] C0.f[26] C0.f[27] C0.f[28] C0.f[29] C0.f[30] C0.f[31] C0.a C1.t[0] C1.t[1] C1.t[2] C1.t[3] C1.t[4] C1.t[5] C1.t[6] C1.t[7] C1.t[8] C1.t[9] C1.t[10] C1.t[11] C1.t[12] C1.t[13] C1.t[14] C1.t[15] C1.t[16] C1.t[17] C1.t[18] C1.t[19] C1.t[20] C1.t[21] C1.t[22] C1.t[23] C1.t[24] C1.t[25] C1.t[26] C1.t[27] C1.t[28] C1.t[29] C1.t[30] C1.t[31] C1.f[0] C1.f[1] C1.f[2] C1.f[3] C1.f[4] C1.f[5] C1.f[6] C1.f[7] C1.f[8] C1.f[9] C1.f[10] C1.f[11] C1.f[12] C1.f[13] C1.f[14] C1.f[15] C1.f[16] C1.f[17] C1.f[18] C1.f[19] C1.f[20] C1.f[21] C1.f[22] C1.f[23] C1.f[24] C1.f[25] C1.f[26] C1.f[27] C1.f[28] C1.f[29] C1.f[30] C1.f[31] C1.a C2.t[0] C2.t[1] C2.t[2] C2.t[3] C2.t[4] C2.t[5] C2.t[6] C2.t[7] C2.t[8] C2.t[9] C2.t[10] C2.t[11] C2.t[12] C2.t[13] C2.t[14] C2.t[15] C2.t[16] C2.t[17] C2.t[18] C2.t[19] C2.t[20] C2.t[21] C2.t[22] C2.t[23] C2.t[24] C2.t[25] C2.t[26] C2.t[27] C2.t[28] C2.t[29] C2.t[30] C2.t[31] C2.f[0] C2.f[1] C2.f[2] C2.f[3] C2.f[4] C2.f[5] C2.f[6] C2.f[7] C2.f[8] C2.f[9] C2.f[10] C2.f[11] C2.f[12] C2.f[13] C2.f[14] C2.f[15] C2.f[16] C2.f[17] C2.f[18] C2.f[19] C2.f[20] C2.f[21] C2.f[22] C2.f[23] C2.f[24] C2.f[25] C2.f[26] C2.f[27] C2.f[28] C2.f[29] C2.f[30] C2.f[31] C2.a C3.t[0] C3.t[1] C3.t[2] C3.t[3] C3.t[4] C3.t[5] C3.t[6] C3.t[7] C3.t[8] C3.t[9] C3.t[10] C3.t[11] C3.t[12] C3.t[13] C3.t[14] C3.t[15] C3.t[16] C3.t[17] C3.t[18] C3.t[19] C3.t[20] C3.t[21] C3.t[22] C3.t[23] C3.t[24] C3.t[25] C3.t[26] C3.t[27] C3.t[28] C3.t[29] C3.t[30] C3.t[31] C3.f[0] C3.f[1] C3.f[2] C3.f[3] C3.f[4] C3.f[5] C3.f[6] C3.f[7] C3.f[8] C3.f[9] C3.f[10] C3.f[11] C3.f[12] C3.f[13] C3.f[14] C3.f[15] C3.f[16] C3.f[17] C3.f[18] C3.f[19] C3.f[20] C3.f[21] C3.f[22] C3.f[23] C3.f[24] C3.f[25] C3.f[26] C3.f[27] C3.f[28] C3.f[29] C3.f[30] C3.f[31] C3.a P.t[0] P.t[1] P.t[2] P.t[3] P.t[4] P.t[5] P.t[6] P.t[7] P.t[8] P.t[9] P.t[10] P.t[11] P.t[12] P.t[13] P.t[14] P.t[15] P.t[16] P.t[17] P.t[18] P.t[19] P.t[20] P.t[21] P.t[22] P.t[23] P.t[24] P.t[25] P.t[26] P.t[27] P.t[28] P.t[29] P.t[30] P.t[31] P.f[0] P.f[1] P.f[2] P.f[3] P.f[4] P.f[5] P.f[6] P.f[7] P.f[8] P.f[9] P.f[10] P.f[11] P.f[12] P.f[13] P.f[14] P.f[15] P.f[16] P.f[17] P.f[18] P.f[19] P.f[20] P.f[21] P.f[22] P.f[23] P.f[24] P.f[25] P.f[26] P.f[27] P.f[28] P.f[29] P.f[30] P.f[31] P.a M.t[0] M.t[1] M.t[2] M.t[3] M.t[4] M.t[5] M.t[6] M.t[7] M.t[8] M.t[9] M.t[10] M.t[11] M.t[12] M.t[13] M.t[14] M.t[15] M.t[16] M.t[17] M.t[18] M.t[19] M.t[20] M.t[21] M.t[22] M.t[23] M.t[24] M.t[25] M.t[26] M.t[27] M.t[28] M.t[29] M.t[30] M.t[31] M.f[0] M.f[1] M.f[2] M.f[3] M.f[4] M.f[5] M.f[6] M.f[7] M.f[8] M.f[9] M.f[10] M.f[11] M.f[12] M.f[13] M.f[14] M.f[15] M.f[16] M.f[17] M.f[18] M.f[19] M.f[20] M.f[21] M.f[22] M.f[23] M.f[24] M.f[25] M.f[26] M.f[27] M.f[28] M.f[29] M.f[30] M.f[31] M.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt Arb reset C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6
+ C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6
+ C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6
+ C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6
+ C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6
+ C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6
+ C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6
+ C0_af_523_6 C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6
+ C0_af_531_6 C0_aa C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6
+ C1_at_57_6 C1_at_58_6 C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6
+ C1_at_515_6 C1_at_516_6 C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6
+ C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6
+ C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6
+ C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6
+ C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6 C1_af_522_6
+ C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6
+ C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6
+ C2_at_57_6 C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6
+ C2_at_515_6 C2_at_516_6 C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6
+ C2_at_523_6 C2_at_524_6 C2_at_525_6 C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6
+ C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6
+ C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6
+ C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6
+ C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6 C2_af_530_6
+ C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6
+ C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6
+ C3_at_515_6 C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6
+ C3_at_523_6 C3_at_524_6 C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6
+ C3_at_531_6 C3_af_50_6 C3_af_51_6 C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6
+ C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6
+ C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6
+ C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6 C3_af_529_6 C3_af_530_6
+ C3_af_531_6 C3_aa P_at_50_6 P_at_51_6 P_at_52_6 P_at_53_6 P_at_54_6 P_at_55_6 P_at_56_6 P_at_57_6
+ P_at_58_6 P_at_59_6 P_at_510_6 P_at_511_6 P_at_512_6 P_at_513_6 P_at_514_6 P_at_515_6 P_at_516_6
+ P_at_517_6 P_at_518_6 P_at_519_6 P_at_520_6 P_at_521_6 P_at_522_6 P_at_523_6 P_at_524_6 P_at_525_6
+ P_at_526_6 P_at_527_6 P_at_528_6 P_at_529_6 P_at_530_6 P_at_531_6 P_af_50_6 P_af_51_6 P_af_52_6
+ P_af_53_6 P_af_54_6 P_af_55_6 P_af_56_6 P_af_57_6 P_af_58_6 P_af_59_6 P_af_510_6 P_af_511_6
+ P_af_512_6 P_af_513_6 P_af_514_6 P_af_515_6 P_af_516_6 P_af_517_6 P_af_518_6 P_af_519_6 P_af_520_6
+ P_af_521_6 P_af_522_6 P_af_523_6 P_af_524_6 P_af_525_6 P_af_526_6 P_af_527_6 P_af_528_6 P_af_529_6
+ P_af_530_6 P_af_531_6 P_aa M_at_50_6 M_at_51_6 M_at_52_6 M_at_53_6 M_at_54_6 M_at_55_6 M_at_56_6
+ M_at_57_6 M_at_58_6 M_at_59_6 M_at_510_6 M_at_511_6 M_at_512_6 M_at_513_6 M_at_514_6 M_at_515_6
+ M_at_516_6 M_at_517_6 M_at_518_6 M_at_519_6 M_at_520_6 M_at_521_6 M_at_522_6 M_at_523_6 M_at_524_6
+ M_at_525_6 M_at_526_6 M_at_527_6 M_at_528_6 M_at_529_6 M_at_530_6 M_at_531_6 M_af_50_6 M_af_51_6
+ M_af_52_6 M_af_53_6 M_af_54_6 M_af_55_6 M_af_56_6 M_af_57_6 M_af_58_6 M_af_59_6 M_af_510_6
+ M_af_511_6 M_af_512_6 M_af_513_6 M_af_514_6 M_af_515_6 M_af_516_6 M_af_517_6 M_af_518_6 M_af_519_6
+ M_af_520_6 M_af_521_6 M_af_522_6 M_af_523_6 M_af_524_6 M_af_525_6 M_af_526_6 M_af_527_6 M_af_528_6
+ M_af_529_6 M_af_530_6 M_af_531_6 M_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6
+ O_at_56_6 O_at_57_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6
+ O_at_515_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6
+ O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6
+ O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6
+ O_af_510_6 O_af_511_6 O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6
+ O_af_519_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6
+ O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa
*.PININFO reset:I C0_at_50_6:I C0_at_51_6:I C0_at_52_6:I C0_at_53_6:I C0_at_54_6:I C0_at_55_6:I C0_at_56_6:I C0_at_57_6:I C0_at_58_6:I C0_at_59_6:I C0_at_510_6:I C0_at_511_6:I C0_at_512_6:I C0_at_513_6:I C0_at_514_6:I C0_at_515_6:I C0_at_516_6:I C0_at_517_6:I C0_at_518_6:I C0_at_519_6:I C0_at_520_6:I C0_at_521_6:I C0_at_522_6:I C0_at_523_6:I C0_at_524_6:I C0_at_525_6:I C0_at_526_6:I C0_at_527_6:I C0_at_528_6:I C0_at_529_6:I C0_at_530_6:I C0_at_531_6:I C0_af_50_6:I C0_af_51_6:I C0_af_52_6:I C0_af_53_6:I C0_af_54_6:I C0_af_55_6:I C0_af_56_6:I C0_af_57_6:I C0_af_58_6:I C0_af_59_6:I C0_af_510_6:I C0_af_511_6:I C0_af_512_6:I C0_af_513_6:I C0_af_514_6:I C0_af_515_6:I C0_af_516_6:I C0_af_517_6:I C0_af_518_6:I C0_af_519_6:I C0_af_520_6:I C0_af_521_6:I C0_af_522_6:I C0_af_523_6:I C0_af_524_6:I C0_af_525_6:I C0_af_526_6:I C0_af_527_6:I C0_af_528_6:I C0_af_529_6:I C0_af_530_6:I C0_af_531_6:I C0_aa:O C1_at_50_6:I C1_at_51_6:I C1_at_52_6:I C1_at_53_6:I C1_at_54_6:I C1_at_55_6:I C1_at_56_6:I C1_at_57_6:I C1_at_58_6:I C1_at_59_6:I C1_at_510_6:I C1_at_511_6:I C1_at_512_6:I C1_at_513_6:I C1_at_514_6:I C1_at_515_6:I C1_at_516_6:I C1_at_517_6:I C1_at_518_6:I C1_at_519_6:I C1_at_520_6:I C1_at_521_6:I C1_at_522_6:I C1_at_523_6:I C1_at_524_6:I C1_at_525_6:I C1_at_526_6:I C1_at_527_6:I C1_at_528_6:I C1_at_529_6:I C1_at_530_6:I C1_at_531_6:I C1_af_50_6:I C1_af_51_6:I C1_af_52_6:I C1_af_53_6:I C1_af_54_6:I C1_af_55_6:I C1_af_56_6:I C1_af_57_6:I C1_af_58_6:I C1_af_59_6:I C1_af_510_6:I C1_af_511_6:I C1_af_512_6:I C1_af_513_6:I C1_af_514_6:I C1_af_515_6:I C1_af_516_6:I C1_af_517_6:I C1_af_518_6:I C1_af_519_6:I C1_af_520_6:I C1_af_521_6:I C1_af_522_6:I C1_af_523_6:I C1_af_524_6:I C1_af_525_6:I C1_af_526_6:I C1_af_527_6:I C1_af_528_6:I C1_af_529_6:I C1_af_530_6:I C1_af_531_6:I C1_aa:O C2_at_50_6:I C2_at_51_6:I C2_at_52_6:I C2_at_53_6:I C2_at_54_6:I C2_at_55_6:I C2_at_56_6:I C2_at_57_6:I C2_at_58_6:I C2_at_59_6:I C2_at_510_6:I C2_at_511_6:I C2_at_512_6:I C2_at_513_6:I C2_at_514_6:I C2_at_515_6:I C2_at_516_6:I C2_at_517_6:I C2_at_518_6:I C2_at_519_6:I C2_at_520_6:I C2_at_521_6:I C2_at_522_6:I C2_at_523_6:I C2_at_524_6:I C2_at_525_6:I C2_at_526_6:I C2_at_527_6:I C2_at_528_6:I C2_at_529_6:I C2_at_530_6:I C2_at_531_6:I C2_af_50_6:I C2_af_51_6:I C2_af_52_6:I C2_af_53_6:I C2_af_54_6:I C2_af_55_6:I C2_af_56_6:I C2_af_57_6:I C2_af_58_6:I C2_af_59_6:I C2_af_510_6:I C2_af_511_6:I C2_af_512_6:I C2_af_513_6:I C2_af_514_6:I C2_af_515_6:I C2_af_516_6:I C2_af_517_6:I C2_af_518_6:I C2_af_519_6:I C2_af_520_6:I C2_af_521_6:I C2_af_522_6:I C2_af_523_6:I C2_af_524_6:I C2_af_525_6:I C2_af_526_6:I C2_af_527_6:I C2_af_528_6:I C2_af_529_6:I C2_af_530_6:I C2_af_531_6:I C2_aa:O C3_at_50_6:I C3_at_51_6:I C3_at_52_6:I C3_at_53_6:I C3_at_54_6:I C3_at_55_6:I C3_at_56_6:I C3_at_57_6:I C3_at_58_6:I C3_at_59_6:I C3_at_510_6:I C3_at_511_6:I C3_at_512_6:I C3_at_513_6:I C3_at_514_6:I C3_at_515_6:I C3_at_516_6:I C3_at_517_6:I C3_at_518_6:I C3_at_519_6:I C3_at_520_6:I C3_at_521_6:I C3_at_522_6:I C3_at_523_6:I C3_at_524_6:I C3_at_525_6:I C3_at_526_6:I C3_at_527_6:I C3_at_528_6:I C3_at_529_6:I C3_at_530_6:I C3_at_531_6:I C3_af_50_6:I C3_af_51_6:I C3_af_52_6:I C3_af_53_6:I C3_af_54_6:I C3_af_55_6:I C3_af_56_6:I C3_af_57_6:I C3_af_58_6:I C3_af_59_6:I C3_af_510_6:I C3_af_511_6:I C3_af_512_6:I C3_af_513_6:I C3_af_514_6:I C3_af_515_6:I C3_af_516_6:I C3_af_517_6:I C3_af_518_6:I C3_af_519_6:I C3_af_520_6:I C3_af_521_6:I C3_af_522_6:I C3_af_523_6:I C3_af_524_6:I C3_af_525_6:I C3_af_526_6:I C3_af_527_6:I C3_af_528_6:I C3_af_529_6:I C3_af_530_6:I C3_af_531_6:I C3_aa:O P_at_50_6:I P_at_51_6:I P_at_52_6:I P_at_53_6:I P_at_54_6:I P_at_55_6:I P_at_56_6:I P_at_57_6:I P_at_58_6:I P_at_59_6:I P_at_510_6:I P_at_511_6:I P_at_512_6:I P_at_513_6:I P_at_514_6:I P_at_515_6:I P_at_516_6:I P_at_517_6:I P_at_518_6:I P_at_519_6:I P_at_520_6:I P_at_521_6:I P_at_522_6:I P_at_523_6:I P_at_524_6:I P_at_525_6:I P_at_526_6:I P_at_527_6:I P_at_528_6:I P_at_529_6:I P_at_530_6:I P_at_531_6:I P_af_50_6:I P_af_51_6:I P_af_52_6:I P_af_53_6:I P_af_54_6:I P_af_55_6:I P_af_56_6:I P_af_57_6:I P_af_58_6:I P_af_59_6:I P_af_510_6:I P_af_511_6:I P_af_512_6:I P_af_513_6:I P_af_514_6:I P_af_515_6:I P_af_516_6:I P_af_517_6:I P_af_518_6:I P_af_519_6:I P_af_520_6:I P_af_521_6:I P_af_522_6:I P_af_523_6:I P_af_524_6:I P_af_525_6:I P_af_526_6:I P_af_527_6:I P_af_528_6:I P_af_529_6:I P_af_530_6:I P_af_531_6:I P_aa:O M_at_50_6:I M_at_51_6:I M_at_52_6:I M_at_53_6:I M_at_54_6:I M_at_55_6:I M_at_56_6:I M_at_57_6:I M_at_58_6:I M_at_59_6:I M_at_510_6:I M_at_511_6:I M_at_512_6:I M_at_513_6:I M_at_514_6:I M_at_515_6:I M_at_516_6:I M_at_517_6:I M_at_518_6:I M_at_519_6:I M_at_520_6:I M_at_521_6:I M_at_522_6:I M_at_523_6:I M_at_524_6:I M_at_525_6:I M_at_526_6:I M_at_527_6:I M_at_528_6:I M_at_529_6:I M_at_530_6:I M_at_531_6:I M_af_50_6:I M_af_51_6:I M_af_52_6:I M_af_53_6:I M_af_54_6:I M_af_55_6:I M_af_56_6:I M_af_57_6:I M_af_58_6:I M_af_59_6:I M_af_510_6:I M_af_511_6:I M_af_512_6:I M_af_513_6:I M_af_514_6:I M_af_515_6:I M_af_516_6:I M_af_517_6:I M_af_518_6:I M_af_519_6:I M_af_520_6:I M_af_521_6:I M_af_522_6:I M_af_523_6:I M_af_524_6:I M_af_525_6:I M_af_526_6:I M_af_527_6:I M_af_528_6:I M_af_529_6:I M_af_530_6:I M_af_531_6:I M_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_at_58_6:O O_at_59_6:O O_at_510_6:O O_at_511_6:O O_at_512_6:O O_at_513_6:O O_at_514_6:O O_at_515_6:O O_at_516_6:O O_at_517_6:O O_at_518_6:O O_at_519_6:O O_at_520_6:O O_at_521_6:O O_at_522_6:O O_at_523_6:O O_at_524_6:O O_at_525_6:O O_at_526_6:O O_at_527_6:O O_at_528_6:O O_at_529_6:O O_at_530_6:O O_at_531_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O O_af_58_6:O O_af_59_6:O O_af_510_6:O O_af_511_6:O O_af_512_6:O O_af_513_6:O O_af_514_6:O O_af_515_6:O O_af_516_6:O O_af_517_6:O O_af_518_6:O O_af_519_6:O O_af_520_6:O O_af_521_6:O O_af_522_6:O O_af_523_6:O O_af_524_6:O O_af_525_6:O O_af_526_6:O O_af_527_6:O O_af_528_6:O O_af_529_6:O O_af_530_6:O O_af_531_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xar4 reset ar2_aO_at_50_6 ar2_aO_at_51_6 ar2_aO_at_52_6 ar2_aO_at_53_6 ar2_aO_at_54_6 ar2_aO_at_55_6
+ ar2_aO_at_56_6 ar2_aO_at_57_6 ar2_aO_at_58_6 ar2_aO_at_59_6 ar2_aO_at_510_6 ar2_aO_at_511_6
+ ar2_aO_at_512_6 ar2_aO_at_513_6 ar2_aO_at_514_6 ar2_aO_at_515_6 ar2_aO_at_516_6 ar2_aO_at_517_6
+ ar2_aO_at_518_6 ar2_aO_at_519_6 ar2_aO_at_520_6 ar2_aO_at_521_6 ar2_aO_at_522_6 ar2_aO_at_523_6
+ ar2_aO_at_524_6 ar2_aO_at_525_6 ar2_aO_at_526_6 ar2_aO_at_527_6 ar2_aO_at_528_6 ar2_aO_at_529_6
+ ar2_aO_at_530_6 ar2_aO_at_531_6 ar2_aO_af_50_6 ar2_aO_af_51_6 ar2_aO_af_52_6 ar2_aO_af_53_6
+ ar2_aO_af_54_6 ar2_aO_af_55_6 ar2_aO_af_56_6 ar2_aO_af_57_6 ar2_aO_af_58_6 ar2_aO_af_59_6
+ ar2_aO_af_510_6 ar2_aO_af_511_6 ar2_aO_af_512_6 ar2_aO_af_513_6 ar2_aO_af_514_6 ar2_aO_af_515_6
+ ar2_aO_af_516_6 ar2_aO_af_517_6 ar2_aO_af_518_6 ar2_aO_af_519_6 ar2_aO_af_520_6 ar2_aO_af_521_6
+ ar2_aO_af_522_6 ar2_aO_af_523_6 ar2_aO_af_524_6 ar2_aO_af_525_6 ar2_aO_af_526_6 ar2_aO_af_527_6
+ ar2_aO_af_528_6 ar2_aO_af_529_6 ar2_aO_af_530_6 ar2_aO_af_531_6 ar2_aO_aa ar3_aO_at_50_6
+ ar3_aO_at_51_6 ar3_aO_at_52_6 ar3_aO_at_53_6 ar3_aO_at_54_6 ar3_aO_at_55_6 ar3_aO_at_56_6
+ ar3_aO_at_57_6 ar3_aO_at_58_6 ar3_aO_at_59_6 ar3_aO_at_510_6 ar3_aO_at_511_6 ar3_aO_at_512_6
+ ar3_aO_at_513_6 ar3_aO_at_514_6 ar3_aO_at_515_6 ar3_aO_at_516_6 ar3_aO_at_517_6 ar3_aO_at_518_6
+ ar3_aO_at_519_6 ar3_aO_at_520_6 ar3_aO_at_521_6 ar3_aO_at_522_6 ar3_aO_at_523_6 ar3_aO_at_524_6
+ ar3_aO_at_525_6 ar3_aO_at_526_6 ar3_aO_at_527_6 ar3_aO_at_528_6 ar3_aO_at_529_6 ar3_aO_at_530_6
+ ar3_aO_at_531_6 ar3_aO_af_50_6 ar3_aO_af_51_6 ar3_aO_af_52_6 ar3_aO_af_53_6 ar3_aO_af_54_6
+ ar3_aO_af_55_6 ar3_aO_af_56_6 ar3_aO_af_57_6 ar3_aO_af_58_6 ar3_aO_af_59_6 ar3_aO_af_510_6
+ ar3_aO_af_511_6 ar3_aO_af_512_6 ar3_aO_af_513_6 ar3_aO_af_514_6 ar3_aO_af_515_6 ar3_aO_af_516_6
+ ar3_aO_af_517_6 ar3_aO_af_518_6 ar3_aO_af_519_6 ar3_aO_af_520_6 ar3_aO_af_521_6 ar3_aO_af_522_6
+ ar3_aO_af_523_6 ar3_aO_af_524_6 ar3_aO_af_525_6 ar3_aO_af_526_6 ar3_aO_af_527_6 ar3_aO_af_528_6
+ ar3_aO_af_529_6 ar3_aO_af_530_6 ar3_aO_af_531_6 ar3_aO_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6
+ O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6
+ O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6
+ O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6
+ O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6
+ O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6
+ O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6
+ O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa Arb2
xar1 reset C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6
+ C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6
+ C2_at_516_6 C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6
+ C2_at_524_6 C2_at_525_6 C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6
+ C2_af_50_6 C2_af_51_6 C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6
+ C2_af_59_6 C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6
+ C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6
+ C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa
+ C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6 C3_at_57_6 C3_at_58_6
+ C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6 C3_at_516_6
+ C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6
+ C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6
+ C3_af_51_6 C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6
+ C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6
+ C3_af_518_6 C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6
+ C3_af_526_6 C3_af_527_6 C3_af_528_6 C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa ar1_aO_at_50_6
+ ar1_aO_at_51_6 ar1_aO_at_52_6 ar1_aO_at_53_6 ar1_aO_at_54_6 ar1_aO_at_55_6 ar1_aO_at_56_6
+ ar1_aO_at_57_6 ar1_aO_at_58_6 ar1_aO_at_59_6 ar1_aO_at_510_6 ar1_aO_at_511_6 ar1_aO_at_512_6
+ ar1_aO_at_513_6 ar1_aO_at_514_6 ar1_aO_at_515_6 ar1_aO_at_516_6 ar1_aO_at_517_6 ar1_aO_at_518_6
+ ar1_aO_at_519_6 ar1_aO_at_520_6 ar1_aO_at_521_6 ar1_aO_at_522_6 ar1_aO_at_523_6 ar1_aO_at_524_6
+ ar1_aO_at_525_6 ar1_aO_at_526_6 ar1_aO_at_527_6 ar1_aO_at_528_6 ar1_aO_at_529_6 ar1_aO_at_530_6
+ ar1_aO_at_531_6 ar1_aO_af_50_6 ar1_aO_af_51_6 ar1_aO_af_52_6 ar1_aO_af_53_6 ar1_aO_af_54_6
+ ar1_aO_af_55_6 ar1_aO_af_56_6 ar1_aO_af_57_6 ar1_aO_af_58_6 ar1_aO_af_59_6 ar1_aO_af_510_6
+ ar1_aO_af_511_6 ar1_aO_af_512_6 ar1_aO_af_513_6 ar1_aO_af_514_6 ar1_aO_af_515_6 ar1_aO_af_516_6
+ ar1_aO_af_517_6 ar1_aO_af_518_6 ar1_aO_af_519_6 ar1_aO_af_520_6 ar1_aO_af_521_6 ar1_aO_af_522_6
+ ar1_aO_af_523_6 ar1_aO_af_524_6 ar1_aO_af_525_6 ar1_aO_af_526_6 ar1_aO_af_527_6 ar1_aO_af_528_6
+ ar1_aO_af_529_6 ar1_aO_af_530_6 ar1_aO_af_531_6 ar1_aO_aa Arb2
xar0 reset C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6
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
+ C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa ar0_aO_at_50_6
+ ar0_aO_at_51_6 ar0_aO_at_52_6 ar0_aO_at_53_6 ar0_aO_at_54_6 ar0_aO_at_55_6 ar0_aO_at_56_6
+ ar0_aO_at_57_6 ar0_aO_at_58_6 ar0_aO_at_59_6 ar0_aO_at_510_6 ar0_aO_at_511_6 ar0_aO_at_512_6
+ ar0_aO_at_513_6 ar0_aO_at_514_6 ar0_aO_at_515_6 ar0_aO_at_516_6 ar0_aO_at_517_6 ar0_aO_at_518_6
+ ar0_aO_at_519_6 ar0_aO_at_520_6 ar0_aO_at_521_6 ar0_aO_at_522_6 ar0_aO_at_523_6 ar0_aO_at_524_6
+ ar0_aO_at_525_6 ar0_aO_at_526_6 ar0_aO_at_527_6 ar0_aO_at_528_6 ar0_aO_at_529_6 ar0_aO_at_530_6
+ ar0_aO_at_531_6 ar0_aO_af_50_6 ar0_aO_af_51_6 ar0_aO_af_52_6 ar0_aO_af_53_6 ar0_aO_af_54_6
+ ar0_aO_af_55_6 ar0_aO_af_56_6 ar0_aO_af_57_6 ar0_aO_af_58_6 ar0_aO_af_59_6 ar0_aO_af_510_6
+ ar0_aO_af_511_6 ar0_aO_af_512_6 ar0_aO_af_513_6 ar0_aO_af_514_6 ar0_aO_af_515_6 ar0_aO_af_516_6
+ ar0_aO_af_517_6 ar0_aO_af_518_6 ar0_aO_af_519_6 ar0_aO_af_520_6 ar0_aO_af_521_6 ar0_aO_af_522_6
+ ar0_aO_af_523_6 ar0_aO_af_524_6 ar0_aO_af_525_6 ar0_aO_af_526_6 ar0_aO_af_527_6 ar0_aO_af_528_6
+ ar0_aO_af_529_6 ar0_aO_af_530_6 ar0_aO_af_531_6 ar0_aO_aa Arb2
xar3 reset P_at_50_6 P_at_51_6 P_at_52_6 P_at_53_6 P_at_54_6 P_at_55_6 P_at_56_6 P_at_57_6 P_at_58_6
+ P_at_59_6 P_at_510_6 P_at_511_6 P_at_512_6 P_at_513_6 P_at_514_6 P_at_515_6 P_at_516_6 P_at_517_6
+ P_at_518_6 P_at_519_6 P_at_520_6 P_at_521_6 P_at_522_6 P_at_523_6 P_at_524_6 P_at_525_6 P_at_526_6
+ P_at_527_6 P_at_528_6 P_at_529_6 P_at_530_6 P_at_531_6 P_af_50_6 P_af_51_6 P_af_52_6 P_af_53_6
+ P_af_54_6 P_af_55_6 P_af_56_6 P_af_57_6 P_af_58_6 P_af_59_6 P_af_510_6 P_af_511_6 P_af_512_6
+ P_af_513_6 P_af_514_6 P_af_515_6 P_af_516_6 P_af_517_6 P_af_518_6 P_af_519_6 P_af_520_6 P_af_521_6
+ P_af_522_6 P_af_523_6 P_af_524_6 P_af_525_6 P_af_526_6 P_af_527_6 P_af_528_6 P_af_529_6 P_af_530_6
+ P_af_531_6 P_aa M_at_50_6 M_at_51_6 M_at_52_6 M_at_53_6 M_at_54_6 M_at_55_6 M_at_56_6 M_at_57_6
+ M_at_58_6 M_at_59_6 M_at_510_6 M_at_511_6 M_at_512_6 M_at_513_6 M_at_514_6 M_at_515_6 M_at_516_6
+ M_at_517_6 M_at_518_6 M_at_519_6 M_at_520_6 M_at_521_6 M_at_522_6 M_at_523_6 M_at_524_6 M_at_525_6
+ M_at_526_6 M_at_527_6 M_at_528_6 M_at_529_6 M_at_530_6 M_at_531_6 M_af_50_6 M_af_51_6 M_af_52_6
+ M_af_53_6 M_af_54_6 M_af_55_6 M_af_56_6 M_af_57_6 M_af_58_6 M_af_59_6 M_af_510_6 M_af_511_6
+ M_af_512_6 M_af_513_6 M_af_514_6 M_af_515_6 M_af_516_6 M_af_517_6 M_af_518_6 M_af_519_6 M_af_520_6
+ M_af_521_6 M_af_522_6 M_af_523_6 M_af_524_6 M_af_525_6 M_af_526_6 M_af_527_6 M_af_528_6 M_af_529_6
+ M_af_530_6 M_af_531_6 M_aa ar3_aO_at_50_6 ar3_aO_at_51_6 ar3_aO_at_52_6 ar3_aO_at_53_6
+ ar3_aO_at_54_6 ar3_aO_at_55_6 ar3_aO_at_56_6 ar3_aO_at_57_6 ar3_aO_at_58_6 ar3_aO_at_59_6
+ ar3_aO_at_510_6 ar3_aO_at_511_6 ar3_aO_at_512_6 ar3_aO_at_513_6 ar3_aO_at_514_6 ar3_aO_at_515_6
+ ar3_aO_at_516_6 ar3_aO_at_517_6 ar3_aO_at_518_6 ar3_aO_at_519_6 ar3_aO_at_520_6 ar3_aO_at_521_6
+ ar3_aO_at_522_6 ar3_aO_at_523_6 ar3_aO_at_524_6 ar3_aO_at_525_6 ar3_aO_at_526_6 ar3_aO_at_527_6
+ ar3_aO_at_528_6 ar3_aO_at_529_6 ar3_aO_at_530_6 ar3_aO_at_531_6 ar3_aO_af_50_6 ar3_aO_af_51_6
+ ar3_aO_af_52_6 ar3_aO_af_53_6 ar3_aO_af_54_6 ar3_aO_af_55_6 ar3_aO_af_56_6 ar3_aO_af_57_6
+ ar3_aO_af_58_6 ar3_aO_af_59_6 ar3_aO_af_510_6 ar3_aO_af_511_6 ar3_aO_af_512_6 ar3_aO_af_513_6
+ ar3_aO_af_514_6 ar3_aO_af_515_6 ar3_aO_af_516_6 ar3_aO_af_517_6 ar3_aO_af_518_6 ar3_aO_af_519_6
+ ar3_aO_af_520_6 ar3_aO_af_521_6 ar3_aO_af_522_6 ar3_aO_af_523_6 ar3_aO_af_524_6 ar3_aO_af_525_6
+ ar3_aO_af_526_6 ar3_aO_af_527_6 ar3_aO_af_528_6 ar3_aO_af_529_6 ar3_aO_af_530_6 ar3_aO_af_531_6
+ ar3_aO_aa Arb2
xar2 reset ar0_aO_at_50_6 ar0_aO_at_51_6 ar0_aO_at_52_6 ar0_aO_at_53_6 ar0_aO_at_54_6 ar0_aO_at_55_6
+ ar0_aO_at_56_6 ar0_aO_at_57_6 ar0_aO_at_58_6 ar0_aO_at_59_6 ar0_aO_at_510_6 ar0_aO_at_511_6
+ ar0_aO_at_512_6 ar0_aO_at_513_6 ar0_aO_at_514_6 ar0_aO_at_515_6 ar0_aO_at_516_6 ar0_aO_at_517_6
+ ar0_aO_at_518_6 ar0_aO_at_519_6 ar0_aO_at_520_6 ar0_aO_at_521_6 ar0_aO_at_522_6 ar0_aO_at_523_6
+ ar0_aO_at_524_6 ar0_aO_at_525_6 ar0_aO_at_526_6 ar0_aO_at_527_6 ar0_aO_at_528_6 ar0_aO_at_529_6
+ ar0_aO_at_530_6 ar0_aO_at_531_6 ar0_aO_af_50_6 ar0_aO_af_51_6 ar0_aO_af_52_6 ar0_aO_af_53_6
+ ar0_aO_af_54_6 ar0_aO_af_55_6 ar0_aO_af_56_6 ar0_aO_af_57_6 ar0_aO_af_58_6 ar0_aO_af_59_6
+ ar0_aO_af_510_6 ar0_aO_af_511_6 ar0_aO_af_512_6 ar0_aO_af_513_6 ar0_aO_af_514_6 ar0_aO_af_515_6
+ ar0_aO_af_516_6 ar0_aO_af_517_6 ar0_aO_af_518_6 ar0_aO_af_519_6 ar0_aO_af_520_6 ar0_aO_af_521_6
+ ar0_aO_af_522_6 ar0_aO_af_523_6 ar0_aO_af_524_6 ar0_aO_af_525_6 ar0_aO_af_526_6 ar0_aO_af_527_6
+ ar0_aO_af_528_6 ar0_aO_af_529_6 ar0_aO_af_530_6 ar0_aO_af_531_6 ar0_aO_aa ar1_aO_at_50_6
+ ar1_aO_at_51_6 ar1_aO_at_52_6 ar1_aO_at_53_6 ar1_aO_at_54_6 ar1_aO_at_55_6 ar1_aO_at_56_6
+ ar1_aO_at_57_6 ar1_aO_at_58_6 ar1_aO_at_59_6 ar1_aO_at_510_6 ar1_aO_at_511_6 ar1_aO_at_512_6
+ ar1_aO_at_513_6 ar1_aO_at_514_6 ar1_aO_at_515_6 ar1_aO_at_516_6 ar1_aO_at_517_6 ar1_aO_at_518_6
+ ar1_aO_at_519_6 ar1_aO_at_520_6 ar1_aO_at_521_6 ar1_aO_at_522_6 ar1_aO_at_523_6 ar1_aO_at_524_6
+ ar1_aO_at_525_6 ar1_aO_at_526_6 ar1_aO_at_527_6 ar1_aO_at_528_6 ar1_aO_at_529_6 ar1_aO_at_530_6
+ ar1_aO_at_531_6 ar1_aO_af_50_6 ar1_aO_af_51_6 ar1_aO_af_52_6 ar1_aO_af_53_6 ar1_aO_af_54_6
+ ar1_aO_af_55_6 ar1_aO_af_56_6 ar1_aO_af_57_6 ar1_aO_af_58_6 ar1_aO_af_59_6 ar1_aO_af_510_6
+ ar1_aO_af_511_6 ar1_aO_af_512_6 ar1_aO_af_513_6 ar1_aO_af_514_6 ar1_aO_af_515_6 ar1_aO_af_516_6
+ ar1_aO_af_517_6 ar1_aO_af_518_6 ar1_aO_af_519_6 ar1_aO_af_520_6 ar1_aO_af_521_6 ar1_aO_af_522_6
+ ar1_aO_af_523_6 ar1_aO_af_524_6 ar1_aO_af_525_6 ar1_aO_af_526_6 ar1_aO_af_527_6 ar1_aO_af_528_6
+ ar1_aO_af_529_6 ar1_aO_af_530_6 ar1_aO_af_531_6 ar1_aO_aa ar2_aO_at_50_6 ar2_aO_at_51_6
+ ar2_aO_at_52_6 ar2_aO_at_53_6 ar2_aO_at_54_6 ar2_aO_at_55_6 ar2_aO_at_56_6 ar2_aO_at_57_6
+ ar2_aO_at_58_6 ar2_aO_at_59_6 ar2_aO_at_510_6 ar2_aO_at_511_6 ar2_aO_at_512_6 ar2_aO_at_513_6
+ ar2_aO_at_514_6 ar2_aO_at_515_6 ar2_aO_at_516_6 ar2_aO_at_517_6 ar2_aO_at_518_6 ar2_aO_at_519_6
+ ar2_aO_at_520_6 ar2_aO_at_521_6 ar2_aO_at_522_6 ar2_aO_at_523_6 ar2_aO_at_524_6 ar2_aO_at_525_6
+ ar2_aO_at_526_6 ar2_aO_at_527_6 ar2_aO_at_528_6 ar2_aO_at_529_6 ar2_aO_at_530_6 ar2_aO_at_531_6
+ ar2_aO_af_50_6 ar2_aO_af_51_6 ar2_aO_af_52_6 ar2_aO_af_53_6 ar2_aO_af_54_6 ar2_aO_af_55_6
+ ar2_aO_af_56_6 ar2_aO_af_57_6 ar2_aO_af_58_6 ar2_aO_af_59_6 ar2_aO_af_510_6 ar2_aO_af_511_6
+ ar2_aO_af_512_6 ar2_aO_af_513_6 ar2_aO_af_514_6 ar2_aO_af_515_6 ar2_aO_af_516_6 ar2_aO_af_517_6
+ ar2_aO_af_518_6 ar2_aO_af_519_6 ar2_aO_af_520_6 ar2_aO_af_521_6 ar2_aO_af_522_6 ar2_aO_af_523_6
+ ar2_aO_af_524_6 ar2_aO_af_525_6 ar2_aO_af_526_6 ar2_aO_af_527_6 ar2_aO_af_528_6 ar2_aO_af_529_6
+ ar2_aO_af_530_6 ar2_aO_af_531_6 ar2_aO_aa Arb2
.ends
*---- end of process: Arb<> -----
