*
*---- act defproc: Reg4<> -----
* raw ports:  reset W.t[0] W.t[1] W.t[2] W.t[3] W.f[0] W.f[1] W.f[2] W.f[3] W.a R.req R.t[0] R.t[1] R.t[2] R.t[3] R.f[0] R.f[1] R.f[2] R.f[3]
*
.subckt Reg4 reset W_at_50_6 W_at_51_6 W_at_52_6 W_at_53_6 W_af_50_6 W_af_51_6 W_af_52_6 W_af_53_6 W_aa R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6
*.PININFO reset:I W_at_50_6:I W_at_51_6:I W_at_52_6:I W_at_53_6:I W_af_50_6:I W_af_51_6:I W_af_52_6:I W_af_53_6:I W_aa:O R_areq:I R_at_50_6:O R_at_51_6:O R_at_52_6:O R_at_53_6:O R_af_50_6:O R_af_51_6:O R_af_52_6:O R_af_53_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __reg__pa (state-holding): pup_reff=3.2; pdn_reff=5.33333
* x_53_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_53_6 (combinational)
* x_52_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_52_6 (combinational)
* x_51_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_51_6 (combinational)
* x_50_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_50_6 (combinational)
* __pt_50_6 (combinational)
* R_at_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __qr (combinational)
* R_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __pt_51_6 (combinational)
* R_at_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __pt_52_6 (combinational)
* R_at_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __pt_53_6 (combinational)
* R_at_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* W_aa (combinational)
*
* --- end node flags ---
*
M0_ Vdd W_at_53_6 #33 Vdd pmos W=0.975U L=0.065U
M1_ Vdd __pt_50_6 x_50_6 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __qr #40 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __qr #43 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __pt_51_6 x_51_6 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __qr #46 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __qr #48 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __pt_52_6 x_52_6 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __qr #51 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __qr #53 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __pt_53_6 x_53_6 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __qr #56 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd __qr #58 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd R_areq __qr Vdd pmos W=0.325U L=0.065U
M14_ Vdd W_at_50_6 __pt_50_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd x_50_6 __x_50_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd W_at_51_6 __pt_51_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd x_51_6 __x_51_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd W_at_52_6 __pt_52_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd x_52_6 __x_52_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd W_at_53_6 __pt_53_6 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd x_53_6 __x_53_6 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd __reg__pa W_aa Vdd pmos W=0.1625U L=0.065U
M23_ Vdd __reg__pa #fb61# Vdd pmos W=0.1625U L=0.13U
M24_ Vdd x_53_6 #fb64# Vdd pmos W=0.1625U L=0.13U
M25_keeper Vdd GND #62 Vdd pmos W=0.0975U L=2.535U
M26_ Vdd x_52_6 #fb67# Vdd pmos W=0.1625U L=0.13U
M27_keeper Vdd GND #65 Vdd pmos W=0.0975U L=0.26U
M28_ Vdd x_51_6 #fb70# Vdd pmos W=0.1625U L=0.13U
M29_keeper Vdd GND #68 Vdd pmos W=0.0975U L=0.26U
M30_ Vdd x_50_6 #fb73# Vdd pmos W=0.1625U L=0.13U
M31_keeper Vdd GND #71 Vdd pmos W=0.0975U L=0.26U
M32_ Vdd R_at_50_6 #fb76# Vdd pmos W=0.1625U L=0.13U
M33_keeper Vdd GND #74 Vdd pmos W=0.0975U L=0.26U
M34_ Vdd R_af_50_6 #fb79# Vdd pmos W=0.1625U L=0.13U
M35_keeper Vdd GND #77 Vdd pmos W=0.0975U L=0.26U
M36_ Vdd R_at_51_6 #fb82# Vdd pmos W=0.1625U L=0.13U
M37_keeper Vdd GND #80 Vdd pmos W=0.0975U L=0.26U
M38_ Vdd R_af_51_6 #fb85# Vdd pmos W=0.1625U L=0.13U
M39_keeper Vdd GND #83 Vdd pmos W=0.0975U L=0.26U
M40_ Vdd R_at_52_6 #fb88# Vdd pmos W=0.1625U L=0.13U
M41_keeper Vdd GND #86 Vdd pmos W=0.0975U L=0.26U
M42_ Vdd R_af_52_6 #fb91# Vdd pmos W=0.1625U L=0.13U
M43_keeper Vdd GND #89 Vdd pmos W=0.0975U L=0.26U
M44_ Vdd R_at_53_6 #fb94# Vdd pmos W=0.1625U L=0.13U
M45_keeper Vdd GND #92 Vdd pmos W=0.0975U L=0.26U
M46_ Vdd R_af_53_6 #fb97# Vdd pmos W=0.1625U L=0.13U
M47_keeper Vdd GND #95 Vdd pmos W=0.0975U L=0.26U
M48_keeper Vdd GND #98 Vdd pmos W=0.0975U L=0.26U
M49_ GND W_at_53_6 #6 GND nmos W=0.2925U L=0.065U
M50_ GND W_af_53_6 #9 GND nmos W=0.2925U L=0.065U
M51_ GND W_af_50_6 x_50_6 GND nmos W=0.0975U L=0.065U
M52_ GND reset x_50_6 GND nmos W=0.0975U L=0.065U
M53_ GND __qr R_at_50_6 GND nmos W=0.0975U L=0.065U
M54_ GND __qr R_af_50_6 GND nmos W=0.0975U L=0.065U
M55_ GND W_af_51_6 x_51_6 GND nmos W=0.0975U L=0.065U
M56_ GND reset x_51_6 GND nmos W=0.0975U L=0.065U
M57_ GND __qr R_at_51_6 GND nmos W=0.0975U L=0.065U
M58_ GND __qr R_af_51_6 GND nmos W=0.0975U L=0.065U
M59_ GND W_af_52_6 x_52_6 GND nmos W=0.0975U L=0.065U
M60_ GND reset x_52_6 GND nmos W=0.0975U L=0.065U
M61_ GND __qr R_at_52_6 GND nmos W=0.0975U L=0.065U
M62_ GND __qr R_af_52_6 GND nmos W=0.0975U L=0.065U
M63_ GND W_af_53_6 x_53_6 GND nmos W=0.0975U L=0.065U
M64_ GND reset x_53_6 GND nmos W=0.0975U L=0.065U
M65_ GND __qr R_at_53_6 GND nmos W=0.0975U L=0.065U
M66_ GND __qr R_af_53_6 GND nmos W=0.0975U L=0.065U
M67_ GND R_areq __qr GND nmos W=0.195U L=0.065U
M68_ GND W_at_50_6 __pt_50_6 GND nmos W=0.0975U L=0.065U
M69_ GND x_50_6 __x_50_6 GND nmos W=0.0975U L=0.065U
M70_ GND W_at_51_6 __pt_51_6 GND nmos W=0.0975U L=0.065U
M71_ GND x_51_6 __x_51_6 GND nmos W=0.0975U L=0.065U
M72_ GND W_at_52_6 __pt_52_6 GND nmos W=0.0975U L=0.065U
M73_ GND x_52_6 __x_52_6 GND nmos W=0.0975U L=0.065U
M74_ GND W_at_53_6 __pt_53_6 GND nmos W=0.0975U L=0.065U
M75_ GND x_53_6 __x_53_6 GND nmos W=0.0975U L=0.065U
M76_ GND __reg__pa W_aa GND nmos W=0.0975U L=0.065U
M77_ GND __reg__pa #fb61# GND nmos W=0.0975U L=0.13U
M78_ GND x_53_6 #fb64# GND nmos W=0.0975U L=0.13U
M79_keeper GND Vdd #63 GND nmos W=0.0975U L=6.175U
M80_ GND x_52_6 #fb67# GND nmos W=0.0975U L=0.13U
M81_keeper GND Vdd #66 GND nmos W=0.0975U L=0.715U
M82_ GND x_51_6 #fb70# GND nmos W=0.0975U L=0.13U
M83_keeper GND Vdd #69 GND nmos W=0.0975U L=0.715U
M84_ GND x_50_6 #fb73# GND nmos W=0.0975U L=0.13U
M85_keeper GND Vdd #72 GND nmos W=0.0975U L=0.715U
M86_ GND R_at_50_6 #fb76# GND nmos W=0.0975U L=0.13U
M87_keeper GND Vdd #75 GND nmos W=0.0975U L=0.715U
M88_ GND R_af_50_6 #fb79# GND nmos W=0.0975U L=0.13U
M89_keeper GND Vdd #78 GND nmos W=0.0975U L=1.495U
M90_ GND R_at_51_6 #fb82# GND nmos W=0.0975U L=0.13U
M91_keeper GND Vdd #81 GND nmos W=0.0975U L=1.495U
M92_ GND R_af_51_6 #fb85# GND nmos W=0.0975U L=0.13U
M93_keeper GND Vdd #84 GND nmos W=0.0975U L=1.495U
M94_ GND R_at_52_6 #fb88# GND nmos W=0.0975U L=0.13U
M95_keeper GND Vdd #87 GND nmos W=0.0975U L=1.495U
M96_ GND R_af_52_6 #fb91# GND nmos W=0.0975U L=0.13U
M97_keeper GND Vdd #90 GND nmos W=0.0975U L=1.495U
M98_ GND R_at_53_6 #fb94# GND nmos W=0.0975U L=0.13U
M99_keeper GND Vdd #93 GND nmos W=0.0975U L=1.495U
M100_ GND R_af_53_6 #fb97# GND nmos W=0.0975U L=0.13U
M101_keeper GND Vdd #96 GND nmos W=0.0975U L=1.495U
M102_keeper GND Vdd #99 GND nmos W=0.0975U L=1.495U
M103_ #24 x_50_6 __reg__pa GND nmos W=0.2925U L=0.065U
M104_ #27 __x_50_6 __reg__pa GND nmos W=0.2925U L=0.065U
M105_ #36 W_af_50_6 __reg__pa Vdd pmos W=0.975U L=0.065U
M106_keeper #62 #fb61# __reg__pa Vdd pmos W=0.0975U L=0.065U
M107_keeper #63 #fb61# __reg__pa GND nmos W=0.0975U L=0.065U
M108_ #18 x_51_6 #3 GND nmos W=0.2925U L=0.065U
M109_ #21 __x_51_6 #3 GND nmos W=0.2925U L=0.065U
M110_ #3 W_at_50_6 #24 GND nmos W=0.2925U L=0.065U
M111_ #3 W_af_50_6 #27 GND nmos W=0.2925U L=0.065U
M112_ #12 x_52_6 #4 GND nmos W=0.2925U L=0.065U
M113_ #15 __x_52_6 #4 GND nmos W=0.2925U L=0.065U
M114_ #4 W_at_51_6 #18 GND nmos W=0.2925U L=0.065U
M115_ #4 W_af_51_6 #21 GND nmos W=0.2925U L=0.065U
M116_ #6 x_53_6 #5 GND nmos W=0.2925U L=0.065U
M117_ #9 __x_53_6 #5 GND nmos W=0.2925U L=0.065U
M118_ #5 W_at_52_6 #12 GND nmos W=0.2925U L=0.065U
M119_ #5 W_af_52_6 #15 GND nmos W=0.2925U L=0.065U
M120_keeper #65 #fb64# x_53_6 Vdd pmos W=0.0975U L=0.065U
M121_keeper #66 #fb64# x_53_6 GND nmos W=0.0975U L=0.065U
M122_keeper #68 #fb67# x_52_6 Vdd pmos W=0.0975U L=0.065U
M123_keeper #69 #fb67# x_52_6 GND nmos W=0.0975U L=0.065U
M124_keeper #71 #fb70# x_51_6 Vdd pmos W=0.0975U L=0.065U
M125_keeper #72 #fb70# x_51_6 GND nmos W=0.0975U L=0.065U
M126_keeper #74 #fb73# x_50_6 Vdd pmos W=0.0975U L=0.065U
M127_keeper #75 #fb73# x_50_6 GND nmos W=0.0975U L=0.065U
M128_ #35 W_af_51_6 #30 Vdd pmos W=0.975U L=0.065U
M129_ #30 W_at_50_6 #36 Vdd pmos W=0.975U L=0.065U
M130_ #34 W_af_52_6 #31 Vdd pmos W=0.975U L=0.065U
M131_ #31 W_at_51_6 #35 Vdd pmos W=0.975U L=0.065U
M132_ #33 W_af_53_6 #32 Vdd pmos W=0.975U L=0.065U
M133_ #32 W_at_52_6 #34 Vdd pmos W=0.975U L=0.065U
M134_ #40 __x_50_6 R_at_50_6 Vdd pmos W=0.1625U L=0.065U
M135_keeper #77 #fb76# R_at_50_6 Vdd pmos W=0.0975U L=0.065U
M136_keeper #78 #fb76# R_at_50_6 GND nmos W=0.0975U L=0.065U
M137_ #43 x_50_6 R_af_50_6 Vdd pmos W=0.1625U L=0.065U
M138_keeper #80 #fb79# R_af_50_6 Vdd pmos W=0.0975U L=0.065U
M139_keeper #81 #fb79# R_af_50_6 GND nmos W=0.0975U L=0.065U
M140_ #46 __x_51_6 R_at_51_6 Vdd pmos W=0.1625U L=0.065U
M141_keeper #83 #fb82# R_at_51_6 Vdd pmos W=0.0975U L=0.065U
M142_keeper #84 #fb82# R_at_51_6 GND nmos W=0.0975U L=0.065U
M143_ #48 x_51_6 R_af_51_6 Vdd pmos W=0.1625U L=0.065U
M144_keeper #86 #fb85# R_af_51_6 Vdd pmos W=0.0975U L=0.065U
M145_keeper #87 #fb85# R_af_51_6 GND nmos W=0.0975U L=0.065U
M146_ #51 __x_52_6 R_at_52_6 Vdd pmos W=0.1625U L=0.065U
M147_keeper #89 #fb88# R_at_52_6 Vdd pmos W=0.0975U L=0.065U
M148_keeper #90 #fb88# R_at_52_6 GND nmos W=0.0975U L=0.065U
M149_ #53 x_52_6 R_af_52_6 Vdd pmos W=0.1625U L=0.065U
M150_keeper #92 #fb91# R_af_52_6 Vdd pmos W=0.0975U L=0.065U
M151_keeper #93 #fb91# R_af_52_6 GND nmos W=0.0975U L=0.065U
M152_ #56 __x_53_6 R_at_53_6 Vdd pmos W=0.1625U L=0.065U
M153_keeper #95 #fb94# R_at_53_6 Vdd pmos W=0.0975U L=0.065U
M154_keeper #96 #fb94# R_at_53_6 GND nmos W=0.0975U L=0.065U
M155_ #58 x_53_6 R_af_53_6 Vdd pmos W=0.1625U L=0.065U
M156_keeper #98 #fb97# R_af_53_6 Vdd pmos W=0.0975U L=0.065U
M157_keeper #99 #fb97# R_af_53_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: Reg4<> -----
*
*---- act defproc: QBuffer<> -----
* raw ports:  reset I.req I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a R.req R.a L.req L.a
*
.subckt QBuffer reset I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa R_areq R_aa L_areq L_aa
*.PININFO reset:I I_areq:O I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I R_areq:O R_aa:I L_areq:I L_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __a (state-holding): pup_reff=0.4; pdn_reff=0.666667
* L_aa (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __pa (combinational)
* __r (combinational)
* __b (state-holding): pup_reff=0.4; pdn_reff=0.666667
* p__a (combinational)
* __ra (combinational)
* __c (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __oa (combinational)
* I_areq (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b (combinational)
* __lr (combinational)
* c (combinational)
* a (combinational)
* R_areq (state-holding): pup_reff=0.8; pdn_reff=1.33333
* q__r (state-holding): pup_reff=0.8; pdn_reff=0.666667
*
* --- end node flags ---
*
M0_ Vdd __pa __a Vdd pmos W=0.1625U L=0.065U
M1_ Vdd __r __a Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __ra __b Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __r __b Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __oa __c Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __r __c Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __a #13 Vdd pmos W=0.325U L=0.065U
M7_ Vdd __lr #19 Vdd pmos W=0.325U L=0.065U
M8_ Vdd __b #26 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __c #29 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd p__a __pa Vdd pmos W=0.1625U L=0.065U
M11_ Vdd R_aa __ra Vdd pmos W=0.1625U L=0.065U
M12_ Vdd O_aa __oa Vdd pmos W=0.1625U L=0.065U
M13_ Vdd L_areq __lr Vdd pmos W=0.1625U L=0.065U
M14_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __a a Vdd pmos W=0.1625U L=0.065U
M16_ Vdd __b b Vdd pmos W=0.1625U L=0.065U
M17_ Vdd __c c Vdd pmos W=0.1625U L=0.065U
M18_ Vdd __a #fb31# Vdd pmos W=0.1625U L=0.13U
M19_ Vdd L_aa #fb34# Vdd pmos W=0.1625U L=0.13U
M20_keeper Vdd GND #32 Vdd pmos W=0.0975U L=0.26U
M21_ Vdd __b #fb37# Vdd pmos W=0.1625U L=0.13U
M22_keeper Vdd GND #35 Vdd pmos W=0.0975U L=0.585U
M23_ Vdd __c #fb40# Vdd pmos W=0.1625U L=0.13U
M24_keeper Vdd GND #38 Vdd pmos W=0.0975U L=0.26U
M25_ Vdd I_areq #fb43# Vdd pmos W=0.1625U L=0.13U
M26_keeper Vdd GND #41 Vdd pmos W=0.0975U L=0.26U
M27_ Vdd R_areq #fb46# Vdd pmos W=0.1625U L=0.13U
M28_keeper Vdd GND #44 Vdd pmos W=0.0975U L=0.585U
M29_ Vdd q__r #fb49# Vdd pmos W=0.1625U L=0.13U
M30_keeper Vdd GND #47 Vdd pmos W=0.0975U L=0.585U
M31_keeper Vdd GND #50 Vdd pmos W=0.0975U L=0.26U
M32_ GND L_aa __a GND nmos W=0.0975U L=0.065U
M33_ GND p__a __b GND nmos W=0.0975U L=0.065U
M34_ GND R_aa __c GND nmos W=0.0975U L=0.065U
M35_ GND __a #14 GND nmos W=0.195U L=0.065U
M36_ GND reset I_areq GND nmos W=0.195U L=0.065U
M37_ GND __lr #23 GND nmos W=0.0975U L=0.065U
M38_ GND reset L_aa GND nmos W=0.0975U L=0.065U
M39_ GND c #27 GND nmos W=0.0975U L=0.065U
M40_ GND reset R_areq GND nmos W=0.0975U L=0.065U
M41_ GND __c q__r GND nmos W=0.0975U L=0.065U
M42_ GND p__a __pa GND nmos W=0.0975U L=0.065U
M43_ GND R_aa __ra GND nmos W=0.0975U L=0.065U
M44_ GND O_aa __oa GND nmos W=0.0975U L=0.065U
M45_ GND L_areq __lr GND nmos W=0.0975U L=0.065U
M46_ GND reset __r GND nmos W=0.0975U L=0.065U
M47_ GND __a a GND nmos W=0.0975U L=0.065U
M48_ GND __b b GND nmos W=0.0975U L=0.065U
M49_ GND __c c GND nmos W=0.0975U L=0.065U
M50_ GND __a #fb31# GND nmos W=0.0975U L=0.13U
M51_ GND L_aa #fb34# GND nmos W=0.0975U L=0.13U
M52_keeper GND Vdd #33 GND nmos W=0.0975U L=0.715U
M53_ GND __b #fb37# GND nmos W=0.0975U L=0.13U
M54_keeper GND Vdd #36 GND nmos W=0.0975U L=3.055U
M55_ GND __c #fb40# GND nmos W=0.0975U L=0.13U
M56_keeper GND Vdd #39 GND nmos W=0.0975U L=0.715U
M57_ GND I_areq #fb43# GND nmos W=0.0975U L=0.13U
M58_keeper GND Vdd #42 GND nmos W=0.0975U L=0.715U
M59_ GND R_areq #fb46# GND nmos W=0.0975U L=0.13U
M60_keeper GND Vdd #45 GND nmos W=0.0975U L=1.495U
M61_ GND q__r #fb49# GND nmos W=0.0975U L=0.13U
M62_keeper GND Vdd #48 GND nmos W=0.0975U L=1.495U
M63_keeper GND Vdd #51 GND nmos W=0.0975U L=1.495U
M64_keeper #32 #fb31# __a Vdd pmos W=0.0975U L=0.065U
M65_keeper #33 #fb31# __a GND nmos W=0.0975U L=0.065U
M66_ #17 reset L_aa Vdd pmos W=0.325U L=0.065U
M67_ #23 a L_aa GND nmos W=0.0975U L=0.065U
M68_keeper #35 #fb34# L_aa Vdd pmos W=0.0975U L=0.065U
M69_keeper #36 #fb34# L_aa GND nmos W=0.0975U L=0.065U
M70_keeper #38 #fb37# __b Vdd pmos W=0.0975U L=0.065U
M71_keeper #39 #fb37# __b GND nmos W=0.0975U L=0.065U
M72_keeper #41 #fb40# __c Vdd pmos W=0.0975U L=0.065U
M73_keeper #42 #fb40# __c GND nmos W=0.0975U L=0.065U
M74_ #13 L_aa I_areq Vdd pmos W=0.325U L=0.065U
M75_ #14 b I_areq GND nmos W=0.195U L=0.065U
M76_keeper #44 #fb43# I_areq Vdd pmos W=0.0975U L=0.065U
M77_keeper #45 #fb43# I_areq GND nmos W=0.0975U L=0.065U
M78_ #18 O_aa #17 Vdd pmos W=0.325U L=0.065U
M79_ #19 c #18 Vdd pmos W=0.325U L=0.065U
M80_ #26 p__a R_areq Vdd pmos W=0.1625U L=0.065U
M81_ #27 __b R_areq GND nmos W=0.0975U L=0.065U
M82_keeper #47 #fb46# R_areq Vdd pmos W=0.0975U L=0.065U
M83_keeper #48 #fb46# R_areq GND nmos W=0.0975U L=0.065U
M84_ #29 R_aa q__r Vdd pmos W=0.1625U L=0.065U
M85_keeper #50 #fb49# q__r Vdd pmos W=0.0975U L=0.065U
M86_keeper #51 #fb49# q__r GND nmos W=0.0975U L=0.065U
xreg reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 p__a q__r O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 Reg4
.ends
*---- end of process: QBuffer<> -----
*
*---- act defproc: InputAnalyzer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a O.req O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] R.req R.a L.req L.a
*
.subckt InputAnalyzer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa O_areq O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 R_areq R_aa L_areq L_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O O_areq:I O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O R_areq:O R_aa:I L_areq:I L_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* m (state-holding): pup_reff=0.8; pdn_reff=6
* __or (combinational)
* __it_53_6 (combinational)
* __it_52_6 (combinational)
* __it_51_6 (combinational)
* __it_50_6 (combinational)
* I_aa (state-holding): pup_reff=1.2; pdn_reff=1.33333
* __ot_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_53_6 (state-holding): pup_reff=0.8; pdn_reff=2
* __ot_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_52_6 (state-holding): pup_reff=0.8; pdn_reff=2
* __ot_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_51_6 (state-holding): pup_reff=0.8; pdn_reff=2
* __ot_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_50_6 (state-holding): pup_reff=0.8; pdn_reff=2
* v (state-holding): pup_reff=1.2; pdn_reff=0.666667
* __m (combinational)
* __f (state-holding): pup_reff=1.2; pdn_reff=2
* k (state-holding): pup_reff=2; pdn_reff=2.66667
* __lr (combinational)
* __r (combinational)
* __if_53_6 (combinational)
* __if_52_6 (combinational)
* __if_51_6 (combinational)
* __if_50_6 (combinational)
* __k (combinational)
* __v (combinational)
* __s (state-holding): pup_reff=0.4; pdn_reff=2
* __rr (combinational)
* L_aa (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_areq (state-holding): pup_reff=1.2; pdn_reff=1.33333
* O_at_50_6 (combinational)
* O_af_50_6 (combinational)
* O_at_51_6 (combinational)
* O_af_51_6 (combinational)
* O_at_52_6 (combinational)
* O_af_52_6 (combinational)
* O_at_53_6 (combinational)
* O_af_53_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd __or #3 Vdd pmos W=0.325U L=0.065U
M1_ Vdd L_areq #29 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __lr #38 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __r __f Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __or #41 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __f #53 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __v #56 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd v #58 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __rr __s Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __r __s Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __s #65 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __s #68 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd __r R_areq Vdd pmos W=0.1625U L=0.065U
M13_ Vdd I_at_50_6 __ot_50_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd I_af_50_6 __of_50_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __f #77 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd I_at_51_6 __ot_51_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I_af_51_6 __of_51_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd __f #84 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd I_at_52_6 __ot_52_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd I_af_52_6 __of_52_6 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd __f #91 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd I_at_53_6 __ot_53_6 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd I_af_53_6 __of_53_6 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd __f #98 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd O_areq __or Vdd pmos W=0.1625U L=0.065U
M26_ Vdd m __m Vdd pmos W=0.1625U L=0.065U
M27_ Vdd k __k Vdd pmos W=0.1625U L=0.065U
M28_ Vdd v __v Vdd pmos W=0.1625U L=0.065U
M29_ Vdd L_areq __lr Vdd pmos W=0.1625U L=0.065U
M30_ Vdd R_areq __rr Vdd pmos W=0.1625U L=0.065U
M31_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M32_ Vdd I_at_50_6 __it_50_6 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd I_af_50_6 __if_50_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd __ot_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd __of_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd I_at_51_6 __it_51_6 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd I_af_51_6 __if_51_6 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd __ot_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd __of_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd I_at_52_6 __it_52_6 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd I_af_52_6 __if_52_6 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd __ot_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd __of_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd I_at_53_6 __it_53_6 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd I_af_53_6 __if_53_6 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd __ot_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd __of_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd m #fb107# Vdd pmos W=0.1625U L=0.13U
M49_ Vdd I_aa #fb110# Vdd pmos W=0.1625U L=0.13U
M50_keeper Vdd GND #108 Vdd pmos W=0.0975U L=2.86U
M51_ Vdd __ot_53_6 #fb113# Vdd pmos W=0.1625U L=0.13U
M52_keeper Vdd GND #111 Vdd pmos W=0.0975U L=0.585U
M53_ Vdd __of_53_6 #fb116# Vdd pmos W=0.1625U L=0.13U
M54_keeper Vdd GND #114 Vdd pmos W=0.0975U L=0.585U
M55_ Vdd __ot_52_6 #fb119# Vdd pmos W=0.1625U L=0.13U
M56_keeper Vdd GND #117 Vdd pmos W=0.0975U L=0.91U
M57_ Vdd __of_52_6 #fb122# Vdd pmos W=0.1625U L=0.13U
M58_keeper Vdd GND #120 Vdd pmos W=0.0975U L=0.585U
M59_ Vdd __ot_51_6 #fb125# Vdd pmos W=0.1625U L=0.13U
M60_keeper Vdd GND #123 Vdd pmos W=0.0975U L=0.91U
M61_ Vdd __of_51_6 #fb128# Vdd pmos W=0.1625U L=0.13U
M62_keeper Vdd GND #126 Vdd pmos W=0.0975U L=0.585U
M63_ Vdd __ot_50_6 #fb131# Vdd pmos W=0.1625U L=0.13U
M64_keeper Vdd GND #129 Vdd pmos W=0.0975U L=0.91U
M65_ Vdd __of_50_6 #fb134# Vdd pmos W=0.1625U L=0.13U
M66_keeper Vdd GND #132 Vdd pmos W=0.0975U L=0.585U
M67_ Vdd v #fb137# Vdd pmos W=0.1625U L=0.13U
M68_keeper Vdd GND #135 Vdd pmos W=0.0975U L=0.91U
M69_ Vdd __f #fb140# Vdd pmos W=0.1625U L=0.13U
M70_keeper Vdd GND #138 Vdd pmos W=0.0975U L=0.26U
M71_ Vdd k #fb143# Vdd pmos W=0.1625U L=0.13U
M72_keeper Vdd GND #141 Vdd pmos W=0.0975U L=0.91U
M73_ Vdd __s #fb146# Vdd pmos W=0.1625U L=0.13U
M74_keeper Vdd GND #144 Vdd pmos W=0.0975U L=1.235U
M75_ Vdd L_aa #fb149# Vdd pmos W=0.1625U L=0.13U
M76_keeper Vdd GND #147 Vdd pmos W=0.0975U L=0.91U
M77_ Vdd R_areq #fb152# Vdd pmos W=0.1625U L=0.13U
M78_keeper Vdd GND #150 Vdd pmos W=0.0975U L=0.26U
M79_keeper Vdd GND #153 Vdd pmos W=0.0975U L=0.585U
M80_ GND I_aa #9 GND nmos W=0.39U L=0.065U
M81_ GND reset m GND nmos W=0.39U L=0.065U
M82_ GND L_areq v GND nmos W=0.0975U L=0.065U
M83_ GND reset v GND nmos W=0.0975U L=0.065U
M84_ GND k #35 GND nmos W=0.0975U L=0.065U
M85_ GND __if_53_6 #51 GND nmos W=0.0975U L=0.065U
M86_ GND reset k GND nmos W=0.0975U L=0.065U
M87_ GND __k #59 GND nmos W=0.0975U L=0.065U
M88_ GND L_areq #62 GND nmos W=0.0975U L=0.065U
M89_ GND __lr L_aa GND nmos W=0.0975U L=0.065U
M90_ GND reset L_aa GND nmos W=0.0975U L=0.065U
M91_ GND R_aa #69 GND nmos W=0.0975U L=0.065U
M92_ GND m #71 GND nmos W=0.0975U L=0.065U
M93_ GND m #73 GND nmos W=0.0975U L=0.065U
M94_ GND O_areq #76 GND nmos W=0.0975U L=0.065U
M95_ GND m #78 GND nmos W=0.0975U L=0.065U
M96_ GND m #80 GND nmos W=0.0975U L=0.065U
M97_ GND O_areq #83 GND nmos W=0.0975U L=0.065U
M98_ GND m #85 GND nmos W=0.0975U L=0.065U
M99_ GND m #87 GND nmos W=0.0975U L=0.065U
M100_ GND O_areq #90 GND nmos W=0.0975U L=0.065U
M101_ GND m #92 GND nmos W=0.0975U L=0.065U
M102_ GND m #94 GND nmos W=0.0975U L=0.065U
M103_ GND O_areq #97 GND nmos W=0.0975U L=0.065U
M104_ GND O_areq __or GND nmos W=0.0975U L=0.065U
M105_ GND m __m GND nmos W=0.0975U L=0.065U
M106_ GND k __k GND nmos W=0.0975U L=0.065U
M107_ GND v __v GND nmos W=0.0975U L=0.065U
M108_ GND L_areq __lr GND nmos W=0.0975U L=0.065U
M109_ GND R_areq __rr GND nmos W=0.0975U L=0.065U
M110_ GND reset __r GND nmos W=0.0975U L=0.065U
M111_ GND I_at_50_6 __it_50_6 GND nmos W=0.0975U L=0.065U
M112_ GND I_af_50_6 __if_50_6 GND nmos W=0.0975U L=0.065U
M113_ GND __ot_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M114_ GND __of_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M115_ GND I_at_51_6 __it_51_6 GND nmos W=0.0975U L=0.065U
M116_ GND I_af_51_6 __if_51_6 GND nmos W=0.0975U L=0.065U
M117_ GND __ot_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M118_ GND __of_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M119_ GND I_at_52_6 __it_52_6 GND nmos W=0.0975U L=0.065U
M120_ GND I_af_52_6 __if_52_6 GND nmos W=0.0975U L=0.065U
M121_ GND __ot_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M122_ GND __of_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M123_ GND I_at_53_6 __it_53_6 GND nmos W=0.0975U L=0.065U
M124_ GND I_af_53_6 __if_53_6 GND nmos W=0.0975U L=0.065U
M125_ GND __ot_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M126_ GND __of_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M127_ GND m #fb107# GND nmos W=0.0975U L=0.13U
M128_ GND I_aa #fb110# GND nmos W=0.0975U L=0.13U
M129_keeper GND Vdd #109 GND nmos W=0.0975U L=1.495U
M130_ GND __ot_53_6 #fb113# GND nmos W=0.0975U L=0.13U
M131_keeper GND Vdd #112 GND nmos W=0.0975U L=2.275U
M132_ GND __of_53_6 #fb116# GND nmos W=0.0975U L=0.13U
M133_keeper GND Vdd #115 GND nmos W=0.0975U L=0.715U
M134_ GND __ot_52_6 #fb119# GND nmos W=0.0975U L=0.13U
M135_keeper GND Vdd #118 GND nmos W=0.0975U L=1.495U
M136_ GND __of_52_6 #fb122# GND nmos W=0.0975U L=0.13U
M137_keeper GND Vdd #121 GND nmos W=0.0975U L=0.715U
M138_ GND __ot_51_6 #fb125# GND nmos W=0.0975U L=0.13U
M139_keeper GND Vdd #124 GND nmos W=0.0975U L=1.495U
M140_ GND __of_51_6 #fb128# GND nmos W=0.0975U L=0.13U
M141_keeper GND Vdd #127 GND nmos W=0.0975U L=0.715U
M142_ GND __ot_50_6 #fb131# GND nmos W=0.0975U L=0.13U
M143_keeper GND Vdd #130 GND nmos W=0.0975U L=1.495U
M144_ GND __of_50_6 #fb134# GND nmos W=0.0975U L=0.13U
M145_keeper GND Vdd #133 GND nmos W=0.0975U L=0.715U
M146_ GND v #fb137# GND nmos W=0.0975U L=0.13U
M147_keeper GND Vdd #136 GND nmos W=0.0975U L=1.495U
M148_ GND __f #fb140# GND nmos W=0.0975U L=0.13U
M149_keeper GND Vdd #139 GND nmos W=0.0975U L=2.275U
M150_ GND k #fb143# GND nmos W=0.0975U L=0.13U
M151_keeper GND Vdd #142 GND nmos W=0.0975U L=2.275U
M152_ GND __s #fb146# GND nmos W=0.0975U L=0.13U
M153_keeper GND Vdd #145 GND nmos W=0.0975U L=3.835U
M154_ GND L_aa #fb149# GND nmos W=0.0975U L=0.13U
M155_keeper GND Vdd #148 GND nmos W=0.0975U L=0.715U
M156_ GND R_areq #fb152# GND nmos W=0.0975U L=0.13U
M157_keeper GND Vdd #151 GND nmos W=0.0975U L=1.495U
M158_keeper GND Vdd #154 GND nmos W=0.0975U L=2.275U
M159_ #3 __it_53_6 m Vdd pmos W=0.325U L=0.065U
M160_ #3 __it_52_6 m Vdd pmos W=0.325U L=0.065U
M161_ #3 __it_51_6 m Vdd pmos W=0.325U L=0.065U
M162_ #3 __it_50_6 m Vdd pmos W=0.325U L=0.065U
M163_ #23 __of_50_6 m GND nmos W=0.39U L=0.065U
M164_keeper #108 #fb107# m Vdd pmos W=0.0975U L=0.065U
M165_keeper #109 #fb107# m GND nmos W=0.0975U L=0.065U
M166_ #9 __ot_53_6 #14 GND nmos W=0.39U L=0.065U
M167_ #52 __k I_aa Vdd pmos W=0.1625U L=0.065U
M168_ #55 O_areq I_aa Vdd pmos W=0.1625U L=0.065U
M169_ #58 __k I_aa Vdd pmos W=0.1625U L=0.065U
M170_ #59 __m I_aa GND nmos W=0.0975U L=0.065U
M171_keeper #111 #fb110# I_aa Vdd pmos W=0.0975U L=0.065U
M172_keeper #112 #fb110# I_aa GND nmos W=0.0975U L=0.065U
M173_ #20 __of_51_6 #11 GND nmos W=0.39U L=0.065U
M174_ #11 __ot_50_6 #23 GND nmos W=0.39U L=0.065U
M175_ #17 __of_52_6 #12 GND nmos W=0.39U L=0.065U
M176_ #12 __ot_51_6 #20 GND nmos W=0.39U L=0.065U
M177_ #14 __of_53_6 #13 GND nmos W=0.39U L=0.065U
M178_ #13 __ot_52_6 #17 GND nmos W=0.39U L=0.065U
M179_ #92 I_at_53_6 __ot_53_6 GND nmos W=0.0975U L=0.065U
M180_keeper #114 #fb113# __ot_53_6 Vdd pmos W=0.0975U L=0.065U
M181_keeper #115 #fb113# __ot_53_6 GND nmos W=0.0975U L=0.065U
M182_ #94 I_af_53_6 __of_53_6 GND nmos W=0.0975U L=0.065U
M183_ #96 k __of_53_6 GND nmos W=0.0975U L=0.065U
M184_ #98 O_areq __of_53_6 Vdd pmos W=0.1625U L=0.065U
M185_keeper #117 #fb116# __of_53_6 Vdd pmos W=0.0975U L=0.065U
M186_keeper #118 #fb116# __of_53_6 GND nmos W=0.0975U L=0.065U
M187_ #85 I_at_52_6 __ot_52_6 GND nmos W=0.0975U L=0.065U
M188_keeper #120 #fb119# __ot_52_6 Vdd pmos W=0.0975U L=0.065U
M189_keeper #121 #fb119# __ot_52_6 GND nmos W=0.0975U L=0.065U
M190_ #87 I_af_52_6 __of_52_6 GND nmos W=0.0975U L=0.065U
M191_ #89 k __of_52_6 GND nmos W=0.0975U L=0.065U
M192_ #91 O_areq __of_52_6 Vdd pmos W=0.1625U L=0.065U
M193_keeper #123 #fb122# __of_52_6 Vdd pmos W=0.0975U L=0.065U
M194_keeper #124 #fb122# __of_52_6 GND nmos W=0.0975U L=0.065U
M195_ #78 I_at_51_6 __ot_51_6 GND nmos W=0.0975U L=0.065U
M196_keeper #126 #fb125# __ot_51_6 Vdd pmos W=0.0975U L=0.065U
M197_keeper #127 #fb125# __ot_51_6 GND nmos W=0.0975U L=0.065U
M198_ #80 I_af_51_6 __of_51_6 GND nmos W=0.0975U L=0.065U
M199_ #82 k __of_51_6 GND nmos W=0.0975U L=0.065U
M200_ #84 O_areq __of_51_6 Vdd pmos W=0.1625U L=0.065U
M201_keeper #129 #fb128# __of_51_6 Vdd pmos W=0.0975U L=0.065U
M202_keeper #130 #fb128# __of_51_6 GND nmos W=0.0975U L=0.065U
M203_ #71 I_at_50_6 __ot_50_6 GND nmos W=0.0975U L=0.065U
M204_keeper #132 #fb131# __ot_50_6 Vdd pmos W=0.0975U L=0.065U
M205_keeper #133 #fb131# __ot_50_6 GND nmos W=0.0975U L=0.065U
M206_ #73 I_af_50_6 __of_50_6 GND nmos W=0.0975U L=0.065U
M207_ #75 k __of_50_6 GND nmos W=0.0975U L=0.065U
M208_ #77 O_areq __of_50_6 Vdd pmos W=0.1625U L=0.065U
M209_keeper #135 #fb134# __of_50_6 Vdd pmos W=0.0975U L=0.065U
M210_keeper #136 #fb134# __of_50_6 GND nmos W=0.0975U L=0.065U
M211_ #28 __m v Vdd pmos W=0.1625U L=0.065U
M212_keeper #138 #fb137# v Vdd pmos W=0.0975U L=0.065U
M213_keeper #139 #fb137# v GND nmos W=0.0975U L=0.065U
M214_ #29 O_areq #28 Vdd pmos W=0.1625U L=0.065U
M215_ #34 __or __f GND nmos W=0.0975U L=0.065U
M216_ #37 k __f Vdd pmos W=0.1625U L=0.065U
M217_keeper #141 #fb140# __f Vdd pmos W=0.0975U L=0.065U
M218_keeper #142 #fb140# __f GND nmos W=0.0975U L=0.065U
M219_ #35 v #34 GND nmos W=0.0975U L=0.065U
M220_ #42 __if_50_6 k Vdd pmos W=0.1625U L=0.065U
M221_ #49 __if_50_6 k GND nmos W=0.0975U L=0.065U
M222_keeper #144 #fb143# k Vdd pmos W=0.0975U L=0.065U
M223_keeper #145 #fb143# k GND nmos W=0.0975U L=0.065U
M224_ #38 I_aa #37 Vdd pmos W=0.1625U L=0.065U
M225_ #41 __if_53_6 #44 Vdd pmos W=0.1625U L=0.065U
M226_ #43 __if_51_6 #42 Vdd pmos W=0.1625U L=0.065U
M227_ #44 __if_52_6 #43 Vdd pmos W=0.1625U L=0.065U
M228_ #50 __if_51_6 #49 GND nmos W=0.0975U L=0.065U
M229_ #51 __if_52_6 #50 GND nmos W=0.0975U L=0.065U
M230_ #53 __lr #52 Vdd pmos W=0.1625U L=0.065U
M231_ #56 __m #55 Vdd pmos W=0.1625U L=0.065U
M232_ #61 __f __s GND nmos W=0.0975U L=0.065U
M233_keeper #147 #fb146# __s Vdd pmos W=0.0975U L=0.065U
M234_keeper #148 #fb146# __s GND nmos W=0.0975U L=0.065U
M235_ #62 __v #61 GND nmos W=0.0975U L=0.065U
M236_ #65 __lr L_aa Vdd pmos W=0.1625U L=0.065U
M237_keeper #150 #fb149# L_aa Vdd pmos W=0.0975U L=0.065U
M238_keeper #151 #fb149# L_aa GND nmos W=0.0975U L=0.065U
M239_ #67 L_areq R_areq Vdd pmos W=0.1625U L=0.065U
M240_ #69 __s R_areq GND nmos W=0.0975U L=0.065U
M241_keeper #153 #fb152# R_areq Vdd pmos W=0.0975U L=0.065U
M242_keeper #154 #fb152# R_areq GND nmos W=0.0975U L=0.065U
M243_ #68 L_aa #67 Vdd pmos W=0.1625U L=0.065U
M244_ #76 v #75 GND nmos W=0.0975U L=0.065U
M245_ #83 v #82 GND nmos W=0.0975U L=0.065U
M246_ #90 v #89 GND nmos W=0.0975U L=0.065U
M247_ #97 v #96 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: InputAnalyzer<> -----
*
*---- act defproc: Split<> -----
* raw ports:  I.req I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] O0.req O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O1.req O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.f[0] O1.f[1] O1.f[2] O1.f[3]
*
.subckt Split I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 O0_areq O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O1_areq O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6
*.PININFO I_areq:O I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I O0_areq:I O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O1_areq:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __ir (combinational)
* __o0t_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1t_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1f_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0t_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1t_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1f_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0t_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1t_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1f_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0t_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o0f_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1t_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1f_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* I_areq (combinational)
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
*
* --- end node flags ---
*
M0_ Vdd O0_areq #3 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd I_at_50_6 __o0t_50_6 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd I_af_50_6 __o0f_50_6 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I_at_50_6 __o1t_50_6 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I_af_50_6 __o1f_50_6 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I_at_51_6 __o0t_51_6 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd I_af_51_6 __o0f_51_6 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd I_at_51_6 __o1t_51_6 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd I_af_51_6 __o1f_51_6 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd I_at_52_6 __o0t_52_6 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd I_af_52_6 __o0f_52_6 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd I_at_52_6 __o1t_52_6 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd I_af_52_6 __o1f_52_6 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd I_at_53_6 __o0t_53_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd I_af_53_6 __o0f_53_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd I_at_53_6 __o1t_53_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd I_af_53_6 __o1f_53_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd __ir I_areq Vdd pmos W=0.1625U L=0.065U
M18_ Vdd __o0t_50_6 O0_at_50_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd __o0f_50_6 O0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd __o1t_50_6 O1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd __o1f_50_6 O1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd __o0t_51_6 O0_at_51_6 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd __o0f_51_6 O0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd __o1t_51_6 O1_at_51_6 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd __o1f_51_6 O1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd __o0t_52_6 O0_at_52_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd __o0f_52_6 O0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd __o1t_52_6 O1_at_52_6 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd __o1f_52_6 O1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd __o0t_53_6 O0_at_53_6 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd __o0f_53_6 O0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd __o1t_53_6 O1_at_53_6 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd __o1f_53_6 O1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd __o0t_50_6 #fb63# Vdd pmos W=0.1625U L=0.13U
M35_ Vdd __o0f_50_6 #fb66# Vdd pmos W=0.1625U L=0.13U
M36_keeper Vdd GND #64 Vdd pmos W=0.0975U L=0.585U
M37_ Vdd __o1t_50_6 #fb69# Vdd pmos W=0.1625U L=0.13U
M38_keeper Vdd GND #67 Vdd pmos W=0.0975U L=0.585U
M39_ Vdd __o1f_50_6 #fb72# Vdd pmos W=0.1625U L=0.13U
M40_keeper Vdd GND #70 Vdd pmos W=0.0975U L=0.585U
M41_ Vdd __o0t_51_6 #fb75# Vdd pmos W=0.1625U L=0.13U
M42_keeper Vdd GND #73 Vdd pmos W=0.0975U L=0.585U
M43_ Vdd __o0f_51_6 #fb78# Vdd pmos W=0.1625U L=0.13U
M44_keeper Vdd GND #76 Vdd pmos W=0.0975U L=0.585U
M45_ Vdd __o1t_51_6 #fb81# Vdd pmos W=0.1625U L=0.13U
M46_keeper Vdd GND #79 Vdd pmos W=0.0975U L=0.585U
M47_ Vdd __o1f_51_6 #fb84# Vdd pmos W=0.1625U L=0.13U
M48_keeper Vdd GND #82 Vdd pmos W=0.0975U L=0.585U
M49_ Vdd __o0t_52_6 #fb87# Vdd pmos W=0.1625U L=0.13U
M50_keeper Vdd GND #85 Vdd pmos W=0.0975U L=0.585U
M51_ Vdd __o0f_52_6 #fb90# Vdd pmos W=0.1625U L=0.13U
M52_keeper Vdd GND #88 Vdd pmos W=0.0975U L=0.585U
M53_ Vdd __o1t_52_6 #fb93# Vdd pmos W=0.1625U L=0.13U
M54_keeper Vdd GND #91 Vdd pmos W=0.0975U L=0.585U
M55_ Vdd __o1f_52_6 #fb96# Vdd pmos W=0.1625U L=0.13U
M56_keeper Vdd GND #94 Vdd pmos W=0.0975U L=0.585U
M57_ Vdd __o0t_53_6 #fb99# Vdd pmos W=0.1625U L=0.13U
M58_keeper Vdd GND #97 Vdd pmos W=0.0975U L=0.585U
M59_ Vdd __o0f_53_6 #fb102# Vdd pmos W=0.1625U L=0.13U
M60_keeper Vdd GND #100 Vdd pmos W=0.0975U L=0.585U
M61_ Vdd __o1t_53_6 #fb105# Vdd pmos W=0.1625U L=0.13U
M62_keeper Vdd GND #103 Vdd pmos W=0.0975U L=0.585U
M63_ Vdd __o1f_53_6 #fb108# Vdd pmos W=0.1625U L=0.13U
M64_keeper Vdd GND #106 Vdd pmos W=0.0975U L=0.585U
M65_keeper Vdd GND #109 Vdd pmos W=0.0975U L=0.585U
M66_ GND O0_areq __ir GND nmos W=0.0975U L=0.065U
M67_ GND O1_areq __ir GND nmos W=0.0975U L=0.065U
M68_ GND O0_areq #7 GND nmos W=0.0975U L=0.065U
M69_ GND O0_areq #10 GND nmos W=0.0975U L=0.065U
M70_ GND O1_areq #13 GND nmos W=0.0975U L=0.065U
M71_ GND O1_areq #15 GND nmos W=0.0975U L=0.065U
M72_ GND O0_areq #17 GND nmos W=0.0975U L=0.065U
M73_ GND O0_areq #20 GND nmos W=0.0975U L=0.065U
M74_ GND O1_areq #23 GND nmos W=0.0975U L=0.065U
M75_ GND O1_areq #25 GND nmos W=0.0975U L=0.065U
M76_ GND O0_areq #27 GND nmos W=0.0975U L=0.065U
M77_ GND O0_areq #30 GND nmos W=0.0975U L=0.065U
M78_ GND O1_areq #33 GND nmos W=0.0975U L=0.065U
M79_ GND O1_areq #35 GND nmos W=0.0975U L=0.065U
M80_ GND O0_areq #37 GND nmos W=0.0975U L=0.065U
M81_ GND O0_areq #40 GND nmos W=0.0975U L=0.065U
M82_ GND O1_areq #43 GND nmos W=0.0975U L=0.065U
M83_ GND O1_areq #45 GND nmos W=0.0975U L=0.065U
M84_ GND __ir I_areq GND nmos W=0.0975U L=0.065U
M85_ GND __o0t_50_6 O0_at_50_6 GND nmos W=0.0975U L=0.065U
M86_ GND __o0f_50_6 O0_af_50_6 GND nmos W=0.0975U L=0.065U
M87_ GND __o1t_50_6 O1_at_50_6 GND nmos W=0.0975U L=0.065U
M88_ GND __o1f_50_6 O1_af_50_6 GND nmos W=0.0975U L=0.065U
M89_ GND __o0t_51_6 O0_at_51_6 GND nmos W=0.0975U L=0.065U
M90_ GND __o0f_51_6 O0_af_51_6 GND nmos W=0.0975U L=0.065U
M91_ GND __o1t_51_6 O1_at_51_6 GND nmos W=0.0975U L=0.065U
M92_ GND __o1f_51_6 O1_af_51_6 GND nmos W=0.0975U L=0.065U
M93_ GND __o0t_52_6 O0_at_52_6 GND nmos W=0.0975U L=0.065U
M94_ GND __o0f_52_6 O0_af_52_6 GND nmos W=0.0975U L=0.065U
M95_ GND __o1t_52_6 O1_at_52_6 GND nmos W=0.0975U L=0.065U
M96_ GND __o1f_52_6 O1_af_52_6 GND nmos W=0.0975U L=0.065U
M97_ GND __o0t_53_6 O0_at_53_6 GND nmos W=0.0975U L=0.065U
M98_ GND __o0f_53_6 O0_af_53_6 GND nmos W=0.0975U L=0.065U
M99_ GND __o1t_53_6 O1_at_53_6 GND nmos W=0.0975U L=0.065U
M100_ GND __o1f_53_6 O1_af_53_6 GND nmos W=0.0975U L=0.065U
M101_ GND __o0t_50_6 #fb63# GND nmos W=0.0975U L=0.13U
M102_ GND __o0f_50_6 #fb66# GND nmos W=0.0975U L=0.13U
M103_keeper GND Vdd #65 GND nmos W=0.0975U L=0.715U
M104_ GND __o1t_50_6 #fb69# GND nmos W=0.0975U L=0.13U
M105_keeper GND Vdd #68 GND nmos W=0.0975U L=0.715U
M106_ GND __o1f_50_6 #fb72# GND nmos W=0.0975U L=0.13U
M107_keeper GND Vdd #71 GND nmos W=0.0975U L=0.715U
M108_ GND __o0t_51_6 #fb75# GND nmos W=0.0975U L=0.13U
M109_keeper GND Vdd #74 GND nmos W=0.0975U L=0.715U
M110_ GND __o0f_51_6 #fb78# GND nmos W=0.0975U L=0.13U
M111_keeper GND Vdd #77 GND nmos W=0.0975U L=0.715U
M112_ GND __o1t_51_6 #fb81# GND nmos W=0.0975U L=0.13U
M113_keeper GND Vdd #80 GND nmos W=0.0975U L=0.715U
M114_ GND __o1f_51_6 #fb84# GND nmos W=0.0975U L=0.13U
M115_keeper GND Vdd #83 GND nmos W=0.0975U L=0.715U
M116_ GND __o0t_52_6 #fb87# GND nmos W=0.0975U L=0.13U
M117_keeper GND Vdd #86 GND nmos W=0.0975U L=0.715U
M118_ GND __o0f_52_6 #fb90# GND nmos W=0.0975U L=0.13U
M119_keeper GND Vdd #89 GND nmos W=0.0975U L=0.715U
M120_ GND __o1t_52_6 #fb93# GND nmos W=0.0975U L=0.13U
M121_keeper GND Vdd #92 GND nmos W=0.0975U L=0.715U
M122_ GND __o1f_52_6 #fb96# GND nmos W=0.0975U L=0.13U
M123_keeper GND Vdd #95 GND nmos W=0.0975U L=0.715U
M124_ GND __o0t_53_6 #fb99# GND nmos W=0.0975U L=0.13U
M125_keeper GND Vdd #98 GND nmos W=0.0975U L=0.715U
M126_ GND __o0f_53_6 #fb102# GND nmos W=0.0975U L=0.13U
M127_keeper GND Vdd #101 GND nmos W=0.0975U L=0.715U
M128_ GND __o1t_53_6 #fb105# GND nmos W=0.0975U L=0.13U
M129_keeper GND Vdd #104 GND nmos W=0.0975U L=0.715U
M130_ GND __o1f_53_6 #fb108# GND nmos W=0.0975U L=0.13U
M131_keeper GND Vdd #107 GND nmos W=0.0975U L=0.715U
M132_keeper GND Vdd #110 GND nmos W=0.0975U L=0.715U
M133_ #3 O1_areq __ir Vdd pmos W=0.1625U L=0.065U
M134_ #7 I_at_50_6 __o0t_50_6 GND nmos W=0.0975U L=0.065U
M135_keeper #64 #fb63# __o0t_50_6 Vdd pmos W=0.0975U L=0.065U
M136_keeper #65 #fb63# __o0t_50_6 GND nmos W=0.0975U L=0.065U
M137_ #10 I_af_50_6 __o0f_50_6 GND nmos W=0.0975U L=0.065U
M138_keeper #67 #fb66# __o0f_50_6 Vdd pmos W=0.0975U L=0.065U
M139_keeper #68 #fb66# __o0f_50_6 GND nmos W=0.0975U L=0.065U
M140_ #13 I_at_50_6 __o1t_50_6 GND nmos W=0.0975U L=0.065U
M141_keeper #70 #fb69# __o1t_50_6 Vdd pmos W=0.0975U L=0.065U
M142_keeper #71 #fb69# __o1t_50_6 GND nmos W=0.0975U L=0.065U
M143_ #15 I_af_50_6 __o1f_50_6 GND nmos W=0.0975U L=0.065U
M144_keeper #73 #fb72# __o1f_50_6 Vdd pmos W=0.0975U L=0.065U
M145_keeper #74 #fb72# __o1f_50_6 GND nmos W=0.0975U L=0.065U
M146_ #17 I_at_51_6 __o0t_51_6 GND nmos W=0.0975U L=0.065U
M147_keeper #76 #fb75# __o0t_51_6 Vdd pmos W=0.0975U L=0.065U
M148_keeper #77 #fb75# __o0t_51_6 GND nmos W=0.0975U L=0.065U
M149_ #20 I_af_51_6 __o0f_51_6 GND nmos W=0.0975U L=0.065U
M150_keeper #79 #fb78# __o0f_51_6 Vdd pmos W=0.0975U L=0.065U
M151_keeper #80 #fb78# __o0f_51_6 GND nmos W=0.0975U L=0.065U
M152_ #23 I_at_51_6 __o1t_51_6 GND nmos W=0.0975U L=0.065U
M153_keeper #82 #fb81# __o1t_51_6 Vdd pmos W=0.0975U L=0.065U
M154_keeper #83 #fb81# __o1t_51_6 GND nmos W=0.0975U L=0.065U
M155_ #25 I_af_51_6 __o1f_51_6 GND nmos W=0.0975U L=0.065U
M156_keeper #85 #fb84# __o1f_51_6 Vdd pmos W=0.0975U L=0.065U
M157_keeper #86 #fb84# __o1f_51_6 GND nmos W=0.0975U L=0.065U
M158_ #27 I_at_52_6 __o0t_52_6 GND nmos W=0.0975U L=0.065U
M159_keeper #88 #fb87# __o0t_52_6 Vdd pmos W=0.0975U L=0.065U
M160_keeper #89 #fb87# __o0t_52_6 GND nmos W=0.0975U L=0.065U
M161_ #30 I_af_52_6 __o0f_52_6 GND nmos W=0.0975U L=0.065U
M162_keeper #91 #fb90# __o0f_52_6 Vdd pmos W=0.0975U L=0.065U
M163_keeper #92 #fb90# __o0f_52_6 GND nmos W=0.0975U L=0.065U
M164_ #33 I_at_52_6 __o1t_52_6 GND nmos W=0.0975U L=0.065U
M165_keeper #94 #fb93# __o1t_52_6 Vdd pmos W=0.0975U L=0.065U
M166_keeper #95 #fb93# __o1t_52_6 GND nmos W=0.0975U L=0.065U
M167_ #35 I_af_52_6 __o1f_52_6 GND nmos W=0.0975U L=0.065U
M168_keeper #97 #fb96# __o1f_52_6 Vdd pmos W=0.0975U L=0.065U
M169_keeper #98 #fb96# __o1f_52_6 GND nmos W=0.0975U L=0.065U
M170_ #37 I_at_53_6 __o0t_53_6 GND nmos W=0.0975U L=0.065U
M171_keeper #100 #fb99# __o0t_53_6 Vdd pmos W=0.0975U L=0.065U
M172_keeper #101 #fb99# __o0t_53_6 GND nmos W=0.0975U L=0.065U
M173_ #40 I_af_53_6 __o0f_53_6 GND nmos W=0.0975U L=0.065U
M174_keeper #103 #fb102# __o0f_53_6 Vdd pmos W=0.0975U L=0.065U
M175_keeper #104 #fb102# __o0f_53_6 GND nmos W=0.0975U L=0.065U
M176_ #43 I_at_53_6 __o1t_53_6 GND nmos W=0.0975U L=0.065U
M177_keeper #106 #fb105# __o1t_53_6 Vdd pmos W=0.0975U L=0.065U
M178_keeper #107 #fb105# __o1t_53_6 GND nmos W=0.0975U L=0.065U
M179_ #45 I_af_53_6 __o1f_53_6 GND nmos W=0.0975U L=0.065U
M180_keeper #109 #fb108# __o1f_53_6 Vdd pmos W=0.0975U L=0.065U
M181_keeper #110 #fb108# __o1f_53_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: Split<> -----
*
*---- act defproc: SplitTree7<> -----
* raw ports:  I.req I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] O0.req O0.t[0] O0.t[1] O0.t[2] O0.t[3] O0.f[0] O0.f[1] O0.f[2] O0.f[3] O1.req O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O2.req O2.t[0] O2.t[1] O2.t[2] O2.t[3] O2.f[0] O2.f[1] O2.f[2] O2.f[3] O3.req O3.t[0] O3.t[1] O3.t[2] O3.t[3] O3.f[0] O3.f[1] O3.f[2] O3.f[3] O4.req O4.t[0] O4.t[1] O4.t[2] O4.t[3] O4.f[0] O4.f[1] O4.f[2] O4.f[3] O5.req O5.t[0] O5.t[1] O5.t[2] O5.t[3] O5.f[0] O5.f[1] O5.f[2] O5.f[3] O6.req O6.t[0] O6.t[1] O6.t[2] O6.t[3] O6.f[0] O6.f[1] O6.f[2] O6.f[3]
*
.subckt SplitTree7 I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 O0_areq O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O1_areq O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O2_areq O2_at_50_6 O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O3_areq O3_at_50_6 O3_at_51_6 O3_at_52_6 O3_at_53_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 O4_areq O4_at_50_6 O4_at_51_6 O4_at_52_6 O4_at_53_6 O4_af_50_6 O4_af_51_6 O4_af_52_6 O4_af_53_6 O5_areq O5_at_50_6 O5_at_51_6 O5_at_52_6 O5_at_53_6 O5_af_50_6 O5_af_51_6 O5_af_52_6 O5_af_53_6 O6_areq O6_at_50_6 O6_at_51_6 O6_at_52_6 O6_at_53_6 O6_af_50_6 O6_af_51_6 O6_af_52_6 O6_af_53_6
*.PININFO I_areq:O I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I O0_areq:I O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O1_areq:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O2_areq:I O2_at_50_6:O O2_at_51_6:O O2_at_52_6:O O2_at_53_6:O O2_af_50_6:O O2_af_51_6:O O2_af_52_6:O O2_af_53_6:O O3_areq:I O3_at_50_6:O O3_at_51_6:O O3_at_52_6:O O3_at_53_6:O O3_af_50_6:O O3_af_51_6:O O3_af_52_6:O O3_af_53_6:O O4_areq:I O4_at_50_6:O O4_at_51_6:O O4_at_52_6:O O4_at_53_6:O O4_af_50_6:O O4_af_51_6:O O4_af_52_6:O O4_af_53_6:O O5_areq:I O5_at_50_6:O O5_at_51_6:O O5_at_52_6:O O5_at_53_6:O O5_af_50_6:O O5_af_51_6:O O5_af_52_6:O O5_af_53_6:O O6_areq:I O6_at_50_6:O O6_at_51_6:O O6_at_52_6:O O6_at_53_6:O O6_af_50_6:O O6_af_51_6:O O6_af_52_6:O O6_af_53_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xhi hi_aI_areq hi_aI_at_50_6 hi_aI_at_51_6 hi_aI_at_52_6 hi_aI_at_53_6 hi_aI_af_50_6 hi_aI_af_51_6 hi_aI_af_52_6 hi_aI_af_53_6 hi_aO0_areq hi_aO0_at_50_6 hi_aO0_at_51_6 hi_aO0_at_52_6 hi_aO0_at_53_6 hi_aO0_af_50_6 hi_aO0_af_51_6 hi_aO0_af_52_6 hi_aO0_af_53_6 hi_aO1_areq hi_aO1_at_50_6 hi_aO1_at_51_6 hi_aO1_at_52_6 hi_aO1_at_53_6 hi_aO1_af_50_6 hi_aO1_af_51_6 hi_aO1_af_52_6 hi_aO1_af_53_6 Split
xs32 lo_aO0_areq lo_aO0_at_50_6 lo_aO0_at_51_6 lo_aO0_at_52_6 lo_aO0_at_53_6 lo_aO0_af_50_6 lo_aO0_af_51_6 lo_aO0_af_52_6 lo_aO0_af_53_6 O2_areq O2_at_50_6 O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O1_areq O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 Split
xlo lo_aI_areq lo_aI_at_50_6 lo_aI_at_51_6 lo_aI_at_52_6 lo_aI_at_53_6 lo_aI_af_50_6 lo_aI_af_51_6 lo_aI_af_52_6 lo_aI_af_53_6 lo_aO0_areq lo_aO0_at_50_6 lo_aO0_at_51_6 lo_aO0_at_52_6 lo_aO0_at_53_6 lo_aO0_af_50_6 lo_aO0_af_51_6 lo_aO0_af_52_6 lo_aO0_af_53_6 O0_areq O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 Split
xroot I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 hi_aI_areq hi_aI_at_50_6 hi_aI_at_51_6 hi_aI_at_52_6 hi_aI_at_53_6 hi_aI_af_50_6 hi_aI_af_51_6 hi_aI_af_52_6 hi_aI_af_53_6 lo_aI_areq lo_aI_at_50_6 lo_aI_at_51_6 lo_aI_at_52_6 lo_aI_at_53_6 lo_aI_af_50_6 lo_aI_af_51_6 lo_aI_af_52_6 lo_aI_af_53_6 Split
xs54 hi_aO1_areq hi_aO1_at_50_6 hi_aO1_at_51_6 hi_aO1_at_52_6 hi_aO1_at_53_6 hi_aO1_af_50_6 hi_aO1_af_51_6 hi_aO1_af_52_6 hi_aO1_af_53_6 O4_areq O4_at_50_6 O4_at_51_6 O4_at_52_6 O4_at_53_6 O4_af_50_6 O4_af_51_6 O4_af_52_6 O4_af_53_6 O3_areq O3_at_50_6 O3_at_51_6 O3_at_52_6 O3_at_53_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 Split
xs76 hi_aO0_areq hi_aO0_at_50_6 hi_aO0_at_51_6 hi_aO0_at_52_6 hi_aO0_at_53_6 hi_aO0_af_50_6 hi_aO0_af_51_6 hi_aO0_af_52_6 hi_aO0_af_53_6 O6_areq O6_at_50_6 O6_at_51_6 O6_at_52_6 O6_at_53_6 O6_af_50_6 O6_af_51_6 O6_af_52_6 O6_af_53_6 O5_areq O5_at_50_6 O5_at_51_6 O5_at_52_6 O5_at_53_6 O5_af_50_6 O5_af_51_6 O5_af_52_6 O5_af_53_6 Split
.ends
*---- end of process: SplitTree7<> -----
*
*---- act defproc: Deserializer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt Deserializer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_at_58_6:O O_at_59_6:O O_at_510_6:O O_at_511_6:O O_at_512_6:O O_at_513_6:O O_at_514_6:O O_at_515_6:O O_at_516_6:O O_at_517_6:O O_at_518_6:O O_at_519_6:O O_at_520_6:O O_at_521_6:O O_at_522_6:O O_at_523_6:O O_at_524_6:O O_at_525_6:O O_at_526_6:O O_at_527_6:O O_at_528_6:O O_at_529_6:O O_at_530_6:O O_at_531_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O O_af_58_6:O O_af_59_6:O O_af_510_6:O O_af_511_6:O O_af_512_6:O O_af_513_6:O O_af_514_6:O O_af_515_6:O O_af_516_6:O O_af_517_6:O O_af_518_6:O O_af_519_6:O O_af_520_6:O O_af_521_6:O O_af_522_6:O O_af_523_6:O O_af_524_6:O O_af_525_6:O O_af_526_6:O O_af_527_6:O O_af_528_6:O O_af_529_6:O O_af_530_6:O O_af_531_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* low__gnd (combinational)
*
* --- end node flags ---
*
M0_ GND Vdd low__gnd GND nmos W=0.0975U L=0.065U
xqb5 reset qb5_aI_areq qb5_aI_at_50_6 qb5_aI_at_51_6 qb5_aI_at_52_6 qb5_aI_at_53_6 qb5_aI_af_50_6 qb5_aI_af_51_6 qb5_aI_af_52_6 qb5_aI_af_53_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6 O_aa qb4_aL_areq qb4_aL_aa qb5_aL_areq qb5_aL_aa QBuffer
xqb3 reset qb3_aI_areq qb3_aI_at_50_6 qb3_aI_at_51_6 qb3_aI_at_52_6 qb3_aI_at_53_6 qb3_aI_af_50_6 qb3_aI_af_51_6 qb3_aI_af_52_6 qb3_aI_af_53_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_aa qb2_aL_areq qb2_aL_aa qb3_aL_areq qb3_aL_aa QBuffer
xqb0 reset qb0_aI_af_50_6 low__gnd qb0_aI_af_50_6 low__gnd low__gnd qb0_aI_af_50_6 low__gnd qb0_aI_af_50_6 qb0_aI_af_50_6 O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa qb0_aR_areq qb0_aR_aa qb0_aL_areq qb0_aL_aa QBuffer
xqb7 reset qb7_aI_areq qb7_aI_at_50_6 qb7_aI_at_51_6 qb7_aI_at_52_6 qb7_aI_at_53_6 qb7_aI_af_50_6 qb7_aI_af_51_6 qb7_aI_af_52_6 qb7_aI_af_53_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa qb6_aL_areq qb6_aL_aa qb7_aL_areq qb7_aL_aa QBuffer
xqb4 reset qb4_aI_areq qb4_aI_at_50_6 qb4_aI_at_51_6 qb4_aI_at_52_6 qb4_aI_at_53_6 qb4_aI_af_50_6 qb4_aI_af_51_6 qb4_aI_af_52_6 qb4_aI_af_53_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_aa qb3_aL_areq qb3_aL_aa qb4_aL_areq qb4_aL_aa QBuffer
xanalyzer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa split_aI_areq split_aI_at_50_6 split_aI_at_51_6 split_aI_at_52_6 split_aI_at_53_6 split_aI_af_50_6 split_aI_af_51_6 split_aI_af_52_6 split_aI_af_53_6 qb7_aL_areq qb7_aL_aa qb0_aR_areq qb0_aR_aa InputAnalyzer
xqb1 reset qb1_aI_areq qb1_aI_at_50_6 qb1_aI_at_51_6 qb1_aI_at_52_6 qb1_aI_at_53_6 qb1_aI_af_50_6 qb1_aI_af_51_6 qb1_aI_af_52_6 qb1_aI_af_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_aa qb0_aL_areq qb0_aL_aa qb1_aL_areq qb1_aL_aa QBuffer
xqb2 reset qb2_aI_areq qb2_aI_at_50_6 qb2_aI_at_51_6 qb2_aI_at_52_6 qb2_aI_at_53_6 qb2_aI_af_50_6 qb2_aI_af_51_6 qb2_aI_af_52_6 qb2_aI_af_53_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_aa qb1_aL_areq qb1_aL_aa qb2_aL_areq qb2_aL_aa QBuffer
xqb6 reset qb6_aI_areq qb6_aI_at_50_6 qb6_aI_at_51_6 qb6_aI_at_52_6 qb6_aI_at_53_6 qb6_aI_af_50_6 qb6_aI_af_51_6 qb6_aI_af_52_6 qb6_aI_af_53_6 O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_aa qb5_aL_areq qb5_aL_aa qb6_aL_areq qb6_aL_aa QBuffer
xsplit split_aI_areq split_aI_at_50_6 split_aI_at_51_6 split_aI_at_52_6 split_aI_at_53_6 split_aI_af_50_6 split_aI_af_51_6 split_aI_af_52_6 split_aI_af_53_6 qb1_aI_areq qb1_aI_at_50_6 qb1_aI_at_51_6 qb1_aI_at_52_6 qb1_aI_at_53_6 qb1_aI_af_50_6 qb1_aI_af_51_6 qb1_aI_af_52_6 qb1_aI_af_53_6 qb2_aI_areq qb2_aI_at_50_6 qb2_aI_at_51_6 qb2_aI_at_52_6 qb2_aI_at_53_6 qb2_aI_af_50_6 qb2_aI_af_51_6 qb2_aI_af_52_6 qb2_aI_af_53_6 qb3_aI_areq qb3_aI_at_50_6 qb3_aI_at_51_6 qb3_aI_at_52_6 qb3_aI_at_53_6 qb3_aI_af_50_6 qb3_aI_af_51_6 qb3_aI_af_52_6 qb3_aI_af_53_6 qb4_aI_areq qb4_aI_at_50_6 qb4_aI_at_51_6 qb4_aI_at_52_6 qb4_aI_at_53_6 qb4_aI_af_50_6 qb4_aI_af_51_6 qb4_aI_af_52_6 qb4_aI_af_53_6 qb5_aI_areq qb5_aI_at_50_6 qb5_aI_at_51_6 qb5_aI_at_52_6 qb5_aI_at_53_6 qb5_aI_af_50_6 qb5_aI_af_51_6 qb5_aI_af_52_6 qb5_aI_af_53_6 qb6_aI_areq qb6_aI_at_50_6 qb6_aI_at_51_6 qb6_aI_at_52_6 qb6_aI_at_53_6 qb6_aI_af_50_6 qb6_aI_af_51_6 qb6_aI_af_52_6 qb6_aI_af_53_6 qb7_aI_areq qb7_aI_at_50_6 qb7_aI_at_51_6 qb7_aI_at_52_6 qb7_aI_at_53_6 qb7_aI_af_50_6 qb7_aI_af_51_6 qb7_aI_af_52_6 qb7_aI_af_53_6 SplitTree7
.ends
*---- end of process: Deserializer<> -----
