* MltcUnit: direct parsing handshakes; five PCFB32 on the payload path.
* Accepted block dimensions preserved; PCFB32 control8 widths applied.
*
*---- act defproc: Reg4<> -----
* raw ports:  reset W.t[0] W.t[1] W.t[2] W.t[3] W.f[0] W.f[1] W.f[2] W.f[3] W.a R.req R.t[0] R.t[1] R.t[2] R.t[3] R.f[0] R.f[1] R.f[2] R.f[3]
*
.subckt Reg4 reset W_at_50_6 W_at_51_6 W_at_52_6 W_at_53_6 W_af_50_6 W_af_51_6 W_af_52_6 W_af_53_6 W_aa
+ R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6
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
.subckt QBuffer reset I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa R_areq R_aa L_areq
+ L_aa
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
xreg reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 p__a q__r
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 Reg4
.ends
*---- end of process: QBuffer<> -----
*
*---- act defproc: InputAnalyzer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a O.req O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] R.req R.a L.req L.a
*
.subckt InputAnalyzer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ I_aa O_areq O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 R_areq R_aa
+ L_areq L_aa
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
.subckt Split I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 O0_areq
+ O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O1_areq O1_at_50_6
+ O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6
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
.subckt SplitTree7 I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ O0_areq O0_at_50_6 O0_at_51_6 O0_at_52_6 O0_at_53_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 O1_areq
+ O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O2_areq O2_at_50_6
+ O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O3_areq O3_at_50_6 O3_at_51_6
+ O3_at_52_6 O3_at_53_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 O4_areq O4_at_50_6 O4_at_51_6 O4_at_52_6
+ O4_at_53_6 O4_af_50_6 O4_af_51_6 O4_af_52_6 O4_af_53_6 O5_areq O5_at_50_6 O5_at_51_6 O5_at_52_6 O5_at_53_6
+ O5_af_50_6 O5_af_51_6 O5_af_52_6 O5_af_53_6 O6_areq O6_at_50_6 O6_at_51_6 O6_at_52_6 O6_at_53_6 O6_af_50_6
+ O6_af_51_6 O6_af_52_6 O6_af_53_6
*.PININFO I_areq:O I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I O0_areq:I O0_at_50_6:O O0_at_51_6:O O0_at_52_6:O O0_at_53_6:O O0_af_50_6:O O0_af_51_6:O O0_af_52_6:O O0_af_53_6:O O1_areq:I O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O2_areq:I O2_at_50_6:O O2_at_51_6:O O2_at_52_6:O O2_at_53_6:O O2_af_50_6:O O2_af_51_6:O O2_af_52_6:O O2_af_53_6:O O3_areq:I O3_at_50_6:O O3_at_51_6:O O3_at_52_6:O O3_at_53_6:O O3_af_50_6:O O3_af_51_6:O O3_af_52_6:O O3_af_53_6:O O4_areq:I O4_at_50_6:O O4_at_51_6:O O4_at_52_6:O O4_at_53_6:O O4_af_50_6:O O4_af_51_6:O O4_af_52_6:O O4_af_53_6:O O5_areq:I O5_at_50_6:O O5_at_51_6:O O5_at_52_6:O O5_at_53_6:O O5_af_50_6:O O5_af_51_6:O O5_af_52_6:O O5_af_53_6:O O6_areq:I O6_at_50_6:O O6_at_51_6:O O6_at_52_6:O O6_at_53_6:O O6_af_50_6:O O6_af_51_6:O O6_af_52_6:O O6_af_53_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xhi hi_aI_areq hi_aI_at_50_6 hi_aI_at_51_6 hi_aI_at_52_6 hi_aI_at_53_6 hi_aI_af_50_6 hi_aI_af_51_6
+ hi_aI_af_52_6 hi_aI_af_53_6 hi_aO0_areq hi_aO0_at_50_6 hi_aO0_at_51_6 hi_aO0_at_52_6 hi_aO0_at_53_6
+ hi_aO0_af_50_6 hi_aO0_af_51_6 hi_aO0_af_52_6 hi_aO0_af_53_6 hi_aO1_areq hi_aO1_at_50_6 hi_aO1_at_51_6
+ hi_aO1_at_52_6 hi_aO1_at_53_6 hi_aO1_af_50_6 hi_aO1_af_51_6 hi_aO1_af_52_6 hi_aO1_af_53_6 Split
xs32 lo_aO0_areq lo_aO0_at_50_6 lo_aO0_at_51_6 lo_aO0_at_52_6 lo_aO0_at_53_6 lo_aO0_af_50_6 lo_aO0_af_51_6
+ lo_aO0_af_52_6 lo_aO0_af_53_6 O2_areq O2_at_50_6 O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_af_50_6 O2_af_51_6
+ O2_af_52_6 O2_af_53_6 O1_areq O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6
+ O1_af_53_6 Split
xlo lo_aI_areq lo_aI_at_50_6 lo_aI_at_51_6 lo_aI_at_52_6 lo_aI_at_53_6 lo_aI_af_50_6 lo_aI_af_51_6
+ lo_aI_af_52_6 lo_aI_af_53_6 lo_aO0_areq lo_aO0_at_50_6 lo_aO0_at_51_6 lo_aO0_at_52_6 lo_aO0_at_53_6
+ lo_aO0_af_50_6 lo_aO0_af_51_6 lo_aO0_af_52_6 lo_aO0_af_53_6 O0_areq O0_at_50_6 O0_at_51_6 O0_at_52_6
+ O0_at_53_6 O0_af_50_6 O0_af_51_6 O0_af_52_6 O0_af_53_6 Split
xroot I_areq I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 hi_aI_areq
+ hi_aI_at_50_6 hi_aI_at_51_6 hi_aI_at_52_6 hi_aI_at_53_6 hi_aI_af_50_6 hi_aI_af_51_6 hi_aI_af_52_6
+ hi_aI_af_53_6 lo_aI_areq lo_aI_at_50_6 lo_aI_at_51_6 lo_aI_at_52_6 lo_aI_at_53_6 lo_aI_af_50_6
+ lo_aI_af_51_6 lo_aI_af_52_6 lo_aI_af_53_6 Split
xs54 hi_aO1_areq hi_aO1_at_50_6 hi_aO1_at_51_6 hi_aO1_at_52_6 hi_aO1_at_53_6 hi_aO1_af_50_6 hi_aO1_af_51_6
+ hi_aO1_af_52_6 hi_aO1_af_53_6 O4_areq O4_at_50_6 O4_at_51_6 O4_at_52_6 O4_at_53_6 O4_af_50_6 O4_af_51_6
+ O4_af_52_6 O4_af_53_6 O3_areq O3_at_50_6 O3_at_51_6 O3_at_52_6 O3_at_53_6 O3_af_50_6 O3_af_51_6 O3_af_52_6
+ O3_af_53_6 Split
xs76 hi_aO0_areq hi_aO0_at_50_6 hi_aO0_at_51_6 hi_aO0_at_52_6 hi_aO0_at_53_6 hi_aO0_af_50_6 hi_aO0_af_51_6
+ hi_aO0_af_52_6 hi_aO0_af_53_6 O6_areq O6_at_50_6 O6_at_51_6 O6_at_52_6 O6_at_53_6 O6_af_50_6 O6_af_51_6
+ O6_af_52_6 O6_af_53_6 O5_areq O5_at_50_6 O5_at_51_6 O5_at_52_6 O5_at_53_6 O5_af_50_6 O5_af_51_6 O5_af_52_6
+ O5_af_53_6 Split
.ends
*---- end of process: SplitTree7<> -----
*
*---- act defproc: Deserializer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt Deserializer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ I_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6 O_at_59_6
+ O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6 O_at_518_6
+ O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6
+ O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6
+ O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6
+ O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6
+ O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa
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
xqb5 reset qb5_aI_areq qb5_aI_at_50_6 qb5_aI_at_51_6 qb5_aI_at_52_6 qb5_aI_at_53_6 qb5_aI_af_50_6
+ qb5_aI_af_51_6 qb5_aI_af_52_6 qb5_aI_af_53_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_af_520_6
+ O_af_521_6 O_af_522_6 O_af_523_6 O_aa qb4_aL_areq qb4_aL_aa qb5_aL_areq qb5_aL_aa QBuffer
xqb3 reset qb3_aI_areq qb3_aI_at_50_6 qb3_aI_at_51_6 qb3_aI_at_52_6 qb3_aI_at_53_6 qb3_aI_af_50_6
+ qb3_aI_af_51_6 qb3_aI_af_52_6 qb3_aI_af_53_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_af_512_6
+ O_af_513_6 O_af_514_6 O_af_515_6 O_aa qb2_aL_areq qb2_aL_aa qb3_aL_areq qb3_aL_aa QBuffer
xqb0 reset qb0_aI_af_50_6 low__gnd qb0_aI_af_50_6 low__gnd low__gnd qb0_aI_af_50_6 low__gnd qb0_aI_af_50_6
+ qb0_aI_af_50_6 O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
+ qb0_aR_areq qb0_aR_aa qb0_aL_areq qb0_aL_aa QBuffer
xqb7 reset qb7_aI_areq qb7_aI_at_50_6 qb7_aI_at_51_6 qb7_aI_at_52_6 qb7_aI_at_53_6 qb7_aI_af_50_6
+ qb7_aI_af_51_6 qb7_aI_af_52_6 qb7_aI_af_53_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_528_6
+ O_af_529_6 O_af_530_6 O_af_531_6 O_aa qb6_aL_areq qb6_aL_aa qb7_aL_areq qb7_aL_aa QBuffer
xqb4 reset qb4_aI_areq qb4_aI_at_50_6 qb4_aI_at_51_6 qb4_aI_at_52_6 qb4_aI_at_53_6 qb4_aI_af_50_6
+ qb4_aI_af_51_6 qb4_aI_af_52_6 qb4_aI_af_53_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_af_516_6
+ O_af_517_6 O_af_518_6 O_af_519_6 O_aa qb3_aL_areq qb3_aL_aa qb4_aL_areq qb4_aL_aa QBuffer
xanalyzer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ split_aI_areq split_aI_at_50_6 split_aI_at_51_6 split_aI_at_52_6 split_aI_at_53_6 split_aI_af_50_6
+ split_aI_af_51_6 split_aI_af_52_6 split_aI_af_53_6 qb7_aL_areq qb7_aL_aa qb0_aR_areq qb0_aR_aa
+ InputAnalyzer
xqb1 reset qb1_aI_areq qb1_aI_at_50_6 qb1_aI_at_51_6 qb1_aI_at_52_6 qb1_aI_at_53_6 qb1_aI_af_50_6
+ qb1_aI_af_51_6 qb1_aI_af_52_6 qb1_aI_af_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_af_54_6 O_af_55_6
+ O_af_56_6 O_af_57_6 O_aa qb0_aL_areq qb0_aL_aa qb1_aL_areq qb1_aL_aa QBuffer
xqb2 reset qb2_aI_areq qb2_aI_at_50_6 qb2_aI_at_51_6 qb2_aI_at_52_6 qb2_aI_at_53_6 qb2_aI_af_50_6
+ qb2_aI_af_51_6 qb2_aI_af_52_6 qb2_aI_af_53_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_af_58_6 O_af_59_6
+ O_af_510_6 O_af_511_6 O_aa qb1_aL_areq qb1_aL_aa qb2_aL_areq qb2_aL_aa QBuffer
xqb6 reset qb6_aI_areq qb6_aI_at_50_6 qb6_aI_at_51_6 qb6_aI_at_52_6 qb6_aI_at_53_6 qb6_aI_af_50_6
+ qb6_aI_af_51_6 qb6_aI_af_52_6 qb6_aI_af_53_6 O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_af_524_6
+ O_af_525_6 O_af_526_6 O_af_527_6 O_aa qb5_aL_areq qb5_aL_aa qb6_aL_areq qb6_aL_aa QBuffer
xsplit split_aI_areq split_aI_at_50_6 split_aI_at_51_6 split_aI_at_52_6 split_aI_at_53_6 split_aI_af_50_6
+ split_aI_af_51_6 split_aI_af_52_6 split_aI_af_53_6 qb1_aI_areq qb1_aI_at_50_6 qb1_aI_at_51_6 qb1_aI_at_52_6
+ qb1_aI_at_53_6 qb1_aI_af_50_6 qb1_aI_af_51_6 qb1_aI_af_52_6 qb1_aI_af_53_6 qb2_aI_areq qb2_aI_at_50_6
+ qb2_aI_at_51_6 qb2_aI_at_52_6 qb2_aI_at_53_6 qb2_aI_af_50_6 qb2_aI_af_51_6 qb2_aI_af_52_6 qb2_aI_af_53_6
+ qb3_aI_areq qb3_aI_at_50_6 qb3_aI_at_51_6 qb3_aI_at_52_6 qb3_aI_at_53_6 qb3_aI_af_50_6 qb3_aI_af_51_6
+ qb3_aI_af_52_6 qb3_aI_af_53_6 qb4_aI_areq qb4_aI_at_50_6 qb4_aI_at_51_6 qb4_aI_at_52_6 qb4_aI_at_53_6
+ qb4_aI_af_50_6 qb4_aI_af_51_6 qb4_aI_af_52_6 qb4_aI_af_53_6 qb5_aI_areq qb5_aI_at_50_6 qb5_aI_at_51_6
+ qb5_aI_at_52_6 qb5_aI_at_53_6 qb5_aI_af_50_6 qb5_aI_af_51_6 qb5_aI_af_52_6 qb5_aI_af_53_6 qb6_aI_areq
+ qb6_aI_at_50_6 qb6_aI_at_51_6 qb6_aI_at_52_6 qb6_aI_at_53_6 qb6_aI_af_50_6 qb6_aI_af_51_6 qb6_aI_af_52_6
+ qb6_aI_af_53_6 qb7_aI_areq qb7_aI_at_50_6 qb7_aI_at_51_6 qb7_aI_at_52_6 qb7_aI_at_53_6 qb7_aI_af_50_6
+ qb7_aI_af_51_6 qb7_aI_af_52_6 qb7_aI_af_53_6 SplitTree7
.ends
*---- end of process: Deserializer<> -----
*
*---- act defproc: PCFB32<> -----
* raw ports:  reset L.t[0] L.t[1] L.t[2] L.t[3] L.t[4] L.t[5] L.t[6] L.t[7] L.t[8] L.t[9] L.t[10] L.t[11] L.t[12] L.t[13] L.t[14] L.t[15] L.t[16] L.t[17] L.t[18] L.t[19] L.t[20] L.t[21] L.t[22] L.t[23] L.t[24] L.t[25] L.t[26] L.t[27] L.t[28] L.t[29] L.t[30] L.t[31] L.f[0] L.f[1] L.f[2] L.f[3] L.f[4] L.f[5] L.f[6] L.f[7] L.f[8] L.f[9] L.f[10] L.f[11] L.f[12] L.f[13] L.f[14] L.f[15] L.f[16] L.f[17] L.f[18] L.f[19] L.f[20] L.f[21] L.f[22] L.f[23] L.f[24] L.f[25] L.f[26] L.f[27] L.f[28] L.f[29] L.f[30] L.f[31] L.a R.t[0] R.t[1] R.t[2] R.t[3] R.t[4] R.t[5] R.t[6] R.t[7] R.t[8] R.t[9] R.t[10] R.t[11] R.t[12] R.t[13] R.t[14] R.t[15] R.t[16] R.t[17] R.t[18] R.t[19] R.t[20] R.t[21] R.t[22] R.t[23] R.t[24] R.t[25] R.t[26] R.t[27] R.t[28] R.t[29] R.t[30] R.t[31] R.f[0] R.f[1] R.f[2] R.f[3] R.f[4] R.f[5] R.f[6] R.f[7] R.f[8] R.f[9] R.f[10] R.f[11] R.f[12] R.f[13] R.f[14] R.f[15] R.f[16] R.f[17] R.f[18] R.f[19] R.f[20] R.f[21] R.f[22] R.f[23] R.f[24] R.f[25] R.f[26] R.f[27] R.f[28] R.f[29] R.f[30] R.f[31] R.a
*
.subckt PCFB32 reset L_at_50_6 L_at_51_6 L_at_52_6 L_at_53_6 L_at_54_6 L_at_55_6 L_at_56_6 L_at_57_6
+ L_at_58_6 L_at_59_6 L_at_510_6 L_at_511_6 L_at_512_6 L_at_513_6 L_at_514_6 L_at_515_6 L_at_516_6 L_at_517_6
+ L_at_518_6 L_at_519_6 L_at_520_6 L_at_521_6 L_at_522_6 L_at_523_6 L_at_524_6 L_at_525_6 L_at_526_6
+ L_at_527_6 L_at_528_6 L_at_529_6 L_at_530_6 L_at_531_6 L_af_50_6 L_af_51_6 L_af_52_6 L_af_53_6 L_af_54_6
+ L_af_55_6 L_af_56_6 L_af_57_6 L_af_58_6 L_af_59_6 L_af_510_6 L_af_511_6 L_af_512_6 L_af_513_6 L_af_514_6
+ L_af_515_6 L_af_516_6 L_af_517_6 L_af_518_6 L_af_519_6 L_af_520_6 L_af_521_6 L_af_522_6 L_af_523_6
+ L_af_524_6 L_af_525_6 L_af_526_6 L_af_527_6 L_af_528_6 L_af_529_6 L_af_530_6 L_af_531_6 L_aa R_at_50_6
+ R_at_51_6 R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_at_58_6 R_at_59_6 R_at_510_6
+ R_at_511_6 R_at_512_6 R_at_513_6 R_at_514_6 R_at_515_6 R_at_516_6 R_at_517_6 R_at_518_6 R_at_519_6
+ R_at_520_6 R_at_521_6 R_at_522_6 R_at_523_6 R_at_524_6 R_at_525_6 R_at_526_6 R_at_527_6 R_at_528_6
+ R_at_529_6 R_at_530_6 R_at_531_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6 R_af_56_6
+ R_af_57_6 R_af_58_6 R_af_59_6 R_af_510_6 R_af_511_6 R_af_512_6 R_af_513_6 R_af_514_6 R_af_515_6 R_af_516_6
+ R_af_517_6 R_af_518_6 R_af_519_6 R_af_520_6 R_af_521_6 R_af_522_6 R_af_523_6 R_af_524_6 R_af_525_6
+ R_af_526_6 R_af_527_6 R_af_528_6 R_af_529_6 R_af_530_6 R_af_531_6 R_aa
*.PININFO reset:I L_at_50_6:I L_at_51_6:I L_at_52_6:I L_at_53_6:I L_at_54_6:I L_at_55_6:I L_at_56_6:I L_at_57_6:I L_at_58_6:I L_at_59_6:I L_at_510_6:I L_at_511_6:I L_at_512_6:I L_at_513_6:I L_at_514_6:I L_at_515_6:I L_at_516_6:I L_at_517_6:I L_at_518_6:I L_at_519_6:I L_at_520_6:I L_at_521_6:I L_at_522_6:I L_at_523_6:I L_at_524_6:I L_at_525_6:I L_at_526_6:I L_at_527_6:I L_at_528_6:I L_at_529_6:I L_at_530_6:I L_at_531_6:I L_af_50_6:I L_af_51_6:I L_af_52_6:I L_af_53_6:I L_af_54_6:I L_af_55_6:I L_af_56_6:I L_af_57_6:I L_af_58_6:I L_af_59_6:I L_af_510_6:I L_af_511_6:I L_af_512_6:I L_af_513_6:I L_af_514_6:I L_af_515_6:I L_af_516_6:I L_af_517_6:I L_af_518_6:I L_af_519_6:I L_af_520_6:I L_af_521_6:I L_af_522_6:I L_af_523_6:I L_af_524_6:I L_af_525_6:I L_af_526_6:I L_af_527_6:I L_af_528_6:I L_af_529_6:I L_af_530_6:I L_af_531_6:I L_aa:O R_at_50_6:O R_at_51_6:O R_at_52_6:O R_at_53_6:O R_at_54_6:O R_at_55_6:O R_at_56_6:O R_at_57_6:O R_at_58_6:O R_at_59_6:O R_at_510_6:O R_at_511_6:O R_at_512_6:O R_at_513_6:O R_at_514_6:O R_at_515_6:O R_at_516_6:O R_at_517_6:O R_at_518_6:O R_at_519_6:O R_at_520_6:O R_at_521_6:O R_at_522_6:O R_at_523_6:O R_at_524_6:O R_at_525_6:O R_at_526_6:O R_at_527_6:O R_at_528_6:O R_at_529_6:O R_at_530_6:O R_at_531_6:O R_af_50_6:O R_af_51_6:O R_af_52_6:O R_af_53_6:O R_af_54_6:O R_af_55_6:O R_af_56_6:O R_af_57_6:O R_af_58_6:O R_af_59_6:O R_af_510_6:O R_af_511_6:O R_af_512_6:O R_af_513_6:O R_af_514_6:O R_af_515_6:O R_af_516_6:O R_af_517_6:O R_af_518_6:O R_af_519_6:O R_af_520_6:O R_af_521_6:O R_af_522_6:O R_af_523_6:O R_af_524_6:O R_af_525_6:O R_af_526_6:O R_af_527_6:O R_af_528_6:O R_af_529_6:O R_af_530_6:O R_af_531_6:O R_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* n__c_50_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_50_6 (combinational)
* R_af_50_6 (combinational)
* R_at_51_6 (combinational)
* R_af_51_6 (combinational)
* R_at_52_6 (combinational)
* R_af_52_6 (combinational)
* R_at_53_6 (combinational)
* R_af_53_6 (combinational)
* n__c_51_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_54_6 (combinational)
* R_af_54_6 (combinational)
* R_at_55_6 (combinational)
* R_af_55_6 (combinational)
* R_at_56_6 (combinational)
* R_af_56_6 (combinational)
* R_at_57_6 (combinational)
* R_af_57_6 (combinational)
* n__c_52_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_58_6 (combinational)
* R_af_58_6 (combinational)
* R_at_59_6 (combinational)
* R_af_59_6 (combinational)
* R_at_510_6 (combinational)
* R_af_510_6 (combinational)
* R_at_511_6 (combinational)
* R_af_511_6 (combinational)
* n__c_53_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_512_6 (combinational)
* R_af_512_6 (combinational)
* R_at_513_6 (combinational)
* R_af_513_6 (combinational)
* R_at_514_6 (combinational)
* R_af_514_6 (combinational)
* R_at_515_6 (combinational)
* R_af_515_6 (combinational)
* n__c_54_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_516_6 (combinational)
* R_af_516_6 (combinational)
* R_at_517_6 (combinational)
* R_af_517_6 (combinational)
* R_at_518_6 (combinational)
* R_af_518_6 (combinational)
* R_at_519_6 (combinational)
* R_af_519_6 (combinational)
* n__c_55_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_520_6 (combinational)
* R_af_520_6 (combinational)
* R_at_521_6 (combinational)
* R_af_521_6 (combinational)
* R_at_522_6 (combinational)
* R_af_522_6 (combinational)
* R_at_523_6 (combinational)
* R_af_523_6 (combinational)
* n__c_56_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_524_6 (combinational)
* R_af_524_6 (combinational)
* R_at_525_6 (combinational)
* R_af_525_6 (combinational)
* R_at_526_6 (combinational)
* R_af_526_6 (combinational)
* R_at_527_6 (combinational)
* R_af_527_6 (combinational)
* n__c_57_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* R_at_528_6 (combinational)
* R_af_528_6 (combinational)
* R_at_529_6 (combinational)
* R_af_529_6 (combinational)
* R_at_530_6 (combinational)
* R_af_530_6 (combinational)
* R_at_531_6 (combinational)
* R_af_531_6 (combinational)
* d_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n__f_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n__f_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* g (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n__h_50_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_51_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_52_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_53_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_54_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_55_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_56_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* n__h_57_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* j_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* j_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* j_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* j_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n__m_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n__m_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n (state-holding): pup_reff=0.8; pdn_reff=1.33333
* n__L__a (state-holding): pup_reff=0.4; pdn_reff=1.33333
* e (state-holding): pup_reff=1.2; pdn_reff=0.666667
* L_aa (combinational)
* n__R__t_50_6 (state-holding): pup_reff=0.8; pdn_reff=2
* inv__R__a (combinational)
* inv__reset (combinational)
* n__R__f_50_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_51_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_51_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_52_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_52_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_53_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_53_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_54_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_54_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_55_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_55_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_56_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_56_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_57_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_57_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_58_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_58_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_59_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_59_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_510_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_510_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_511_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_511_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_512_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_512_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_513_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_513_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_514_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_514_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_515_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_515_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_516_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_516_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_517_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_517_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_518_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_518_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_519_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_519_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_520_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_520_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_521_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_521_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_522_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_522_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_523_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_523_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_524_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_524_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_525_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_525_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_526_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_526_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_527_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_527_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_528_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_528_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_529_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_529_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_530_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_530_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__t_531_6 (state-holding): pup_reff=0.8; pdn_reff=2
* n__R__f_531_6 (state-holding): pup_reff=0.8; pdn_reff=2
*
* --- end node flags ---
*
M0_ Vdd R_at_50_6 #17 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd R_at_54_6 #36 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd R_at_58_6 #55 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd R_at_512_6 #74 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd R_at_516_6 #93 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd R_at_520_6 #112 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd R_at_524_6 #131 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd R_at_528_6 #150 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd n__c_51_6 #155 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd n__c_53_6 #158 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd n__c_55_6 #161 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd n__c_57_6 #164 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd d_51_6 #168 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd d_53_6 #171 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd n__f_51_6 #173 Vdd pmos W=0.325U L=0.065U
M15_ Vdd L_at_50_6 #179 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd L_at_54_6 #198 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd L_at_58_6 #217 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd L_at_512_6 #236 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd L_at_516_6 #255 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd L_at_520_6 #274 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd L_at_524_6 #293 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd L_at_528_6 #312 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd n__h_51_6 #328 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd n__h_53_6 #331 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd n__h_55_6 #334 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd n__h_57_6 #337 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd j_51_6 #341 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd j_53_6 #344 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd n__m_51_6 #347 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd n n__L__a Vdd pmos W=0.1625U L=0.065U
M31_ Vdd L_aa #352 Vdd pmos W=1.3U L=0.065U
M32_ Vdd inv__R__a #359 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd inv__reset n__R__t_50_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd inv__R__a #364 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd inv__reset n__R__f_50_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd inv__R__a #368 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd inv__reset n__R__t_51_6 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd inv__R__a #372 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd inv__reset n__R__f_51_6 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd inv__R__a #376 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd inv__reset n__R__t_52_6 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd inv__R__a #380 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd inv__reset n__R__f_52_6 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd inv__R__a #384 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd inv__reset n__R__t_53_6 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd inv__R__a #388 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd inv__reset n__R__f_53_6 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd inv__R__a #392 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd inv__reset n__R__t_54_6 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd inv__R__a #396 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd inv__reset n__R__f_54_6 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd inv__R__a #400 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd inv__reset n__R__t_55_6 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd inv__R__a #404 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd inv__reset n__R__f_55_6 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd inv__R__a #408 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd inv__reset n__R__t_56_6 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd inv__R__a #412 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd inv__reset n__R__f_56_6 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd inv__R__a #416 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd inv__reset n__R__t_57_6 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd inv__R__a #420 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd inv__reset n__R__f_57_6 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd inv__R__a #424 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd inv__reset n__R__t_58_6 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd inv__R__a #428 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd inv__reset n__R__f_58_6 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd inv__R__a #432 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd inv__reset n__R__t_59_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd inv__R__a #436 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd inv__reset n__R__f_59_6 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd inv__R__a #440 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd inv__reset n__R__t_510_6 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd inv__R__a #444 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd inv__reset n__R__f_510_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd inv__R__a #448 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd inv__reset n__R__t_511_6 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd inv__R__a #452 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd inv__reset n__R__f_511_6 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd inv__R__a #456 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd inv__reset n__R__t_512_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd inv__R__a #460 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd inv__reset n__R__f_512_6 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd inv__R__a #464 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd inv__reset n__R__t_513_6 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd inv__R__a #468 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd inv__reset n__R__f_513_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd inv__R__a #472 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd inv__reset n__R__t_514_6 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd inv__R__a #476 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd inv__reset n__R__f_514_6 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd inv__R__a #480 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd inv__reset n__R__t_515_6 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd inv__R__a #484 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd inv__reset n__R__f_515_6 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd inv__R__a #488 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd inv__reset n__R__t_516_6 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd inv__R__a #492 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd inv__reset n__R__f_516_6 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd inv__R__a #496 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd inv__reset n__R__t_517_6 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd inv__R__a #500 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd inv__reset n__R__f_517_6 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd inv__R__a #504 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd inv__reset n__R__t_518_6 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd inv__R__a #508 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd inv__reset n__R__f_518_6 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd inv__R__a #512 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd inv__reset n__R__t_519_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd inv__R__a #516 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd inv__reset n__R__f_519_6 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd inv__R__a #520 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd inv__reset n__R__t_520_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd inv__R__a #524 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd inv__reset n__R__f_520_6 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd inv__R__a #528 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd inv__reset n__R__t_521_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd inv__R__a #532 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd inv__reset n__R__f_521_6 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd inv__R__a #536 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd inv__reset n__R__t_522_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd inv__R__a #540 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd inv__reset n__R__f_522_6 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd inv__R__a #544 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd inv__reset n__R__t_523_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd inv__R__a #548 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd inv__reset n__R__f_523_6 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd inv__R__a #552 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd inv__reset n__R__t_524_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd inv__R__a #556 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd inv__reset n__R__f_524_6 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd inv__R__a #560 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd inv__reset n__R__t_525_6 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd inv__R__a #564 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd inv__reset n__R__f_525_6 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd inv__R__a #568 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd inv__reset n__R__t_526_6 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd inv__R__a #572 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd inv__reset n__R__f_526_6 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd inv__R__a #576 Vdd pmos W=0.1625U L=0.065U
M141_ Vdd inv__reset n__R__t_527_6 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd inv__R__a #580 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd inv__reset n__R__f_527_6 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd inv__R__a #584 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd inv__reset n__R__t_528_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd inv__R__a #588 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd inv__reset n__R__f_528_6 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd inv__R__a #592 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd inv__reset n__R__t_529_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd inv__R__a #596 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd inv__reset n__R__f_529_6 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd inv__R__a #600 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd inv__reset n__R__t_530_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd inv__R__a #604 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd inv__reset n__R__f_530_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd inv__R__a #608 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd inv__reset n__R__t_531_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd inv__R__a #612 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd inv__reset n__R__f_531_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd R_aa inv__R__a Vdd pmos W=1.3U L=0.065U
M161_ Vdd reset inv__reset Vdd pmos W=0.1625U L=0.065U
M162_ Vdd n__L__a L_aa Vdd pmos W=0.325U L=0.065U
M163_ Vdd n__R__t_50_6 R_at_50_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd n__R__f_50_6 R_af_50_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd n__R__t_51_6 R_at_51_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd n__R__f_51_6 R_af_51_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd n__R__t_52_6 R_at_52_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd n__R__f_52_6 R_af_52_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd n__R__t_53_6 R_at_53_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd n__R__f_53_6 R_af_53_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd n__R__t_54_6 R_at_54_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd n__R__f_54_6 R_af_54_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd n__R__t_55_6 R_at_55_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd n__R__f_55_6 R_af_55_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd n__R__t_56_6 R_at_56_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd n__R__f_56_6 R_af_56_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd n__R__t_57_6 R_at_57_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd n__R__f_57_6 R_af_57_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd n__R__t_58_6 R_at_58_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd n__R__f_58_6 R_af_58_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd n__R__t_59_6 R_at_59_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd n__R__f_59_6 R_af_59_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd n__R__t_510_6 R_at_510_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd n__R__f_510_6 R_af_510_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd n__R__t_511_6 R_at_511_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd n__R__f_511_6 R_af_511_6 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd n__R__t_512_6 R_at_512_6 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd n__R__f_512_6 R_af_512_6 Vdd pmos W=0.1625U L=0.065U
M189_ Vdd n__R__t_513_6 R_at_513_6 Vdd pmos W=0.1625U L=0.065U
M190_ Vdd n__R__f_513_6 R_af_513_6 Vdd pmos W=0.1625U L=0.065U
M191_ Vdd n__R__t_514_6 R_at_514_6 Vdd pmos W=0.1625U L=0.065U
M192_ Vdd n__R__f_514_6 R_af_514_6 Vdd pmos W=0.1625U L=0.065U
M193_ Vdd n__R__t_515_6 R_at_515_6 Vdd pmos W=0.1625U L=0.065U
M194_ Vdd n__R__f_515_6 R_af_515_6 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd n__R__t_516_6 R_at_516_6 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd n__R__f_516_6 R_af_516_6 Vdd pmos W=0.1625U L=0.065U
M197_ Vdd n__R__t_517_6 R_at_517_6 Vdd pmos W=0.1625U L=0.065U
M198_ Vdd n__R__f_517_6 R_af_517_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd n__R__t_518_6 R_at_518_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd n__R__f_518_6 R_af_518_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd n__R__t_519_6 R_at_519_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd n__R__f_519_6 R_af_519_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd n__R__t_520_6 R_at_520_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd n__R__f_520_6 R_af_520_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd n__R__t_521_6 R_at_521_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd n__R__f_521_6 R_af_521_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd n__R__t_522_6 R_at_522_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd n__R__f_522_6 R_af_522_6 Vdd pmos W=0.1625U L=0.065U
M209_ Vdd n__R__t_523_6 R_at_523_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd n__R__f_523_6 R_af_523_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd n__R__t_524_6 R_at_524_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd n__R__f_524_6 R_af_524_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd n__R__t_525_6 R_at_525_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd n__R__f_525_6 R_af_525_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd n__R__t_526_6 R_at_526_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd n__R__f_526_6 R_af_526_6 Vdd pmos W=0.1625U L=0.065U
M217_ Vdd n__R__t_527_6 R_at_527_6 Vdd pmos W=0.1625U L=0.065U
M218_ Vdd n__R__f_527_6 R_af_527_6 Vdd pmos W=0.1625U L=0.065U
M219_ Vdd n__R__t_528_6 R_at_528_6 Vdd pmos W=0.1625U L=0.065U
M220_ Vdd n__R__f_528_6 R_af_528_6 Vdd pmos W=0.1625U L=0.065U
M221_ Vdd n__R__t_529_6 R_at_529_6 Vdd pmos W=0.1625U L=0.065U
M222_ Vdd n__R__f_529_6 R_af_529_6 Vdd pmos W=0.1625U L=0.065U
M223_ Vdd n__R__t_530_6 R_at_530_6 Vdd pmos W=0.1625U L=0.065U
M224_ Vdd n__R__f_530_6 R_af_530_6 Vdd pmos W=0.1625U L=0.065U
M225_ Vdd n__R__t_531_6 R_at_531_6 Vdd pmos W=0.1625U L=0.065U
M226_ Vdd n__R__f_531_6 R_af_531_6 Vdd pmos W=0.1625U L=0.065U
M227_ Vdd n__c_50_6 #fb614# Vdd pmos W=0.1625U L=0.13U
M228_ Vdd n__c_51_6 #fb617# Vdd pmos W=0.1625U L=0.13U
M229_keeper Vdd GND #615 Vdd pmos W=0.0975U L=1.235U
M230_ Vdd n__c_52_6 #fb620# Vdd pmos W=0.1625U L=0.13U
M231_keeper Vdd GND #618 Vdd pmos W=0.0975U L=1.235U
M232_ Vdd n__c_53_6 #fb623# Vdd pmos W=0.1625U L=0.13U
M233_keeper Vdd GND #621 Vdd pmos W=0.0975U L=1.235U
M234_ Vdd n__c_54_6 #fb626# Vdd pmos W=0.1625U L=0.13U
M235_keeper Vdd GND #624 Vdd pmos W=0.0975U L=1.235U
M236_ Vdd n__c_55_6 #fb629# Vdd pmos W=0.1625U L=0.13U
M237_keeper Vdd GND #627 Vdd pmos W=0.0975U L=1.235U
M238_ Vdd n__c_56_6 #fb632# Vdd pmos W=0.1625U L=0.13U
M239_keeper Vdd GND #630 Vdd pmos W=0.0975U L=1.235U
M240_ Vdd n__c_57_6 #fb635# Vdd pmos W=0.1625U L=0.13U
M241_keeper Vdd GND #633 Vdd pmos W=0.0975U L=1.235U
M242_ Vdd d_50_6 #fb638# Vdd pmos W=0.1625U L=0.13U
M243_keeper Vdd GND #636 Vdd pmos W=0.0975U L=1.235U
M244_ Vdd d_51_6 #fb641# Vdd pmos W=0.1625U L=0.13U
M245_keeper Vdd GND #639 Vdd pmos W=0.0975U L=0.585U
M246_ Vdd d_52_6 #fb644# Vdd pmos W=0.1625U L=0.13U
M247_keeper Vdd GND #642 Vdd pmos W=0.0975U L=0.585U
M248_ Vdd d_53_6 #fb647# Vdd pmos W=0.1625U L=0.13U
M249_keeper Vdd GND #645 Vdd pmos W=0.0975U L=0.585U
M250_ Vdd n__f_50_6 #fb650# Vdd pmos W=0.1625U L=0.13U
M251_keeper Vdd GND #648 Vdd pmos W=0.0975U L=0.585U
M252_ Vdd n__f_51_6 #fb653# Vdd pmos W=0.1625U L=0.13U
M253_keeper Vdd GND #651 Vdd pmos W=0.0975U L=0.585U
M254_ Vdd g #fb656# Vdd pmos W=0.1625U L=0.13U
M255_keeper Vdd GND #654 Vdd pmos W=0.0975U L=0.585U
M256_ Vdd n__h_50_6 #fb659# Vdd pmos W=0.1625U L=0.13U
M257_keeper Vdd GND #657 Vdd pmos W=0.0975U L=0.585U
M258_ Vdd n__h_51_6 #fb662# Vdd pmos W=0.1625U L=0.13U
M259_keeper Vdd GND #660 Vdd pmos W=0.0975U L=1.235U
M260_ Vdd n__h_52_6 #fb665# Vdd pmos W=0.1625U L=0.13U
M261_keeper Vdd GND #663 Vdd pmos W=0.0975U L=1.235U
M262_ Vdd n__h_53_6 #fb668# Vdd pmos W=0.1625U L=0.13U
M263_keeper Vdd GND #666 Vdd pmos W=0.0975U L=1.235U
M264_ Vdd n__h_54_6 #fb671# Vdd pmos W=0.1625U L=0.13U
M265_keeper Vdd GND #669 Vdd pmos W=0.0975U L=1.235U
M266_ Vdd n__h_55_6 #fb674# Vdd pmos W=0.1625U L=0.13U
M267_keeper Vdd GND #672 Vdd pmos W=0.0975U L=1.235U
M268_ Vdd n__h_56_6 #fb677# Vdd pmos W=0.1625U L=0.13U
M269_keeper Vdd GND #675 Vdd pmos W=0.0975U L=1.235U
M270_ Vdd n__h_57_6 #fb680# Vdd pmos W=0.1625U L=0.13U
M271_keeper Vdd GND #678 Vdd pmos W=0.0975U L=1.235U
M272_ Vdd j_50_6 #fb683# Vdd pmos W=0.1625U L=0.13U
M273_keeper Vdd GND #681 Vdd pmos W=0.0975U L=1.235U
M274_ Vdd j_51_6 #fb686# Vdd pmos W=0.1625U L=0.13U
M275_keeper Vdd GND #684 Vdd pmos W=0.0975U L=0.585U
M276_ Vdd j_52_6 #fb689# Vdd pmos W=0.1625U L=0.13U
M277_keeper Vdd GND #687 Vdd pmos W=0.0975U L=0.585U
M278_ Vdd j_53_6 #fb692# Vdd pmos W=0.1625U L=0.13U
M279_keeper Vdd GND #690 Vdd pmos W=0.0975U L=0.585U
M280_ Vdd n__m_50_6 #fb695# Vdd pmos W=0.1625U L=0.13U
M281_keeper Vdd GND #693 Vdd pmos W=0.0975U L=0.585U
M282_ Vdd n__m_51_6 #fb698# Vdd pmos W=0.1625U L=0.13U
M283_keeper Vdd GND #696 Vdd pmos W=0.0975U L=0.585U
M284_ Vdd n #fb701# Vdd pmos W=0.1625U L=0.13U
M285_keeper Vdd GND #699 Vdd pmos W=0.0975U L=0.585U
M286_ Vdd n__L__a #fb704# Vdd pmos W=0.1625U L=0.13U
M287_keeper Vdd GND #702 Vdd pmos W=0.0975U L=0.585U
M288_ Vdd e #fb707# Vdd pmos W=0.1625U L=0.13U
M289_keeper Vdd GND #705 Vdd pmos W=0.0975U L=0.585U
M290_ Vdd n__R__t_50_6 #fb710# Vdd pmos W=0.1625U L=0.13U
M291_keeper Vdd GND #708 Vdd pmos W=0.0975U L=0.26U
M292_ Vdd n__R__f_50_6 #fb713# Vdd pmos W=0.1625U L=0.13U
M293_keeper Vdd GND #711 Vdd pmos W=0.0975U L=0.91U
M294_ Vdd n__R__t_51_6 #fb716# Vdd pmos W=0.1625U L=0.13U
M295_keeper Vdd GND #714 Vdd pmos W=0.0975U L=0.91U
M296_ Vdd n__R__f_51_6 #fb719# Vdd pmos W=0.1625U L=0.13U
M297_keeper Vdd GND #717 Vdd pmos W=0.0975U L=0.91U
M298_ Vdd n__R__t_52_6 #fb722# Vdd pmos W=0.1625U L=0.13U
M299_keeper Vdd GND #720 Vdd pmos W=0.0975U L=0.91U
M300_ Vdd n__R__f_52_6 #fb725# Vdd pmos W=0.1625U L=0.13U
M301_keeper Vdd GND #723 Vdd pmos W=0.0975U L=0.91U
M302_ Vdd n__R__t_53_6 #fb728# Vdd pmos W=0.1625U L=0.13U
M303_keeper Vdd GND #726 Vdd pmos W=0.0975U L=0.91U
M304_ Vdd n__R__f_53_6 #fb731# Vdd pmos W=0.1625U L=0.13U
M305_keeper Vdd GND #729 Vdd pmos W=0.0975U L=0.91U
M306_ Vdd n__R__t_54_6 #fb734# Vdd pmos W=0.1625U L=0.13U
M307_keeper Vdd GND #732 Vdd pmos W=0.0975U L=0.91U
M308_ Vdd n__R__f_54_6 #fb737# Vdd pmos W=0.1625U L=0.13U
M309_keeper Vdd GND #735 Vdd pmos W=0.0975U L=0.91U
M310_ Vdd n__R__t_55_6 #fb740# Vdd pmos W=0.1625U L=0.13U
M311_keeper Vdd GND #738 Vdd pmos W=0.0975U L=0.91U
M312_ Vdd n__R__f_55_6 #fb743# Vdd pmos W=0.1625U L=0.13U
M313_keeper Vdd GND #741 Vdd pmos W=0.0975U L=0.91U
M314_ Vdd n__R__t_56_6 #fb746# Vdd pmos W=0.1625U L=0.13U
M315_keeper Vdd GND #744 Vdd pmos W=0.0975U L=0.91U
M316_ Vdd n__R__f_56_6 #fb749# Vdd pmos W=0.1625U L=0.13U
M317_keeper Vdd GND #747 Vdd pmos W=0.0975U L=0.91U
M318_ Vdd n__R__t_57_6 #fb752# Vdd pmos W=0.1625U L=0.13U
M319_keeper Vdd GND #750 Vdd pmos W=0.0975U L=0.91U
M320_ Vdd n__R__f_57_6 #fb755# Vdd pmos W=0.1625U L=0.13U
M321_keeper Vdd GND #753 Vdd pmos W=0.0975U L=0.91U
M322_ Vdd n__R__t_58_6 #fb758# Vdd pmos W=0.1625U L=0.13U
M323_keeper Vdd GND #756 Vdd pmos W=0.0975U L=0.91U
M324_ Vdd n__R__f_58_6 #fb761# Vdd pmos W=0.1625U L=0.13U
M325_keeper Vdd GND #759 Vdd pmos W=0.0975U L=0.91U
M326_ Vdd n__R__t_59_6 #fb764# Vdd pmos W=0.1625U L=0.13U
M327_keeper Vdd GND #762 Vdd pmos W=0.0975U L=0.91U
M328_ Vdd n__R__f_59_6 #fb767# Vdd pmos W=0.1625U L=0.13U
M329_keeper Vdd GND #765 Vdd pmos W=0.0975U L=0.91U
M330_ Vdd n__R__t_510_6 #fb770# Vdd pmos W=0.1625U L=0.13U
M331_keeper Vdd GND #768 Vdd pmos W=0.0975U L=0.91U
M332_ Vdd n__R__f_510_6 #fb773# Vdd pmos W=0.1625U L=0.13U
M333_keeper Vdd GND #771 Vdd pmos W=0.0975U L=0.91U
M334_ Vdd n__R__t_511_6 #fb776# Vdd pmos W=0.1625U L=0.13U
M335_keeper Vdd GND #774 Vdd pmos W=0.0975U L=0.91U
M336_ Vdd n__R__f_511_6 #fb779# Vdd pmos W=0.1625U L=0.13U
M337_keeper Vdd GND #777 Vdd pmos W=0.0975U L=0.91U
M338_ Vdd n__R__t_512_6 #fb782# Vdd pmos W=0.1625U L=0.13U
M339_keeper Vdd GND #780 Vdd pmos W=0.0975U L=0.91U
M340_ Vdd n__R__f_512_6 #fb785# Vdd pmos W=0.1625U L=0.13U
M341_keeper Vdd GND #783 Vdd pmos W=0.0975U L=0.91U
M342_ Vdd n__R__t_513_6 #fb788# Vdd pmos W=0.1625U L=0.13U
M343_keeper Vdd GND #786 Vdd pmos W=0.0975U L=0.91U
M344_ Vdd n__R__f_513_6 #fb791# Vdd pmos W=0.1625U L=0.13U
M345_keeper Vdd GND #789 Vdd pmos W=0.0975U L=0.91U
M346_ Vdd n__R__t_514_6 #fb794# Vdd pmos W=0.1625U L=0.13U
M347_keeper Vdd GND #792 Vdd pmos W=0.0975U L=0.91U
M348_ Vdd n__R__f_514_6 #fb797# Vdd pmos W=0.1625U L=0.13U
M349_keeper Vdd GND #795 Vdd pmos W=0.0975U L=0.91U
M350_ Vdd n__R__t_515_6 #fb800# Vdd pmos W=0.1625U L=0.13U
M351_keeper Vdd GND #798 Vdd pmos W=0.0975U L=0.91U
M352_ Vdd n__R__f_515_6 #fb803# Vdd pmos W=0.1625U L=0.13U
M353_keeper Vdd GND #801 Vdd pmos W=0.0975U L=0.91U
M354_ Vdd n__R__t_516_6 #fb806# Vdd pmos W=0.1625U L=0.13U
M355_keeper Vdd GND #804 Vdd pmos W=0.0975U L=0.91U
M356_ Vdd n__R__f_516_6 #fb809# Vdd pmos W=0.1625U L=0.13U
M357_keeper Vdd GND #807 Vdd pmos W=0.0975U L=0.91U
M358_ Vdd n__R__t_517_6 #fb812# Vdd pmos W=0.1625U L=0.13U
M359_keeper Vdd GND #810 Vdd pmos W=0.0975U L=0.91U
M360_ Vdd n__R__f_517_6 #fb815# Vdd pmos W=0.1625U L=0.13U
M361_keeper Vdd GND #813 Vdd pmos W=0.0975U L=0.91U
M362_ Vdd n__R__t_518_6 #fb818# Vdd pmos W=0.1625U L=0.13U
M363_keeper Vdd GND #816 Vdd pmos W=0.0975U L=0.91U
M364_ Vdd n__R__f_518_6 #fb821# Vdd pmos W=0.1625U L=0.13U
M365_keeper Vdd GND #819 Vdd pmos W=0.0975U L=0.91U
M366_ Vdd n__R__t_519_6 #fb824# Vdd pmos W=0.1625U L=0.13U
M367_keeper Vdd GND #822 Vdd pmos W=0.0975U L=0.91U
M368_ Vdd n__R__f_519_6 #fb827# Vdd pmos W=0.1625U L=0.13U
M369_keeper Vdd GND #825 Vdd pmos W=0.0975U L=0.91U
M370_ Vdd n__R__t_520_6 #fb830# Vdd pmos W=0.1625U L=0.13U
M371_keeper Vdd GND #828 Vdd pmos W=0.0975U L=0.91U
M372_ Vdd n__R__f_520_6 #fb833# Vdd pmos W=0.1625U L=0.13U
M373_keeper Vdd GND #831 Vdd pmos W=0.0975U L=0.91U
M374_ Vdd n__R__t_521_6 #fb836# Vdd pmos W=0.1625U L=0.13U
M375_keeper Vdd GND #834 Vdd pmos W=0.0975U L=0.91U
M376_ Vdd n__R__f_521_6 #fb839# Vdd pmos W=0.1625U L=0.13U
M377_keeper Vdd GND #837 Vdd pmos W=0.0975U L=0.91U
M378_ Vdd n__R__t_522_6 #fb842# Vdd pmos W=0.1625U L=0.13U
M379_keeper Vdd GND #840 Vdd pmos W=0.0975U L=0.91U
M380_ Vdd n__R__f_522_6 #fb845# Vdd pmos W=0.1625U L=0.13U
M381_keeper Vdd GND #843 Vdd pmos W=0.0975U L=0.91U
M382_ Vdd n__R__t_523_6 #fb848# Vdd pmos W=0.1625U L=0.13U
M383_keeper Vdd GND #846 Vdd pmos W=0.0975U L=0.91U
M384_ Vdd n__R__f_523_6 #fb851# Vdd pmos W=0.1625U L=0.13U
M385_keeper Vdd GND #849 Vdd pmos W=0.0975U L=0.91U
M386_ Vdd n__R__t_524_6 #fb854# Vdd pmos W=0.1625U L=0.13U
M387_keeper Vdd GND #852 Vdd pmos W=0.0975U L=0.91U
M388_ Vdd n__R__f_524_6 #fb857# Vdd pmos W=0.1625U L=0.13U
M389_keeper Vdd GND #855 Vdd pmos W=0.0975U L=0.91U
M390_ Vdd n__R__t_525_6 #fb860# Vdd pmos W=0.1625U L=0.13U
M391_keeper Vdd GND #858 Vdd pmos W=0.0975U L=0.91U
M392_ Vdd n__R__f_525_6 #fb863# Vdd pmos W=0.1625U L=0.13U
M393_keeper Vdd GND #861 Vdd pmos W=0.0975U L=0.91U
M394_ Vdd n__R__t_526_6 #fb866# Vdd pmos W=0.1625U L=0.13U
M395_keeper Vdd GND #864 Vdd pmos W=0.0975U L=0.91U
M396_ Vdd n__R__f_526_6 #fb869# Vdd pmos W=0.1625U L=0.13U
M397_keeper Vdd GND #867 Vdd pmos W=0.0975U L=0.91U
M398_ Vdd n__R__t_527_6 #fb872# Vdd pmos W=0.1625U L=0.13U
M399_keeper Vdd GND #870 Vdd pmos W=0.0975U L=0.91U
M400_ Vdd n__R__f_527_6 #fb875# Vdd pmos W=0.1625U L=0.13U
M401_keeper Vdd GND #873 Vdd pmos W=0.0975U L=0.91U
M402_ Vdd n__R__t_528_6 #fb878# Vdd pmos W=0.1625U L=0.13U
M403_keeper Vdd GND #876 Vdd pmos W=0.0975U L=0.91U
M404_ Vdd n__R__f_528_6 #fb881# Vdd pmos W=0.1625U L=0.13U
M405_keeper Vdd GND #879 Vdd pmos W=0.0975U L=0.91U
M406_ Vdd n__R__t_529_6 #fb884# Vdd pmos W=0.1625U L=0.13U
M407_keeper Vdd GND #882 Vdd pmos W=0.0975U L=0.91U
M408_ Vdd n__R__f_529_6 #fb887# Vdd pmos W=0.1625U L=0.13U
M409_keeper Vdd GND #885 Vdd pmos W=0.0975U L=0.91U
M410_ Vdd n__R__t_530_6 #fb890# Vdd pmos W=0.1625U L=0.13U
M411_keeper Vdd GND #888 Vdd pmos W=0.0975U L=0.91U
M412_ Vdd n__R__f_530_6 #fb893# Vdd pmos W=0.1625U L=0.13U
M413_keeper Vdd GND #891 Vdd pmos W=0.0975U L=0.91U
M414_ Vdd n__R__t_531_6 #fb896# Vdd pmos W=0.1625U L=0.13U
M415_keeper Vdd GND #894 Vdd pmos W=0.0975U L=0.91U
M416_ Vdd n__R__f_531_6 #fb899# Vdd pmos W=0.1625U L=0.13U
M417_keeper Vdd GND #897 Vdd pmos W=0.0975U L=0.91U
M418_keeper Vdd GND #900 Vdd pmos W=0.0975U L=0.91U
M419_ GND R_at_50_6 #5 GND nmos W=0.0975U L=0.065U
M420_ GND R_af_50_6 #5 GND nmos W=0.0975U L=0.065U
M421_ GND R_at_54_6 #24 GND nmos W=0.0975U L=0.065U
M422_ GND R_af_54_6 #24 GND nmos W=0.0975U L=0.065U
M423_ GND R_at_58_6 #43 GND nmos W=0.0975U L=0.065U
M424_ GND R_af_58_6 #43 GND nmos W=0.0975U L=0.065U
M425_ GND R_at_512_6 #62 GND nmos W=0.0975U L=0.065U
M426_ GND R_af_512_6 #62 GND nmos W=0.0975U L=0.065U
M427_ GND R_at_516_6 #81 GND nmos W=0.0975U L=0.065U
M428_ GND R_af_516_6 #81 GND nmos W=0.0975U L=0.065U
M429_ GND R_at_520_6 #100 GND nmos W=0.0975U L=0.065U
M430_ GND R_af_520_6 #100 GND nmos W=0.0975U L=0.065U
M431_ GND R_at_524_6 #119 GND nmos W=0.0975U L=0.065U
M432_ GND R_af_524_6 #119 GND nmos W=0.0975U L=0.065U
M433_ GND R_at_528_6 #138 GND nmos W=0.0975U L=0.065U
M434_ GND R_af_528_6 #138 GND nmos W=0.0975U L=0.065U
M435_ GND n__c_51_6 #156 GND nmos W=0.0975U L=0.065U
M436_ GND n__c_53_6 #159 GND nmos W=0.0975U L=0.065U
M437_ GND n__c_55_6 #162 GND nmos W=0.0975U L=0.065U
M438_ GND n__c_57_6 #165 GND nmos W=0.0975U L=0.065U
M439_ GND d_51_6 #167 GND nmos W=0.0975U L=0.065U
M440_ GND d_53_6 #170 GND nmos W=0.0975U L=0.065U
M441_ GND n__f_51_6 #174 GND nmos W=0.195U L=0.065U
M442_ GND L_at_50_6 #193 GND nmos W=0.0975U L=0.065U
M443_ GND L_af_50_6 #193 GND nmos W=0.0975U L=0.065U
M444_ GND L_at_54_6 #212 GND nmos W=0.0975U L=0.065U
M445_ GND L_af_54_6 #212 GND nmos W=0.0975U L=0.065U
M446_ GND L_at_58_6 #231 GND nmos W=0.0975U L=0.065U
M447_ GND L_af_58_6 #231 GND nmos W=0.0975U L=0.065U
M448_ GND L_at_512_6 #250 GND nmos W=0.0975U L=0.065U
M449_ GND L_af_512_6 #250 GND nmos W=0.0975U L=0.065U
M450_ GND L_at_516_6 #269 GND nmos W=0.0975U L=0.065U
M451_ GND L_af_516_6 #269 GND nmos W=0.0975U L=0.065U
M452_ GND L_at_520_6 #288 GND nmos W=0.0975U L=0.065U
M453_ GND L_af_520_6 #288 GND nmos W=0.0975U L=0.065U
M454_ GND L_at_524_6 #307 GND nmos W=0.0975U L=0.065U
M455_ GND L_af_524_6 #307 GND nmos W=0.0975U L=0.065U
M456_ GND L_at_528_6 #326 GND nmos W=0.0975U L=0.065U
M457_ GND L_af_528_6 #326 GND nmos W=0.0975U L=0.065U
M458_ GND n__h_51_6 #329 GND nmos W=0.0975U L=0.065U
M459_ GND n__h_53_6 #332 GND nmos W=0.0975U L=0.065U
M460_ GND n__h_55_6 #335 GND nmos W=0.0975U L=0.065U
M461_ GND n__h_57_6 #338 GND nmos W=0.0975U L=0.065U
M462_ GND j_51_6 #340 GND nmos W=0.0975U L=0.065U
M463_ GND j_53_6 #343 GND nmos W=0.0975U L=0.065U
M464_ GND n__m_51_6 #346 GND nmos W=0.0975U L=0.065U
M465_ GND e #349 GND nmos W=0.0975U L=0.065U
M466_ GND L_aa e GND nmos W=0.78U L=0.065U
M467_ GND reset e GND nmos W=0.78U L=0.065U
M468_ GND inv__R__a #357 GND nmos W=0.0975U L=0.065U
M469_ GND inv__R__a #363 GND nmos W=0.0975U L=0.065U
M470_ GND inv__R__a #367 GND nmos W=0.0975U L=0.065U
M471_ GND inv__R__a #371 GND nmos W=0.0975U L=0.065U
M472_ GND inv__R__a #375 GND nmos W=0.0975U L=0.065U
M473_ GND inv__R__a #379 GND nmos W=0.0975U L=0.065U
M474_ GND inv__R__a #383 GND nmos W=0.0975U L=0.065U
M475_ GND inv__R__a #387 GND nmos W=0.0975U L=0.065U
M476_ GND inv__R__a #391 GND nmos W=0.0975U L=0.065U
M477_ GND inv__R__a #395 GND nmos W=0.0975U L=0.065U
M478_ GND inv__R__a #399 GND nmos W=0.0975U L=0.065U
M479_ GND inv__R__a #403 GND nmos W=0.0975U L=0.065U
M480_ GND inv__R__a #407 GND nmos W=0.0975U L=0.065U
M481_ GND inv__R__a #411 GND nmos W=0.0975U L=0.065U
M482_ GND inv__R__a #415 GND nmos W=0.0975U L=0.065U
M483_ GND inv__R__a #419 GND nmos W=0.0975U L=0.065U
M484_ GND inv__R__a #423 GND nmos W=0.0975U L=0.065U
M485_ GND inv__R__a #427 GND nmos W=0.0975U L=0.065U
M486_ GND inv__R__a #431 GND nmos W=0.0975U L=0.065U
M487_ GND inv__R__a #435 GND nmos W=0.0975U L=0.065U
M488_ GND inv__R__a #439 GND nmos W=0.0975U L=0.065U
M489_ GND inv__R__a #443 GND nmos W=0.0975U L=0.065U
M490_ GND inv__R__a #447 GND nmos W=0.0975U L=0.065U
M491_ GND inv__R__a #451 GND nmos W=0.0975U L=0.065U
M492_ GND inv__R__a #455 GND nmos W=0.0975U L=0.065U
M493_ GND inv__R__a #459 GND nmos W=0.0975U L=0.065U
M494_ GND inv__R__a #463 GND nmos W=0.0975U L=0.065U
M495_ GND inv__R__a #467 GND nmos W=0.0975U L=0.065U
M496_ GND inv__R__a #471 GND nmos W=0.0975U L=0.065U
M497_ GND inv__R__a #475 GND nmos W=0.0975U L=0.065U
M498_ GND inv__R__a #479 GND nmos W=0.0975U L=0.065U
M499_ GND inv__R__a #483 GND nmos W=0.0975U L=0.065U
M500_ GND inv__R__a #487 GND nmos W=0.0975U L=0.065U
M501_ GND inv__R__a #491 GND nmos W=0.0975U L=0.065U
M502_ GND inv__R__a #495 GND nmos W=0.0975U L=0.065U
M503_ GND inv__R__a #499 GND nmos W=0.0975U L=0.065U
M504_ GND inv__R__a #503 GND nmos W=0.0975U L=0.065U
M505_ GND inv__R__a #507 GND nmos W=0.0975U L=0.065U
M506_ GND inv__R__a #511 GND nmos W=0.0975U L=0.065U
M507_ GND inv__R__a #515 GND nmos W=0.0975U L=0.065U
M508_ GND inv__R__a #519 GND nmos W=0.0975U L=0.065U
M509_ GND inv__R__a #523 GND nmos W=0.0975U L=0.065U
M510_ GND inv__R__a #527 GND nmos W=0.0975U L=0.065U
M511_ GND inv__R__a #531 GND nmos W=0.0975U L=0.065U
M512_ GND inv__R__a #535 GND nmos W=0.0975U L=0.065U
M513_ GND inv__R__a #539 GND nmos W=0.0975U L=0.065U
M514_ GND inv__R__a #543 GND nmos W=0.0975U L=0.065U
M515_ GND inv__R__a #547 GND nmos W=0.0975U L=0.065U
M516_ GND inv__R__a #551 GND nmos W=0.0975U L=0.065U
M517_ GND inv__R__a #555 GND nmos W=0.0975U L=0.065U
M518_ GND inv__R__a #559 GND nmos W=0.0975U L=0.065U
M519_ GND inv__R__a #563 GND nmos W=0.0975U L=0.065U
M520_ GND inv__R__a #567 GND nmos W=0.0975U L=0.065U
M521_ GND inv__R__a #571 GND nmos W=0.0975U L=0.065U
M522_ GND inv__R__a #575 GND nmos W=0.0975U L=0.065U
M523_ GND inv__R__a #579 GND nmos W=0.0975U L=0.065U
M524_ GND inv__R__a #583 GND nmos W=0.0975U L=0.065U
M525_ GND inv__R__a #587 GND nmos W=0.0975U L=0.065U
M526_ GND inv__R__a #591 GND nmos W=0.0975U L=0.065U
M527_ GND inv__R__a #595 GND nmos W=0.0975U L=0.065U
M528_ GND inv__R__a #599 GND nmos W=0.0975U L=0.065U
M529_ GND inv__R__a #603 GND nmos W=0.0975U L=0.065U
M530_ GND inv__R__a #607 GND nmos W=0.0975U L=0.065U
M531_ GND inv__R__a #611 GND nmos W=0.0975U L=0.065U
M532_ GND R_aa inv__R__a GND nmos W=0.78U L=0.065U
M533_ GND reset inv__reset GND nmos W=0.0975U L=0.065U
M534_ GND n__L__a L_aa GND nmos W=0.195U L=0.065U
M535_ GND n__R__t_50_6 R_at_50_6 GND nmos W=0.0975U L=0.065U
M536_ GND n__R__f_50_6 R_af_50_6 GND nmos W=0.0975U L=0.065U
M537_ GND n__R__t_51_6 R_at_51_6 GND nmos W=0.0975U L=0.065U
M538_ GND n__R__f_51_6 R_af_51_6 GND nmos W=0.0975U L=0.065U
M539_ GND n__R__t_52_6 R_at_52_6 GND nmos W=0.0975U L=0.065U
M540_ GND n__R__f_52_6 R_af_52_6 GND nmos W=0.0975U L=0.065U
M541_ GND n__R__t_53_6 R_at_53_6 GND nmos W=0.0975U L=0.065U
M542_ GND n__R__f_53_6 R_af_53_6 GND nmos W=0.0975U L=0.065U
M543_ GND n__R__t_54_6 R_at_54_6 GND nmos W=0.0975U L=0.065U
M544_ GND n__R__f_54_6 R_af_54_6 GND nmos W=0.0975U L=0.065U
M545_ GND n__R__t_55_6 R_at_55_6 GND nmos W=0.0975U L=0.065U
M546_ GND n__R__f_55_6 R_af_55_6 GND nmos W=0.0975U L=0.065U
M547_ GND n__R__t_56_6 R_at_56_6 GND nmos W=0.0975U L=0.065U
M548_ GND n__R__f_56_6 R_af_56_6 GND nmos W=0.0975U L=0.065U
M549_ GND n__R__t_57_6 R_at_57_6 GND nmos W=0.0975U L=0.065U
M550_ GND n__R__f_57_6 R_af_57_6 GND nmos W=0.0975U L=0.065U
M551_ GND n__R__t_58_6 R_at_58_6 GND nmos W=0.0975U L=0.065U
M552_ GND n__R__f_58_6 R_af_58_6 GND nmos W=0.0975U L=0.065U
M553_ GND n__R__t_59_6 R_at_59_6 GND nmos W=0.0975U L=0.065U
M554_ GND n__R__f_59_6 R_af_59_6 GND nmos W=0.0975U L=0.065U
M555_ GND n__R__t_510_6 R_at_510_6 GND nmos W=0.0975U L=0.065U
M556_ GND n__R__f_510_6 R_af_510_6 GND nmos W=0.0975U L=0.065U
M557_ GND n__R__t_511_6 R_at_511_6 GND nmos W=0.0975U L=0.065U
M558_ GND n__R__f_511_6 R_af_511_6 GND nmos W=0.0975U L=0.065U
M559_ GND n__R__t_512_6 R_at_512_6 GND nmos W=0.0975U L=0.065U
M560_ GND n__R__f_512_6 R_af_512_6 GND nmos W=0.0975U L=0.065U
M561_ GND n__R__t_513_6 R_at_513_6 GND nmos W=0.0975U L=0.065U
M562_ GND n__R__f_513_6 R_af_513_6 GND nmos W=0.0975U L=0.065U
M563_ GND n__R__t_514_6 R_at_514_6 GND nmos W=0.0975U L=0.065U
M564_ GND n__R__f_514_6 R_af_514_6 GND nmos W=0.0975U L=0.065U
M565_ GND n__R__t_515_6 R_at_515_6 GND nmos W=0.0975U L=0.065U
M566_ GND n__R__f_515_6 R_af_515_6 GND nmos W=0.0975U L=0.065U
M567_ GND n__R__t_516_6 R_at_516_6 GND nmos W=0.0975U L=0.065U
M568_ GND n__R__f_516_6 R_af_516_6 GND nmos W=0.0975U L=0.065U
M569_ GND n__R__t_517_6 R_at_517_6 GND nmos W=0.0975U L=0.065U
M570_ GND n__R__f_517_6 R_af_517_6 GND nmos W=0.0975U L=0.065U
M571_ GND n__R__t_518_6 R_at_518_6 GND nmos W=0.0975U L=0.065U
M572_ GND n__R__f_518_6 R_af_518_6 GND nmos W=0.0975U L=0.065U
M573_ GND n__R__t_519_6 R_at_519_6 GND nmos W=0.0975U L=0.065U
M574_ GND n__R__f_519_6 R_af_519_6 GND nmos W=0.0975U L=0.065U
M575_ GND n__R__t_520_6 R_at_520_6 GND nmos W=0.0975U L=0.065U
M576_ GND n__R__f_520_6 R_af_520_6 GND nmos W=0.0975U L=0.065U
M577_ GND n__R__t_521_6 R_at_521_6 GND nmos W=0.0975U L=0.065U
M578_ GND n__R__f_521_6 R_af_521_6 GND nmos W=0.0975U L=0.065U
M579_ GND n__R__t_522_6 R_at_522_6 GND nmos W=0.0975U L=0.065U
M580_ GND n__R__f_522_6 R_af_522_6 GND nmos W=0.0975U L=0.065U
M581_ GND n__R__t_523_6 R_at_523_6 GND nmos W=0.0975U L=0.065U
M582_ GND n__R__f_523_6 R_af_523_6 GND nmos W=0.0975U L=0.065U
M583_ GND n__R__t_524_6 R_at_524_6 GND nmos W=0.0975U L=0.065U
M584_ GND n__R__f_524_6 R_af_524_6 GND nmos W=0.0975U L=0.065U
M585_ GND n__R__t_525_6 R_at_525_6 GND nmos W=0.0975U L=0.065U
M586_ GND n__R__f_525_6 R_af_525_6 GND nmos W=0.0975U L=0.065U
M587_ GND n__R__t_526_6 R_at_526_6 GND nmos W=0.0975U L=0.065U
M588_ GND n__R__f_526_6 R_af_526_6 GND nmos W=0.0975U L=0.065U
M589_ GND n__R__t_527_6 R_at_527_6 GND nmos W=0.0975U L=0.065U
M590_ GND n__R__f_527_6 R_af_527_6 GND nmos W=0.0975U L=0.065U
M591_ GND n__R__t_528_6 R_at_528_6 GND nmos W=0.0975U L=0.065U
M592_ GND n__R__f_528_6 R_af_528_6 GND nmos W=0.0975U L=0.065U
M593_ GND n__R__t_529_6 R_at_529_6 GND nmos W=0.0975U L=0.065U
M594_ GND n__R__f_529_6 R_af_529_6 GND nmos W=0.0975U L=0.065U
M595_ GND n__R__t_530_6 R_at_530_6 GND nmos W=0.0975U L=0.065U
M596_ GND n__R__f_530_6 R_af_530_6 GND nmos W=0.0975U L=0.065U
M597_ GND n__R__t_531_6 R_at_531_6 GND nmos W=0.0975U L=0.065U
M598_ GND n__R__f_531_6 R_af_531_6 GND nmos W=0.0975U L=0.065U
M599_ GND n__c_50_6 #fb614# GND nmos W=0.0975U L=0.13U
M600_ GND n__c_51_6 #fb617# GND nmos W=0.0975U L=0.13U
M601_keeper GND Vdd #616 GND nmos W=0.0975U L=6.175U
M602_ GND n__c_52_6 #fb620# GND nmos W=0.0975U L=0.13U
M603_keeper GND Vdd #619 GND nmos W=0.0975U L=6.175U
M604_ GND n__c_53_6 #fb623# GND nmos W=0.0975U L=0.13U
M605_keeper GND Vdd #622 GND nmos W=0.0975U L=6.175U
M606_ GND n__c_54_6 #fb626# GND nmos W=0.0975U L=0.13U
M607_keeper GND Vdd #625 GND nmos W=0.0975U L=6.175U
M608_ GND n__c_55_6 #fb629# GND nmos W=0.0975U L=0.13U
M609_keeper GND Vdd #628 GND nmos W=0.0975U L=6.175U
M610_ GND n__c_56_6 #fb632# GND nmos W=0.0975U L=0.13U
M611_keeper GND Vdd #631 GND nmos W=0.0975U L=6.175U
M612_ GND n__c_57_6 #fb635# GND nmos W=0.0975U L=0.13U
M613_keeper GND Vdd #634 GND nmos W=0.0975U L=6.175U
M614_ GND d_50_6 #fb638# GND nmos W=0.0975U L=0.13U
M615_keeper GND Vdd #637 GND nmos W=0.0975U L=6.175U
M616_ GND d_51_6 #fb641# GND nmos W=0.0975U L=0.13U
M617_keeper GND Vdd #640 GND nmos W=0.0975U L=1.495U
M618_ GND d_52_6 #fb644# GND nmos W=0.0975U L=0.13U
M619_keeper GND Vdd #643 GND nmos W=0.0975U L=1.495U
M620_ GND d_53_6 #fb647# GND nmos W=0.0975U L=0.13U
M621_keeper GND Vdd #646 GND nmos W=0.0975U L=1.495U
M622_ GND n__f_50_6 #fb650# GND nmos W=0.0975U L=0.13U
M623_keeper GND Vdd #649 GND nmos W=0.0975U L=1.495U
M624_ GND n__f_51_6 #fb653# GND nmos W=0.0975U L=0.13U
M625_keeper GND Vdd #652 GND nmos W=0.0975U L=1.495U
M626_ GND g #fb656# GND nmos W=0.0975U L=0.13U
M627_keeper GND Vdd #655 GND nmos W=0.0975U L=1.495U
M628_ GND n__h_50_6 #fb659# GND nmos W=0.0975U L=0.13U
M629_keeper GND Vdd #658 GND nmos W=0.0975U L=1.495U
M630_ GND n__h_51_6 #fb662# GND nmos W=0.0975U L=0.13U
M631_keeper GND Vdd #661 GND nmos W=0.0975U L=6.175U
M632_ GND n__h_52_6 #fb665# GND nmos W=0.0975U L=0.13U
M633_keeper GND Vdd #664 GND nmos W=0.0975U L=6.175U
M634_ GND n__h_53_6 #fb668# GND nmos W=0.0975U L=0.13U
M635_keeper GND Vdd #667 GND nmos W=0.0975U L=6.175U
M636_ GND n__h_54_6 #fb671# GND nmos W=0.0975U L=0.13U
M637_keeper GND Vdd #670 GND nmos W=0.0975U L=6.175U
M638_ GND n__h_55_6 #fb674# GND nmos W=0.0975U L=0.13U
M639_keeper GND Vdd #673 GND nmos W=0.0975U L=6.175U
M640_ GND n__h_56_6 #fb677# GND nmos W=0.0975U L=0.13U
M641_keeper GND Vdd #676 GND nmos W=0.0975U L=6.175U
M642_ GND n__h_57_6 #fb680# GND nmos W=0.0975U L=0.13U
M643_keeper GND Vdd #679 GND nmos W=0.0975U L=6.175U
M644_ GND j_50_6 #fb683# GND nmos W=0.0975U L=0.13U
M645_keeper GND Vdd #682 GND nmos W=0.0975U L=6.175U
M646_ GND j_51_6 #fb686# GND nmos W=0.0975U L=0.13U
M647_keeper GND Vdd #685 GND nmos W=0.0975U L=1.495U
M648_ GND j_52_6 #fb689# GND nmos W=0.0975U L=0.13U
M649_keeper GND Vdd #688 GND nmos W=0.0975U L=1.495U
M650_ GND j_53_6 #fb692# GND nmos W=0.0975U L=0.13U
M651_keeper GND Vdd #691 GND nmos W=0.0975U L=1.495U
M652_ GND n__m_50_6 #fb695# GND nmos W=0.0975U L=0.13U
M653_keeper GND Vdd #694 GND nmos W=0.0975U L=1.495U
M654_ GND n__m_51_6 #fb698# GND nmos W=0.0975U L=0.13U
M655_keeper GND Vdd #697 GND nmos W=0.0975U L=1.495U
M656_ GND n #fb701# GND nmos W=0.0975U L=0.13U
M657_keeper GND Vdd #700 GND nmos W=0.0975U L=1.495U
M658_ GND n__L__a #fb704# GND nmos W=0.0975U L=0.13U
M659_keeper GND Vdd #703 GND nmos W=0.0975U L=1.495U
M660_ GND e #fb707# GND nmos W=0.0975U L=0.13U
M661_keeper GND Vdd #706 GND nmos W=0.0975U L=0.715U
M662_ GND n__R__t_50_6 #fb710# GND nmos W=0.0975U L=0.13U
M663_keeper GND Vdd #709 GND nmos W=0.0975U L=2.275U
M664_ GND n__R__f_50_6 #fb713# GND nmos W=0.0975U L=0.13U
M665_keeper GND Vdd #712 GND nmos W=0.0975U L=1.495U
M666_ GND n__R__t_51_6 #fb716# GND nmos W=0.0975U L=0.13U
M667_keeper GND Vdd #715 GND nmos W=0.0975U L=1.495U
M668_ GND n__R__f_51_6 #fb719# GND nmos W=0.0975U L=0.13U
M669_keeper GND Vdd #718 GND nmos W=0.0975U L=1.495U
M670_ GND n__R__t_52_6 #fb722# GND nmos W=0.0975U L=0.13U
M671_keeper GND Vdd #721 GND nmos W=0.0975U L=1.495U
M672_ GND n__R__f_52_6 #fb725# GND nmos W=0.0975U L=0.13U
M673_keeper GND Vdd #724 GND nmos W=0.0975U L=1.495U
M674_ GND n__R__t_53_6 #fb728# GND nmos W=0.0975U L=0.13U
M675_keeper GND Vdd #727 GND nmos W=0.0975U L=1.495U
M676_ GND n__R__f_53_6 #fb731# GND nmos W=0.0975U L=0.13U
M677_keeper GND Vdd #730 GND nmos W=0.0975U L=1.495U
M678_ GND n__R__t_54_6 #fb734# GND nmos W=0.0975U L=0.13U
M679_keeper GND Vdd #733 GND nmos W=0.0975U L=1.495U
M680_ GND n__R__f_54_6 #fb737# GND nmos W=0.0975U L=0.13U
M681_keeper GND Vdd #736 GND nmos W=0.0975U L=1.495U
M682_ GND n__R__t_55_6 #fb740# GND nmos W=0.0975U L=0.13U
M683_keeper GND Vdd #739 GND nmos W=0.0975U L=1.495U
M684_ GND n__R__f_55_6 #fb743# GND nmos W=0.0975U L=0.13U
M685_keeper GND Vdd #742 GND nmos W=0.0975U L=1.495U
M686_ GND n__R__t_56_6 #fb746# GND nmos W=0.0975U L=0.13U
M687_keeper GND Vdd #745 GND nmos W=0.0975U L=1.495U
M688_ GND n__R__f_56_6 #fb749# GND nmos W=0.0975U L=0.13U
M689_keeper GND Vdd #748 GND nmos W=0.0975U L=1.495U
M690_ GND n__R__t_57_6 #fb752# GND nmos W=0.0975U L=0.13U
M691_keeper GND Vdd #751 GND nmos W=0.0975U L=1.495U
M692_ GND n__R__f_57_6 #fb755# GND nmos W=0.0975U L=0.13U
M693_keeper GND Vdd #754 GND nmos W=0.0975U L=1.495U
M694_ GND n__R__t_58_6 #fb758# GND nmos W=0.0975U L=0.13U
M695_keeper GND Vdd #757 GND nmos W=0.0975U L=1.495U
M696_ GND n__R__f_58_6 #fb761# GND nmos W=0.0975U L=0.13U
M697_keeper GND Vdd #760 GND nmos W=0.0975U L=1.495U
M698_ GND n__R__t_59_6 #fb764# GND nmos W=0.0975U L=0.13U
M699_keeper GND Vdd #763 GND nmos W=0.0975U L=1.495U
M700_ GND n__R__f_59_6 #fb767# GND nmos W=0.0975U L=0.13U
M701_keeper GND Vdd #766 GND nmos W=0.0975U L=1.495U
M702_ GND n__R__t_510_6 #fb770# GND nmos W=0.0975U L=0.13U
M703_keeper GND Vdd #769 GND nmos W=0.0975U L=1.495U
M704_ GND n__R__f_510_6 #fb773# GND nmos W=0.0975U L=0.13U
M705_keeper GND Vdd #772 GND nmos W=0.0975U L=1.495U
M706_ GND n__R__t_511_6 #fb776# GND nmos W=0.0975U L=0.13U
M707_keeper GND Vdd #775 GND nmos W=0.0975U L=1.495U
M708_ GND n__R__f_511_6 #fb779# GND nmos W=0.0975U L=0.13U
M709_keeper GND Vdd #778 GND nmos W=0.0975U L=1.495U
M710_ GND n__R__t_512_6 #fb782# GND nmos W=0.0975U L=0.13U
M711_keeper GND Vdd #781 GND nmos W=0.0975U L=1.495U
M712_ GND n__R__f_512_6 #fb785# GND nmos W=0.0975U L=0.13U
M713_keeper GND Vdd #784 GND nmos W=0.0975U L=1.495U
M714_ GND n__R__t_513_6 #fb788# GND nmos W=0.0975U L=0.13U
M715_keeper GND Vdd #787 GND nmos W=0.0975U L=1.495U
M716_ GND n__R__f_513_6 #fb791# GND nmos W=0.0975U L=0.13U
M717_keeper GND Vdd #790 GND nmos W=0.0975U L=1.495U
M718_ GND n__R__t_514_6 #fb794# GND nmos W=0.0975U L=0.13U
M719_keeper GND Vdd #793 GND nmos W=0.0975U L=1.495U
M720_ GND n__R__f_514_6 #fb797# GND nmos W=0.0975U L=0.13U
M721_keeper GND Vdd #796 GND nmos W=0.0975U L=1.495U
M722_ GND n__R__t_515_6 #fb800# GND nmos W=0.0975U L=0.13U
M723_keeper GND Vdd #799 GND nmos W=0.0975U L=1.495U
M724_ GND n__R__f_515_6 #fb803# GND nmos W=0.0975U L=0.13U
M725_keeper GND Vdd #802 GND nmos W=0.0975U L=1.495U
M726_ GND n__R__t_516_6 #fb806# GND nmos W=0.0975U L=0.13U
M727_keeper GND Vdd #805 GND nmos W=0.0975U L=1.495U
M728_ GND n__R__f_516_6 #fb809# GND nmos W=0.0975U L=0.13U
M729_keeper GND Vdd #808 GND nmos W=0.0975U L=1.495U
M730_ GND n__R__t_517_6 #fb812# GND nmos W=0.0975U L=0.13U
M731_keeper GND Vdd #811 GND nmos W=0.0975U L=1.495U
M732_ GND n__R__f_517_6 #fb815# GND nmos W=0.0975U L=0.13U
M733_keeper GND Vdd #814 GND nmos W=0.0975U L=1.495U
M734_ GND n__R__t_518_6 #fb818# GND nmos W=0.0975U L=0.13U
M735_keeper GND Vdd #817 GND nmos W=0.0975U L=1.495U
M736_ GND n__R__f_518_6 #fb821# GND nmos W=0.0975U L=0.13U
M737_keeper GND Vdd #820 GND nmos W=0.0975U L=1.495U
M738_ GND n__R__t_519_6 #fb824# GND nmos W=0.0975U L=0.13U
M739_keeper GND Vdd #823 GND nmos W=0.0975U L=1.495U
M740_ GND n__R__f_519_6 #fb827# GND nmos W=0.0975U L=0.13U
M741_keeper GND Vdd #826 GND nmos W=0.0975U L=1.495U
M742_ GND n__R__t_520_6 #fb830# GND nmos W=0.0975U L=0.13U
M743_keeper GND Vdd #829 GND nmos W=0.0975U L=1.495U
M744_ GND n__R__f_520_6 #fb833# GND nmos W=0.0975U L=0.13U
M745_keeper GND Vdd #832 GND nmos W=0.0975U L=1.495U
M746_ GND n__R__t_521_6 #fb836# GND nmos W=0.0975U L=0.13U
M747_keeper GND Vdd #835 GND nmos W=0.0975U L=1.495U
M748_ GND n__R__f_521_6 #fb839# GND nmos W=0.0975U L=0.13U
M749_keeper GND Vdd #838 GND nmos W=0.0975U L=1.495U
M750_ GND n__R__t_522_6 #fb842# GND nmos W=0.0975U L=0.13U
M751_keeper GND Vdd #841 GND nmos W=0.0975U L=1.495U
M752_ GND n__R__f_522_6 #fb845# GND nmos W=0.0975U L=0.13U
M753_keeper GND Vdd #844 GND nmos W=0.0975U L=1.495U
M754_ GND n__R__t_523_6 #fb848# GND nmos W=0.0975U L=0.13U
M755_keeper GND Vdd #847 GND nmos W=0.0975U L=1.495U
M756_ GND n__R__f_523_6 #fb851# GND nmos W=0.0975U L=0.13U
M757_keeper GND Vdd #850 GND nmos W=0.0975U L=1.495U
M758_ GND n__R__t_524_6 #fb854# GND nmos W=0.0975U L=0.13U
M759_keeper GND Vdd #853 GND nmos W=0.0975U L=1.495U
M760_ GND n__R__f_524_6 #fb857# GND nmos W=0.0975U L=0.13U
M761_keeper GND Vdd #856 GND nmos W=0.0975U L=1.495U
M762_ GND n__R__t_525_6 #fb860# GND nmos W=0.0975U L=0.13U
M763_keeper GND Vdd #859 GND nmos W=0.0975U L=1.495U
M764_ GND n__R__f_525_6 #fb863# GND nmos W=0.0975U L=0.13U
M765_keeper GND Vdd #862 GND nmos W=0.0975U L=1.495U
M766_ GND n__R__t_526_6 #fb866# GND nmos W=0.0975U L=0.13U
M767_keeper GND Vdd #865 GND nmos W=0.0975U L=1.495U
M768_ GND n__R__f_526_6 #fb869# GND nmos W=0.0975U L=0.13U
M769_keeper GND Vdd #868 GND nmos W=0.0975U L=1.495U
M770_ GND n__R__t_527_6 #fb872# GND nmos W=0.0975U L=0.13U
M771_keeper GND Vdd #871 GND nmos W=0.0975U L=1.495U
M772_ GND n__R__f_527_6 #fb875# GND nmos W=0.0975U L=0.13U
M773_keeper GND Vdd #874 GND nmos W=0.0975U L=1.495U
M774_ GND n__R__t_528_6 #fb878# GND nmos W=0.0975U L=0.13U
M775_keeper GND Vdd #877 GND nmos W=0.0975U L=1.495U
M776_ GND n__R__f_528_6 #fb881# GND nmos W=0.0975U L=0.13U
M777_keeper GND Vdd #880 GND nmos W=0.0975U L=1.495U
M778_ GND n__R__t_529_6 #fb884# GND nmos W=0.0975U L=0.13U
M779_keeper GND Vdd #883 GND nmos W=0.0975U L=1.495U
M780_ GND n__R__f_529_6 #fb887# GND nmos W=0.0975U L=0.13U
M781_keeper GND Vdd #886 GND nmos W=0.0975U L=1.495U
M782_ GND n__R__t_530_6 #fb890# GND nmos W=0.0975U L=0.13U
M783_keeper GND Vdd #889 GND nmos W=0.0975U L=1.495U
M784_ GND n__R__f_530_6 #fb893# GND nmos W=0.0975U L=0.13U
M785_keeper GND Vdd #892 GND nmos W=0.0975U L=1.495U
M786_ GND n__R__t_531_6 #fb896# GND nmos W=0.0975U L=0.13U
M787_keeper GND Vdd #895 GND nmos W=0.0975U L=1.495U
M788_ GND n__R__f_531_6 #fb899# GND nmos W=0.0975U L=0.13U
M789_keeper GND Vdd #898 GND nmos W=0.0975U L=1.495U
M790_keeper GND Vdd #901 GND nmos W=0.0975U L=1.495U
M791_ #3 R_at_53_6 n__c_50_6 GND nmos W=0.0975U L=0.065U
M792_ #3 R_af_53_6 n__c_50_6 GND nmos W=0.0975U L=0.065U
M793_ #20 R_af_53_6 n__c_50_6 Vdd pmos W=0.1625U L=0.065U
M794_keeper #615 #fb614# n__c_50_6 Vdd pmos W=0.0975U L=0.065U
M795_keeper #616 #fb614# n__c_50_6 GND nmos W=0.0975U L=0.065U
M796_ #4 R_at_52_6 #3 GND nmos W=0.0975U L=0.065U
M797_ #4 R_af_52_6 #3 GND nmos W=0.0975U L=0.065U
M798_ #5 R_at_51_6 #4 GND nmos W=0.0975U L=0.065U
M799_ #5 R_af_51_6 #4 GND nmos W=0.0975U L=0.065U
M800_ #19 R_af_52_6 #14 Vdd pmos W=0.1625U L=0.065U
M801_ #14 R_at_53_6 #20 Vdd pmos W=0.1625U L=0.065U
M802_ #18 R_af_51_6 #15 Vdd pmos W=0.1625U L=0.065U
M803_ #15 R_at_52_6 #19 Vdd pmos W=0.1625U L=0.065U
M804_ #17 R_af_50_6 #16 Vdd pmos W=0.1625U L=0.065U
M805_ #16 R_at_51_6 #18 Vdd pmos W=0.1625U L=0.065U
M806_ #22 R_at_57_6 n__c_51_6 GND nmos W=0.0975U L=0.065U
M807_ #22 R_af_57_6 n__c_51_6 GND nmos W=0.0975U L=0.065U
M808_ #39 R_af_57_6 n__c_51_6 Vdd pmos W=0.1625U L=0.065U
M809_keeper #618 #fb617# n__c_51_6 Vdd pmos W=0.0975U L=0.065U
M810_keeper #619 #fb617# n__c_51_6 GND nmos W=0.0975U L=0.065U
M811_ #23 R_at_56_6 #22 GND nmos W=0.0975U L=0.065U
M812_ #23 R_af_56_6 #22 GND nmos W=0.0975U L=0.065U
M813_ #24 R_at_55_6 #23 GND nmos W=0.0975U L=0.065U
M814_ #24 R_af_55_6 #23 GND nmos W=0.0975U L=0.065U
M815_ #38 R_af_56_6 #33 Vdd pmos W=0.1625U L=0.065U
M816_ #33 R_at_57_6 #39 Vdd pmos W=0.1625U L=0.065U
M817_ #37 R_af_55_6 #34 Vdd pmos W=0.1625U L=0.065U
M818_ #34 R_at_56_6 #38 Vdd pmos W=0.1625U L=0.065U
M819_ #36 R_af_54_6 #35 Vdd pmos W=0.1625U L=0.065U
M820_ #35 R_at_55_6 #37 Vdd pmos W=0.1625U L=0.065U
M821_ #41 R_at_511_6 n__c_52_6 GND nmos W=0.0975U L=0.065U
M822_ #41 R_af_511_6 n__c_52_6 GND nmos W=0.0975U L=0.065U
M823_ #58 R_af_511_6 n__c_52_6 Vdd pmos W=0.1625U L=0.065U
M824_keeper #621 #fb620# n__c_52_6 Vdd pmos W=0.0975U L=0.065U
M825_keeper #622 #fb620# n__c_52_6 GND nmos W=0.0975U L=0.065U
M826_ #42 R_at_510_6 #41 GND nmos W=0.0975U L=0.065U
M827_ #42 R_af_510_6 #41 GND nmos W=0.0975U L=0.065U
M828_ #43 R_at_59_6 #42 GND nmos W=0.0975U L=0.065U
M829_ #43 R_af_59_6 #42 GND nmos W=0.0975U L=0.065U
M830_ #57 R_af_510_6 #52 Vdd pmos W=0.1625U L=0.065U
M831_ #52 R_at_511_6 #58 Vdd pmos W=0.1625U L=0.065U
M832_ #56 R_af_59_6 #53 Vdd pmos W=0.1625U L=0.065U
M833_ #53 R_at_510_6 #57 Vdd pmos W=0.1625U L=0.065U
M834_ #55 R_af_58_6 #54 Vdd pmos W=0.1625U L=0.065U
M835_ #54 R_at_59_6 #56 Vdd pmos W=0.1625U L=0.065U
M836_ #60 R_at_515_6 n__c_53_6 GND nmos W=0.0975U L=0.065U
M837_ #60 R_af_515_6 n__c_53_6 GND nmos W=0.0975U L=0.065U
M838_ #77 R_af_515_6 n__c_53_6 Vdd pmos W=0.1625U L=0.065U
M839_keeper #624 #fb623# n__c_53_6 Vdd pmos W=0.0975U L=0.065U
M840_keeper #625 #fb623# n__c_53_6 GND nmos W=0.0975U L=0.065U
M841_ #61 R_at_514_6 #60 GND nmos W=0.0975U L=0.065U
M842_ #61 R_af_514_6 #60 GND nmos W=0.0975U L=0.065U
M843_ #62 R_at_513_6 #61 GND nmos W=0.0975U L=0.065U
M844_ #62 R_af_513_6 #61 GND nmos W=0.0975U L=0.065U
M845_ #76 R_af_514_6 #71 Vdd pmos W=0.1625U L=0.065U
M846_ #71 R_at_515_6 #77 Vdd pmos W=0.1625U L=0.065U
M847_ #75 R_af_513_6 #72 Vdd pmos W=0.1625U L=0.065U
M848_ #72 R_at_514_6 #76 Vdd pmos W=0.1625U L=0.065U
M849_ #74 R_af_512_6 #73 Vdd pmos W=0.1625U L=0.065U
M850_ #73 R_at_513_6 #75 Vdd pmos W=0.1625U L=0.065U
M851_ #79 R_at_519_6 n__c_54_6 GND nmos W=0.0975U L=0.065U
M852_ #79 R_af_519_6 n__c_54_6 GND nmos W=0.0975U L=0.065U
M853_ #96 R_af_519_6 n__c_54_6 Vdd pmos W=0.1625U L=0.065U
M854_keeper #627 #fb626# n__c_54_6 Vdd pmos W=0.0975U L=0.065U
M855_keeper #628 #fb626# n__c_54_6 GND nmos W=0.0975U L=0.065U
M856_ #80 R_at_518_6 #79 GND nmos W=0.0975U L=0.065U
M857_ #80 R_af_518_6 #79 GND nmos W=0.0975U L=0.065U
M858_ #81 R_at_517_6 #80 GND nmos W=0.0975U L=0.065U
M859_ #81 R_af_517_6 #80 GND nmos W=0.0975U L=0.065U
M860_ #95 R_af_518_6 #90 Vdd pmos W=0.1625U L=0.065U
M861_ #90 R_at_519_6 #96 Vdd pmos W=0.1625U L=0.065U
M862_ #94 R_af_517_6 #91 Vdd pmos W=0.1625U L=0.065U
M863_ #91 R_at_518_6 #95 Vdd pmos W=0.1625U L=0.065U
M864_ #93 R_af_516_6 #92 Vdd pmos W=0.1625U L=0.065U
M865_ #92 R_at_517_6 #94 Vdd pmos W=0.1625U L=0.065U
M866_ #98 R_at_523_6 n__c_55_6 GND nmos W=0.0975U L=0.065U
M867_ #98 R_af_523_6 n__c_55_6 GND nmos W=0.0975U L=0.065U
M868_ #115 R_af_523_6 n__c_55_6 Vdd pmos W=0.1625U L=0.065U
M869_keeper #630 #fb629# n__c_55_6 Vdd pmos W=0.0975U L=0.065U
M870_keeper #631 #fb629# n__c_55_6 GND nmos W=0.0975U L=0.065U
M871_ #99 R_at_522_6 #98 GND nmos W=0.0975U L=0.065U
M872_ #99 R_af_522_6 #98 GND nmos W=0.0975U L=0.065U
M873_ #100 R_at_521_6 #99 GND nmos W=0.0975U L=0.065U
M874_ #100 R_af_521_6 #99 GND nmos W=0.0975U L=0.065U
M875_ #114 R_af_522_6 #109 Vdd pmos W=0.1625U L=0.065U
M876_ #109 R_at_523_6 #115 Vdd pmos W=0.1625U L=0.065U
M877_ #113 R_af_521_6 #110 Vdd pmos W=0.1625U L=0.065U
M878_ #110 R_at_522_6 #114 Vdd pmos W=0.1625U L=0.065U
M879_ #112 R_af_520_6 #111 Vdd pmos W=0.1625U L=0.065U
M880_ #111 R_at_521_6 #113 Vdd pmos W=0.1625U L=0.065U
M881_ #117 R_at_527_6 n__c_56_6 GND nmos W=0.0975U L=0.065U
M882_ #117 R_af_527_6 n__c_56_6 GND nmos W=0.0975U L=0.065U
M883_ #134 R_af_527_6 n__c_56_6 Vdd pmos W=0.1625U L=0.065U
M884_keeper #633 #fb632# n__c_56_6 Vdd pmos W=0.0975U L=0.065U
M885_keeper #634 #fb632# n__c_56_6 GND nmos W=0.0975U L=0.065U
M886_ #118 R_at_526_6 #117 GND nmos W=0.0975U L=0.065U
M887_ #118 R_af_526_6 #117 GND nmos W=0.0975U L=0.065U
M888_ #119 R_at_525_6 #118 GND nmos W=0.0975U L=0.065U
M889_ #119 R_af_525_6 #118 GND nmos W=0.0975U L=0.065U
M890_ #133 R_af_526_6 #128 Vdd pmos W=0.1625U L=0.065U
M891_ #128 R_at_527_6 #134 Vdd pmos W=0.1625U L=0.065U
M892_ #132 R_af_525_6 #129 Vdd pmos W=0.1625U L=0.065U
M893_ #129 R_at_526_6 #133 Vdd pmos W=0.1625U L=0.065U
M894_ #131 R_af_524_6 #130 Vdd pmos W=0.1625U L=0.065U
M895_ #130 R_at_525_6 #132 Vdd pmos W=0.1625U L=0.065U
M896_ #136 R_at_531_6 n__c_57_6 GND nmos W=0.0975U L=0.065U
M897_ #136 R_af_531_6 n__c_57_6 GND nmos W=0.0975U L=0.065U
M898_ #153 R_af_531_6 n__c_57_6 Vdd pmos W=0.1625U L=0.065U
M899_keeper #636 #fb635# n__c_57_6 Vdd pmos W=0.0975U L=0.065U
M900_keeper #637 #fb635# n__c_57_6 GND nmos W=0.0975U L=0.065U
M901_ #137 R_at_530_6 #136 GND nmos W=0.0975U L=0.065U
M902_ #137 R_af_530_6 #136 GND nmos W=0.0975U L=0.065U
M903_ #138 R_at_529_6 #137 GND nmos W=0.0975U L=0.065U
M904_ #138 R_af_529_6 #137 GND nmos W=0.0975U L=0.065U
M905_ #152 R_af_530_6 #147 Vdd pmos W=0.1625U L=0.065U
M906_ #147 R_at_531_6 #153 Vdd pmos W=0.1625U L=0.065U
M907_ #151 R_af_529_6 #148 Vdd pmos W=0.1625U L=0.065U
M908_ #148 R_at_530_6 #152 Vdd pmos W=0.1625U L=0.065U
M909_ #150 R_af_528_6 #149 Vdd pmos W=0.1625U L=0.065U
M910_ #149 R_at_529_6 #151 Vdd pmos W=0.1625U L=0.065U
M911_ #155 n__c_50_6 d_50_6 Vdd pmos W=0.1625U L=0.065U
M912_ #156 n__c_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M913_keeper #639 #fb638# d_50_6 Vdd pmos W=0.0975U L=0.065U
M914_keeper #640 #fb638# d_50_6 GND nmos W=0.0975U L=0.065U
M915_ #158 n__c_52_6 d_51_6 Vdd pmos W=0.1625U L=0.065U
M916_ #159 n__c_52_6 d_51_6 GND nmos W=0.0975U L=0.065U
M917_keeper #642 #fb641# d_51_6 Vdd pmos W=0.0975U L=0.065U
M918_keeper #643 #fb641# d_51_6 GND nmos W=0.0975U L=0.065U
M919_ #161 n__c_54_6 d_52_6 Vdd pmos W=0.1625U L=0.065U
M920_ #162 n__c_54_6 d_52_6 GND nmos W=0.0975U L=0.065U
M921_keeper #645 #fb644# d_52_6 Vdd pmos W=0.0975U L=0.065U
M922_keeper #646 #fb644# d_52_6 GND nmos W=0.0975U L=0.065U
M923_ #164 n__c_56_6 d_53_6 Vdd pmos W=0.1625U L=0.065U
M924_ #165 n__c_56_6 d_53_6 GND nmos W=0.0975U L=0.065U
M925_keeper #648 #fb647# d_53_6 Vdd pmos W=0.0975U L=0.065U
M926_keeper #649 #fb647# d_53_6 GND nmos W=0.0975U L=0.065U
M927_ #167 d_50_6 n__f_50_6 GND nmos W=0.0975U L=0.065U
M928_ #168 d_50_6 n__f_50_6 Vdd pmos W=0.1625U L=0.065U
M929_keeper #651 #fb650# n__f_50_6 Vdd pmos W=0.0975U L=0.065U
M930_keeper #652 #fb650# n__f_50_6 GND nmos W=0.0975U L=0.065U
M931_ #170 d_52_6 n__f_51_6 GND nmos W=0.0975U L=0.065U
M932_ #171 d_52_6 n__f_51_6 Vdd pmos W=0.1625U L=0.065U
M933_keeper #654 #fb653# n__f_51_6 Vdd pmos W=0.0975U L=0.065U
M934_keeper #655 #fb653# n__f_51_6 GND nmos W=0.0975U L=0.065U
M935_ #173 n__f_50_6 g Vdd pmos W=0.325U L=0.065U
M936_ #174 n__f_50_6 g GND nmos W=0.195U L=0.065U
M937_keeper #657 #fb656# g Vdd pmos W=0.0975U L=0.065U
M938_keeper #658 #fb656# g GND nmos W=0.0975U L=0.065U
M939_ #188 L_af_53_6 n__h_50_6 Vdd pmos W=0.1625U L=0.065U
M940_ #191 L_at_53_6 n__h_50_6 GND nmos W=0.0975U L=0.065U
M941_ #191 L_af_53_6 n__h_50_6 GND nmos W=0.0975U L=0.065U
M942_keeper #660 #fb659# n__h_50_6 Vdd pmos W=0.0975U L=0.065U
M943_keeper #661 #fb659# n__h_50_6 GND nmos W=0.0975U L=0.065U
M944_ #185 L_af_52_6 #176 Vdd pmos W=0.1625U L=0.065U
M945_ #176 L_at_53_6 #188 Vdd pmos W=0.1625U L=0.065U
M946_ #182 L_af_51_6 #177 Vdd pmos W=0.1625U L=0.065U
M947_ #177 L_at_52_6 #185 Vdd pmos W=0.1625U L=0.065U
M948_ #179 L_af_50_6 #178 Vdd pmos W=0.1625U L=0.065U
M949_ #178 L_at_51_6 #182 Vdd pmos W=0.1625U L=0.065U
M950_ #192 L_at_52_6 #191 GND nmos W=0.0975U L=0.065U
M951_ #192 L_af_52_6 #191 GND nmos W=0.0975U L=0.065U
M952_ #193 L_at_51_6 #192 GND nmos W=0.0975U L=0.065U
M953_ #193 L_af_51_6 #192 GND nmos W=0.0975U L=0.065U
M954_ #207 L_af_57_6 n__h_51_6 Vdd pmos W=0.1625U L=0.065U
M955_ #210 L_at_57_6 n__h_51_6 GND nmos W=0.0975U L=0.065U
M956_ #210 L_af_57_6 n__h_51_6 GND nmos W=0.0975U L=0.065U
M957_keeper #663 #fb662# n__h_51_6 Vdd pmos W=0.0975U L=0.065U
M958_keeper #664 #fb662# n__h_51_6 GND nmos W=0.0975U L=0.065U
M959_ #204 L_af_56_6 #195 Vdd pmos W=0.1625U L=0.065U
M960_ #195 L_at_57_6 #207 Vdd pmos W=0.1625U L=0.065U
M961_ #201 L_af_55_6 #196 Vdd pmos W=0.1625U L=0.065U
M962_ #196 L_at_56_6 #204 Vdd pmos W=0.1625U L=0.065U
M963_ #198 L_af_54_6 #197 Vdd pmos W=0.1625U L=0.065U
M964_ #197 L_at_55_6 #201 Vdd pmos W=0.1625U L=0.065U
M965_ #211 L_at_56_6 #210 GND nmos W=0.0975U L=0.065U
M966_ #211 L_af_56_6 #210 GND nmos W=0.0975U L=0.065U
M967_ #212 L_at_55_6 #211 GND nmos W=0.0975U L=0.065U
M968_ #212 L_af_55_6 #211 GND nmos W=0.0975U L=0.065U
M969_ #226 L_af_511_6 n__h_52_6 Vdd pmos W=0.1625U L=0.065U
M970_ #229 L_at_511_6 n__h_52_6 GND nmos W=0.0975U L=0.065U
M971_ #229 L_af_511_6 n__h_52_6 GND nmos W=0.0975U L=0.065U
M972_keeper #666 #fb665# n__h_52_6 Vdd pmos W=0.0975U L=0.065U
M973_keeper #667 #fb665# n__h_52_6 GND nmos W=0.0975U L=0.065U
M974_ #223 L_af_510_6 #214 Vdd pmos W=0.1625U L=0.065U
M975_ #214 L_at_511_6 #226 Vdd pmos W=0.1625U L=0.065U
M976_ #220 L_af_59_6 #215 Vdd pmos W=0.1625U L=0.065U
M977_ #215 L_at_510_6 #223 Vdd pmos W=0.1625U L=0.065U
M978_ #217 L_af_58_6 #216 Vdd pmos W=0.1625U L=0.065U
M979_ #216 L_at_59_6 #220 Vdd pmos W=0.1625U L=0.065U
M980_ #230 L_at_510_6 #229 GND nmos W=0.0975U L=0.065U
M981_ #230 L_af_510_6 #229 GND nmos W=0.0975U L=0.065U
M982_ #231 L_at_59_6 #230 GND nmos W=0.0975U L=0.065U
M983_ #231 L_af_59_6 #230 GND nmos W=0.0975U L=0.065U
M984_ #245 L_af_515_6 n__h_53_6 Vdd pmos W=0.1625U L=0.065U
M985_ #248 L_at_515_6 n__h_53_6 GND nmos W=0.0975U L=0.065U
M986_ #248 L_af_515_6 n__h_53_6 GND nmos W=0.0975U L=0.065U
M987_keeper #669 #fb668# n__h_53_6 Vdd pmos W=0.0975U L=0.065U
M988_keeper #670 #fb668# n__h_53_6 GND nmos W=0.0975U L=0.065U
M989_ #242 L_af_514_6 #233 Vdd pmos W=0.1625U L=0.065U
M990_ #233 L_at_515_6 #245 Vdd pmos W=0.1625U L=0.065U
M991_ #239 L_af_513_6 #234 Vdd pmos W=0.1625U L=0.065U
M992_ #234 L_at_514_6 #242 Vdd pmos W=0.1625U L=0.065U
M993_ #236 L_af_512_6 #235 Vdd pmos W=0.1625U L=0.065U
M994_ #235 L_at_513_6 #239 Vdd pmos W=0.1625U L=0.065U
M995_ #249 L_at_514_6 #248 GND nmos W=0.0975U L=0.065U
M996_ #249 L_af_514_6 #248 GND nmos W=0.0975U L=0.065U
M997_ #250 L_at_513_6 #249 GND nmos W=0.0975U L=0.065U
M998_ #250 L_af_513_6 #249 GND nmos W=0.0975U L=0.065U
M999_ #264 L_af_519_6 n__h_54_6 Vdd pmos W=0.1625U L=0.065U
M1000_ #267 L_at_519_6 n__h_54_6 GND nmos W=0.0975U L=0.065U
M1001_ #267 L_af_519_6 n__h_54_6 GND nmos W=0.0975U L=0.065U
M1002_keeper #672 #fb671# n__h_54_6 Vdd pmos W=0.0975U L=0.065U
M1003_keeper #673 #fb671# n__h_54_6 GND nmos W=0.0975U L=0.065U
M1004_ #261 L_af_518_6 #252 Vdd pmos W=0.1625U L=0.065U
M1005_ #252 L_at_519_6 #264 Vdd pmos W=0.1625U L=0.065U
M1006_ #258 L_af_517_6 #253 Vdd pmos W=0.1625U L=0.065U
M1007_ #253 L_at_518_6 #261 Vdd pmos W=0.1625U L=0.065U
M1008_ #255 L_af_516_6 #254 Vdd pmos W=0.1625U L=0.065U
M1009_ #254 L_at_517_6 #258 Vdd pmos W=0.1625U L=0.065U
M1010_ #268 L_at_518_6 #267 GND nmos W=0.0975U L=0.065U
M1011_ #268 L_af_518_6 #267 GND nmos W=0.0975U L=0.065U
M1012_ #269 L_at_517_6 #268 GND nmos W=0.0975U L=0.065U
M1013_ #269 L_af_517_6 #268 GND nmos W=0.0975U L=0.065U
M1014_ #283 L_af_523_6 n__h_55_6 Vdd pmos W=0.1625U L=0.065U
M1015_ #286 L_at_523_6 n__h_55_6 GND nmos W=0.0975U L=0.065U
M1016_ #286 L_af_523_6 n__h_55_6 GND nmos W=0.0975U L=0.065U
M1017_keeper #675 #fb674# n__h_55_6 Vdd pmos W=0.0975U L=0.065U
M1018_keeper #676 #fb674# n__h_55_6 GND nmos W=0.0975U L=0.065U
M1019_ #280 L_af_522_6 #271 Vdd pmos W=0.1625U L=0.065U
M1020_ #271 L_at_523_6 #283 Vdd pmos W=0.1625U L=0.065U
M1021_ #277 L_af_521_6 #272 Vdd pmos W=0.1625U L=0.065U
M1022_ #272 L_at_522_6 #280 Vdd pmos W=0.1625U L=0.065U
M1023_ #274 L_af_520_6 #273 Vdd pmos W=0.1625U L=0.065U
M1024_ #273 L_at_521_6 #277 Vdd pmos W=0.1625U L=0.065U
M1025_ #287 L_at_522_6 #286 GND nmos W=0.0975U L=0.065U
M1026_ #287 L_af_522_6 #286 GND nmos W=0.0975U L=0.065U
M1027_ #288 L_at_521_6 #287 GND nmos W=0.0975U L=0.065U
M1028_ #288 L_af_521_6 #287 GND nmos W=0.0975U L=0.065U
M1029_ #302 L_af_527_6 n__h_56_6 Vdd pmos W=0.1625U L=0.065U
M1030_ #305 L_at_527_6 n__h_56_6 GND nmos W=0.0975U L=0.065U
M1031_ #305 L_af_527_6 n__h_56_6 GND nmos W=0.0975U L=0.065U
M1032_keeper #678 #fb677# n__h_56_6 Vdd pmos W=0.0975U L=0.065U
M1033_keeper #679 #fb677# n__h_56_6 GND nmos W=0.0975U L=0.065U
M1034_ #299 L_af_526_6 #290 Vdd pmos W=0.1625U L=0.065U
M1035_ #290 L_at_527_6 #302 Vdd pmos W=0.1625U L=0.065U
M1036_ #296 L_af_525_6 #291 Vdd pmos W=0.1625U L=0.065U
M1037_ #291 L_at_526_6 #299 Vdd pmos W=0.1625U L=0.065U
M1038_ #293 L_af_524_6 #292 Vdd pmos W=0.1625U L=0.065U
M1039_ #292 L_at_525_6 #296 Vdd pmos W=0.1625U L=0.065U
M1040_ #306 L_at_526_6 #305 GND nmos W=0.0975U L=0.065U
M1041_ #306 L_af_526_6 #305 GND nmos W=0.0975U L=0.065U
M1042_ #307 L_at_525_6 #306 GND nmos W=0.0975U L=0.065U
M1043_ #307 L_af_525_6 #306 GND nmos W=0.0975U L=0.065U
M1044_ #321 L_af_531_6 n__h_57_6 Vdd pmos W=0.1625U L=0.065U
M1045_ #324 L_at_531_6 n__h_57_6 GND nmos W=0.0975U L=0.065U
M1046_ #324 L_af_531_6 n__h_57_6 GND nmos W=0.0975U L=0.065U
M1047_keeper #681 #fb680# n__h_57_6 Vdd pmos W=0.0975U L=0.065U
M1048_keeper #682 #fb680# n__h_57_6 GND nmos W=0.0975U L=0.065U
M1049_ #318 L_af_530_6 #309 Vdd pmos W=0.1625U L=0.065U
M1050_ #309 L_at_531_6 #321 Vdd pmos W=0.1625U L=0.065U
M1051_ #315 L_af_529_6 #310 Vdd pmos W=0.1625U L=0.065U
M1052_ #310 L_at_530_6 #318 Vdd pmos W=0.1625U L=0.065U
M1053_ #312 L_af_528_6 #311 Vdd pmos W=0.1625U L=0.065U
M1054_ #311 L_at_529_6 #315 Vdd pmos W=0.1625U L=0.065U
M1055_ #325 L_at_530_6 #324 GND nmos W=0.0975U L=0.065U
M1056_ #325 L_af_530_6 #324 GND nmos W=0.0975U L=0.065U
M1057_ #326 L_at_529_6 #325 GND nmos W=0.0975U L=0.065U
M1058_ #326 L_af_529_6 #325 GND nmos W=0.0975U L=0.065U
M1059_ #328 n__h_50_6 j_50_6 Vdd pmos W=0.1625U L=0.065U
M1060_ #329 n__h_50_6 j_50_6 GND nmos W=0.0975U L=0.065U
M1061_keeper #684 #fb683# j_50_6 Vdd pmos W=0.0975U L=0.065U
M1062_keeper #685 #fb683# j_50_6 GND nmos W=0.0975U L=0.065U
M1063_ #331 n__h_52_6 j_51_6 Vdd pmos W=0.1625U L=0.065U
M1064_ #332 n__h_52_6 j_51_6 GND nmos W=0.0975U L=0.065U
M1065_keeper #687 #fb686# j_51_6 Vdd pmos W=0.0975U L=0.065U
M1066_keeper #688 #fb686# j_51_6 GND nmos W=0.0975U L=0.065U
M1067_ #334 n__h_54_6 j_52_6 Vdd pmos W=0.1625U L=0.065U
M1068_ #335 n__h_54_6 j_52_6 GND nmos W=0.0975U L=0.065U
M1069_keeper #690 #fb689# j_52_6 Vdd pmos W=0.0975U L=0.065U
M1070_keeper #691 #fb689# j_52_6 GND nmos W=0.0975U L=0.065U
M1071_ #337 n__h_56_6 j_53_6 Vdd pmos W=0.1625U L=0.065U
M1072_ #338 n__h_56_6 j_53_6 GND nmos W=0.0975U L=0.065U
M1073_keeper #693 #fb692# j_53_6 Vdd pmos W=0.0975U L=0.065U
M1074_keeper #694 #fb692# j_53_6 GND nmos W=0.0975U L=0.065U
M1075_ #340 j_50_6 n__m_50_6 GND nmos W=0.0975U L=0.065U
M1076_ #341 j_50_6 n__m_50_6 Vdd pmos W=0.1625U L=0.065U
M1077_keeper #696 #fb695# n__m_50_6 Vdd pmos W=0.0975U L=0.065U
M1078_keeper #697 #fb695# n__m_50_6 GND nmos W=0.0975U L=0.065U
M1079_ #343 j_52_6 n__m_51_6 GND nmos W=0.0975U L=0.065U
M1080_ #344 j_52_6 n__m_51_6 Vdd pmos W=0.1625U L=0.065U
M1081_keeper #699 #fb698# n__m_51_6 Vdd pmos W=0.0975U L=0.065U
M1082_keeper #700 #fb698# n__m_51_6 GND nmos W=0.0975U L=0.065U
M1083_ #346 n__m_50_6 n GND nmos W=0.0975U L=0.065U
M1084_ #347 n__m_50_6 n Vdd pmos W=0.1625U L=0.065U
M1085_keeper #702 #fb701# n Vdd pmos W=0.0975U L=0.065U
M1086_keeper #703 #fb701# n GND nmos W=0.0975U L=0.065U
M1087_ #349 g n__L__a GND nmos W=0.0975U L=0.065U
M1088_keeper #705 #fb704# n__L__a Vdd pmos W=0.0975U L=0.065U
M1089_keeper #706 #fb704# n__L__a GND nmos W=0.0975U L=0.065U
M1090_ #351 reset e Vdd pmos W=1.3U L=0.065U
M1091_keeper #708 #fb707# e Vdd pmos W=0.0975U L=0.065U
M1092_keeper #709 #fb707# e GND nmos W=0.0975U L=0.065U
M1093_ #352 g #351 Vdd pmos W=1.3U L=0.065U
M1094_ #356 L_at_50_6 n__R__t_50_6 GND nmos W=0.0975U L=0.065U
M1095_ #359 e n__R__t_50_6 Vdd pmos W=0.1625U L=0.065U
M1096_keeper #711 #fb710# n__R__t_50_6 Vdd pmos W=0.0975U L=0.065U
M1097_keeper #712 #fb710# n__R__t_50_6 GND nmos W=0.0975U L=0.065U
M1098_ #357 e #356 GND nmos W=0.0975U L=0.065U
M1099_ #362 L_af_50_6 n__R__f_50_6 GND nmos W=0.0975U L=0.065U
M1100_ #364 e n__R__f_50_6 Vdd pmos W=0.1625U L=0.065U
M1101_keeper #714 #fb713# n__R__f_50_6 Vdd pmos W=0.0975U L=0.065U
M1102_keeper #715 #fb713# n__R__f_50_6 GND nmos W=0.0975U L=0.065U
M1103_ #363 e #362 GND nmos W=0.0975U L=0.065U
M1104_ #366 L_at_51_6 n__R__t_51_6 GND nmos W=0.0975U L=0.065U
M1105_ #368 e n__R__t_51_6 Vdd pmos W=0.1625U L=0.065U
M1106_keeper #717 #fb716# n__R__t_51_6 Vdd pmos W=0.0975U L=0.065U
M1107_keeper #718 #fb716# n__R__t_51_6 GND nmos W=0.0975U L=0.065U
M1108_ #367 e #366 GND nmos W=0.0975U L=0.065U
M1109_ #370 L_af_51_6 n__R__f_51_6 GND nmos W=0.0975U L=0.065U
M1110_ #372 e n__R__f_51_6 Vdd pmos W=0.1625U L=0.065U
M1111_keeper #720 #fb719# n__R__f_51_6 Vdd pmos W=0.0975U L=0.065U
M1112_keeper #721 #fb719# n__R__f_51_6 GND nmos W=0.0975U L=0.065U
M1113_ #371 e #370 GND nmos W=0.0975U L=0.065U
M1114_ #374 L_at_52_6 n__R__t_52_6 GND nmos W=0.0975U L=0.065U
M1115_ #376 e n__R__t_52_6 Vdd pmos W=0.1625U L=0.065U
M1116_keeper #723 #fb722# n__R__t_52_6 Vdd pmos W=0.0975U L=0.065U
M1117_keeper #724 #fb722# n__R__t_52_6 GND nmos W=0.0975U L=0.065U
M1118_ #375 e #374 GND nmos W=0.0975U L=0.065U
M1119_ #378 L_af_52_6 n__R__f_52_6 GND nmos W=0.0975U L=0.065U
M1120_ #380 e n__R__f_52_6 Vdd pmos W=0.1625U L=0.065U
M1121_keeper #726 #fb725# n__R__f_52_6 Vdd pmos W=0.0975U L=0.065U
M1122_keeper #727 #fb725# n__R__f_52_6 GND nmos W=0.0975U L=0.065U
M1123_ #379 e #378 GND nmos W=0.0975U L=0.065U
M1124_ #382 L_at_53_6 n__R__t_53_6 GND nmos W=0.0975U L=0.065U
M1125_ #384 e n__R__t_53_6 Vdd pmos W=0.1625U L=0.065U
M1126_keeper #729 #fb728# n__R__t_53_6 Vdd pmos W=0.0975U L=0.065U
M1127_keeper #730 #fb728# n__R__t_53_6 GND nmos W=0.0975U L=0.065U
M1128_ #383 e #382 GND nmos W=0.0975U L=0.065U
M1129_ #386 L_af_53_6 n__R__f_53_6 GND nmos W=0.0975U L=0.065U
M1130_ #388 e n__R__f_53_6 Vdd pmos W=0.1625U L=0.065U
M1131_keeper #732 #fb731# n__R__f_53_6 Vdd pmos W=0.0975U L=0.065U
M1132_keeper #733 #fb731# n__R__f_53_6 GND nmos W=0.0975U L=0.065U
M1133_ #387 e #386 GND nmos W=0.0975U L=0.065U
M1134_ #390 L_at_54_6 n__R__t_54_6 GND nmos W=0.0975U L=0.065U
M1135_ #392 e n__R__t_54_6 Vdd pmos W=0.1625U L=0.065U
M1136_keeper #735 #fb734# n__R__t_54_6 Vdd pmos W=0.0975U L=0.065U
M1137_keeper #736 #fb734# n__R__t_54_6 GND nmos W=0.0975U L=0.065U
M1138_ #391 e #390 GND nmos W=0.0975U L=0.065U
M1139_ #394 L_af_54_6 n__R__f_54_6 GND nmos W=0.0975U L=0.065U
M1140_ #396 e n__R__f_54_6 Vdd pmos W=0.1625U L=0.065U
M1141_keeper #738 #fb737# n__R__f_54_6 Vdd pmos W=0.0975U L=0.065U
M1142_keeper #739 #fb737# n__R__f_54_6 GND nmos W=0.0975U L=0.065U
M1143_ #395 e #394 GND nmos W=0.0975U L=0.065U
M1144_ #398 L_at_55_6 n__R__t_55_6 GND nmos W=0.0975U L=0.065U
M1145_ #400 e n__R__t_55_6 Vdd pmos W=0.1625U L=0.065U
M1146_keeper #741 #fb740# n__R__t_55_6 Vdd pmos W=0.0975U L=0.065U
M1147_keeper #742 #fb740# n__R__t_55_6 GND nmos W=0.0975U L=0.065U
M1148_ #399 e #398 GND nmos W=0.0975U L=0.065U
M1149_ #402 L_af_55_6 n__R__f_55_6 GND nmos W=0.0975U L=0.065U
M1150_ #404 e n__R__f_55_6 Vdd pmos W=0.1625U L=0.065U
M1151_keeper #744 #fb743# n__R__f_55_6 Vdd pmos W=0.0975U L=0.065U
M1152_keeper #745 #fb743# n__R__f_55_6 GND nmos W=0.0975U L=0.065U
M1153_ #403 e #402 GND nmos W=0.0975U L=0.065U
M1154_ #406 L_at_56_6 n__R__t_56_6 GND nmos W=0.0975U L=0.065U
M1155_ #408 e n__R__t_56_6 Vdd pmos W=0.1625U L=0.065U
M1156_keeper #747 #fb746# n__R__t_56_6 Vdd pmos W=0.0975U L=0.065U
M1157_keeper #748 #fb746# n__R__t_56_6 GND nmos W=0.0975U L=0.065U
M1158_ #407 e #406 GND nmos W=0.0975U L=0.065U
M1159_ #410 L_af_56_6 n__R__f_56_6 GND nmos W=0.0975U L=0.065U
M1160_ #412 e n__R__f_56_6 Vdd pmos W=0.1625U L=0.065U
M1161_keeper #750 #fb749# n__R__f_56_6 Vdd pmos W=0.0975U L=0.065U
M1162_keeper #751 #fb749# n__R__f_56_6 GND nmos W=0.0975U L=0.065U
M1163_ #411 e #410 GND nmos W=0.0975U L=0.065U
M1164_ #414 L_at_57_6 n__R__t_57_6 GND nmos W=0.0975U L=0.065U
M1165_ #416 e n__R__t_57_6 Vdd pmos W=0.1625U L=0.065U
M1166_keeper #753 #fb752# n__R__t_57_6 Vdd pmos W=0.0975U L=0.065U
M1167_keeper #754 #fb752# n__R__t_57_6 GND nmos W=0.0975U L=0.065U
M1168_ #415 e #414 GND nmos W=0.0975U L=0.065U
M1169_ #418 L_af_57_6 n__R__f_57_6 GND nmos W=0.0975U L=0.065U
M1170_ #420 e n__R__f_57_6 Vdd pmos W=0.1625U L=0.065U
M1171_keeper #756 #fb755# n__R__f_57_6 Vdd pmos W=0.0975U L=0.065U
M1172_keeper #757 #fb755# n__R__f_57_6 GND nmos W=0.0975U L=0.065U
M1173_ #419 e #418 GND nmos W=0.0975U L=0.065U
M1174_ #422 L_at_58_6 n__R__t_58_6 GND nmos W=0.0975U L=0.065U
M1175_ #424 e n__R__t_58_6 Vdd pmos W=0.1625U L=0.065U
M1176_keeper #759 #fb758# n__R__t_58_6 Vdd pmos W=0.0975U L=0.065U
M1177_keeper #760 #fb758# n__R__t_58_6 GND nmos W=0.0975U L=0.065U
M1178_ #423 e #422 GND nmos W=0.0975U L=0.065U
M1179_ #426 L_af_58_6 n__R__f_58_6 GND nmos W=0.0975U L=0.065U
M1180_ #428 e n__R__f_58_6 Vdd pmos W=0.1625U L=0.065U
M1181_keeper #762 #fb761# n__R__f_58_6 Vdd pmos W=0.0975U L=0.065U
M1182_keeper #763 #fb761# n__R__f_58_6 GND nmos W=0.0975U L=0.065U
M1183_ #427 e #426 GND nmos W=0.0975U L=0.065U
M1184_ #430 L_at_59_6 n__R__t_59_6 GND nmos W=0.0975U L=0.065U
M1185_ #432 e n__R__t_59_6 Vdd pmos W=0.1625U L=0.065U
M1186_keeper #765 #fb764# n__R__t_59_6 Vdd pmos W=0.0975U L=0.065U
M1187_keeper #766 #fb764# n__R__t_59_6 GND nmos W=0.0975U L=0.065U
M1188_ #431 e #430 GND nmos W=0.0975U L=0.065U
M1189_ #434 L_af_59_6 n__R__f_59_6 GND nmos W=0.0975U L=0.065U
M1190_ #436 e n__R__f_59_6 Vdd pmos W=0.1625U L=0.065U
M1191_keeper #768 #fb767# n__R__f_59_6 Vdd pmos W=0.0975U L=0.065U
M1192_keeper #769 #fb767# n__R__f_59_6 GND nmos W=0.0975U L=0.065U
M1193_ #435 e #434 GND nmos W=0.0975U L=0.065U
M1194_ #438 L_at_510_6 n__R__t_510_6 GND nmos W=0.0975U L=0.065U
M1195_ #440 e n__R__t_510_6 Vdd pmos W=0.1625U L=0.065U
M1196_keeper #771 #fb770# n__R__t_510_6 Vdd pmos W=0.0975U L=0.065U
M1197_keeper #772 #fb770# n__R__t_510_6 GND nmos W=0.0975U L=0.065U
M1198_ #439 e #438 GND nmos W=0.0975U L=0.065U
M1199_ #442 L_af_510_6 n__R__f_510_6 GND nmos W=0.0975U L=0.065U
M1200_ #444 e n__R__f_510_6 Vdd pmos W=0.1625U L=0.065U
M1201_keeper #774 #fb773# n__R__f_510_6 Vdd pmos W=0.0975U L=0.065U
M1202_keeper #775 #fb773# n__R__f_510_6 GND nmos W=0.0975U L=0.065U
M1203_ #443 e #442 GND nmos W=0.0975U L=0.065U
M1204_ #446 L_at_511_6 n__R__t_511_6 GND nmos W=0.0975U L=0.065U
M1205_ #448 e n__R__t_511_6 Vdd pmos W=0.1625U L=0.065U
M1206_keeper #777 #fb776# n__R__t_511_6 Vdd pmos W=0.0975U L=0.065U
M1207_keeper #778 #fb776# n__R__t_511_6 GND nmos W=0.0975U L=0.065U
M1208_ #447 e #446 GND nmos W=0.0975U L=0.065U
M1209_ #450 L_af_511_6 n__R__f_511_6 GND nmos W=0.0975U L=0.065U
M1210_ #452 e n__R__f_511_6 Vdd pmos W=0.1625U L=0.065U
M1211_keeper #780 #fb779# n__R__f_511_6 Vdd pmos W=0.0975U L=0.065U
M1212_keeper #781 #fb779# n__R__f_511_6 GND nmos W=0.0975U L=0.065U
M1213_ #451 e #450 GND nmos W=0.0975U L=0.065U
M1214_ #454 L_at_512_6 n__R__t_512_6 GND nmos W=0.0975U L=0.065U
M1215_ #456 e n__R__t_512_6 Vdd pmos W=0.1625U L=0.065U
M1216_keeper #783 #fb782# n__R__t_512_6 Vdd pmos W=0.0975U L=0.065U
M1217_keeper #784 #fb782# n__R__t_512_6 GND nmos W=0.0975U L=0.065U
M1218_ #455 e #454 GND nmos W=0.0975U L=0.065U
M1219_ #458 L_af_512_6 n__R__f_512_6 GND nmos W=0.0975U L=0.065U
M1220_ #460 e n__R__f_512_6 Vdd pmos W=0.1625U L=0.065U
M1221_keeper #786 #fb785# n__R__f_512_6 Vdd pmos W=0.0975U L=0.065U
M1222_keeper #787 #fb785# n__R__f_512_6 GND nmos W=0.0975U L=0.065U
M1223_ #459 e #458 GND nmos W=0.0975U L=0.065U
M1224_ #462 L_at_513_6 n__R__t_513_6 GND nmos W=0.0975U L=0.065U
M1225_ #464 e n__R__t_513_6 Vdd pmos W=0.1625U L=0.065U
M1226_keeper #789 #fb788# n__R__t_513_6 Vdd pmos W=0.0975U L=0.065U
M1227_keeper #790 #fb788# n__R__t_513_6 GND nmos W=0.0975U L=0.065U
M1228_ #463 e #462 GND nmos W=0.0975U L=0.065U
M1229_ #466 L_af_513_6 n__R__f_513_6 GND nmos W=0.0975U L=0.065U
M1230_ #468 e n__R__f_513_6 Vdd pmos W=0.1625U L=0.065U
M1231_keeper #792 #fb791# n__R__f_513_6 Vdd pmos W=0.0975U L=0.065U
M1232_keeper #793 #fb791# n__R__f_513_6 GND nmos W=0.0975U L=0.065U
M1233_ #467 e #466 GND nmos W=0.0975U L=0.065U
M1234_ #470 L_at_514_6 n__R__t_514_6 GND nmos W=0.0975U L=0.065U
M1235_ #472 e n__R__t_514_6 Vdd pmos W=0.1625U L=0.065U
M1236_keeper #795 #fb794# n__R__t_514_6 Vdd pmos W=0.0975U L=0.065U
M1237_keeper #796 #fb794# n__R__t_514_6 GND nmos W=0.0975U L=0.065U
M1238_ #471 e #470 GND nmos W=0.0975U L=0.065U
M1239_ #474 L_af_514_6 n__R__f_514_6 GND nmos W=0.0975U L=0.065U
M1240_ #476 e n__R__f_514_6 Vdd pmos W=0.1625U L=0.065U
M1241_keeper #798 #fb797# n__R__f_514_6 Vdd pmos W=0.0975U L=0.065U
M1242_keeper #799 #fb797# n__R__f_514_6 GND nmos W=0.0975U L=0.065U
M1243_ #475 e #474 GND nmos W=0.0975U L=0.065U
M1244_ #478 L_at_515_6 n__R__t_515_6 GND nmos W=0.0975U L=0.065U
M1245_ #480 e n__R__t_515_6 Vdd pmos W=0.1625U L=0.065U
M1246_keeper #801 #fb800# n__R__t_515_6 Vdd pmos W=0.0975U L=0.065U
M1247_keeper #802 #fb800# n__R__t_515_6 GND nmos W=0.0975U L=0.065U
M1248_ #479 e #478 GND nmos W=0.0975U L=0.065U
M1249_ #482 L_af_515_6 n__R__f_515_6 GND nmos W=0.0975U L=0.065U
M1250_ #484 e n__R__f_515_6 Vdd pmos W=0.1625U L=0.065U
M1251_keeper #804 #fb803# n__R__f_515_6 Vdd pmos W=0.0975U L=0.065U
M1252_keeper #805 #fb803# n__R__f_515_6 GND nmos W=0.0975U L=0.065U
M1253_ #483 e #482 GND nmos W=0.0975U L=0.065U
M1254_ #486 L_at_516_6 n__R__t_516_6 GND nmos W=0.0975U L=0.065U
M1255_ #488 e n__R__t_516_6 Vdd pmos W=0.1625U L=0.065U
M1256_keeper #807 #fb806# n__R__t_516_6 Vdd pmos W=0.0975U L=0.065U
M1257_keeper #808 #fb806# n__R__t_516_6 GND nmos W=0.0975U L=0.065U
M1258_ #487 e #486 GND nmos W=0.0975U L=0.065U
M1259_ #490 L_af_516_6 n__R__f_516_6 GND nmos W=0.0975U L=0.065U
M1260_ #492 e n__R__f_516_6 Vdd pmos W=0.1625U L=0.065U
M1261_keeper #810 #fb809# n__R__f_516_6 Vdd pmos W=0.0975U L=0.065U
M1262_keeper #811 #fb809# n__R__f_516_6 GND nmos W=0.0975U L=0.065U
M1263_ #491 e #490 GND nmos W=0.0975U L=0.065U
M1264_ #494 L_at_517_6 n__R__t_517_6 GND nmos W=0.0975U L=0.065U
M1265_ #496 e n__R__t_517_6 Vdd pmos W=0.1625U L=0.065U
M1266_keeper #813 #fb812# n__R__t_517_6 Vdd pmos W=0.0975U L=0.065U
M1267_keeper #814 #fb812# n__R__t_517_6 GND nmos W=0.0975U L=0.065U
M1268_ #495 e #494 GND nmos W=0.0975U L=0.065U
M1269_ #498 L_af_517_6 n__R__f_517_6 GND nmos W=0.0975U L=0.065U
M1270_ #500 e n__R__f_517_6 Vdd pmos W=0.1625U L=0.065U
M1271_keeper #816 #fb815# n__R__f_517_6 Vdd pmos W=0.0975U L=0.065U
M1272_keeper #817 #fb815# n__R__f_517_6 GND nmos W=0.0975U L=0.065U
M1273_ #499 e #498 GND nmos W=0.0975U L=0.065U
M1274_ #502 L_at_518_6 n__R__t_518_6 GND nmos W=0.0975U L=0.065U
M1275_ #504 e n__R__t_518_6 Vdd pmos W=0.1625U L=0.065U
M1276_keeper #819 #fb818# n__R__t_518_6 Vdd pmos W=0.0975U L=0.065U
M1277_keeper #820 #fb818# n__R__t_518_6 GND nmos W=0.0975U L=0.065U
M1278_ #503 e #502 GND nmos W=0.0975U L=0.065U
M1279_ #506 L_af_518_6 n__R__f_518_6 GND nmos W=0.0975U L=0.065U
M1280_ #508 e n__R__f_518_6 Vdd pmos W=0.1625U L=0.065U
M1281_keeper #822 #fb821# n__R__f_518_6 Vdd pmos W=0.0975U L=0.065U
M1282_keeper #823 #fb821# n__R__f_518_6 GND nmos W=0.0975U L=0.065U
M1283_ #507 e #506 GND nmos W=0.0975U L=0.065U
M1284_ #510 L_at_519_6 n__R__t_519_6 GND nmos W=0.0975U L=0.065U
M1285_ #512 e n__R__t_519_6 Vdd pmos W=0.1625U L=0.065U
M1286_keeper #825 #fb824# n__R__t_519_6 Vdd pmos W=0.0975U L=0.065U
M1287_keeper #826 #fb824# n__R__t_519_6 GND nmos W=0.0975U L=0.065U
M1288_ #511 e #510 GND nmos W=0.0975U L=0.065U
M1289_ #514 L_af_519_6 n__R__f_519_6 GND nmos W=0.0975U L=0.065U
M1290_ #516 e n__R__f_519_6 Vdd pmos W=0.1625U L=0.065U
M1291_keeper #828 #fb827# n__R__f_519_6 Vdd pmos W=0.0975U L=0.065U
M1292_keeper #829 #fb827# n__R__f_519_6 GND nmos W=0.0975U L=0.065U
M1293_ #515 e #514 GND nmos W=0.0975U L=0.065U
M1294_ #518 L_at_520_6 n__R__t_520_6 GND nmos W=0.0975U L=0.065U
M1295_ #520 e n__R__t_520_6 Vdd pmos W=0.1625U L=0.065U
M1296_keeper #831 #fb830# n__R__t_520_6 Vdd pmos W=0.0975U L=0.065U
M1297_keeper #832 #fb830# n__R__t_520_6 GND nmos W=0.0975U L=0.065U
M1298_ #519 e #518 GND nmos W=0.0975U L=0.065U
M1299_ #522 L_af_520_6 n__R__f_520_6 GND nmos W=0.0975U L=0.065U
M1300_ #524 e n__R__f_520_6 Vdd pmos W=0.1625U L=0.065U
M1301_keeper #834 #fb833# n__R__f_520_6 Vdd pmos W=0.0975U L=0.065U
M1302_keeper #835 #fb833# n__R__f_520_6 GND nmos W=0.0975U L=0.065U
M1303_ #523 e #522 GND nmos W=0.0975U L=0.065U
M1304_ #526 L_at_521_6 n__R__t_521_6 GND nmos W=0.0975U L=0.065U
M1305_ #528 e n__R__t_521_6 Vdd pmos W=0.1625U L=0.065U
M1306_keeper #837 #fb836# n__R__t_521_6 Vdd pmos W=0.0975U L=0.065U
M1307_keeper #838 #fb836# n__R__t_521_6 GND nmos W=0.0975U L=0.065U
M1308_ #527 e #526 GND nmos W=0.0975U L=0.065U
M1309_ #530 L_af_521_6 n__R__f_521_6 GND nmos W=0.0975U L=0.065U
M1310_ #532 e n__R__f_521_6 Vdd pmos W=0.1625U L=0.065U
M1311_keeper #840 #fb839# n__R__f_521_6 Vdd pmos W=0.0975U L=0.065U
M1312_keeper #841 #fb839# n__R__f_521_6 GND nmos W=0.0975U L=0.065U
M1313_ #531 e #530 GND nmos W=0.0975U L=0.065U
M1314_ #534 L_at_522_6 n__R__t_522_6 GND nmos W=0.0975U L=0.065U
M1315_ #536 e n__R__t_522_6 Vdd pmos W=0.1625U L=0.065U
M1316_keeper #843 #fb842# n__R__t_522_6 Vdd pmos W=0.0975U L=0.065U
M1317_keeper #844 #fb842# n__R__t_522_6 GND nmos W=0.0975U L=0.065U
M1318_ #535 e #534 GND nmos W=0.0975U L=0.065U
M1319_ #538 L_af_522_6 n__R__f_522_6 GND nmos W=0.0975U L=0.065U
M1320_ #540 e n__R__f_522_6 Vdd pmos W=0.1625U L=0.065U
M1321_keeper #846 #fb845# n__R__f_522_6 Vdd pmos W=0.0975U L=0.065U
M1322_keeper #847 #fb845# n__R__f_522_6 GND nmos W=0.0975U L=0.065U
M1323_ #539 e #538 GND nmos W=0.0975U L=0.065U
M1324_ #542 L_at_523_6 n__R__t_523_6 GND nmos W=0.0975U L=0.065U
M1325_ #544 e n__R__t_523_6 Vdd pmos W=0.1625U L=0.065U
M1326_keeper #849 #fb848# n__R__t_523_6 Vdd pmos W=0.0975U L=0.065U
M1327_keeper #850 #fb848# n__R__t_523_6 GND nmos W=0.0975U L=0.065U
M1328_ #543 e #542 GND nmos W=0.0975U L=0.065U
M1329_ #546 L_af_523_6 n__R__f_523_6 GND nmos W=0.0975U L=0.065U
M1330_ #548 e n__R__f_523_6 Vdd pmos W=0.1625U L=0.065U
M1331_keeper #852 #fb851# n__R__f_523_6 Vdd pmos W=0.0975U L=0.065U
M1332_keeper #853 #fb851# n__R__f_523_6 GND nmos W=0.0975U L=0.065U
M1333_ #547 e #546 GND nmos W=0.0975U L=0.065U
M1334_ #550 L_at_524_6 n__R__t_524_6 GND nmos W=0.0975U L=0.065U
M1335_ #552 e n__R__t_524_6 Vdd pmos W=0.1625U L=0.065U
M1336_keeper #855 #fb854# n__R__t_524_6 Vdd pmos W=0.0975U L=0.065U
M1337_keeper #856 #fb854# n__R__t_524_6 GND nmos W=0.0975U L=0.065U
M1338_ #551 e #550 GND nmos W=0.0975U L=0.065U
M1339_ #554 L_af_524_6 n__R__f_524_6 GND nmos W=0.0975U L=0.065U
M1340_ #556 e n__R__f_524_6 Vdd pmos W=0.1625U L=0.065U
M1341_keeper #858 #fb857# n__R__f_524_6 Vdd pmos W=0.0975U L=0.065U
M1342_keeper #859 #fb857# n__R__f_524_6 GND nmos W=0.0975U L=0.065U
M1343_ #555 e #554 GND nmos W=0.0975U L=0.065U
M1344_ #558 L_at_525_6 n__R__t_525_6 GND nmos W=0.0975U L=0.065U
M1345_ #560 e n__R__t_525_6 Vdd pmos W=0.1625U L=0.065U
M1346_keeper #861 #fb860# n__R__t_525_6 Vdd pmos W=0.0975U L=0.065U
M1347_keeper #862 #fb860# n__R__t_525_6 GND nmos W=0.0975U L=0.065U
M1348_ #559 e #558 GND nmos W=0.0975U L=0.065U
M1349_ #562 L_af_525_6 n__R__f_525_6 GND nmos W=0.0975U L=0.065U
M1350_ #564 e n__R__f_525_6 Vdd pmos W=0.1625U L=0.065U
M1351_keeper #864 #fb863# n__R__f_525_6 Vdd pmos W=0.0975U L=0.065U
M1352_keeper #865 #fb863# n__R__f_525_6 GND nmos W=0.0975U L=0.065U
M1353_ #563 e #562 GND nmos W=0.0975U L=0.065U
M1354_ #566 L_at_526_6 n__R__t_526_6 GND nmos W=0.0975U L=0.065U
M1355_ #568 e n__R__t_526_6 Vdd pmos W=0.1625U L=0.065U
M1356_keeper #867 #fb866# n__R__t_526_6 Vdd pmos W=0.0975U L=0.065U
M1357_keeper #868 #fb866# n__R__t_526_6 GND nmos W=0.0975U L=0.065U
M1358_ #567 e #566 GND nmos W=0.0975U L=0.065U
M1359_ #570 L_af_526_6 n__R__f_526_6 GND nmos W=0.0975U L=0.065U
M1360_ #572 e n__R__f_526_6 Vdd pmos W=0.1625U L=0.065U
M1361_keeper #870 #fb869# n__R__f_526_6 Vdd pmos W=0.0975U L=0.065U
M1362_keeper #871 #fb869# n__R__f_526_6 GND nmos W=0.0975U L=0.065U
M1363_ #571 e #570 GND nmos W=0.0975U L=0.065U
M1364_ #574 L_at_527_6 n__R__t_527_6 GND nmos W=0.0975U L=0.065U
M1365_ #576 e n__R__t_527_6 Vdd pmos W=0.1625U L=0.065U
M1366_keeper #873 #fb872# n__R__t_527_6 Vdd pmos W=0.0975U L=0.065U
M1367_keeper #874 #fb872# n__R__t_527_6 GND nmos W=0.0975U L=0.065U
M1368_ #575 e #574 GND nmos W=0.0975U L=0.065U
M1369_ #578 L_af_527_6 n__R__f_527_6 GND nmos W=0.0975U L=0.065U
M1370_ #580 e n__R__f_527_6 Vdd pmos W=0.1625U L=0.065U
M1371_keeper #876 #fb875# n__R__f_527_6 Vdd pmos W=0.0975U L=0.065U
M1372_keeper #877 #fb875# n__R__f_527_6 GND nmos W=0.0975U L=0.065U
M1373_ #579 e #578 GND nmos W=0.0975U L=0.065U
M1374_ #582 L_at_528_6 n__R__t_528_6 GND nmos W=0.0975U L=0.065U
M1375_ #584 e n__R__t_528_6 Vdd pmos W=0.1625U L=0.065U
M1376_keeper #879 #fb878# n__R__t_528_6 Vdd pmos W=0.0975U L=0.065U
M1377_keeper #880 #fb878# n__R__t_528_6 GND nmos W=0.0975U L=0.065U
M1378_ #583 e #582 GND nmos W=0.0975U L=0.065U
M1379_ #586 L_af_528_6 n__R__f_528_6 GND nmos W=0.0975U L=0.065U
M1380_ #588 e n__R__f_528_6 Vdd pmos W=0.1625U L=0.065U
M1381_keeper #882 #fb881# n__R__f_528_6 Vdd pmos W=0.0975U L=0.065U
M1382_keeper #883 #fb881# n__R__f_528_6 GND nmos W=0.0975U L=0.065U
M1383_ #587 e #586 GND nmos W=0.0975U L=0.065U
M1384_ #590 L_at_529_6 n__R__t_529_6 GND nmos W=0.0975U L=0.065U
M1385_ #592 e n__R__t_529_6 Vdd pmos W=0.1625U L=0.065U
M1386_keeper #885 #fb884# n__R__t_529_6 Vdd pmos W=0.0975U L=0.065U
M1387_keeper #886 #fb884# n__R__t_529_6 GND nmos W=0.0975U L=0.065U
M1388_ #591 e #590 GND nmos W=0.0975U L=0.065U
M1389_ #594 L_af_529_6 n__R__f_529_6 GND nmos W=0.0975U L=0.065U
M1390_ #596 e n__R__f_529_6 Vdd pmos W=0.1625U L=0.065U
M1391_keeper #888 #fb887# n__R__f_529_6 Vdd pmos W=0.0975U L=0.065U
M1392_keeper #889 #fb887# n__R__f_529_6 GND nmos W=0.0975U L=0.065U
M1393_ #595 e #594 GND nmos W=0.0975U L=0.065U
M1394_ #598 L_at_530_6 n__R__t_530_6 GND nmos W=0.0975U L=0.065U
M1395_ #600 e n__R__t_530_6 Vdd pmos W=0.1625U L=0.065U
M1396_keeper #891 #fb890# n__R__t_530_6 Vdd pmos W=0.0975U L=0.065U
M1397_keeper #892 #fb890# n__R__t_530_6 GND nmos W=0.0975U L=0.065U
M1398_ #599 e #598 GND nmos W=0.0975U L=0.065U
M1399_ #602 L_af_530_6 n__R__f_530_6 GND nmos W=0.0975U L=0.065U
M1400_ #604 e n__R__f_530_6 Vdd pmos W=0.1625U L=0.065U
M1401_keeper #894 #fb893# n__R__f_530_6 Vdd pmos W=0.0975U L=0.065U
M1402_keeper #895 #fb893# n__R__f_530_6 GND nmos W=0.0975U L=0.065U
M1403_ #603 e #602 GND nmos W=0.0975U L=0.065U
M1404_ #606 L_at_531_6 n__R__t_531_6 GND nmos W=0.0975U L=0.065U
M1405_ #608 e n__R__t_531_6 Vdd pmos W=0.1625U L=0.065U
M1406_keeper #897 #fb896# n__R__t_531_6 Vdd pmos W=0.0975U L=0.065U
M1407_keeper #898 #fb896# n__R__t_531_6 GND nmos W=0.0975U L=0.065U
M1408_ #607 e #606 GND nmos W=0.0975U L=0.065U
M1409_ #610 L_af_531_6 n__R__f_531_6 GND nmos W=0.0975U L=0.065U
M1410_ #612 e n__R__f_531_6 Vdd pmos W=0.1625U L=0.065U
M1411_keeper #900 #fb899# n__R__f_531_6 Vdd pmos W=0.0975U L=0.065U
M1412_keeper #901 #fb899# n__R__f_531_6 GND nmos W=0.0975U L=0.065U
M1413_ #611 e #610 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: PCFB32<> -----
*
*---- act defproc: Reg8<> -----
* raw ports:  reset W.t[0] W.t[1] W.t[2] W.t[3] W.t[4] W.t[5] W.t[6] W.t[7] W.f[0] W.f[1] W.f[2] W.f[3] W.f[4] W.f[5] W.f[6] W.f[7] W.a R.req R.t[0] R.t[1] R.t[2] R.t[3] R.t[4] R.t[5] R.t[6] R.t[7] R.f[0] R.f[1] R.f[2] R.f[3] R.f[4] R.f[5] R.f[6] R.f[7]
*
.subckt Reg8 reset W_at_50_6 W_at_51_6 W_at_52_6 W_at_53_6 W_at_54_6 W_at_55_6 W_at_56_6 W_at_57_6 W_af_50_6
+ W_af_51_6 W_af_52_6 W_af_53_6 W_af_54_6 W_af_55_6 W_af_56_6 W_af_57_6 W_aa R_areq R_at_50_6 R_at_51_6
+ R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6
+ R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6
*.PININFO reset:I W_at_50_6:I W_at_51_6:I W_at_52_6:I W_at_53_6:I W_at_54_6:I W_at_55_6:I W_at_56_6:I W_at_57_6:I W_af_50_6:I W_af_51_6:I W_af_52_6:I W_af_53_6:I W_af_54_6:I W_af_55_6:I W_af_56_6:I W_af_57_6:I W_aa:O R_areq:I R_at_50_6:O R_at_51_6:O R_at_52_6:O R_at_53_6:O R_at_54_6:O R_at_55_6:O R_at_56_6:O R_at_57_6:O R_af_50_6:O R_af_51_6:O R_af_52_6:O R_af_53_6:O R_af_54_6:O R_af_55_6:O R_af_56_6:O R_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __c_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_50_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_50_6 (combinational)
* __c_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_51_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_51_6 (combinational)
* __c_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_52_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_52_6 (combinational)
* __c_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_53_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_53_6 (combinational)
* __c_54_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_54_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_54_6 (combinational)
* __c_55_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_55_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_55_6 (combinational)
* __c_56_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_56_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_56_6 (combinational)
* __c_57_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_57_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __x_57_6 (combinational)
* d_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* e_50_6 (combinational)
* e_51_6 (combinational)
* __p__a (state-holding): pup_reff=0.8; pdn_reff=1.33333
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
* __pt_54_6 (combinational)
* R_at_54_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_54_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __pt_55_6 (combinational)
* R_at_55_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_55_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __pt_56_6 (combinational)
* R_at_56_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_56_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __pt_57_6 (combinational)
* R_at_57_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* R_af_57_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* W_aa (combinational)
*
* --- end node flags ---
*
M0_ Vdd W_at_50_6 #9 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd W_at_51_6 #17 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd W_at_52_6 #25 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd W_at_53_6 #33 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd W_at_54_6 #41 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd W_at_55_6 #49 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd W_at_56_6 #57 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd W_at_57_6 #65 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __c_51_6 #67 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __c_53_6 #70 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __c_55_6 #73 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __c_57_6 #76 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd d_51_6 #80 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd d_53_6 #83 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __e_50_6 e_50_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __e_51_6 e_51_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd e_51_6 #88 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd __pt_50_6 x_50_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd __qr #92 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd __qr #95 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd __pt_51_6 x_51_6 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd __qr #98 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd __qr #100 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd __pt_52_6 x_52_6 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd __qr #103 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd __qr #105 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd __pt_53_6 x_53_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd __qr #108 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd __qr #110 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd __pt_54_6 x_54_6 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd __qr #113 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd __qr #115 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd __pt_55_6 x_55_6 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd __qr #118 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd __qr #120 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd __pt_56_6 x_56_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd __qr #123 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd __qr #125 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd __pt_57_6 x_57_6 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd __qr #128 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd __qr #130 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd R_areq __qr Vdd pmos W=0.65U L=0.065U
M42_ Vdd W_at_50_6 __pt_50_6 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd x_50_6 __x_50_6 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd W_at_51_6 __pt_51_6 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd x_51_6 __x_51_6 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd W_at_52_6 __pt_52_6 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd x_52_6 __x_52_6 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd W_at_53_6 __pt_53_6 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd x_53_6 __x_53_6 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd W_at_54_6 __pt_54_6 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd x_54_6 __x_54_6 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd W_at_55_6 __pt_55_6 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd x_55_6 __x_55_6 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd W_at_56_6 __pt_56_6 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd x_56_6 __x_56_6 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd W_at_57_6 __pt_57_6 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd x_57_6 __x_57_6 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd __p__a W_aa Vdd pmos W=0.1625U L=0.065U
M59_ Vdd __c_50_6 #fb133# Vdd pmos W=0.1625U L=0.13U
M60_ Vdd x_50_6 #fb136# Vdd pmos W=0.1625U L=0.13U
M61_keeper Vdd GND #134 Vdd pmos W=0.0975U L=0.585U
M62_ Vdd __c_51_6 #fb139# Vdd pmos W=0.1625U L=0.13U
M63_keeper Vdd GND #137 Vdd pmos W=0.0975U L=0.26U
M64_ Vdd x_51_6 #fb142# Vdd pmos W=0.1625U L=0.13U
M65_keeper Vdd GND #140 Vdd pmos W=0.0975U L=0.585U
M66_ Vdd __c_52_6 #fb145# Vdd pmos W=0.1625U L=0.13U
M67_keeper Vdd GND #143 Vdd pmos W=0.0975U L=0.26U
M68_ Vdd x_52_6 #fb148# Vdd pmos W=0.1625U L=0.13U
M69_keeper Vdd GND #146 Vdd pmos W=0.0975U L=0.585U
M70_ Vdd __c_53_6 #fb151# Vdd pmos W=0.1625U L=0.13U
M71_keeper Vdd GND #149 Vdd pmos W=0.0975U L=0.26U
M72_ Vdd x_53_6 #fb154# Vdd pmos W=0.1625U L=0.13U
M73_keeper Vdd GND #152 Vdd pmos W=0.0975U L=0.585U
M74_ Vdd __c_54_6 #fb157# Vdd pmos W=0.1625U L=0.13U
M75_keeper Vdd GND #155 Vdd pmos W=0.0975U L=0.26U
M76_ Vdd x_54_6 #fb160# Vdd pmos W=0.1625U L=0.13U
M77_keeper Vdd GND #158 Vdd pmos W=0.0975U L=0.585U
M78_ Vdd __c_55_6 #fb163# Vdd pmos W=0.1625U L=0.13U
M79_keeper Vdd GND #161 Vdd pmos W=0.0975U L=0.26U
M80_ Vdd x_55_6 #fb166# Vdd pmos W=0.1625U L=0.13U
M81_keeper Vdd GND #164 Vdd pmos W=0.0975U L=0.585U
M82_ Vdd __c_56_6 #fb169# Vdd pmos W=0.1625U L=0.13U
M83_keeper Vdd GND #167 Vdd pmos W=0.0975U L=0.26U
M84_ Vdd x_56_6 #fb172# Vdd pmos W=0.1625U L=0.13U
M85_keeper Vdd GND #170 Vdd pmos W=0.0975U L=0.585U
M86_ Vdd __c_57_6 #fb175# Vdd pmos W=0.1625U L=0.13U
M87_keeper Vdd GND #173 Vdd pmos W=0.0975U L=0.26U
M88_ Vdd x_57_6 #fb178# Vdd pmos W=0.1625U L=0.13U
M89_keeper Vdd GND #176 Vdd pmos W=0.0975U L=0.585U
M90_ Vdd d_50_6 #fb181# Vdd pmos W=0.1625U L=0.13U
M91_keeper Vdd GND #179 Vdd pmos W=0.0975U L=0.26U
M92_ Vdd d_51_6 #fb184# Vdd pmos W=0.1625U L=0.13U
M93_keeper Vdd GND #182 Vdd pmos W=0.0975U L=0.585U
M94_ Vdd d_52_6 #fb187# Vdd pmos W=0.1625U L=0.13U
M95_keeper Vdd GND #185 Vdd pmos W=0.0975U L=0.585U
M96_ Vdd d_53_6 #fb190# Vdd pmos W=0.1625U L=0.13U
M97_keeper Vdd GND #188 Vdd pmos W=0.0975U L=0.585U
M98_ Vdd __e_50_6 #fb193# Vdd pmos W=0.1625U L=0.13U
M99_keeper Vdd GND #191 Vdd pmos W=0.0975U L=0.585U
M100_ Vdd __e_51_6 #fb196# Vdd pmos W=0.1625U L=0.13U
M101_keeper Vdd GND #194 Vdd pmos W=0.0975U L=0.585U
M102_ Vdd __p__a #fb199# Vdd pmos W=0.1625U L=0.13U
M103_keeper Vdd GND #197 Vdd pmos W=0.0975U L=0.585U
M104_ Vdd R_at_50_6 #fb202# Vdd pmos W=0.1625U L=0.13U
M105_keeper Vdd GND #200 Vdd pmos W=0.0975U L=0.585U
M106_ Vdd R_af_50_6 #fb205# Vdd pmos W=0.1625U L=0.13U
M107_keeper Vdd GND #203 Vdd pmos W=0.0975U L=0.26U
M108_ Vdd R_at_51_6 #fb208# Vdd pmos W=0.1625U L=0.13U
M109_keeper Vdd GND #206 Vdd pmos W=0.0975U L=0.26U
M110_ Vdd R_af_51_6 #fb211# Vdd pmos W=0.1625U L=0.13U
M111_keeper Vdd GND #209 Vdd pmos W=0.0975U L=0.26U
M112_ Vdd R_at_52_6 #fb214# Vdd pmos W=0.1625U L=0.13U
M113_keeper Vdd GND #212 Vdd pmos W=0.0975U L=0.26U
M114_ Vdd R_af_52_6 #fb217# Vdd pmos W=0.1625U L=0.13U
M115_keeper Vdd GND #215 Vdd pmos W=0.0975U L=0.26U
M116_ Vdd R_at_53_6 #fb220# Vdd pmos W=0.1625U L=0.13U
M117_keeper Vdd GND #218 Vdd pmos W=0.0975U L=0.26U
M118_ Vdd R_af_53_6 #fb223# Vdd pmos W=0.1625U L=0.13U
M119_keeper Vdd GND #221 Vdd pmos W=0.0975U L=0.26U
M120_ Vdd R_at_54_6 #fb226# Vdd pmos W=0.1625U L=0.13U
M121_keeper Vdd GND #224 Vdd pmos W=0.0975U L=0.26U
M122_ Vdd R_af_54_6 #fb229# Vdd pmos W=0.1625U L=0.13U
M123_keeper Vdd GND #227 Vdd pmos W=0.0975U L=0.26U
M124_ Vdd R_at_55_6 #fb232# Vdd pmos W=0.1625U L=0.13U
M125_keeper Vdd GND #230 Vdd pmos W=0.0975U L=0.26U
M126_ Vdd R_af_55_6 #fb235# Vdd pmos W=0.1625U L=0.13U
M127_keeper Vdd GND #233 Vdd pmos W=0.0975U L=0.26U
M128_ Vdd R_at_56_6 #fb238# Vdd pmos W=0.1625U L=0.13U
M129_keeper Vdd GND #236 Vdd pmos W=0.0975U L=0.26U
M130_ Vdd R_af_56_6 #fb241# Vdd pmos W=0.1625U L=0.13U
M131_keeper Vdd GND #239 Vdd pmos W=0.0975U L=0.26U
M132_ Vdd R_at_57_6 #fb244# Vdd pmos W=0.1625U L=0.13U
M133_keeper Vdd GND #242 Vdd pmos W=0.0975U L=0.26U
M134_ Vdd R_af_57_6 #fb247# Vdd pmos W=0.1625U L=0.13U
M135_keeper Vdd GND #245 Vdd pmos W=0.0975U L=0.26U
M136_keeper Vdd GND #248 Vdd pmos W=0.0975U L=0.26U
M137_ GND W_at_50_6 #3 GND nmos W=0.0975U L=0.065U
M138_ GND W_af_50_6 #6 GND nmos W=0.0975U L=0.065U
M139_ GND W_at_51_6 #11 GND nmos W=0.0975U L=0.065U
M140_ GND W_af_51_6 #14 GND nmos W=0.0975U L=0.065U
M141_ GND W_at_52_6 #19 GND nmos W=0.0975U L=0.065U
M142_ GND W_af_52_6 #22 GND nmos W=0.0975U L=0.065U
M143_ GND W_at_53_6 #27 GND nmos W=0.0975U L=0.065U
M144_ GND W_af_53_6 #30 GND nmos W=0.0975U L=0.065U
M145_ GND W_at_54_6 #35 GND nmos W=0.0975U L=0.065U
M146_ GND W_af_54_6 #38 GND nmos W=0.0975U L=0.065U
M147_ GND W_at_55_6 #43 GND nmos W=0.0975U L=0.065U
M148_ GND W_af_55_6 #46 GND nmos W=0.0975U L=0.065U
M149_ GND W_at_56_6 #51 GND nmos W=0.0975U L=0.065U
M150_ GND W_af_56_6 #54 GND nmos W=0.0975U L=0.065U
M151_ GND W_at_57_6 #59 GND nmos W=0.0975U L=0.065U
M152_ GND W_af_57_6 #62 GND nmos W=0.0975U L=0.065U
M153_ GND __c_51_6 #68 GND nmos W=0.0975U L=0.065U
M154_ GND __c_53_6 #71 GND nmos W=0.0975U L=0.065U
M155_ GND __c_55_6 #74 GND nmos W=0.0975U L=0.065U
M156_ GND __c_57_6 #77 GND nmos W=0.0975U L=0.065U
M157_ GND d_51_6 #79 GND nmos W=0.0975U L=0.065U
M158_ GND d_53_6 #82 GND nmos W=0.0975U L=0.065U
M159_ GND __e_50_6 e_50_6 GND nmos W=0.0975U L=0.065U
M160_ GND __e_51_6 e_51_6 GND nmos W=0.0975U L=0.065U
M161_ GND e_51_6 #87 GND nmos W=0.0975U L=0.065U
M162_ GND W_af_50_6 x_50_6 GND nmos W=0.0975U L=0.065U
M163_ GND reset x_50_6 GND nmos W=0.0975U L=0.065U
M164_ GND __qr R_at_50_6 GND nmos W=0.0975U L=0.065U
M165_ GND __qr R_af_50_6 GND nmos W=0.0975U L=0.065U
M166_ GND W_af_51_6 x_51_6 GND nmos W=0.0975U L=0.065U
M167_ GND reset x_51_6 GND nmos W=0.0975U L=0.065U
M168_ GND __qr R_at_51_6 GND nmos W=0.0975U L=0.065U
M169_ GND __qr R_af_51_6 GND nmos W=0.0975U L=0.065U
M170_ GND W_af_52_6 x_52_6 GND nmos W=0.0975U L=0.065U
M171_ GND reset x_52_6 GND nmos W=0.0975U L=0.065U
M172_ GND __qr R_at_52_6 GND nmos W=0.0975U L=0.065U
M173_ GND __qr R_af_52_6 GND nmos W=0.0975U L=0.065U
M174_ GND W_af_53_6 x_53_6 GND nmos W=0.0975U L=0.065U
M175_ GND reset x_53_6 GND nmos W=0.0975U L=0.065U
M176_ GND __qr R_at_53_6 GND nmos W=0.0975U L=0.065U
M177_ GND __qr R_af_53_6 GND nmos W=0.0975U L=0.065U
M178_ GND W_af_54_6 x_54_6 GND nmos W=0.0975U L=0.065U
M179_ GND reset x_54_6 GND nmos W=0.0975U L=0.065U
M180_ GND __qr R_at_54_6 GND nmos W=0.0975U L=0.065U
M181_ GND __qr R_af_54_6 GND nmos W=0.0975U L=0.065U
M182_ GND W_af_55_6 x_55_6 GND nmos W=0.0975U L=0.065U
M183_ GND reset x_55_6 GND nmos W=0.0975U L=0.065U
M184_ GND __qr R_at_55_6 GND nmos W=0.0975U L=0.065U
M185_ GND __qr R_af_55_6 GND nmos W=0.0975U L=0.065U
M186_ GND W_af_56_6 x_56_6 GND nmos W=0.0975U L=0.065U
M187_ GND reset x_56_6 GND nmos W=0.0975U L=0.065U
M188_ GND __qr R_at_56_6 GND nmos W=0.0975U L=0.065U
M189_ GND __qr R_af_56_6 GND nmos W=0.0975U L=0.065U
M190_ GND W_af_57_6 x_57_6 GND nmos W=0.0975U L=0.065U
M191_ GND reset x_57_6 GND nmos W=0.0975U L=0.065U
M192_ GND __qr R_at_57_6 GND nmos W=0.0975U L=0.065U
M193_ GND __qr R_af_57_6 GND nmos W=0.0975U L=0.065U
M194_ GND R_areq __qr GND nmos W=0.39U L=0.065U
M195_ GND W_at_50_6 __pt_50_6 GND nmos W=0.0975U L=0.065U
M196_ GND x_50_6 __x_50_6 GND nmos W=0.0975U L=0.065U
M197_ GND W_at_51_6 __pt_51_6 GND nmos W=0.0975U L=0.065U
M198_ GND x_51_6 __x_51_6 GND nmos W=0.0975U L=0.065U
M199_ GND W_at_52_6 __pt_52_6 GND nmos W=0.0975U L=0.065U
M200_ GND x_52_6 __x_52_6 GND nmos W=0.0975U L=0.065U
M201_ GND W_at_53_6 __pt_53_6 GND nmos W=0.0975U L=0.065U
M202_ GND x_53_6 __x_53_6 GND nmos W=0.0975U L=0.065U
M203_ GND W_at_54_6 __pt_54_6 GND nmos W=0.0975U L=0.065U
M204_ GND x_54_6 __x_54_6 GND nmos W=0.0975U L=0.065U
M205_ GND W_at_55_6 __pt_55_6 GND nmos W=0.0975U L=0.065U
M206_ GND x_55_6 __x_55_6 GND nmos W=0.0975U L=0.065U
M207_ GND W_at_56_6 __pt_56_6 GND nmos W=0.0975U L=0.065U
M208_ GND x_56_6 __x_56_6 GND nmos W=0.0975U L=0.065U
M209_ GND W_at_57_6 __pt_57_6 GND nmos W=0.0975U L=0.065U
M210_ GND x_57_6 __x_57_6 GND nmos W=0.0975U L=0.065U
M211_ GND __p__a W_aa GND nmos W=0.0975U L=0.065U
M212_ GND __c_50_6 #fb133# GND nmos W=0.0975U L=0.13U
M213_ GND x_50_6 #fb136# GND nmos W=0.0975U L=0.13U
M214_keeper GND Vdd #135 GND nmos W=0.0975U L=1.495U
M215_ GND __c_51_6 #fb139# GND nmos W=0.0975U L=0.13U
M216_keeper GND Vdd #138 GND nmos W=0.0975U L=0.715U
M217_ GND x_51_6 #fb142# GND nmos W=0.0975U L=0.13U
M218_keeper GND Vdd #141 GND nmos W=0.0975U L=1.495U
M219_ GND __c_52_6 #fb145# GND nmos W=0.0975U L=0.13U
M220_keeper GND Vdd #144 GND nmos W=0.0975U L=0.715U
M221_ GND x_52_6 #fb148# GND nmos W=0.0975U L=0.13U
M222_keeper GND Vdd #147 GND nmos W=0.0975U L=1.495U
M223_ GND __c_53_6 #fb151# GND nmos W=0.0975U L=0.13U
M224_keeper GND Vdd #150 GND nmos W=0.0975U L=0.715U
M225_ GND x_53_6 #fb154# GND nmos W=0.0975U L=0.13U
M226_keeper GND Vdd #153 GND nmos W=0.0975U L=1.495U
M227_ GND __c_54_6 #fb157# GND nmos W=0.0975U L=0.13U
M228_keeper GND Vdd #156 GND nmos W=0.0975U L=0.715U
M229_ GND x_54_6 #fb160# GND nmos W=0.0975U L=0.13U
M230_keeper GND Vdd #159 GND nmos W=0.0975U L=1.495U
M231_ GND __c_55_6 #fb163# GND nmos W=0.0975U L=0.13U
M232_keeper GND Vdd #162 GND nmos W=0.0975U L=0.715U
M233_ GND x_55_6 #fb166# GND nmos W=0.0975U L=0.13U
M234_keeper GND Vdd #165 GND nmos W=0.0975U L=1.495U
M235_ GND __c_56_6 #fb169# GND nmos W=0.0975U L=0.13U
M236_keeper GND Vdd #168 GND nmos W=0.0975U L=0.715U
M237_ GND x_56_6 #fb172# GND nmos W=0.0975U L=0.13U
M238_keeper GND Vdd #171 GND nmos W=0.0975U L=1.495U
M239_ GND __c_57_6 #fb175# GND nmos W=0.0975U L=0.13U
M240_keeper GND Vdd #174 GND nmos W=0.0975U L=0.715U
M241_ GND x_57_6 #fb178# GND nmos W=0.0975U L=0.13U
M242_keeper GND Vdd #177 GND nmos W=0.0975U L=1.495U
M243_ GND d_50_6 #fb181# GND nmos W=0.0975U L=0.13U
M244_keeper GND Vdd #180 GND nmos W=0.0975U L=0.715U
M245_ GND d_51_6 #fb184# GND nmos W=0.0975U L=0.13U
M246_keeper GND Vdd #183 GND nmos W=0.0975U L=1.495U
M247_ GND d_52_6 #fb187# GND nmos W=0.0975U L=0.13U
M248_keeper GND Vdd #186 GND nmos W=0.0975U L=1.495U
M249_ GND d_53_6 #fb190# GND nmos W=0.0975U L=0.13U
M250_keeper GND Vdd #189 GND nmos W=0.0975U L=1.495U
M251_ GND __e_50_6 #fb193# GND nmos W=0.0975U L=0.13U
M252_keeper GND Vdd #192 GND nmos W=0.0975U L=1.495U
M253_ GND __e_51_6 #fb196# GND nmos W=0.0975U L=0.13U
M254_keeper GND Vdd #195 GND nmos W=0.0975U L=1.495U
M255_ GND __p__a #fb199# GND nmos W=0.0975U L=0.13U
M256_keeper GND Vdd #198 GND nmos W=0.0975U L=1.495U
M257_ GND R_at_50_6 #fb202# GND nmos W=0.0975U L=0.13U
M258_keeper GND Vdd #201 GND nmos W=0.0975U L=1.495U
M259_ GND R_af_50_6 #fb205# GND nmos W=0.0975U L=0.13U
M260_keeper GND Vdd #204 GND nmos W=0.0975U L=1.495U
M261_ GND R_at_51_6 #fb208# GND nmos W=0.0975U L=0.13U
M262_keeper GND Vdd #207 GND nmos W=0.0975U L=1.495U
M263_ GND R_af_51_6 #fb211# GND nmos W=0.0975U L=0.13U
M264_keeper GND Vdd #210 GND nmos W=0.0975U L=1.495U
M265_ GND R_at_52_6 #fb214# GND nmos W=0.0975U L=0.13U
M266_keeper GND Vdd #213 GND nmos W=0.0975U L=1.495U
M267_ GND R_af_52_6 #fb217# GND nmos W=0.0975U L=0.13U
M268_keeper GND Vdd #216 GND nmos W=0.0975U L=1.495U
M269_ GND R_at_53_6 #fb220# GND nmos W=0.0975U L=0.13U
M270_keeper GND Vdd #219 GND nmos W=0.0975U L=1.495U
M271_ GND R_af_53_6 #fb223# GND nmos W=0.0975U L=0.13U
M272_keeper GND Vdd #222 GND nmos W=0.0975U L=1.495U
M273_ GND R_at_54_6 #fb226# GND nmos W=0.0975U L=0.13U
M274_keeper GND Vdd #225 GND nmos W=0.0975U L=1.495U
M275_ GND R_af_54_6 #fb229# GND nmos W=0.0975U L=0.13U
M276_keeper GND Vdd #228 GND nmos W=0.0975U L=1.495U
M277_ GND R_at_55_6 #fb232# GND nmos W=0.0975U L=0.13U
M278_keeper GND Vdd #231 GND nmos W=0.0975U L=1.495U
M279_ GND R_af_55_6 #fb235# GND nmos W=0.0975U L=0.13U
M280_keeper GND Vdd #234 GND nmos W=0.0975U L=1.495U
M281_ GND R_at_56_6 #fb238# GND nmos W=0.0975U L=0.13U
M282_keeper GND Vdd #237 GND nmos W=0.0975U L=1.495U
M283_ GND R_af_56_6 #fb241# GND nmos W=0.0975U L=0.13U
M284_keeper GND Vdd #240 GND nmos W=0.0975U L=1.495U
M285_ GND R_at_57_6 #fb244# GND nmos W=0.0975U L=0.13U
M286_keeper GND Vdd #243 GND nmos W=0.0975U L=1.495U
M287_ GND R_af_57_6 #fb247# GND nmos W=0.0975U L=0.13U
M288_keeper GND Vdd #246 GND nmos W=0.0975U L=1.495U
M289_keeper GND Vdd #249 GND nmos W=0.0975U L=1.495U
M290_ #3 x_50_6 __c_50_6 GND nmos W=0.0975U L=0.065U
M291_ #6 __x_50_6 __c_50_6 GND nmos W=0.0975U L=0.065U
M292_ #9 W_af_50_6 __c_50_6 Vdd pmos W=0.1625U L=0.065U
M293_keeper #134 #fb133# __c_50_6 Vdd pmos W=0.0975U L=0.065U
M294_keeper #135 #fb133# __c_50_6 GND nmos W=0.0975U L=0.065U
M295_keeper #137 #fb136# x_50_6 Vdd pmos W=0.0975U L=0.065U
M296_keeper #138 #fb136# x_50_6 GND nmos W=0.0975U L=0.065U
M297_ #11 x_51_6 __c_51_6 GND nmos W=0.0975U L=0.065U
M298_ #14 __x_51_6 __c_51_6 GND nmos W=0.0975U L=0.065U
M299_ #17 W_af_51_6 __c_51_6 Vdd pmos W=0.1625U L=0.065U
M300_keeper #140 #fb139# __c_51_6 Vdd pmos W=0.0975U L=0.065U
M301_keeper #141 #fb139# __c_51_6 GND nmos W=0.0975U L=0.065U
M302_keeper #143 #fb142# x_51_6 Vdd pmos W=0.0975U L=0.065U
M303_keeper #144 #fb142# x_51_6 GND nmos W=0.0975U L=0.065U
M304_ #19 x_52_6 __c_52_6 GND nmos W=0.0975U L=0.065U
M305_ #22 __x_52_6 __c_52_6 GND nmos W=0.0975U L=0.065U
M306_ #25 W_af_52_6 __c_52_6 Vdd pmos W=0.1625U L=0.065U
M307_keeper #146 #fb145# __c_52_6 Vdd pmos W=0.0975U L=0.065U
M308_keeper #147 #fb145# __c_52_6 GND nmos W=0.0975U L=0.065U
M309_keeper #149 #fb148# x_52_6 Vdd pmos W=0.0975U L=0.065U
M310_keeper #150 #fb148# x_52_6 GND nmos W=0.0975U L=0.065U
M311_ #27 x_53_6 __c_53_6 GND nmos W=0.0975U L=0.065U
M312_ #30 __x_53_6 __c_53_6 GND nmos W=0.0975U L=0.065U
M313_ #33 W_af_53_6 __c_53_6 Vdd pmos W=0.1625U L=0.065U
M314_keeper #152 #fb151# __c_53_6 Vdd pmos W=0.0975U L=0.065U
M315_keeper #153 #fb151# __c_53_6 GND nmos W=0.0975U L=0.065U
M316_keeper #155 #fb154# x_53_6 Vdd pmos W=0.0975U L=0.065U
M317_keeper #156 #fb154# x_53_6 GND nmos W=0.0975U L=0.065U
M318_ #35 x_54_6 __c_54_6 GND nmos W=0.0975U L=0.065U
M319_ #38 __x_54_6 __c_54_6 GND nmos W=0.0975U L=0.065U
M320_ #41 W_af_54_6 __c_54_6 Vdd pmos W=0.1625U L=0.065U
M321_keeper #158 #fb157# __c_54_6 Vdd pmos W=0.0975U L=0.065U
M322_keeper #159 #fb157# __c_54_6 GND nmos W=0.0975U L=0.065U
M323_keeper #161 #fb160# x_54_6 Vdd pmos W=0.0975U L=0.065U
M324_keeper #162 #fb160# x_54_6 GND nmos W=0.0975U L=0.065U
M325_ #43 x_55_6 __c_55_6 GND nmos W=0.0975U L=0.065U
M326_ #46 __x_55_6 __c_55_6 GND nmos W=0.0975U L=0.065U
M327_ #49 W_af_55_6 __c_55_6 Vdd pmos W=0.1625U L=0.065U
M328_keeper #164 #fb163# __c_55_6 Vdd pmos W=0.0975U L=0.065U
M329_keeper #165 #fb163# __c_55_6 GND nmos W=0.0975U L=0.065U
M330_keeper #167 #fb166# x_55_6 Vdd pmos W=0.0975U L=0.065U
M331_keeper #168 #fb166# x_55_6 GND nmos W=0.0975U L=0.065U
M332_ #51 x_56_6 __c_56_6 GND nmos W=0.0975U L=0.065U
M333_ #54 __x_56_6 __c_56_6 GND nmos W=0.0975U L=0.065U
M334_ #57 W_af_56_6 __c_56_6 Vdd pmos W=0.1625U L=0.065U
M335_keeper #170 #fb169# __c_56_6 Vdd pmos W=0.0975U L=0.065U
M336_keeper #171 #fb169# __c_56_6 GND nmos W=0.0975U L=0.065U
M337_keeper #173 #fb172# x_56_6 Vdd pmos W=0.0975U L=0.065U
M338_keeper #174 #fb172# x_56_6 GND nmos W=0.0975U L=0.065U
M339_ #59 x_57_6 __c_57_6 GND nmos W=0.0975U L=0.065U
M340_ #62 __x_57_6 __c_57_6 GND nmos W=0.0975U L=0.065U
M341_ #65 W_af_57_6 __c_57_6 Vdd pmos W=0.1625U L=0.065U
M342_keeper #176 #fb175# __c_57_6 Vdd pmos W=0.0975U L=0.065U
M343_keeper #177 #fb175# __c_57_6 GND nmos W=0.0975U L=0.065U
M344_keeper #179 #fb178# x_57_6 Vdd pmos W=0.0975U L=0.065U
M345_keeper #180 #fb178# x_57_6 GND nmos W=0.0975U L=0.065U
M346_ #67 __c_50_6 d_50_6 Vdd pmos W=0.1625U L=0.065U
M347_ #68 __c_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M348_keeper #182 #fb181# d_50_6 Vdd pmos W=0.0975U L=0.065U
M349_keeper #183 #fb181# d_50_6 GND nmos W=0.0975U L=0.065U
M350_ #70 __c_52_6 d_51_6 Vdd pmos W=0.1625U L=0.065U
M351_ #71 __c_52_6 d_51_6 GND nmos W=0.0975U L=0.065U
M352_keeper #185 #fb184# d_51_6 Vdd pmos W=0.0975U L=0.065U
M353_keeper #186 #fb184# d_51_6 GND nmos W=0.0975U L=0.065U
M354_ #73 __c_54_6 d_52_6 Vdd pmos W=0.1625U L=0.065U
M355_ #74 __c_54_6 d_52_6 GND nmos W=0.0975U L=0.065U
M356_keeper #188 #fb187# d_52_6 Vdd pmos W=0.0975U L=0.065U
M357_keeper #189 #fb187# d_52_6 GND nmos W=0.0975U L=0.065U
M358_ #76 __c_56_6 d_53_6 Vdd pmos W=0.1625U L=0.065U
M359_ #77 __c_56_6 d_53_6 GND nmos W=0.0975U L=0.065U
M360_keeper #191 #fb190# d_53_6 Vdd pmos W=0.0975U L=0.065U
M361_keeper #192 #fb190# d_53_6 GND nmos W=0.0975U L=0.065U
M362_ #79 d_50_6 __e_50_6 GND nmos W=0.0975U L=0.065U
M363_ #80 d_50_6 __e_50_6 Vdd pmos W=0.1625U L=0.065U
M364_keeper #194 #fb193# __e_50_6 Vdd pmos W=0.0975U L=0.065U
M365_keeper #195 #fb193# __e_50_6 GND nmos W=0.0975U L=0.065U
M366_ #82 d_52_6 __e_51_6 GND nmos W=0.0975U L=0.065U
M367_ #83 d_52_6 __e_51_6 Vdd pmos W=0.1625U L=0.065U
M368_keeper #197 #fb196# __e_51_6 Vdd pmos W=0.0975U L=0.065U
M369_keeper #198 #fb196# __e_51_6 GND nmos W=0.0975U L=0.065U
M370_ #87 e_50_6 __p__a GND nmos W=0.0975U L=0.065U
M371_ #88 e_50_6 __p__a Vdd pmos W=0.1625U L=0.065U
M372_keeper #200 #fb199# __p__a Vdd pmos W=0.0975U L=0.065U
M373_keeper #201 #fb199# __p__a GND nmos W=0.0975U L=0.065U
M374_ #92 __x_50_6 R_at_50_6 Vdd pmos W=0.1625U L=0.065U
M375_keeper #203 #fb202# R_at_50_6 Vdd pmos W=0.0975U L=0.065U
M376_keeper #204 #fb202# R_at_50_6 GND nmos W=0.0975U L=0.065U
M377_ #95 x_50_6 R_af_50_6 Vdd pmos W=0.1625U L=0.065U
M378_keeper #206 #fb205# R_af_50_6 Vdd pmos W=0.0975U L=0.065U
M379_keeper #207 #fb205# R_af_50_6 GND nmos W=0.0975U L=0.065U
M380_ #98 __x_51_6 R_at_51_6 Vdd pmos W=0.1625U L=0.065U
M381_keeper #209 #fb208# R_at_51_6 Vdd pmos W=0.0975U L=0.065U
M382_keeper #210 #fb208# R_at_51_6 GND nmos W=0.0975U L=0.065U
M383_ #100 x_51_6 R_af_51_6 Vdd pmos W=0.1625U L=0.065U
M384_keeper #212 #fb211# R_af_51_6 Vdd pmos W=0.0975U L=0.065U
M385_keeper #213 #fb211# R_af_51_6 GND nmos W=0.0975U L=0.065U
M386_ #103 __x_52_6 R_at_52_6 Vdd pmos W=0.1625U L=0.065U
M387_keeper #215 #fb214# R_at_52_6 Vdd pmos W=0.0975U L=0.065U
M388_keeper #216 #fb214# R_at_52_6 GND nmos W=0.0975U L=0.065U
M389_ #105 x_52_6 R_af_52_6 Vdd pmos W=0.1625U L=0.065U
M390_keeper #218 #fb217# R_af_52_6 Vdd pmos W=0.0975U L=0.065U
M391_keeper #219 #fb217# R_af_52_6 GND nmos W=0.0975U L=0.065U
M392_ #108 __x_53_6 R_at_53_6 Vdd pmos W=0.1625U L=0.065U
M393_keeper #221 #fb220# R_at_53_6 Vdd pmos W=0.0975U L=0.065U
M394_keeper #222 #fb220# R_at_53_6 GND nmos W=0.0975U L=0.065U
M395_ #110 x_53_6 R_af_53_6 Vdd pmos W=0.1625U L=0.065U
M396_keeper #224 #fb223# R_af_53_6 Vdd pmos W=0.0975U L=0.065U
M397_keeper #225 #fb223# R_af_53_6 GND nmos W=0.0975U L=0.065U
M398_ #113 __x_54_6 R_at_54_6 Vdd pmos W=0.1625U L=0.065U
M399_keeper #227 #fb226# R_at_54_6 Vdd pmos W=0.0975U L=0.065U
M400_keeper #228 #fb226# R_at_54_6 GND nmos W=0.0975U L=0.065U
M401_ #115 x_54_6 R_af_54_6 Vdd pmos W=0.1625U L=0.065U
M402_keeper #230 #fb229# R_af_54_6 Vdd pmos W=0.0975U L=0.065U
M403_keeper #231 #fb229# R_af_54_6 GND nmos W=0.0975U L=0.065U
M404_ #118 __x_55_6 R_at_55_6 Vdd pmos W=0.1625U L=0.065U
M405_keeper #233 #fb232# R_at_55_6 Vdd pmos W=0.0975U L=0.065U
M406_keeper #234 #fb232# R_at_55_6 GND nmos W=0.0975U L=0.065U
M407_ #120 x_55_6 R_af_55_6 Vdd pmos W=0.1625U L=0.065U
M408_keeper #236 #fb235# R_af_55_6 Vdd pmos W=0.0975U L=0.065U
M409_keeper #237 #fb235# R_af_55_6 GND nmos W=0.0975U L=0.065U
M410_ #123 __x_56_6 R_at_56_6 Vdd pmos W=0.1625U L=0.065U
M411_keeper #239 #fb238# R_at_56_6 Vdd pmos W=0.0975U L=0.065U
M412_keeper #240 #fb238# R_at_56_6 GND nmos W=0.0975U L=0.065U
M413_ #125 x_56_6 R_af_56_6 Vdd pmos W=0.1625U L=0.065U
M414_keeper #242 #fb241# R_af_56_6 Vdd pmos W=0.0975U L=0.065U
M415_keeper #243 #fb241# R_af_56_6 GND nmos W=0.0975U L=0.065U
M416_ #128 __x_57_6 R_at_57_6 Vdd pmos W=0.1625U L=0.065U
M417_keeper #245 #fb244# R_at_57_6 Vdd pmos W=0.0975U L=0.065U
M418_keeper #246 #fb244# R_at_57_6 GND nmos W=0.0975U L=0.065U
M419_ #130 x_57_6 R_af_57_6 Vdd pmos W=0.1625U L=0.065U
M420_keeper #248 #fb247# R_af_57_6 Vdd pmos W=0.0975U L=0.065U
M421_keeper #249 #fb247# R_af_57_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: Reg8<> -----
*
*---- act defproc: FullAdder<> -----
* raw ports:  a.t a.f b.t b.f c.t c.f d.t d.f s.t s.f
*
.subckt FullAdder a_at a_af b_at b_af c_at c_af d_at d_af s_at s_af
*.PININFO a_at:I a_af:I b_at:I b_af:I c_at:I c_af:I d_at:O d_af:O s_at:O s_af:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __dt (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __df (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __st (state-holding): pup_reff=0.8; pdn_reff=2
* __sf (state-holding): pup_reff=0.8; pdn_reff=2
* d_at (combinational)
* d_af (combinational)
* s_at (combinational)
* s_af (combinational)
*
* --- end node flags ---
*
M0_ Vdd a_at #10 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd a_at #19 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd c_at #27 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd c_at #35 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __dt d_at Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __df d_af Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __st s_at Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __sf s_af Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __dt #fb40# Vdd pmos W=0.1625U L=0.13U
M9_ Vdd __df #fb43# Vdd pmos W=0.1625U L=0.13U
M10_keeper Vdd GND #41 Vdd pmos W=0.0975U L=0.585U
M11_ Vdd __st #fb46# Vdd pmos W=0.1625U L=0.13U
M12_keeper Vdd GND #44 Vdd pmos W=0.0975U L=0.585U
M13_ Vdd __sf #fb49# Vdd pmos W=0.1625U L=0.13U
M14_keeper Vdd GND #47 Vdd pmos W=0.0975U L=0.91U
M15_keeper Vdd GND #50 Vdd pmos W=0.0975U L=0.91U
M16_ GND a_at #3 GND nmos W=0.0975U L=0.065U
M17_ GND a_at #6 GND nmos W=0.0975U L=0.065U
M18_ GND b_at #6 GND nmos W=0.0975U L=0.065U
M19_ GND a_af #14 GND nmos W=0.0975U L=0.065U
M20_ GND a_af #15 GND nmos W=0.0975U L=0.065U
M21_ GND b_af #15 GND nmos W=0.0975U L=0.065U
M22_ GND c_at #21 GND nmos W=0.0975U L=0.065U
M23_ GND c_af #24 GND nmos W=0.0975U L=0.065U
M24_ GND c_af #29 GND nmos W=0.0975U L=0.065U
M25_ GND c_at #32 GND nmos W=0.0975U L=0.065U
M26_ GND __dt d_at GND nmos W=0.0975U L=0.065U
M27_ GND __df d_af GND nmos W=0.0975U L=0.065U
M28_ GND __st s_at GND nmos W=0.0975U L=0.065U
M29_ GND __sf s_af GND nmos W=0.0975U L=0.065U
M30_ GND __dt #fb40# GND nmos W=0.0975U L=0.13U
M31_ GND __df #fb43# GND nmos W=0.0975U L=0.13U
M32_keeper GND Vdd #42 GND nmos W=0.0975U L=3.055U
M33_ GND __st #fb46# GND nmos W=0.0975U L=0.13U
M34_keeper GND Vdd #45 GND nmos W=0.0975U L=3.055U
M35_ GND __sf #fb49# GND nmos W=0.0975U L=0.13U
M36_keeper GND Vdd #48 GND nmos W=0.0975U L=1.495U
M37_keeper GND Vdd #51 GND nmos W=0.0975U L=1.495U
M38_ #3 b_at __dt GND nmos W=0.0975U L=0.065U
M39_ #6 c_at __dt GND nmos W=0.0975U L=0.065U
M40_ #8 b_af __dt Vdd pmos W=0.1625U L=0.065U
M41_keeper #41 #fb40# __dt Vdd pmos W=0.0975U L=0.065U
M42_keeper #42 #fb40# __dt GND nmos W=0.0975U L=0.065U
M43_ #9 b_at #8 Vdd pmos W=0.1625U L=0.065U
M44_ #10 a_af #9 Vdd pmos W=0.1625U L=0.065U
M45_ #14 b_af __df GND nmos W=0.0975U L=0.065U
M46_ #15 c_af __df GND nmos W=0.0975U L=0.065U
M47_ #17 b_af __df Vdd pmos W=0.1625U L=0.065U
M48_keeper #44 #fb43# __df Vdd pmos W=0.0975U L=0.065U
M49_keeper #45 #fb43# __df GND nmos W=0.0975U L=0.065U
M50_ #18 b_at #17 Vdd pmos W=0.1625U L=0.065U
M51_ #19 a_af #18 Vdd pmos W=0.1625U L=0.065U
M52_ #22 b_at __st GND nmos W=0.0975U L=0.065U
M53_ #23 b_af __st GND nmos W=0.0975U L=0.065U
M54_ #25 b_af __st GND nmos W=0.0975U L=0.065U
M55_ #26 b_at __st GND nmos W=0.0975U L=0.065U
M56_ #27 c_af __st Vdd pmos W=0.1625U L=0.065U
M57_keeper #47 #fb46# __st Vdd pmos W=0.0975U L=0.065U
M58_keeper #48 #fb46# __st GND nmos W=0.0975U L=0.065U
M59_ #21 a_at #22 GND nmos W=0.0975U L=0.065U
M60_ #21 a_af #23 GND nmos W=0.0975U L=0.065U
M61_ #24 a_at #25 GND nmos W=0.0975U L=0.065U
M62_ #24 a_af #26 GND nmos W=0.0975U L=0.065U
M63_ #30 b_at __sf GND nmos W=0.0975U L=0.065U
M64_ #31 b_af __sf GND nmos W=0.0975U L=0.065U
M65_ #33 b_af __sf GND nmos W=0.0975U L=0.065U
M66_ #34 b_at __sf GND nmos W=0.0975U L=0.065U
M67_ #35 c_af __sf Vdd pmos W=0.1625U L=0.065U
M68_keeper #50 #fb49# __sf Vdd pmos W=0.0975U L=0.065U
M69_keeper #51 #fb49# __sf GND nmos W=0.0975U L=0.065U
M70_ #29 a_at #30 GND nmos W=0.0975U L=0.065U
M71_ #29 a_af #31 GND nmos W=0.0975U L=0.065U
M72_ #32 a_at #33 GND nmos W=0.0975U L=0.065U
M73_ #32 a_af #34 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: FullAdder<> -----
*
*---- act defproc: HalfAdder<> -----
* raw ports:  a.t a.f b.t b.f d.t d.f s.t s.f
*
.subckt HalfAdder a_at a_af b_at b_af d_at d_af s_at s_af
*.PININFO a_at:I a_af:I b_at:I b_af:I d_at:O d_af:O s_at:O s_af:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __dt (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __df (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __st (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __sf (state-holding): pup_reff=1.6; pdn_reff=1.33333
* d_at (combinational)
* d_af (combinational)
* s_at (combinational)
* s_af (combinational)
*
* --- end node flags ---
*
M0_ Vdd a_at #8 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd a_at #14 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd a_at #20 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd a_at #26 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __dt d_at Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __df d_af Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __st s_at Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __sf s_af Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __dt #fb31# Vdd pmos W=0.1625U L=0.13U
M9_ Vdd __df #fb34# Vdd pmos W=0.1625U L=0.13U
M10_keeper Vdd GND #32 Vdd pmos W=0.0975U L=0.585U
M11_ Vdd __st #fb37# Vdd pmos W=0.1625U L=0.13U
M12_keeper Vdd GND #35 Vdd pmos W=0.0975U L=0.26U
M13_ Vdd __sf #fb40# Vdd pmos W=0.1625U L=0.13U
M14_keeper Vdd GND #38 Vdd pmos W=0.0975U L=0.585U
M15_keeper Vdd GND #41 Vdd pmos W=0.0975U L=0.585U
M16_ GND a_at #3 GND nmos W=0.0975U L=0.065U
M17_ GND a_af __df GND nmos W=0.0975U L=0.065U
M18_ GND b_af __df GND nmos W=0.0975U L=0.065U
M19_ GND a_at #16 GND nmos W=0.0975U L=0.065U
M20_ GND a_af #17 GND nmos W=0.0975U L=0.065U
M21_ GND a_at #22 GND nmos W=0.0975U L=0.065U
M22_ GND a_af #23 GND nmos W=0.0975U L=0.065U
M23_ GND __dt d_at GND nmos W=0.0975U L=0.065U
M24_ GND __df d_af GND nmos W=0.0975U L=0.065U
M25_ GND __st s_at GND nmos W=0.0975U L=0.065U
M26_ GND __sf s_af GND nmos W=0.0975U L=0.065U
M27_ GND __dt #fb31# GND nmos W=0.0975U L=0.13U
M28_ GND __df #fb34# GND nmos W=0.0975U L=0.13U
M29_keeper GND Vdd #33 GND nmos W=0.0975U L=3.055U
M30_ GND __st #fb37# GND nmos W=0.0975U L=0.13U
M31_keeper GND Vdd #36 GND nmos W=0.0975U L=3.055U
M32_ GND __sf #fb40# GND nmos W=0.0975U L=0.13U
M33_keeper GND Vdd #39 GND nmos W=0.0975U L=3.055U
M34_keeper GND Vdd #42 GND nmos W=0.0975U L=3.055U
M35_ #3 b_at __dt GND nmos W=0.0975U L=0.065U
M36_ #6 b_af __dt Vdd pmos W=0.1625U L=0.065U
M37_keeper #32 #fb31# __dt Vdd pmos W=0.0975U L=0.065U
M38_keeper #33 #fb31# __dt GND nmos W=0.0975U L=0.065U
M39_ #7 b_at #6 Vdd pmos W=0.1625U L=0.065U
M40_ #8 a_af #7 Vdd pmos W=0.1625U L=0.065U
M41_ #12 b_af __df Vdd pmos W=0.1625U L=0.065U
M42_keeper #35 #fb34# __df Vdd pmos W=0.0975U L=0.065U
M43_keeper #36 #fb34# __df GND nmos W=0.0975U L=0.065U
M44_ #13 b_at #12 Vdd pmos W=0.1625U L=0.065U
M45_ #14 a_af #13 Vdd pmos W=0.1625U L=0.065U
M46_ #16 b_af __st GND nmos W=0.0975U L=0.065U
M47_ #17 b_at __st GND nmos W=0.0975U L=0.065U
M48_ #18 b_af __st Vdd pmos W=0.1625U L=0.065U
M49_keeper #38 #fb37# __st Vdd pmos W=0.0975U L=0.065U
M50_keeper #39 #fb37# __st GND nmos W=0.0975U L=0.065U
M51_ #19 b_at #18 Vdd pmos W=0.1625U L=0.065U
M52_ #20 a_af #19 Vdd pmos W=0.1625U L=0.065U
M53_ #22 b_at __sf GND nmos W=0.0975U L=0.065U
M54_ #23 b_af __sf GND nmos W=0.0975U L=0.065U
M55_ #24 b_af __sf Vdd pmos W=0.1625U L=0.065U
M56_keeper #41 #fb40# __sf Vdd pmos W=0.0975U L=0.065U
M57_keeper #42 #fb40# __sf GND nmos W=0.0975U L=0.065U
M58_ #25 b_at #24 Vdd pmos W=0.1625U L=0.065U
M59_ #26 a_af #25 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: HalfAdder<> -----
*
*---- act defproc: CounterInc<> -----
* raw ports:  reset Sa.t[0] Sa.t[1] Sa.t[2] Sa.t[3] Sa.f[0] Sa.f[1] Sa.f[2] Sa.f[3] Sb.t[0] Sb.t[1] Sb.t[2] Sb.t[3] Sb.t[4] Sb.t[5] Sb.t[6] Sb.t[7] Sb.f[0] Sb.f[1] Sb.f[2] Sb.f[3] Sb.f[4] Sb.f[5] Sb.f[6] Sb.f[7] So.t[0] So.t[1] So.t[2] So.t[3] So.t[4] So.t[5] So.t[6] So.t[7] So.f[0] So.f[1] So.f[2] So.f[3] So.f[4] So.f[5] So.f[6] So.f[7]
*
.subckt CounterInc reset Sa_at_50_6 Sa_at_51_6 Sa_at_52_6 Sa_at_53_6 Sa_af_50_6 Sa_af_51_6 Sa_af_52_6
+ Sa_af_53_6 Sb_at_50_6 Sb_at_51_6 Sb_at_52_6 Sb_at_53_6 Sb_at_54_6 Sb_at_55_6 Sb_at_56_6 Sb_at_57_6
+ Sb_af_50_6 Sb_af_51_6 Sb_af_52_6 Sb_af_53_6 Sb_af_54_6 Sb_af_55_6 Sb_af_56_6 Sb_af_57_6 So_at_50_6
+ So_at_51_6 So_at_52_6 So_at_53_6 So_at_54_6 So_at_55_6 So_at_56_6 So_at_57_6 So_af_50_6 So_af_51_6
+ So_af_52_6 So_af_53_6 So_af_54_6 So_af_55_6 So_af_56_6 So_af_57_6
*.PININFO reset:I Sa_at_50_6:I Sa_at_51_6:I Sa_at_52_6:I Sa_at_53_6:I Sa_af_50_6:I Sa_af_51_6:I Sa_af_52_6:I Sa_af_53_6:I Sb_at_50_6:I Sb_at_51_6:I Sb_at_52_6:I Sb_at_53_6:I Sb_at_54_6:I Sb_at_55_6:I Sb_at_56_6:I Sb_at_57_6:I Sb_af_50_6:I Sb_af_51_6:I Sb_af_52_6:I Sb_af_53_6:I Sb_af_54_6:I Sb_af_55_6:I Sb_af_56_6:I Sb_af_57_6:I So_at_50_6:O So_at_51_6:O So_at_52_6:O So_at_53_6:O So_at_54_6:O So_at_55_6:O So_at_56_6:O So_at_57_6:O So_af_50_6:O So_af_51_6:O So_af_52_6:O So_af_53_6:O So_af_54_6:O So_af_55_6:O So_af_56_6:O So_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __jt_52_6 (combinational)
* acc2_aa_at (combinational)
* __jf_52_6 (combinational)
* acc2_aa_af (combinational)
* __jt_51_6 (combinational)
* acc1_aa_at (combinational)
* __jf_51_6 (combinational)
* acc1_aa_af (combinational)
* __jt_50_6 (combinational)
* acc0_aa_at (combinational)
* __jf_50_6 (combinational)
* acc0_aa_af (combinational)
* acc0_ac_at (combinational)
* acc0_ac_af (state-holding): pup_reff=1.6; pdn_reff=4
* acc3_aa_at (combinational)
* acc3_aa_af (state-holding): pup_reff=1.6; pdn_reff=4
* acc4_aa_at (combinational)
* acc4_aa_af (state-holding): pup_reff=1.6; pdn_reff=4
* acc5_aa_at (combinational)
* acc5_aa_af (state-holding): pup_reff=1.6; pdn_reff=4
* acc6_aa_at (combinational)
* acc6_aa_af (state-holding): pup_reff=1.6; pdn_reff=4
* acc7_aa_at (combinational)
* acc7_aa_af (state-holding): pup_reff=1.6; pdn_reff=4
*
* --- end node flags ---
*
M0_ Vdd acc2_aa_at __jt_52_6 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd acc2_aa_af __jf_52_6 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd acc1_aa_at __jt_51_6 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd acc1_aa_af __jf_51_6 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd acc0_aa_at __jt_50_6 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd acc0_aa_af __jf_50_6 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __jt_52_6 #18 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __jf_52_6 #18 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __jt_52_6 #29 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __jf_52_6 #29 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __jt_52_6 #39 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __jf_52_6 #39 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd __jt_52_6 #49 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd __jf_52_6 #49 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __jt_52_6 #59 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __jf_52_6 #59 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd __jt_52_6 #69 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd __jf_52_6 #69 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd acc0_ac_af #fb75# Vdd pmos W=0.1625U L=0.13U
M19_ Vdd acc3_aa_af #fb78# Vdd pmos W=0.1625U L=0.13U
M20_keeper Vdd GND #76 Vdd pmos W=0.0975U L=1.885U
M21_ Vdd acc4_aa_af #fb81# Vdd pmos W=0.1625U L=0.13U
M22_keeper Vdd GND #79 Vdd pmos W=0.0975U L=1.885U
M23_ Vdd acc5_aa_af #fb84# Vdd pmos W=0.1625U L=0.13U
M24_keeper Vdd GND #82 Vdd pmos W=0.0975U L=1.885U
M25_ Vdd acc6_aa_af #fb87# Vdd pmos W=0.1625U L=0.13U
M26_keeper Vdd GND #85 Vdd pmos W=0.0975U L=1.885U
M27_ Vdd acc7_aa_af #fb90# Vdd pmos W=0.1625U L=0.13U
M28_keeper Vdd GND #88 Vdd pmos W=0.0975U L=1.885U
M29_keeper Vdd GND #91 Vdd pmos W=0.0975U L=1.885U
M30_ GND acc2_aa_at __jt_52_6 GND nmos W=0.0975U L=0.065U
M31_ GND acc2_aa_af __jf_52_6 GND nmos W=0.0975U L=0.065U
M32_ GND acc1_aa_at __jt_51_6 GND nmos W=0.0975U L=0.065U
M33_ GND acc1_aa_af __jf_51_6 GND nmos W=0.0975U L=0.065U
M34_ GND acc0_aa_at __jt_50_6 GND nmos W=0.0975U L=0.065U
M35_ GND acc0_aa_af __jf_50_6 GND nmos W=0.0975U L=0.065U
M36_ GND Vdd acc0_ac_at GND nmos W=0.0975U L=0.065U
M37_ GND __jt_52_6 #24 GND nmos W=0.0975U L=0.065U
M38_ GND reset acc0_ac_af GND nmos W=0.0975U L=0.065U
M39_ GND Vdd acc3_aa_at GND nmos W=0.0975U L=0.065U
M40_ GND __jt_52_6 #34 GND nmos W=0.0975U L=0.065U
M41_ GND reset acc3_aa_af GND nmos W=0.0975U L=0.065U
M42_ GND Vdd acc4_aa_at GND nmos W=0.0975U L=0.065U
M43_ GND __jt_52_6 #44 GND nmos W=0.0975U L=0.065U
M44_ GND reset acc4_aa_af GND nmos W=0.0975U L=0.065U
M45_ GND Vdd acc5_aa_at GND nmos W=0.0975U L=0.065U
M46_ GND __jt_52_6 #54 GND nmos W=0.0975U L=0.065U
M47_ GND reset acc5_aa_af GND nmos W=0.0975U L=0.065U
M48_ GND Vdd acc6_aa_at GND nmos W=0.0975U L=0.065U
M49_ GND __jt_52_6 #64 GND nmos W=0.0975U L=0.065U
M50_ GND reset acc6_aa_af GND nmos W=0.0975U L=0.065U
M51_ GND Vdd acc7_aa_at GND nmos W=0.0975U L=0.065U
M52_ GND __jt_52_6 #74 GND nmos W=0.0975U L=0.065U
M53_ GND reset acc7_aa_af GND nmos W=0.0975U L=0.065U
M54_ GND acc0_ac_af #fb75# GND nmos W=0.0975U L=0.13U
M55_ GND acc3_aa_af #fb78# GND nmos W=0.0975U L=0.13U
M56_keeper GND Vdd #77 GND nmos W=0.0975U L=3.055U
M57_ GND acc4_aa_af #fb81# GND nmos W=0.0975U L=0.13U
M58_keeper GND Vdd #80 GND nmos W=0.0975U L=3.055U
M59_ GND acc5_aa_af #fb84# GND nmos W=0.0975U L=0.13U
M60_keeper GND Vdd #83 GND nmos W=0.0975U L=3.055U
M61_ GND acc6_aa_af #fb87# GND nmos W=0.0975U L=0.13U
M62_keeper GND Vdd #86 GND nmos W=0.0975U L=3.055U
M63_ GND acc7_aa_af #fb90# GND nmos W=0.0975U L=0.13U
M64_keeper GND Vdd #89 GND nmos W=0.0975U L=3.055U
M65_keeper GND Vdd #92 GND nmos W=0.0975U L=3.055U
M66_ #16 reset acc0_ac_af Vdd pmos W=0.1625U L=0.065U
M67_ #20 __jf_50_6 acc0_ac_af GND nmos W=0.0975U L=0.065U
M68_keeper #76 #fb75# acc0_ac_af Vdd pmos W=0.0975U L=0.065U
M69_keeper #77 #fb75# acc0_ac_af GND nmos W=0.0975U L=0.065U
M70_ #17 __jt_50_6 #16 Vdd pmos W=0.1625U L=0.065U
M71_ #17 __jf_50_6 #16 Vdd pmos W=0.1625U L=0.065U
M72_ #18 __jt_51_6 #17 Vdd pmos W=0.1625U L=0.065U
M73_ #18 __jf_51_6 #17 Vdd pmos W=0.1625U L=0.065U
M74_ #21 __jt_50_6 #20 GND nmos W=0.0975U L=0.065U
M75_ #22 __jf_51_6 #21 GND nmos W=0.0975U L=0.065U
M76_ #23 __jt_51_6 #22 GND nmos W=0.0975U L=0.065U
M77_ #24 __jf_52_6 #23 GND nmos W=0.0975U L=0.065U
M78_ #27 reset acc3_aa_af Vdd pmos W=0.1625U L=0.065U
M79_ #30 __jf_50_6 acc3_aa_af GND nmos W=0.0975U L=0.065U
M80_keeper #79 #fb78# acc3_aa_af Vdd pmos W=0.0975U L=0.065U
M81_keeper #80 #fb78# acc3_aa_af GND nmos W=0.0975U L=0.065U
M82_ #28 __jt_50_6 #27 Vdd pmos W=0.1625U L=0.065U
M83_ #28 __jf_50_6 #27 Vdd pmos W=0.1625U L=0.065U
M84_ #29 __jt_51_6 #28 Vdd pmos W=0.1625U L=0.065U
M85_ #29 __jf_51_6 #28 Vdd pmos W=0.1625U L=0.065U
M86_ #31 __jt_50_6 #30 GND nmos W=0.0975U L=0.065U
M87_ #32 __jf_51_6 #31 GND nmos W=0.0975U L=0.065U
M88_ #33 __jt_51_6 #32 GND nmos W=0.0975U L=0.065U
M89_ #34 __jf_52_6 #33 GND nmos W=0.0975U L=0.065U
M90_ #37 reset acc4_aa_af Vdd pmos W=0.1625U L=0.065U
M91_ #40 __jf_50_6 acc4_aa_af GND nmos W=0.0975U L=0.065U
M92_keeper #82 #fb81# acc4_aa_af Vdd pmos W=0.0975U L=0.065U
M93_keeper #83 #fb81# acc4_aa_af GND nmos W=0.0975U L=0.065U
M94_ #38 __jt_50_6 #37 Vdd pmos W=0.1625U L=0.065U
M95_ #38 __jf_50_6 #37 Vdd pmos W=0.1625U L=0.065U
M96_ #39 __jt_51_6 #38 Vdd pmos W=0.1625U L=0.065U
M97_ #39 __jf_51_6 #38 Vdd pmos W=0.1625U L=0.065U
M98_ #41 __jt_50_6 #40 GND nmos W=0.0975U L=0.065U
M99_ #42 __jf_51_6 #41 GND nmos W=0.0975U L=0.065U
M100_ #43 __jt_51_6 #42 GND nmos W=0.0975U L=0.065U
M101_ #44 __jf_52_6 #43 GND nmos W=0.0975U L=0.065U
M102_ #47 reset acc5_aa_af Vdd pmos W=0.1625U L=0.065U
M103_ #50 __jf_50_6 acc5_aa_af GND nmos W=0.0975U L=0.065U
M104_keeper #85 #fb84# acc5_aa_af Vdd pmos W=0.0975U L=0.065U
M105_keeper #86 #fb84# acc5_aa_af GND nmos W=0.0975U L=0.065U
M106_ #48 __jt_50_6 #47 Vdd pmos W=0.1625U L=0.065U
M107_ #48 __jf_50_6 #47 Vdd pmos W=0.1625U L=0.065U
M108_ #49 __jt_51_6 #48 Vdd pmos W=0.1625U L=0.065U
M109_ #49 __jf_51_6 #48 Vdd pmos W=0.1625U L=0.065U
M110_ #51 __jt_50_6 #50 GND nmos W=0.0975U L=0.065U
M111_ #52 __jf_51_6 #51 GND nmos W=0.0975U L=0.065U
M112_ #53 __jt_51_6 #52 GND nmos W=0.0975U L=0.065U
M113_ #54 __jf_52_6 #53 GND nmos W=0.0975U L=0.065U
M114_ #57 reset acc6_aa_af Vdd pmos W=0.1625U L=0.065U
M115_ #60 __jf_50_6 acc6_aa_af GND nmos W=0.0975U L=0.065U
M116_keeper #88 #fb87# acc6_aa_af Vdd pmos W=0.0975U L=0.065U
M117_keeper #89 #fb87# acc6_aa_af GND nmos W=0.0975U L=0.065U
M118_ #58 __jt_50_6 #57 Vdd pmos W=0.1625U L=0.065U
M119_ #58 __jf_50_6 #57 Vdd pmos W=0.1625U L=0.065U
M120_ #59 __jt_51_6 #58 Vdd pmos W=0.1625U L=0.065U
M121_ #59 __jf_51_6 #58 Vdd pmos W=0.1625U L=0.065U
M122_ #61 __jt_50_6 #60 GND nmos W=0.0975U L=0.065U
M123_ #62 __jf_51_6 #61 GND nmos W=0.0975U L=0.065U
M124_ #63 __jt_51_6 #62 GND nmos W=0.0975U L=0.065U
M125_ #64 __jf_52_6 #63 GND nmos W=0.0975U L=0.065U
M126_ #67 reset acc7_aa_af Vdd pmos W=0.1625U L=0.065U
M127_ #70 __jf_50_6 acc7_aa_af GND nmos W=0.0975U L=0.065U
M128_keeper #91 #fb90# acc7_aa_af Vdd pmos W=0.0975U L=0.065U
M129_keeper #92 #fb90# acc7_aa_af GND nmos W=0.0975U L=0.065U
M130_ #68 __jt_50_6 #67 Vdd pmos W=0.1625U L=0.065U
M131_ #68 __jf_50_6 #67 Vdd pmos W=0.1625U L=0.065U
M132_ #69 __jt_51_6 #68 Vdd pmos W=0.1625U L=0.065U
M133_ #69 __jf_51_6 #68 Vdd pmos W=0.1625U L=0.065U
M134_ #71 __jt_50_6 #70 GND nmos W=0.0975U L=0.065U
M135_ #72 __jf_51_6 #71 GND nmos W=0.0975U L=0.065U
M136_ #73 __jt_51_6 #72 GND nmos W=0.0975U L=0.065U
M137_ #74 __jf_52_6 #73 GND nmos W=0.0975U L=0.065U
xacc1 acc1_aa_at acc1_aa_af Sb_at_51_6 Sb_af_51_6 acc0_ad_at acc0_ad_af acc1_ad_at acc1_ad_af So_at_51_6
+ So_af_51_6 FullAdder
xacc7 acc7_aa_at acc7_aa_af Sb_at_57_6 Sb_af_57_6 acc6_ad_at acc6_ad_af acc7_ad_at acc7_ad_af So_at_57_6
+ So_af_57_6 FullAdder
xha23 Sa_at_52_6 Sa_af_52_6 Sa_at_53_6 Sa_af_53_6 ha23_ad_at ha23_ad_af ha23_as_at ha23_as_af HalfAdder
xha01 Sa_at_50_6 Sa_af_50_6 Sa_at_51_6 Sa_af_51_6 ha01_ad_at ha01_ad_af ha01_as_at ha01_as_af HalfAdder
xacc2 acc2_aa_at acc2_aa_af Sb_at_52_6 Sb_af_52_6 acc1_ad_at acc1_ad_af acc2_ad_at acc2_ad_af So_at_52_6
+ So_af_52_6 FullAdder
xacc3 acc3_aa_at acc3_aa_af Sb_at_53_6 Sb_af_53_6 acc2_ad_at acc2_ad_af acc3_ad_at acc3_ad_af So_at_53_6
+ So_af_53_6 FullAdder
xacc4 acc4_aa_at acc4_aa_af Sb_at_54_6 Sb_af_54_6 acc3_ad_at acc3_ad_af acc4_ad_at acc4_ad_af So_at_54_6
+ So_af_54_6 FullAdder
xacc6 acc6_aa_at acc6_aa_af Sb_at_56_6 Sb_af_56_6 acc5_ad_at acc5_ad_af acc6_ad_at acc6_ad_af So_at_56_6
+ So_af_56_6 FullAdder
xfa__high ha01_ad_at ha01_ad_af ha23_ad_at ha23_ad_af ha__sum_ad_at ha__sum_ad_af acc2_aa_at acc2_aa_af
+ acc1_aa_at acc1_aa_af FullAdder
xha__sum ha01_as_at ha01_as_af ha23_as_at ha23_as_af ha__sum_ad_at ha__sum_ad_af acc0_aa_at acc0_aa_af
+ HalfAdder
xacc5 acc5_aa_at acc5_aa_af Sb_at_55_6 Sb_af_55_6 acc4_ad_at acc4_ad_af acc5_ad_at acc5_ad_af So_at_55_6
+ So_af_55_6 FullAdder
xacc0 acc0_aa_at acc0_aa_af Sb_at_50_6 Sb_af_50_6 acc0_ac_at acc0_ac_af acc0_ad_at acc0_ad_af So_at_50_6
+ So_af_50_6 FullAdder
.ends
*---- end of process: CounterInc<> -----
*
*---- act defproc: CounterLogic<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Cnt.req Cnt.t[0] Cnt.t[1] Cnt.t[2] Cnt.t[3] Cnt.t[4] Cnt.t[5] Cnt.t[6] Cnt.t[7] Cnt.f[0] Cnt.f[1] Cnt.f[2] Cnt.f[3] Cnt.f[4] Cnt.f[5] Cnt.f[6] Cnt.f[7] P.t[0] P.t[1] P.t[2] P.t[3] P.t[4] P.t[5] P.t[6] P.t[7] P.f[0] P.f[1] P.f[2] P.f[3] P.f[4] P.f[5] P.f[6] P.f[7] P.a Q.req Q.t[0] Q.t[1] Q.t[2] Q.t[3] Q.t[4] Q.t[5] Q.t[6] Q.t[7] Q.f[0] Q.f[1] Q.f[2] Q.f[3] Q.f[4] Q.f[5] Q.f[6] Q.f[7] Sa.t[0] Sa.t[1] Sa.t[2] Sa.t[3] Sa.f[0] Sa.f[1] Sa.f[2] Sa.f[3] Sb.t[0] Sb.t[1] Sb.t[2] Sb.t[3] Sb.t[4] Sb.t[5] Sb.t[6] Sb.t[7] Sb.f[0] Sb.f[1] Sb.f[2] Sb.f[3] Sb.f[4] Sb.f[5] Sb.f[6] Sb.f[7] So.t[0] So.t[1] So.t[2] So.t[3] So.t[4] So.t[5] So.t[6] So.t[7] So.f[0] So.f[1] So.f[2] So.f[3] So.f[4] So.f[5] So.f[6] So.f[7]
*
.subckt CounterLogic reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ I_aa Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6
+ Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6
+ P_at_50_6 P_at_51_6 P_at_52_6 P_at_53_6 P_at_54_6 P_at_55_6 P_at_56_6 P_at_57_6 P_af_50_6 P_af_51_6
+ P_af_52_6 P_af_53_6 P_af_54_6 P_af_55_6 P_af_56_6 P_af_57_6 P_aa Q_areq Q_at_50_6 Q_at_51_6 Q_at_52_6
+ Q_at_53_6 Q_at_54_6 Q_at_55_6 Q_at_56_6 Q_at_57_6 Q_af_50_6 Q_af_51_6 Q_af_52_6 Q_af_53_6 Q_af_54_6
+ Q_af_55_6 Q_af_56_6 Q_af_57_6 Sa_at_50_6 Sa_at_51_6 Sa_at_52_6 Sa_at_53_6 Sa_af_50_6 Sa_af_51_6 Sa_af_52_6
+ Sa_af_53_6 Sb_at_50_6 Sb_at_51_6 Sb_at_52_6 Sb_at_53_6 Sb_at_54_6 Sb_at_55_6 Sb_at_56_6 Sb_at_57_6
+ Sb_af_50_6 Sb_af_51_6 Sb_af_52_6 Sb_af_53_6 Sb_af_54_6 Sb_af_55_6 Sb_af_56_6 Sb_af_57_6 So_at_50_6
+ So_at_51_6 So_at_52_6 So_at_53_6 So_at_54_6 So_at_55_6 So_at_56_6 So_at_57_6 So_af_50_6 So_af_51_6
+ So_af_52_6 So_af_53_6 So_af_54_6 So_af_55_6 So_af_56_6 So_af_57_6
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O Cnt_areq:I Cnt_at_50_6:O Cnt_at_51_6:O Cnt_at_52_6:O Cnt_at_53_6:O Cnt_at_54_6:O Cnt_at_55_6:O Cnt_at_56_6:O Cnt_at_57_6:O Cnt_af_50_6:O Cnt_af_51_6:O Cnt_af_52_6:O Cnt_af_53_6:O Cnt_af_54_6:O Cnt_af_55_6:O Cnt_af_56_6:O Cnt_af_57_6:O P_at_50_6:O P_at_51_6:O P_at_52_6:O P_at_53_6:O P_at_54_6:O P_at_55_6:O P_at_56_6:O P_at_57_6:O P_af_50_6:O P_af_51_6:O P_af_52_6:O P_af_53_6:O P_af_54_6:O P_af_55_6:O P_af_56_6:O P_af_57_6:O P_aa:I Q_areq:O Q_at_50_6:I Q_at_51_6:I Q_at_52_6:I Q_at_53_6:I Q_at_54_6:I Q_at_55_6:I Q_at_56_6:I Q_at_57_6:I Q_af_50_6:I Q_af_51_6:I Q_af_52_6:I Q_af_53_6:I Q_af_54_6:I Q_af_55_6:I Q_af_56_6:I Q_af_57_6:I Sa_at_50_6:O Sa_at_51_6:O Sa_at_52_6:O Sa_at_53_6:O Sa_af_50_6:O Sa_af_51_6:O Sa_af_52_6:O Sa_af_53_6:O Sb_at_50_6:O Sb_at_51_6:O Sb_at_52_6:O Sb_at_53_6:O Sb_at_54_6:O Sb_at_55_6:O Sb_at_56_6:O Sb_at_57_6:O Sb_af_50_6:O Sb_af_51_6:O Sb_af_52_6:O Sb_af_53_6:O Sb_af_54_6:O Sb_af_55_6:O Sb_af_56_6:O Sb_af_57_6:O So_at_50_6:I So_at_51_6:I So_at_52_6:I So_at_53_6:I So_at_54_6:I So_at_55_6:I So_at_56_6:I So_at_57_6:I So_af_50_6:I So_af_51_6:I So_af_52_6:I So_af_53_6:I So_af_54_6:I So_af_55_6:I So_af_56_6:I So_af_57_6:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __qr (state-holding): pup_reff=0.8; pdn_reff=2.66667
* v (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __ia (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __sbt_57_6 (combinational)
* __sbf_57_6 (combinational)
* k (combinational)
* __v (combinational)
* __h (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __r (combinational)
* w (state-holding): pup_reff=1.2; pdn_reff=0.666667
* __m (state-holding): pup_reff=0.8; pdn_reff=1.33333
* x_50_6 (combinational)
* __sbt_50_6 (combinational)
* __sbf_50_6 (combinational)
* x_51_6 (combinational)
* __sbt_51_6 (combinational)
* __sbf_51_6 (combinational)
* x_52_6 (combinational)
* __sbt_52_6 (combinational)
* __sbf_52_6 (combinational)
* x_53_6 (combinational)
* __sbt_53_6 (combinational)
* __sbf_53_6 (combinational)
* x_54_6 (combinational)
* __sbt_54_6 (combinational)
* __sbf_54_6 (combinational)
* x_55_6 (combinational)
* __sbt_55_6 (combinational)
* __sbf_55_6 (combinational)
* x_56_6 (combinational)
* __sbt_56_6 (combinational)
* __sbf_56_6 (combinational)
* x_57_6 (combinational)
* __y_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __y_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __y_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __y_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* z_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* z_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_50_6 (combinational)
* Cnt_at_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_51_6 (combinational)
* Cnt_at_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_52_6 (combinational)
* Cnt_at_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_53_6 (combinational)
* Cnt_at_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_54_6 (combinational)
* Cnt_at_54_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_54_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_55_6 (combinational)
* Cnt_at_55_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_55_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_56_6 (combinational)
* Cnt_at_56_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_56_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_57_6 (combinational)
* Cnt_at_57_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Cnt_af_57_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __e_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* g_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* g_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sa_at_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Sa_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __k (state-holding): pup_reff=0.8; pdn_reff=2
* __pa (combinational)
* __cr (combinational)
* Sa_at_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __it_50_6 (combinational)
* Sa_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __if_50_6 (combinational)
* Sa_at_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __it_51_6 (combinational)
* Sa_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __if_51_6 (combinational)
* Sa_at_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __it_52_6 (combinational)
* Sa_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __if_52_6 (combinational)
* __it_53_6 (combinational)
* __if_53_6 (combinational)
* Sb_at_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_50_6 (combinational)
* I_aa (combinational)
* Sb_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_50_6 (combinational)
* __pt_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_51_6 (combinational)
* Sb_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_51_6 (combinational)
* __pt_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_52_6 (combinational)
* Sb_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_52_6 (combinational)
* __pt_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_53_6 (combinational)
* Sb_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_53_6 (combinational)
* __pt_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_54_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_54_6 (combinational)
* Sb_af_54_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_54_6 (combinational)
* __pt_54_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_54_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_55_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_55_6 (combinational)
* Sb_af_55_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_55_6 (combinational)
* __pt_55_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_55_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_56_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_56_6 (combinational)
* Sb_af_56_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_56_6 (combinational)
* __pt_56_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_56_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Sb_at_57_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qt_57_6 (combinational)
* Sb_af_57_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __qf_57_6 (combinational)
* __pt_57_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __pf_57_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* Q_areq (combinational)
* P_at_50_6 (combinational)
* P_af_50_6 (combinational)
* P_at_51_6 (combinational)
* P_af_51_6 (combinational)
* P_at_52_6 (combinational)
* P_af_52_6 (combinational)
* P_at_53_6 (combinational)
* P_af_53_6 (combinational)
* P_at_54_6 (combinational)
* P_af_54_6 (combinational)
* P_at_55_6 (combinational)
* P_af_55_6 (combinational)
* P_at_56_6 (combinational)
* P_af_56_6 (combinational)
* P_at_57_6 (combinational)
* P_af_57_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd __v #13 Vdd pmos W=0.325U L=0.065U
M1_ Vdd __h __qr Vdd pmos W=0.325U L=0.065U
M2_ Vdd __r __qr Vdd pmos W=0.325U L=0.065U
M3_ Vdd __v #19 Vdd pmos W=0.325U L=0.065U
M4_ Vdd __sbt_50_6 x_50_6 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __sbf_50_6 x_50_6 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __sbt_51_6 x_51_6 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __sbf_51_6 x_51_6 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __sbt_52_6 x_52_6 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __sbf_52_6 x_52_6 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __sbt_53_6 x_53_6 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __sbf_53_6 x_53_6 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd __sbt_54_6 x_54_6 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd __sbf_54_6 x_54_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __sbt_55_6 x_55_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __sbf_55_6 x_55_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd __sbt_56_6 x_56_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd __sbf_56_6 x_56_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd __sbt_57_6 x_57_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd __sbf_57_6 x_57_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd x_51_6 #53 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd x_53_6 #56 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd x_55_6 #59 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd x_57_6 #62 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd __y_51_6 #64 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd __y_53_6 #67 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd z_51_6 #70 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd Cnt_at_50_6 #72 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd Cnt_at_51_6 #76 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd Cnt_at_52_6 #80 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd Cnt_at_53_6 #84 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd Cnt_at_54_6 #88 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd Cnt_at_55_6 #92 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd Cnt_at_56_6 #96 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd Cnt_at_57_6 #100 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd d_51_6 #105 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd d_53_6 #108 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd d_55_6 #111 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd d_57_6 #114 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd __e_51_6 #116 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd __e_53_6 #119 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd g_51_6 #122 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd k __ia Vdd pmos W=0.1625U L=0.065U
M43_ Vdd __r __ia Vdd pmos W=0.1625U L=0.065U
M44_ Vdd P_aa #133 Vdd pmos W=0.65U L=0.065U
M45_ Vdd __r __k Vdd pmos W=0.65U L=0.065U
M46_ Vdd __cr v Vdd pmos W=0.1625U L=0.065U
M47_ Vdd __it_50_6 #137 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd __if_50_6 #140 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd __it_51_6 #143 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd __if_51_6 #146 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd __it_52_6 #149 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd __if_52_6 #152 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd __it_53_6 #154 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd __if_53_6 #156 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd __qt_50_6 #159 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd __qf_50_6 #164 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd So_at_50_6 __pt_50_6 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd So_af_50_6 #173 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd __cr #174 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd __cr #175 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd __qt_51_6 #177 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd __qf_51_6 #181 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd So_at_51_6 __pt_51_6 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd So_af_51_6 #190 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd __cr #191 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd __cr #192 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd __qt_52_6 #194 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd __qf_52_6 #198 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd So_at_52_6 __pt_52_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd So_af_52_6 #207 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd __cr #208 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd __cr #209 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd __qt_53_6 #211 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd __qf_53_6 #215 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd So_at_53_6 __pt_53_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd So_af_53_6 #224 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd __cr #225 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd __cr #226 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd __qt_54_6 #228 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd __qf_54_6 #232 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd So_at_54_6 __pt_54_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd So_af_54_6 #241 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd __cr #242 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd __cr #243 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd __qt_55_6 #245 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd __qf_55_6 #249 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd So_at_55_6 __pt_55_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd So_af_55_6 #258 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd __cr #259 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd __cr #260 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd __qt_56_6 #262 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd __qf_56_6 #266 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd So_at_56_6 __pt_56_6 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd So_af_56_6 #275 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd __cr #276 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd __cr #277 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd __qt_57_6 #279 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd __qf_57_6 #283 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd So_at_57_6 __pt_57_6 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd So_af_57_6 #292 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd __cr #293 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd __cr #294 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd v __v Vdd pmos W=0.1625U L=0.065U
M104_ Vdd P_aa __pa Vdd pmos W=0.1625U L=0.065U
M105_ Vdd Cnt_areq __cr Vdd pmos W=0.325U L=0.065U
M106_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M107_ Vdd __k k Vdd pmos W=0.1625U L=0.065U
M108_ Vdd __ia I_aa Vdd pmos W=0.1625U L=0.065U
M109_ Vdd __qr Q_areq Vdd pmos W=0.1625U L=0.065U
M110_ Vdd I_at_50_6 __it_50_6 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd I_af_50_6 __if_50_6 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd I_at_51_6 __it_51_6 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd I_af_51_6 __if_51_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd I_at_52_6 __it_52_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd I_af_52_6 __if_52_6 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd I_at_53_6 __it_53_6 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd I_af_53_6 __if_53_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd Q_at_50_6 __qt_50_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd Q_af_50_6 __qf_50_6 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd Sb_at_50_6 __sbt_50_6 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd Sb_af_50_6 __sbf_50_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd __pt_50_6 P_at_50_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd __pf_50_6 P_af_50_6 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd Q_at_51_6 __qt_51_6 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd Q_af_51_6 __qf_51_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd Sb_at_51_6 __sbt_51_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd Sb_af_51_6 __sbf_51_6 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd __pt_51_6 P_at_51_6 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd __pf_51_6 P_af_51_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd Q_at_52_6 __qt_52_6 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd Q_af_52_6 __qf_52_6 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd Sb_at_52_6 __sbt_52_6 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd Sb_af_52_6 __sbf_52_6 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd __pt_52_6 P_at_52_6 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd __pf_52_6 P_af_52_6 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd Q_at_53_6 __qt_53_6 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd Q_af_53_6 __qf_53_6 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd Sb_at_53_6 __sbt_53_6 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd Sb_af_53_6 __sbf_53_6 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd __pt_53_6 P_at_53_6 Vdd pmos W=0.1625U L=0.065U
M141_ Vdd __pf_53_6 P_af_53_6 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd Q_at_54_6 __qt_54_6 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd Q_af_54_6 __qf_54_6 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd Sb_at_54_6 __sbt_54_6 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd Sb_af_54_6 __sbf_54_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd __pt_54_6 P_at_54_6 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd __pf_54_6 P_af_54_6 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd Q_at_55_6 __qt_55_6 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd Q_af_55_6 __qf_55_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd Sb_at_55_6 __sbt_55_6 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd Sb_af_55_6 __sbf_55_6 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd __pt_55_6 P_at_55_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd __pf_55_6 P_af_55_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd Q_at_56_6 __qt_56_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd Q_af_56_6 __qf_56_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd Sb_at_56_6 __sbt_56_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd Sb_af_56_6 __sbf_56_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd __pt_56_6 P_at_56_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd __pf_56_6 P_af_56_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd Q_at_57_6 __qt_57_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd Q_af_57_6 __qf_57_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd Sb_at_57_6 __sbt_57_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd Sb_af_57_6 __sbf_57_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd __pt_57_6 P_at_57_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd __pf_57_6 P_af_57_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd __qr #fb334# Vdd pmos W=0.1625U L=0.13U
M167_ Vdd v #fb337# Vdd pmos W=0.1625U L=0.13U
M168_keeper Vdd GND #335 Vdd pmos W=0.0975U L=1.235U
M169_ Vdd __ia #fb340# Vdd pmos W=0.1625U L=0.13U
M170_keeper Vdd GND #338 Vdd pmos W=0.0975U L=0.26U
M171_ Vdd __h #fb343# Vdd pmos W=0.1625U L=0.13U
M172_keeper Vdd GND #341 Vdd pmos W=0.0975U L=0.585U
M173_ Vdd w #fb346# Vdd pmos W=0.1625U L=0.13U
M174_keeper Vdd GND #344 Vdd pmos W=0.0975U L=0.585U
M175_ Vdd __m #fb349# Vdd pmos W=0.1625U L=0.13U
M176_keeper Vdd GND #347 Vdd pmos W=0.0975U L=0.26U
M177_ Vdd __y_50_6 #fb352# Vdd pmos W=0.1625U L=0.13U
M178_keeper Vdd GND #350 Vdd pmos W=0.0975U L=0.585U
M179_ Vdd __y_51_6 #fb355# Vdd pmos W=0.1625U L=0.13U
M180_keeper Vdd GND #353 Vdd pmos W=0.0975U L=0.585U
M181_ Vdd __y_52_6 #fb358# Vdd pmos W=0.1625U L=0.13U
M182_keeper Vdd GND #356 Vdd pmos W=0.0975U L=0.585U
M183_ Vdd __y_53_6 #fb361# Vdd pmos W=0.1625U L=0.13U
M184_keeper Vdd GND #359 Vdd pmos W=0.0975U L=0.585U
M185_ Vdd z_50_6 #fb364# Vdd pmos W=0.1625U L=0.13U
M186_keeper Vdd GND #362 Vdd pmos W=0.0975U L=0.585U
M187_ Vdd z_51_6 #fb367# Vdd pmos W=0.1625U L=0.13U
M188_keeper Vdd GND #365 Vdd pmos W=0.0975U L=0.585U
M189_ Vdd Cnt_at_50_6 #fb370# Vdd pmos W=0.1625U L=0.13U
M190_keeper Vdd GND #368 Vdd pmos W=0.0975U L=0.585U
M191_ Vdd Cnt_af_50_6 #fb373# Vdd pmos W=0.1625U L=0.13U
M192_keeper Vdd GND #371 Vdd pmos W=0.0975U L=0.26U
M193_ Vdd Cnt_at_51_6 #fb376# Vdd pmos W=0.1625U L=0.13U
M194_keeper Vdd GND #374 Vdd pmos W=0.0975U L=0.26U
M195_ Vdd Cnt_af_51_6 #fb379# Vdd pmos W=0.1625U L=0.13U
M196_keeper Vdd GND #377 Vdd pmos W=0.0975U L=0.26U
M197_ Vdd Cnt_at_52_6 #fb382# Vdd pmos W=0.1625U L=0.13U
M198_keeper Vdd GND #380 Vdd pmos W=0.0975U L=0.26U
M199_ Vdd Cnt_af_52_6 #fb385# Vdd pmos W=0.1625U L=0.13U
M200_keeper Vdd GND #383 Vdd pmos W=0.0975U L=0.26U
M201_ Vdd Cnt_at_53_6 #fb388# Vdd pmos W=0.1625U L=0.13U
M202_keeper Vdd GND #386 Vdd pmos W=0.0975U L=0.26U
M203_ Vdd Cnt_af_53_6 #fb391# Vdd pmos W=0.1625U L=0.13U
M204_keeper Vdd GND #389 Vdd pmos W=0.0975U L=0.26U
M205_ Vdd Cnt_at_54_6 #fb394# Vdd pmos W=0.1625U L=0.13U
M206_keeper Vdd GND #392 Vdd pmos W=0.0975U L=0.26U
M207_ Vdd Cnt_af_54_6 #fb397# Vdd pmos W=0.1625U L=0.13U
M208_keeper Vdd GND #395 Vdd pmos W=0.0975U L=0.26U
M209_ Vdd Cnt_at_55_6 #fb400# Vdd pmos W=0.1625U L=0.13U
M210_keeper Vdd GND #398 Vdd pmos W=0.0975U L=0.26U
M211_ Vdd Cnt_af_55_6 #fb403# Vdd pmos W=0.1625U L=0.13U
M212_keeper Vdd GND #401 Vdd pmos W=0.0975U L=0.26U
M213_ Vdd Cnt_at_56_6 #fb406# Vdd pmos W=0.1625U L=0.13U
M214_keeper Vdd GND #404 Vdd pmos W=0.0975U L=0.26U
M215_ Vdd Cnt_af_56_6 #fb409# Vdd pmos W=0.1625U L=0.13U
M216_keeper Vdd GND #407 Vdd pmos W=0.0975U L=0.26U
M217_ Vdd Cnt_at_57_6 #fb412# Vdd pmos W=0.1625U L=0.13U
M218_keeper Vdd GND #410 Vdd pmos W=0.0975U L=0.26U
M219_ Vdd Cnt_af_57_6 #fb415# Vdd pmos W=0.1625U L=0.13U
M220_keeper Vdd GND #413 Vdd pmos W=0.0975U L=0.26U
M221_ Vdd __e_50_6 #fb418# Vdd pmos W=0.1625U L=0.13U
M222_keeper Vdd GND #416 Vdd pmos W=0.0975U L=0.26U
M223_ Vdd __e_51_6 #fb421# Vdd pmos W=0.1625U L=0.13U
M224_keeper Vdd GND #419 Vdd pmos W=0.0975U L=0.585U
M225_ Vdd __e_52_6 #fb424# Vdd pmos W=0.1625U L=0.13U
M226_keeper Vdd GND #422 Vdd pmos W=0.0975U L=0.585U
M227_ Vdd __e_53_6 #fb427# Vdd pmos W=0.1625U L=0.13U
M228_keeper Vdd GND #425 Vdd pmos W=0.0975U L=0.585U
M229_ Vdd g_50_6 #fb430# Vdd pmos W=0.1625U L=0.13U
M230_keeper Vdd GND #428 Vdd pmos W=0.0975U L=0.585U
M231_ Vdd g_51_6 #fb433# Vdd pmos W=0.1625U L=0.13U
M232_keeper Vdd GND #431 Vdd pmos W=0.0975U L=0.585U
M233_ Vdd Sa_at_53_6 #fb436# Vdd pmos W=0.1625U L=0.13U
M234_keeper Vdd GND #434 Vdd pmos W=0.0975U L=0.585U
M235_ Vdd Sa_af_53_6 #fb439# Vdd pmos W=0.1625U L=0.13U
M236_keeper Vdd GND #437 Vdd pmos W=0.0975U L=0.26U
M237_ Vdd __k #fb442# Vdd pmos W=0.1625U L=0.13U
M238_keeper Vdd GND #440 Vdd pmos W=0.0975U L=0.26U
M239_ Vdd Sa_at_50_6 #fb445# Vdd pmos W=0.1625U L=0.13U
M240_keeper Vdd GND #443 Vdd pmos W=0.0975U L=0.91U
M241_ Vdd Sa_af_50_6 #fb448# Vdd pmos W=0.1625U L=0.13U
M242_keeper Vdd GND #446 Vdd pmos W=0.0975U L=0.26U
M243_ Vdd Sa_at_51_6 #fb451# Vdd pmos W=0.1625U L=0.13U
M244_keeper Vdd GND #449 Vdd pmos W=0.0975U L=0.26U
M245_ Vdd Sa_af_51_6 #fb454# Vdd pmos W=0.1625U L=0.13U
M246_keeper Vdd GND #452 Vdd pmos W=0.0975U L=0.26U
M247_ Vdd Sa_at_52_6 #fb457# Vdd pmos W=0.1625U L=0.13U
M248_keeper Vdd GND #455 Vdd pmos W=0.0975U L=0.26U
M249_ Vdd Sa_af_52_6 #fb460# Vdd pmos W=0.1625U L=0.13U
M250_keeper Vdd GND #458 Vdd pmos W=0.0975U L=0.26U
M251_ Vdd Sb_at_50_6 #fb463# Vdd pmos W=0.1625U L=0.13U
M252_keeper Vdd GND #461 Vdd pmos W=0.0975U L=0.26U
M253_ Vdd Sb_af_50_6 #fb466# Vdd pmos W=0.1625U L=0.13U
M254_keeper Vdd GND #464 Vdd pmos W=0.0975U L=0.585U
M255_ Vdd __pt_50_6 #fb469# Vdd pmos W=0.1625U L=0.13U
M256_keeper Vdd GND #467 Vdd pmos W=0.0975U L=0.585U
M257_ Vdd __pf_50_6 #fb472# Vdd pmos W=0.1625U L=0.13U
M258_keeper Vdd GND #470 Vdd pmos W=0.0975U L=0.585U
M259_ Vdd Sb_at_51_6 #fb475# Vdd pmos W=0.1625U L=0.13U
M260_keeper Vdd GND #473 Vdd pmos W=0.0975U L=0.585U
M261_ Vdd Sb_af_51_6 #fb478# Vdd pmos W=0.1625U L=0.13U
M262_keeper Vdd GND #476 Vdd pmos W=0.0975U L=0.585U
M263_ Vdd __pt_51_6 #fb481# Vdd pmos W=0.1625U L=0.13U
M264_keeper Vdd GND #479 Vdd pmos W=0.0975U L=0.585U
M265_ Vdd __pf_51_6 #fb484# Vdd pmos W=0.1625U L=0.13U
M266_keeper Vdd GND #482 Vdd pmos W=0.0975U L=0.585U
M267_ Vdd Sb_at_52_6 #fb487# Vdd pmos W=0.1625U L=0.13U
M268_keeper Vdd GND #485 Vdd pmos W=0.0975U L=0.585U
M269_ Vdd Sb_af_52_6 #fb490# Vdd pmos W=0.1625U L=0.13U
M270_keeper Vdd GND #488 Vdd pmos W=0.0975U L=0.585U
M271_ Vdd __pt_52_6 #fb493# Vdd pmos W=0.1625U L=0.13U
M272_keeper Vdd GND #491 Vdd pmos W=0.0975U L=0.585U
M273_ Vdd __pf_52_6 #fb496# Vdd pmos W=0.1625U L=0.13U
M274_keeper Vdd GND #494 Vdd pmos W=0.0975U L=0.585U
M275_ Vdd Sb_at_53_6 #fb499# Vdd pmos W=0.1625U L=0.13U
M276_keeper Vdd GND #497 Vdd pmos W=0.0975U L=0.585U
M277_ Vdd Sb_af_53_6 #fb502# Vdd pmos W=0.1625U L=0.13U
M278_keeper Vdd GND #500 Vdd pmos W=0.0975U L=0.585U
M279_ Vdd __pt_53_6 #fb505# Vdd pmos W=0.1625U L=0.13U
M280_keeper Vdd GND #503 Vdd pmos W=0.0975U L=0.585U
M281_ Vdd __pf_53_6 #fb508# Vdd pmos W=0.1625U L=0.13U
M282_keeper Vdd GND #506 Vdd pmos W=0.0975U L=0.585U
M283_ Vdd Sb_at_54_6 #fb511# Vdd pmos W=0.1625U L=0.13U
M284_keeper Vdd GND #509 Vdd pmos W=0.0975U L=0.585U
M285_ Vdd Sb_af_54_6 #fb514# Vdd pmos W=0.1625U L=0.13U
M286_keeper Vdd GND #512 Vdd pmos W=0.0975U L=0.585U
M287_ Vdd __pt_54_6 #fb517# Vdd pmos W=0.1625U L=0.13U
M288_keeper Vdd GND #515 Vdd pmos W=0.0975U L=0.585U
M289_ Vdd __pf_54_6 #fb520# Vdd pmos W=0.1625U L=0.13U
M290_keeper Vdd GND #518 Vdd pmos W=0.0975U L=0.585U
M291_ Vdd Sb_at_55_6 #fb523# Vdd pmos W=0.1625U L=0.13U
M292_keeper Vdd GND #521 Vdd pmos W=0.0975U L=0.585U
M293_ Vdd Sb_af_55_6 #fb526# Vdd pmos W=0.1625U L=0.13U
M294_keeper Vdd GND #524 Vdd pmos W=0.0975U L=0.585U
M295_ Vdd __pt_55_6 #fb529# Vdd pmos W=0.1625U L=0.13U
M296_keeper Vdd GND #527 Vdd pmos W=0.0975U L=0.585U
M297_ Vdd __pf_55_6 #fb532# Vdd pmos W=0.1625U L=0.13U
M298_keeper Vdd GND #530 Vdd pmos W=0.0975U L=0.585U
M299_ Vdd Sb_at_56_6 #fb535# Vdd pmos W=0.1625U L=0.13U
M300_keeper Vdd GND #533 Vdd pmos W=0.0975U L=0.585U
M301_ Vdd Sb_af_56_6 #fb538# Vdd pmos W=0.1625U L=0.13U
M302_keeper Vdd GND #536 Vdd pmos W=0.0975U L=0.585U
M303_ Vdd __pt_56_6 #fb541# Vdd pmos W=0.1625U L=0.13U
M304_keeper Vdd GND #539 Vdd pmos W=0.0975U L=0.585U
M305_ Vdd __pf_56_6 #fb544# Vdd pmos W=0.1625U L=0.13U
M306_keeper Vdd GND #542 Vdd pmos W=0.0975U L=0.585U
M307_ Vdd Sb_at_57_6 #fb547# Vdd pmos W=0.1625U L=0.13U
M308_keeper Vdd GND #545 Vdd pmos W=0.0975U L=0.585U
M309_ Vdd Sb_af_57_6 #fb550# Vdd pmos W=0.1625U L=0.13U
M310_keeper Vdd GND #548 Vdd pmos W=0.0975U L=0.585U
M311_ Vdd __pt_57_6 #fb553# Vdd pmos W=0.1625U L=0.13U
M312_keeper Vdd GND #551 Vdd pmos W=0.0975U L=0.585U
M313_ Vdd __pf_57_6 #fb556# Vdd pmos W=0.1625U L=0.13U
M314_keeper Vdd GND #554 Vdd pmos W=0.0975U L=0.585U
M315_keeper Vdd GND #557 Vdd pmos W=0.0975U L=0.585U
M316_ GND v #3 GND nmos W=0.195U L=0.065U
M317_ GND __ia #8 GND nmos W=0.195U L=0.065U
M318_ GND __v w GND nmos W=0.195U L=0.065U
M319_ GND __sbt_50_6 #24 GND nmos W=0.0975U L=0.065U
M320_ GND __sbt_51_6 #28 GND nmos W=0.0975U L=0.065U
M321_ GND __sbt_52_6 #32 GND nmos W=0.0975U L=0.065U
M322_ GND __sbt_53_6 #36 GND nmos W=0.0975U L=0.065U
M323_ GND __sbt_54_6 #40 GND nmos W=0.0975U L=0.065U
M324_ GND __sbt_55_6 #44 GND nmos W=0.0975U L=0.065U
M325_ GND __sbt_56_6 #48 GND nmos W=0.0975U L=0.065U
M326_ GND __sbt_57_6 #50 GND nmos W=0.0975U L=0.065U
M327_ GND x_51_6 #52 GND nmos W=0.0975U L=0.065U
M328_ GND x_53_6 #55 GND nmos W=0.0975U L=0.065U
M329_ GND x_55_6 #58 GND nmos W=0.0975U L=0.065U
M330_ GND x_57_6 #61 GND nmos W=0.0975U L=0.065U
M331_ GND __y_51_6 #65 GND nmos W=0.0975U L=0.065U
M332_ GND __y_53_6 #68 GND nmos W=0.0975U L=0.065U
M333_ GND z_51_6 #69 GND nmos W=0.0975U L=0.065U
M334_ GND Cnt_at_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M335_ GND Cnt_af_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M336_ GND Cnt_at_51_6 d_51_6 GND nmos W=0.0975U L=0.065U
M337_ GND Cnt_af_51_6 d_51_6 GND nmos W=0.0975U L=0.065U
M338_ GND Cnt_at_52_6 d_52_6 GND nmos W=0.0975U L=0.065U
M339_ GND Cnt_af_52_6 d_52_6 GND nmos W=0.0975U L=0.065U
M340_ GND Cnt_at_53_6 d_53_6 GND nmos W=0.0975U L=0.065U
M341_ GND Cnt_af_53_6 d_53_6 GND nmos W=0.0975U L=0.065U
M342_ GND Cnt_at_54_6 d_54_6 GND nmos W=0.0975U L=0.065U
M343_ GND Cnt_af_54_6 d_54_6 GND nmos W=0.0975U L=0.065U
M344_ GND Cnt_at_55_6 d_55_6 GND nmos W=0.0975U L=0.065U
M345_ GND Cnt_af_55_6 d_55_6 GND nmos W=0.0975U L=0.065U
M346_ GND Cnt_at_56_6 d_56_6 GND nmos W=0.0975U L=0.065U
M347_ GND Cnt_af_56_6 d_56_6 GND nmos W=0.0975U L=0.065U
M348_ GND Cnt_at_57_6 d_57_6 GND nmos W=0.0975U L=0.065U
M349_ GND Cnt_af_57_6 d_57_6 GND nmos W=0.0975U L=0.065U
M350_ GND d_51_6 #104 GND nmos W=0.0975U L=0.065U
M351_ GND d_53_6 #107 GND nmos W=0.0975U L=0.065U
M352_ GND d_55_6 #110 GND nmos W=0.0975U L=0.065U
M353_ GND d_57_6 #113 GND nmos W=0.0975U L=0.065U
M354_ GND __e_51_6 #117 GND nmos W=0.0975U L=0.065U
M355_ GND __e_53_6 #120 GND nmos W=0.0975U L=0.065U
M356_ GND g_51_6 #121 GND nmos W=0.0975U L=0.065U
M357_ GND Sa_at_53_6 #123 GND nmos W=0.0975U L=0.065U
M358_ GND Sa_af_53_6 #123 GND nmos W=0.0975U L=0.065U
M359_ GND I_at_53_6 #128 GND nmos W=0.39U L=0.065U
M360_ GND I_af_53_6 #128 GND nmos W=0.39U L=0.065U
M361_ GND P_aa v GND nmos W=0.0975U L=0.065U
M362_ GND reset v GND nmos W=0.0975U L=0.065U
M363_ GND __it_50_6 Sa_at_50_6 GND nmos W=0.0975U L=0.065U
M364_ GND __if_50_6 Sa_af_50_6 GND nmos W=0.0975U L=0.065U
M365_ GND __it_51_6 Sa_at_51_6 GND nmos W=0.0975U L=0.065U
M366_ GND __if_51_6 Sa_af_51_6 GND nmos W=0.0975U L=0.065U
M367_ GND __it_52_6 Sa_at_52_6 GND nmos W=0.0975U L=0.065U
M368_ GND __if_52_6 Sa_af_52_6 GND nmos W=0.0975U L=0.065U
M369_ GND __it_53_6 Sa_at_53_6 GND nmos W=0.0975U L=0.065U
M370_ GND __if_53_6 Sa_af_53_6 GND nmos W=0.0975U L=0.065U
M371_ GND __qt_50_6 #161 GND nmos W=0.0975U L=0.065U
M372_ GND reset Sb_at_50_6 GND nmos W=0.0975U L=0.065U
M373_ GND __qf_50_6 #166 GND nmos W=0.0975U L=0.065U
M374_ GND reset Sb_af_50_6 GND nmos W=0.0975U L=0.065U
M375_ GND So_at_50_6 #168 GND nmos W=0.0975U L=0.065U
M376_ GND So_af_50_6 #171 GND nmos W=0.0975U L=0.065U
M377_ GND w __pf_50_6 GND nmos W=0.0975U L=0.065U
M378_ GND __qt_50_6 Cnt_at_50_6 GND nmos W=0.0975U L=0.065U
M379_ GND __qf_50_6 Cnt_af_50_6 GND nmos W=0.0975U L=0.065U
M380_ GND __qt_51_6 #179 GND nmos W=0.0975U L=0.065U
M381_ GND reset Sb_at_51_6 GND nmos W=0.0975U L=0.065U
M382_ GND __qf_51_6 #183 GND nmos W=0.0975U L=0.065U
M383_ GND reset Sb_af_51_6 GND nmos W=0.0975U L=0.065U
M384_ GND So_at_51_6 #185 GND nmos W=0.0975U L=0.065U
M385_ GND So_af_51_6 #188 GND nmos W=0.0975U L=0.065U
M386_ GND w __pf_51_6 GND nmos W=0.0975U L=0.065U
M387_ GND __qt_51_6 Cnt_at_51_6 GND nmos W=0.0975U L=0.065U
M388_ GND __qf_51_6 Cnt_af_51_6 GND nmos W=0.0975U L=0.065U
M389_ GND __qt_52_6 #196 GND nmos W=0.0975U L=0.065U
M390_ GND reset Sb_at_52_6 GND nmos W=0.0975U L=0.065U
M391_ GND __qf_52_6 #200 GND nmos W=0.0975U L=0.065U
M392_ GND reset Sb_af_52_6 GND nmos W=0.0975U L=0.065U
M393_ GND So_at_52_6 #202 GND nmos W=0.0975U L=0.065U
M394_ GND So_af_52_6 #205 GND nmos W=0.0975U L=0.065U
M395_ GND w __pf_52_6 GND nmos W=0.0975U L=0.065U
M396_ GND __qt_52_6 Cnt_at_52_6 GND nmos W=0.0975U L=0.065U
M397_ GND __qf_52_6 Cnt_af_52_6 GND nmos W=0.0975U L=0.065U
M398_ GND __qt_53_6 #213 GND nmos W=0.0975U L=0.065U
M399_ GND reset Sb_at_53_6 GND nmos W=0.0975U L=0.065U
M400_ GND __qf_53_6 #217 GND nmos W=0.0975U L=0.065U
M401_ GND reset Sb_af_53_6 GND nmos W=0.0975U L=0.065U
M402_ GND So_at_53_6 #219 GND nmos W=0.0975U L=0.065U
M403_ GND So_af_53_6 #222 GND nmos W=0.0975U L=0.065U
M404_ GND w __pf_53_6 GND nmos W=0.0975U L=0.065U
M405_ GND __qt_53_6 Cnt_at_53_6 GND nmos W=0.0975U L=0.065U
M406_ GND __qf_53_6 Cnt_af_53_6 GND nmos W=0.0975U L=0.065U
M407_ GND __qt_54_6 #230 GND nmos W=0.0975U L=0.065U
M408_ GND reset Sb_at_54_6 GND nmos W=0.0975U L=0.065U
M409_ GND __qf_54_6 #234 GND nmos W=0.0975U L=0.065U
M410_ GND reset Sb_af_54_6 GND nmos W=0.0975U L=0.065U
M411_ GND So_at_54_6 #236 GND nmos W=0.0975U L=0.065U
M412_ GND So_af_54_6 #239 GND nmos W=0.0975U L=0.065U
M413_ GND w __pf_54_6 GND nmos W=0.0975U L=0.065U
M414_ GND __qt_54_6 Cnt_at_54_6 GND nmos W=0.0975U L=0.065U
M415_ GND __qf_54_6 Cnt_af_54_6 GND nmos W=0.0975U L=0.065U
M416_ GND __qt_55_6 #247 GND nmos W=0.0975U L=0.065U
M417_ GND reset Sb_at_55_6 GND nmos W=0.0975U L=0.065U
M418_ GND __qf_55_6 #251 GND nmos W=0.0975U L=0.065U
M419_ GND reset Sb_af_55_6 GND nmos W=0.0975U L=0.065U
M420_ GND So_at_55_6 #253 GND nmos W=0.0975U L=0.065U
M421_ GND So_af_55_6 #256 GND nmos W=0.0975U L=0.065U
M422_ GND w __pf_55_6 GND nmos W=0.0975U L=0.065U
M423_ GND __qt_55_6 Cnt_at_55_6 GND nmos W=0.0975U L=0.065U
M424_ GND __qf_55_6 Cnt_af_55_6 GND nmos W=0.0975U L=0.065U
M425_ GND __qt_56_6 #264 GND nmos W=0.0975U L=0.065U
M426_ GND reset Sb_at_56_6 GND nmos W=0.0975U L=0.065U
M427_ GND __qf_56_6 #268 GND nmos W=0.0975U L=0.065U
M428_ GND reset Sb_af_56_6 GND nmos W=0.0975U L=0.065U
M429_ GND So_at_56_6 #270 GND nmos W=0.0975U L=0.065U
M430_ GND So_af_56_6 #273 GND nmos W=0.0975U L=0.065U
M431_ GND w __pf_56_6 GND nmos W=0.0975U L=0.065U
M432_ GND __qt_56_6 Cnt_at_56_6 GND nmos W=0.0975U L=0.065U
M433_ GND __qf_56_6 Cnt_af_56_6 GND nmos W=0.0975U L=0.065U
M434_ GND __qt_57_6 #281 GND nmos W=0.0975U L=0.065U
M435_ GND reset Sb_at_57_6 GND nmos W=0.0975U L=0.065U
M436_ GND __qf_57_6 #285 GND nmos W=0.0975U L=0.065U
M437_ GND reset Sb_af_57_6 GND nmos W=0.0975U L=0.065U
M438_ GND So_at_57_6 #287 GND nmos W=0.0975U L=0.065U
M439_ GND So_af_57_6 #290 GND nmos W=0.0975U L=0.065U
M440_ GND w __pf_57_6 GND nmos W=0.0975U L=0.065U
M441_ GND __qt_57_6 Cnt_at_57_6 GND nmos W=0.0975U L=0.065U
M442_ GND __qf_57_6 Cnt_af_57_6 GND nmos W=0.0975U L=0.065U
M443_ GND v __v GND nmos W=0.0975U L=0.065U
M444_ GND P_aa __pa GND nmos W=0.0975U L=0.065U
M445_ GND Cnt_areq __cr GND nmos W=0.195U L=0.065U
M446_ GND reset __r GND nmos W=0.0975U L=0.065U
M447_ GND __k k GND nmos W=0.0975U L=0.065U
M448_ GND __ia I_aa GND nmos W=0.0975U L=0.065U
M449_ GND __qr Q_areq GND nmos W=0.0975U L=0.065U
M450_ GND I_at_50_6 __it_50_6 GND nmos W=0.0975U L=0.065U
M451_ GND I_af_50_6 __if_50_6 GND nmos W=0.0975U L=0.065U
M452_ GND I_at_51_6 __it_51_6 GND nmos W=0.0975U L=0.065U
M453_ GND I_af_51_6 __if_51_6 GND nmos W=0.0975U L=0.065U
M454_ GND I_at_52_6 __it_52_6 GND nmos W=0.0975U L=0.065U
M455_ GND I_af_52_6 __if_52_6 GND nmos W=0.0975U L=0.065U
M456_ GND I_at_53_6 __it_53_6 GND nmos W=0.0975U L=0.065U
M457_ GND I_af_53_6 __if_53_6 GND nmos W=0.0975U L=0.065U
M458_ GND Q_at_50_6 __qt_50_6 GND nmos W=0.0975U L=0.065U
M459_ GND Q_af_50_6 __qf_50_6 GND nmos W=0.0975U L=0.065U
M460_ GND Sb_at_50_6 __sbt_50_6 GND nmos W=0.0975U L=0.065U
M461_ GND Sb_af_50_6 __sbf_50_6 GND nmos W=0.0975U L=0.065U
M462_ GND __pt_50_6 P_at_50_6 GND nmos W=0.0975U L=0.065U
M463_ GND __pf_50_6 P_af_50_6 GND nmos W=0.0975U L=0.065U
M464_ GND Q_at_51_6 __qt_51_6 GND nmos W=0.0975U L=0.065U
M465_ GND Q_af_51_6 __qf_51_6 GND nmos W=0.0975U L=0.065U
M466_ GND Sb_at_51_6 __sbt_51_6 GND nmos W=0.0975U L=0.065U
M467_ GND Sb_af_51_6 __sbf_51_6 GND nmos W=0.0975U L=0.065U
M468_ GND __pt_51_6 P_at_51_6 GND nmos W=0.0975U L=0.065U
M469_ GND __pf_51_6 P_af_51_6 GND nmos W=0.0975U L=0.065U
M470_ GND Q_at_52_6 __qt_52_6 GND nmos W=0.0975U L=0.065U
M471_ GND Q_af_52_6 __qf_52_6 GND nmos W=0.0975U L=0.065U
M472_ GND Sb_at_52_6 __sbt_52_6 GND nmos W=0.0975U L=0.065U
M473_ GND Sb_af_52_6 __sbf_52_6 GND nmos W=0.0975U L=0.065U
M474_ GND __pt_52_6 P_at_52_6 GND nmos W=0.0975U L=0.065U
M475_ GND __pf_52_6 P_af_52_6 GND nmos W=0.0975U L=0.065U
M476_ GND Q_at_53_6 __qt_53_6 GND nmos W=0.0975U L=0.065U
M477_ GND Q_af_53_6 __qf_53_6 GND nmos W=0.0975U L=0.065U
M478_ GND Sb_at_53_6 __sbt_53_6 GND nmos W=0.0975U L=0.065U
M479_ GND Sb_af_53_6 __sbf_53_6 GND nmos W=0.0975U L=0.065U
M480_ GND __pt_53_6 P_at_53_6 GND nmos W=0.0975U L=0.065U
M481_ GND __pf_53_6 P_af_53_6 GND nmos W=0.0975U L=0.065U
M482_ GND Q_at_54_6 __qt_54_6 GND nmos W=0.0975U L=0.065U
M483_ GND Q_af_54_6 __qf_54_6 GND nmos W=0.0975U L=0.065U
M484_ GND Sb_at_54_6 __sbt_54_6 GND nmos W=0.0975U L=0.065U
M485_ GND Sb_af_54_6 __sbf_54_6 GND nmos W=0.0975U L=0.065U
M486_ GND __pt_54_6 P_at_54_6 GND nmos W=0.0975U L=0.065U
M487_ GND __pf_54_6 P_af_54_6 GND nmos W=0.0975U L=0.065U
M488_ GND Q_at_55_6 __qt_55_6 GND nmos W=0.0975U L=0.065U
M489_ GND Q_af_55_6 __qf_55_6 GND nmos W=0.0975U L=0.065U
M490_ GND Sb_at_55_6 __sbt_55_6 GND nmos W=0.0975U L=0.065U
M491_ GND Sb_af_55_6 __sbf_55_6 GND nmos W=0.0975U L=0.065U
M492_ GND __pt_55_6 P_at_55_6 GND nmos W=0.0975U L=0.065U
M493_ GND __pf_55_6 P_af_55_6 GND nmos W=0.0975U L=0.065U
M494_ GND Q_at_56_6 __qt_56_6 GND nmos W=0.0975U L=0.065U
M495_ GND Q_af_56_6 __qf_56_6 GND nmos W=0.0975U L=0.065U
M496_ GND Sb_at_56_6 __sbt_56_6 GND nmos W=0.0975U L=0.065U
M497_ GND Sb_af_56_6 __sbf_56_6 GND nmos W=0.0975U L=0.065U
M498_ GND __pt_56_6 P_at_56_6 GND nmos W=0.0975U L=0.065U
M499_ GND __pf_56_6 P_af_56_6 GND nmos W=0.0975U L=0.065U
M500_ GND Q_at_57_6 __qt_57_6 GND nmos W=0.0975U L=0.065U
M501_ GND Q_af_57_6 __qf_57_6 GND nmos W=0.0975U L=0.065U
M502_ GND Sb_at_57_6 __sbt_57_6 GND nmos W=0.0975U L=0.065U
M503_ GND Sb_af_57_6 __sbf_57_6 GND nmos W=0.0975U L=0.065U
M504_ GND __pt_57_6 P_at_57_6 GND nmos W=0.0975U L=0.065U
M505_ GND __pf_57_6 P_af_57_6 GND nmos W=0.0975U L=0.065U
M506_ GND __qr #fb334# GND nmos W=0.0975U L=0.13U
M507_ GND v #fb337# GND nmos W=0.0975U L=0.13U
M508_keeper GND Vdd #336 GND nmos W=0.0975U L=1.495U
M509_ GND __ia #fb340# GND nmos W=0.0975U L=0.13U
M510_keeper GND Vdd #339 GND nmos W=0.0975U L=0.715U
M511_ GND __h #fb343# GND nmos W=0.0975U L=0.13U
M512_keeper GND Vdd #342 GND nmos W=0.0975U L=0.715U
M513_ GND w #fb346# GND nmos W=0.0975U L=0.13U
M514_keeper GND Vdd #345 GND nmos W=0.0975U L=1.495U
M515_ GND __m #fb349# GND nmos W=0.0975U L=0.13U
M516_keeper GND Vdd #348 GND nmos W=0.0975U L=2.275U
M517_ GND __y_50_6 #fb352# GND nmos W=0.0975U L=0.13U
M518_keeper GND Vdd #351 GND nmos W=0.0975U L=1.495U
M519_ GND __y_51_6 #fb355# GND nmos W=0.0975U L=0.13U
M520_keeper GND Vdd #354 GND nmos W=0.0975U L=1.495U
M521_ GND __y_52_6 #fb358# GND nmos W=0.0975U L=0.13U
M522_keeper GND Vdd #357 GND nmos W=0.0975U L=1.495U
M523_ GND __y_53_6 #fb361# GND nmos W=0.0975U L=0.13U
M524_keeper GND Vdd #360 GND nmos W=0.0975U L=1.495U
M525_ GND z_50_6 #fb364# GND nmos W=0.0975U L=0.13U
M526_keeper GND Vdd #363 GND nmos W=0.0975U L=1.495U
M527_ GND z_51_6 #fb367# GND nmos W=0.0975U L=0.13U
M528_keeper GND Vdd #366 GND nmos W=0.0975U L=1.495U
M529_ GND Cnt_at_50_6 #fb370# GND nmos W=0.0975U L=0.13U
M530_keeper GND Vdd #369 GND nmos W=0.0975U L=1.495U
M531_ GND Cnt_af_50_6 #fb373# GND nmos W=0.0975U L=0.13U
M532_keeper GND Vdd #372 GND nmos W=0.0975U L=1.495U
M533_ GND Cnt_at_51_6 #fb376# GND nmos W=0.0975U L=0.13U
M534_keeper GND Vdd #375 GND nmos W=0.0975U L=1.495U
M535_ GND Cnt_af_51_6 #fb379# GND nmos W=0.0975U L=0.13U
M536_keeper GND Vdd #378 GND nmos W=0.0975U L=1.495U
M537_ GND Cnt_at_52_6 #fb382# GND nmos W=0.0975U L=0.13U
M538_keeper GND Vdd #381 GND nmos W=0.0975U L=1.495U
M539_ GND Cnt_af_52_6 #fb385# GND nmos W=0.0975U L=0.13U
M540_keeper GND Vdd #384 GND nmos W=0.0975U L=1.495U
M541_ GND Cnt_at_53_6 #fb388# GND nmos W=0.0975U L=0.13U
M542_keeper GND Vdd #387 GND nmos W=0.0975U L=1.495U
M543_ GND Cnt_af_53_6 #fb391# GND nmos W=0.0975U L=0.13U
M544_keeper GND Vdd #390 GND nmos W=0.0975U L=1.495U
M545_ GND Cnt_at_54_6 #fb394# GND nmos W=0.0975U L=0.13U
M546_keeper GND Vdd #393 GND nmos W=0.0975U L=1.495U
M547_ GND Cnt_af_54_6 #fb397# GND nmos W=0.0975U L=0.13U
M548_keeper GND Vdd #396 GND nmos W=0.0975U L=1.495U
M549_ GND Cnt_at_55_6 #fb400# GND nmos W=0.0975U L=0.13U
M550_keeper GND Vdd #399 GND nmos W=0.0975U L=1.495U
M551_ GND Cnt_af_55_6 #fb403# GND nmos W=0.0975U L=0.13U
M552_keeper GND Vdd #402 GND nmos W=0.0975U L=1.495U
M553_ GND Cnt_at_56_6 #fb406# GND nmos W=0.0975U L=0.13U
M554_keeper GND Vdd #405 GND nmos W=0.0975U L=1.495U
M555_ GND Cnt_af_56_6 #fb409# GND nmos W=0.0975U L=0.13U
M556_keeper GND Vdd #408 GND nmos W=0.0975U L=1.495U
M557_ GND Cnt_at_57_6 #fb412# GND nmos W=0.0975U L=0.13U
M558_keeper GND Vdd #411 GND nmos W=0.0975U L=1.495U
M559_ GND Cnt_af_57_6 #fb415# GND nmos W=0.0975U L=0.13U
M560_keeper GND Vdd #414 GND nmos W=0.0975U L=1.495U
M561_ GND __e_50_6 #fb418# GND nmos W=0.0975U L=0.13U
M562_keeper GND Vdd #417 GND nmos W=0.0975U L=1.495U
M563_ GND __e_51_6 #fb421# GND nmos W=0.0975U L=0.13U
M564_keeper GND Vdd #420 GND nmos W=0.0975U L=1.495U
M565_ GND __e_52_6 #fb424# GND nmos W=0.0975U L=0.13U
M566_keeper GND Vdd #423 GND nmos W=0.0975U L=1.495U
M567_ GND __e_53_6 #fb427# GND nmos W=0.0975U L=0.13U
M568_keeper GND Vdd #426 GND nmos W=0.0975U L=1.495U
M569_ GND g_50_6 #fb430# GND nmos W=0.0975U L=0.13U
M570_keeper GND Vdd #429 GND nmos W=0.0975U L=1.495U
M571_ GND g_51_6 #fb433# GND nmos W=0.0975U L=0.13U
M572_keeper GND Vdd #432 GND nmos W=0.0975U L=1.495U
M573_ GND Sa_at_53_6 #fb436# GND nmos W=0.0975U L=0.13U
M574_keeper GND Vdd #435 GND nmos W=0.0975U L=1.495U
M575_ GND Sa_af_53_6 #fb439# GND nmos W=0.0975U L=0.13U
M576_keeper GND Vdd #438 GND nmos W=0.0975U L=1.495U
M577_ GND __k #fb442# GND nmos W=0.0975U L=0.13U
M578_keeper GND Vdd #441 GND nmos W=0.0975U L=1.495U
M579_ GND Sa_at_50_6 #fb445# GND nmos W=0.0975U L=0.13U
M580_keeper GND Vdd #444 GND nmos W=0.0975U L=1.495U
M581_ GND Sa_af_50_6 #fb448# GND nmos W=0.0975U L=0.13U
M582_keeper GND Vdd #447 GND nmos W=0.0975U L=1.495U
M583_ GND Sa_at_51_6 #fb451# GND nmos W=0.0975U L=0.13U
M584_keeper GND Vdd #450 GND nmos W=0.0975U L=1.495U
M585_ GND Sa_af_51_6 #fb454# GND nmos W=0.0975U L=0.13U
M586_keeper GND Vdd #453 GND nmos W=0.0975U L=1.495U
M587_ GND Sa_at_52_6 #fb457# GND nmos W=0.0975U L=0.13U
M588_keeper GND Vdd #456 GND nmos W=0.0975U L=1.495U
M589_ GND Sa_af_52_6 #fb460# GND nmos W=0.0975U L=0.13U
M590_keeper GND Vdd #459 GND nmos W=0.0975U L=1.495U
M591_ GND Sb_at_50_6 #fb463# GND nmos W=0.0975U L=0.13U
M592_keeper GND Vdd #462 GND nmos W=0.0975U L=1.495U
M593_ GND Sb_af_50_6 #fb466# GND nmos W=0.0975U L=0.13U
M594_keeper GND Vdd #465 GND nmos W=0.0975U L=1.495U
M595_ GND __pt_50_6 #fb469# GND nmos W=0.0975U L=0.13U
M596_keeper GND Vdd #468 GND nmos W=0.0975U L=1.495U
M597_ GND __pf_50_6 #fb472# GND nmos W=0.0975U L=0.13U
M598_keeper GND Vdd #471 GND nmos W=0.0975U L=0.715U
M599_ GND Sb_at_51_6 #fb475# GND nmos W=0.0975U L=0.13U
M600_keeper GND Vdd #474 GND nmos W=0.0975U L=1.495U
M601_ GND Sb_af_51_6 #fb478# GND nmos W=0.0975U L=0.13U
M602_keeper GND Vdd #477 GND nmos W=0.0975U L=1.495U
M603_ GND __pt_51_6 #fb481# GND nmos W=0.0975U L=0.13U
M604_keeper GND Vdd #480 GND nmos W=0.0975U L=1.495U
M605_ GND __pf_51_6 #fb484# GND nmos W=0.0975U L=0.13U
M606_keeper GND Vdd #483 GND nmos W=0.0975U L=0.715U
M607_ GND Sb_at_52_6 #fb487# GND nmos W=0.0975U L=0.13U
M608_keeper GND Vdd #486 GND nmos W=0.0975U L=1.495U
M609_ GND Sb_af_52_6 #fb490# GND nmos W=0.0975U L=0.13U
M610_keeper GND Vdd #489 GND nmos W=0.0975U L=1.495U
M611_ GND __pt_52_6 #fb493# GND nmos W=0.0975U L=0.13U
M612_keeper GND Vdd #492 GND nmos W=0.0975U L=1.495U
M613_ GND __pf_52_6 #fb496# GND nmos W=0.0975U L=0.13U
M614_keeper GND Vdd #495 GND nmos W=0.0975U L=0.715U
M615_ GND Sb_at_53_6 #fb499# GND nmos W=0.0975U L=0.13U
M616_keeper GND Vdd #498 GND nmos W=0.0975U L=1.495U
M617_ GND Sb_af_53_6 #fb502# GND nmos W=0.0975U L=0.13U
M618_keeper GND Vdd #501 GND nmos W=0.0975U L=1.495U
M619_ GND __pt_53_6 #fb505# GND nmos W=0.0975U L=0.13U
M620_keeper GND Vdd #504 GND nmos W=0.0975U L=1.495U
M621_ GND __pf_53_6 #fb508# GND nmos W=0.0975U L=0.13U
M622_keeper GND Vdd #507 GND nmos W=0.0975U L=0.715U
M623_ GND Sb_at_54_6 #fb511# GND nmos W=0.0975U L=0.13U
M624_keeper GND Vdd #510 GND nmos W=0.0975U L=1.495U
M625_ GND Sb_af_54_6 #fb514# GND nmos W=0.0975U L=0.13U
M626_keeper GND Vdd #513 GND nmos W=0.0975U L=1.495U
M627_ GND __pt_54_6 #fb517# GND nmos W=0.0975U L=0.13U
M628_keeper GND Vdd #516 GND nmos W=0.0975U L=1.495U
M629_ GND __pf_54_6 #fb520# GND nmos W=0.0975U L=0.13U
M630_keeper GND Vdd #519 GND nmos W=0.0975U L=0.715U
M631_ GND Sb_at_55_6 #fb523# GND nmos W=0.0975U L=0.13U
M632_keeper GND Vdd #522 GND nmos W=0.0975U L=1.495U
M633_ GND Sb_af_55_6 #fb526# GND nmos W=0.0975U L=0.13U
M634_keeper GND Vdd #525 GND nmos W=0.0975U L=1.495U
M635_ GND __pt_55_6 #fb529# GND nmos W=0.0975U L=0.13U
M636_keeper GND Vdd #528 GND nmos W=0.0975U L=1.495U
M637_ GND __pf_55_6 #fb532# GND nmos W=0.0975U L=0.13U
M638_keeper GND Vdd #531 GND nmos W=0.0975U L=0.715U
M639_ GND Sb_at_56_6 #fb535# GND nmos W=0.0975U L=0.13U
M640_keeper GND Vdd #534 GND nmos W=0.0975U L=1.495U
M641_ GND Sb_af_56_6 #fb538# GND nmos W=0.0975U L=0.13U
M642_keeper GND Vdd #537 GND nmos W=0.0975U L=1.495U
M643_ GND __pt_56_6 #fb541# GND nmos W=0.0975U L=0.13U
M644_keeper GND Vdd #540 GND nmos W=0.0975U L=1.495U
M645_ GND __pf_56_6 #fb544# GND nmos W=0.0975U L=0.13U
M646_keeper GND Vdd #543 GND nmos W=0.0975U L=0.715U
M647_ GND Sb_at_57_6 #fb547# GND nmos W=0.0975U L=0.13U
M648_keeper GND Vdd #546 GND nmos W=0.0975U L=1.495U
M649_ GND Sb_af_57_6 #fb550# GND nmos W=0.0975U L=0.13U
M650_keeper GND Vdd #549 GND nmos W=0.0975U L=1.495U
M651_ GND __pt_57_6 #fb553# GND nmos W=0.0975U L=0.13U
M652_keeper GND Vdd #552 GND nmos W=0.0975U L=1.495U
M653_ GND __pf_57_6 #fb556# GND nmos W=0.0975U L=0.13U
M654_keeper GND Vdd #555 GND nmos W=0.0975U L=0.715U
M655_keeper GND Vdd #558 GND nmos W=0.0975U L=1.495U
M656_ #3 Cnt_areq __qr GND nmos W=0.195U L=0.065U
M657_ #6 k __qr GND nmos W=0.195U L=0.065U
M658_ #13 Cnt_areq __qr Vdd pmos W=0.325U L=0.065U
M659_keeper #335 #fb334# __qr Vdd pmos W=0.0975U L=0.065U
M660_keeper #336 #fb334# __qr GND nmos W=0.0975U L=0.065U
M661_keeper #338 #fb337# v Vdd pmos W=0.0975U L=0.065U
M662_keeper #339 #fb337# v GND nmos W=0.0975U L=0.065U
M663_ #7 __sbf_57_6 #6 GND nmos W=0.195U L=0.065U
M664_ #8 __sbt_57_6 #7 GND nmos W=0.195U L=0.065U
M665_ #123 P_aa __ia GND nmos W=0.0975U L=0.065U
M666_keeper #341 #fb340# __ia Vdd pmos W=0.0975U L=0.065U
M667_keeper #342 #fb340# __ia GND nmos W=0.0975U L=0.065U
M668_ #69 z_50_6 __h GND nmos W=0.0975U L=0.065U
M669_ #70 z_50_6 __h Vdd pmos W=0.1625U L=0.065U
M670_keeper #344 #fb343# __h Vdd pmos W=0.0975U L=0.065U
M671_keeper #345 #fb343# __h GND nmos W=0.0975U L=0.065U
M672_ #18 __m w Vdd pmos W=0.325U L=0.065U
M673_keeper #347 #fb346# w Vdd pmos W=0.0975U L=0.065U
M674_keeper #348 #fb346# w GND nmos W=0.0975U L=0.065U
M675_ #19 Cnt_areq #18 Vdd pmos W=0.325U L=0.065U
M676_ #121 g_50_6 __m GND nmos W=0.0975U L=0.065U
M677_ #122 g_50_6 __m Vdd pmos W=0.1625U L=0.065U
M678_keeper #350 #fb349# __m Vdd pmos W=0.0975U L=0.065U
M679_keeper #351 #fb349# __m GND nmos W=0.0975U L=0.065U
M680_ #24 __sbf_50_6 x_50_6 GND nmos W=0.0975U L=0.065U
M681_ #28 __sbf_51_6 x_51_6 GND nmos W=0.0975U L=0.065U
M682_ #32 __sbf_52_6 x_52_6 GND nmos W=0.0975U L=0.065U
M683_ #36 __sbf_53_6 x_53_6 GND nmos W=0.0975U L=0.065U
M684_ #40 __sbf_54_6 x_54_6 GND nmos W=0.0975U L=0.065U
M685_ #44 __sbf_55_6 x_55_6 GND nmos W=0.0975U L=0.065U
M686_ #48 __sbf_56_6 x_56_6 GND nmos W=0.0975U L=0.065U
M687_ #50 __sbf_57_6 x_57_6 GND nmos W=0.0975U L=0.065U
M688_ #52 x_50_6 __y_50_6 GND nmos W=0.0975U L=0.065U
M689_ #53 x_50_6 __y_50_6 Vdd pmos W=0.1625U L=0.065U
M690_keeper #353 #fb352# __y_50_6 Vdd pmos W=0.0975U L=0.065U
M691_keeper #354 #fb352# __y_50_6 GND nmos W=0.0975U L=0.065U
M692_ #55 x_52_6 __y_51_6 GND nmos W=0.0975U L=0.065U
M693_ #56 x_52_6 __y_51_6 Vdd pmos W=0.1625U L=0.065U
M694_keeper #356 #fb355# __y_51_6 Vdd pmos W=0.0975U L=0.065U
M695_keeper #357 #fb355# __y_51_6 GND nmos W=0.0975U L=0.065U
M696_ #58 x_54_6 __y_52_6 GND nmos W=0.0975U L=0.065U
M697_ #59 x_54_6 __y_52_6 Vdd pmos W=0.1625U L=0.065U
M698_keeper #359 #fb358# __y_52_6 Vdd pmos W=0.0975U L=0.065U
M699_keeper #360 #fb358# __y_52_6 GND nmos W=0.0975U L=0.065U
M700_ #61 x_56_6 __y_53_6 GND nmos W=0.0975U L=0.065U
M701_ #62 x_56_6 __y_53_6 Vdd pmos W=0.1625U L=0.065U
M702_keeper #362 #fb361# __y_53_6 Vdd pmos W=0.0975U L=0.065U
M703_keeper #363 #fb361# __y_53_6 GND nmos W=0.0975U L=0.065U
M704_ #64 __y_50_6 z_50_6 Vdd pmos W=0.1625U L=0.065U
M705_ #65 __y_50_6 z_50_6 GND nmos W=0.0975U L=0.065U
M706_keeper #365 #fb364# z_50_6 Vdd pmos W=0.0975U L=0.065U
M707_keeper #366 #fb364# z_50_6 GND nmos W=0.0975U L=0.065U
M708_ #67 __y_52_6 z_51_6 Vdd pmos W=0.1625U L=0.065U
M709_ #68 __y_52_6 z_51_6 GND nmos W=0.0975U L=0.065U
M710_keeper #368 #fb367# z_51_6 Vdd pmos W=0.0975U L=0.065U
M711_keeper #369 #fb367# z_51_6 GND nmos W=0.0975U L=0.065U
M712_ #72 Cnt_af_50_6 d_50_6 Vdd pmos W=0.1625U L=0.065U
M713_ #174 __qt_50_6 Cnt_at_50_6 Vdd pmos W=0.1625U L=0.065U
M714_keeper #371 #fb370# Cnt_at_50_6 Vdd pmos W=0.0975U L=0.065U
M715_keeper #372 #fb370# Cnt_at_50_6 GND nmos W=0.0975U L=0.065U
M716_ #175 __qf_50_6 Cnt_af_50_6 Vdd pmos W=0.1625U L=0.065U
M717_keeper #374 #fb373# Cnt_af_50_6 Vdd pmos W=0.0975U L=0.065U
M718_keeper #375 #fb373# Cnt_af_50_6 GND nmos W=0.0975U L=0.065U
M719_ #76 Cnt_af_51_6 d_51_6 Vdd pmos W=0.1625U L=0.065U
M720_ #191 __qt_51_6 Cnt_at_51_6 Vdd pmos W=0.1625U L=0.065U
M721_keeper #377 #fb376# Cnt_at_51_6 Vdd pmos W=0.0975U L=0.065U
M722_keeper #378 #fb376# Cnt_at_51_6 GND nmos W=0.0975U L=0.065U
M723_ #192 __qf_51_6 Cnt_af_51_6 Vdd pmos W=0.1625U L=0.065U
M724_keeper #380 #fb379# Cnt_af_51_6 Vdd pmos W=0.0975U L=0.065U
M725_keeper #381 #fb379# Cnt_af_51_6 GND nmos W=0.0975U L=0.065U
M726_ #80 Cnt_af_52_6 d_52_6 Vdd pmos W=0.1625U L=0.065U
M727_ #208 __qt_52_6 Cnt_at_52_6 Vdd pmos W=0.1625U L=0.065U
M728_keeper #383 #fb382# Cnt_at_52_6 Vdd pmos W=0.0975U L=0.065U
M729_keeper #384 #fb382# Cnt_at_52_6 GND nmos W=0.0975U L=0.065U
M730_ #209 __qf_52_6 Cnt_af_52_6 Vdd pmos W=0.1625U L=0.065U
M731_keeper #386 #fb385# Cnt_af_52_6 Vdd pmos W=0.0975U L=0.065U
M732_keeper #387 #fb385# Cnt_af_52_6 GND nmos W=0.0975U L=0.065U
M733_ #84 Cnt_af_53_6 d_53_6 Vdd pmos W=0.1625U L=0.065U
M734_ #225 __qt_53_6 Cnt_at_53_6 Vdd pmos W=0.1625U L=0.065U
M735_keeper #389 #fb388# Cnt_at_53_6 Vdd pmos W=0.0975U L=0.065U
M736_keeper #390 #fb388# Cnt_at_53_6 GND nmos W=0.0975U L=0.065U
M737_ #226 __qf_53_6 Cnt_af_53_6 Vdd pmos W=0.1625U L=0.065U
M738_keeper #392 #fb391# Cnt_af_53_6 Vdd pmos W=0.0975U L=0.065U
M739_keeper #393 #fb391# Cnt_af_53_6 GND nmos W=0.0975U L=0.065U
M740_ #88 Cnt_af_54_6 d_54_6 Vdd pmos W=0.1625U L=0.065U
M741_ #242 __qt_54_6 Cnt_at_54_6 Vdd pmos W=0.1625U L=0.065U
M742_keeper #395 #fb394# Cnt_at_54_6 Vdd pmos W=0.0975U L=0.065U
M743_keeper #396 #fb394# Cnt_at_54_6 GND nmos W=0.0975U L=0.065U
M744_ #243 __qf_54_6 Cnt_af_54_6 Vdd pmos W=0.1625U L=0.065U
M745_keeper #398 #fb397# Cnt_af_54_6 Vdd pmos W=0.0975U L=0.065U
M746_keeper #399 #fb397# Cnt_af_54_6 GND nmos W=0.0975U L=0.065U
M747_ #92 Cnt_af_55_6 d_55_6 Vdd pmos W=0.1625U L=0.065U
M748_ #259 __qt_55_6 Cnt_at_55_6 Vdd pmos W=0.1625U L=0.065U
M749_keeper #401 #fb400# Cnt_at_55_6 Vdd pmos W=0.0975U L=0.065U
M750_keeper #402 #fb400# Cnt_at_55_6 GND nmos W=0.0975U L=0.065U
M751_ #260 __qf_55_6 Cnt_af_55_6 Vdd pmos W=0.1625U L=0.065U
M752_keeper #404 #fb403# Cnt_af_55_6 Vdd pmos W=0.0975U L=0.065U
M753_keeper #405 #fb403# Cnt_af_55_6 GND nmos W=0.0975U L=0.065U
M754_ #96 Cnt_af_56_6 d_56_6 Vdd pmos W=0.1625U L=0.065U
M755_ #276 __qt_56_6 Cnt_at_56_6 Vdd pmos W=0.1625U L=0.065U
M756_keeper #407 #fb406# Cnt_at_56_6 Vdd pmos W=0.0975U L=0.065U
M757_keeper #408 #fb406# Cnt_at_56_6 GND nmos W=0.0975U L=0.065U
M758_ #277 __qf_56_6 Cnt_af_56_6 Vdd pmos W=0.1625U L=0.065U
M759_keeper #410 #fb409# Cnt_af_56_6 Vdd pmos W=0.0975U L=0.065U
M760_keeper #411 #fb409# Cnt_af_56_6 GND nmos W=0.0975U L=0.065U
M761_ #100 Cnt_af_57_6 d_57_6 Vdd pmos W=0.1625U L=0.065U
M762_ #293 __qt_57_6 Cnt_at_57_6 Vdd pmos W=0.1625U L=0.065U
M763_keeper #413 #fb412# Cnt_at_57_6 Vdd pmos W=0.0975U L=0.065U
M764_keeper #414 #fb412# Cnt_at_57_6 GND nmos W=0.0975U L=0.065U
M765_ #294 __qf_57_6 Cnt_af_57_6 Vdd pmos W=0.1625U L=0.065U
M766_keeper #416 #fb415# Cnt_af_57_6 Vdd pmos W=0.0975U L=0.065U
M767_keeper #417 #fb415# Cnt_af_57_6 GND nmos W=0.0975U L=0.065U
M768_ #104 d_50_6 __e_50_6 GND nmos W=0.0975U L=0.065U
M769_ #105 d_50_6 __e_50_6 Vdd pmos W=0.1625U L=0.065U
M770_keeper #419 #fb418# __e_50_6 Vdd pmos W=0.0975U L=0.065U
M771_keeper #420 #fb418# __e_50_6 GND nmos W=0.0975U L=0.065U
M772_ #107 d_52_6 __e_51_6 GND nmos W=0.0975U L=0.065U
M773_ #108 d_52_6 __e_51_6 Vdd pmos W=0.1625U L=0.065U
M774_keeper #422 #fb421# __e_51_6 Vdd pmos W=0.0975U L=0.065U
M775_keeper #423 #fb421# __e_51_6 GND nmos W=0.0975U L=0.065U
M776_ #110 d_54_6 __e_52_6 GND nmos W=0.0975U L=0.065U
M777_ #111 d_54_6 __e_52_6 Vdd pmos W=0.1625U L=0.065U
M778_keeper #425 #fb424# __e_52_6 Vdd pmos W=0.0975U L=0.065U
M779_keeper #426 #fb424# __e_52_6 GND nmos W=0.0975U L=0.065U
M780_ #113 d_56_6 __e_53_6 GND nmos W=0.0975U L=0.065U
M781_ #114 d_56_6 __e_53_6 Vdd pmos W=0.1625U L=0.065U
M782_keeper #428 #fb427# __e_53_6 Vdd pmos W=0.0975U L=0.065U
M783_keeper #429 #fb427# __e_53_6 GND nmos W=0.0975U L=0.065U
M784_ #116 __e_50_6 g_50_6 Vdd pmos W=0.1625U L=0.065U
M785_ #117 __e_50_6 g_50_6 GND nmos W=0.0975U L=0.065U
M786_keeper #431 #fb430# g_50_6 Vdd pmos W=0.0975U L=0.065U
M787_keeper #432 #fb430# g_50_6 GND nmos W=0.0975U L=0.065U
M788_ #119 __e_52_6 g_51_6 Vdd pmos W=0.1625U L=0.065U
M789_ #120 __e_52_6 g_51_6 GND nmos W=0.0975U L=0.065U
M790_keeper #434 #fb433# g_51_6 Vdd pmos W=0.0975U L=0.065U
M791_keeper #435 #fb433# g_51_6 GND nmos W=0.0975U L=0.065U
M792_ #154 __k Sa_at_53_6 Vdd pmos W=0.1625U L=0.065U
M793_keeper #437 #fb436# Sa_at_53_6 Vdd pmos W=0.0975U L=0.065U
M794_keeper #438 #fb436# Sa_at_53_6 GND nmos W=0.0975U L=0.065U
M795_ #156 __k Sa_af_53_6 Vdd pmos W=0.1625U L=0.065U
M796_keeper #440 #fb439# Sa_af_53_6 Vdd pmos W=0.0975U L=0.065U
M797_keeper #441 #fb439# Sa_af_53_6 GND nmos W=0.0975U L=0.065U
M798_ #131 __v __k GND nmos W=0.39U L=0.065U
M799_ #133 __ia __k Vdd pmos W=0.65U L=0.065U
M800_keeper #443 #fb442# __k Vdd pmos W=0.0975U L=0.065U
M801_keeper #444 #fb442# __k GND nmos W=0.0975U L=0.065U
M802_ #128 __pa #131 GND nmos W=0.39U L=0.065U
M803_ #137 __k Sa_at_50_6 Vdd pmos W=0.1625U L=0.065U
M804_keeper #446 #fb445# Sa_at_50_6 Vdd pmos W=0.0975U L=0.065U
M805_keeper #447 #fb445# Sa_at_50_6 GND nmos W=0.0975U L=0.065U
M806_ #140 __k Sa_af_50_6 Vdd pmos W=0.1625U L=0.065U
M807_keeper #449 #fb448# Sa_af_50_6 Vdd pmos W=0.0975U L=0.065U
M808_keeper #450 #fb448# Sa_af_50_6 GND nmos W=0.0975U L=0.065U
M809_ #143 __k Sa_at_51_6 Vdd pmos W=0.1625U L=0.065U
M810_keeper #452 #fb451# Sa_at_51_6 Vdd pmos W=0.0975U L=0.065U
M811_keeper #453 #fb451# Sa_at_51_6 GND nmos W=0.0975U L=0.065U
M812_ #146 __k Sa_af_51_6 Vdd pmos W=0.1625U L=0.065U
M813_keeper #455 #fb454# Sa_af_51_6 Vdd pmos W=0.0975U L=0.065U
M814_keeper #456 #fb454# Sa_af_51_6 GND nmos W=0.0975U L=0.065U
M815_ #149 __k Sa_at_52_6 Vdd pmos W=0.1625U L=0.065U
M816_keeper #458 #fb457# Sa_at_52_6 Vdd pmos W=0.0975U L=0.065U
M817_keeper #459 #fb457# Sa_at_52_6 GND nmos W=0.0975U L=0.065U
M818_ #152 __k Sa_af_52_6 Vdd pmos W=0.1625U L=0.065U
M819_keeper #461 #fb460# Sa_af_52_6 Vdd pmos W=0.0975U L=0.065U
M820_keeper #462 #fb460# Sa_af_52_6 GND nmos W=0.0975U L=0.065U
M821_ #159 __k Sb_at_50_6 Vdd pmos W=0.1625U L=0.065U
M822_ #161 I_aa Sb_at_50_6 GND nmos W=0.0975U L=0.065U
M823_keeper #464 #fb463# Sb_at_50_6 Vdd pmos W=0.0975U L=0.065U
M824_keeper #465 #fb463# Sb_at_50_6 GND nmos W=0.0975U L=0.065U
M825_ #164 __k Sb_af_50_6 Vdd pmos W=0.1625U L=0.065U
M826_ #166 I_aa Sb_af_50_6 GND nmos W=0.0975U L=0.065U
M827_keeper #467 #fb466# Sb_af_50_6 Vdd pmos W=0.0975U L=0.065U
M828_keeper #468 #fb466# Sb_af_50_6 GND nmos W=0.0975U L=0.065U
M829_ #168 __qr __pt_50_6 GND nmos W=0.0975U L=0.065U
M830_keeper #470 #fb469# __pt_50_6 Vdd pmos W=0.0975U L=0.065U
M831_keeper #471 #fb469# __pt_50_6 GND nmos W=0.0975U L=0.065U
M832_ #171 __qr __pf_50_6 GND nmos W=0.0975U L=0.065U
M833_ #173 w __pf_50_6 Vdd pmos W=0.1625U L=0.065U
M834_keeper #473 #fb472# __pf_50_6 Vdd pmos W=0.0975U L=0.065U
M835_keeper #474 #fb472# __pf_50_6 GND nmos W=0.0975U L=0.065U
M836_ #177 __k Sb_at_51_6 Vdd pmos W=0.1625U L=0.065U
M837_ #179 I_aa Sb_at_51_6 GND nmos W=0.0975U L=0.065U
M838_keeper #476 #fb475# Sb_at_51_6 Vdd pmos W=0.0975U L=0.065U
M839_keeper #477 #fb475# Sb_at_51_6 GND nmos W=0.0975U L=0.065U
M840_ #181 __k Sb_af_51_6 Vdd pmos W=0.1625U L=0.065U
M841_ #183 I_aa Sb_af_51_6 GND nmos W=0.0975U L=0.065U
M842_keeper #479 #fb478# Sb_af_51_6 Vdd pmos W=0.0975U L=0.065U
M843_keeper #480 #fb478# Sb_af_51_6 GND nmos W=0.0975U L=0.065U
M844_ #185 __qr __pt_51_6 GND nmos W=0.0975U L=0.065U
M845_keeper #482 #fb481# __pt_51_6 Vdd pmos W=0.0975U L=0.065U
M846_keeper #483 #fb481# __pt_51_6 GND nmos W=0.0975U L=0.065U
M847_ #188 __qr __pf_51_6 GND nmos W=0.0975U L=0.065U
M848_ #190 w __pf_51_6 Vdd pmos W=0.1625U L=0.065U
M849_keeper #485 #fb484# __pf_51_6 Vdd pmos W=0.0975U L=0.065U
M850_keeper #486 #fb484# __pf_51_6 GND nmos W=0.0975U L=0.065U
M851_ #194 __k Sb_at_52_6 Vdd pmos W=0.1625U L=0.065U
M852_ #196 I_aa Sb_at_52_6 GND nmos W=0.0975U L=0.065U
M853_keeper #488 #fb487# Sb_at_52_6 Vdd pmos W=0.0975U L=0.065U
M854_keeper #489 #fb487# Sb_at_52_6 GND nmos W=0.0975U L=0.065U
M855_ #198 __k Sb_af_52_6 Vdd pmos W=0.1625U L=0.065U
M856_ #200 I_aa Sb_af_52_6 GND nmos W=0.0975U L=0.065U
M857_keeper #491 #fb490# Sb_af_52_6 Vdd pmos W=0.0975U L=0.065U
M858_keeper #492 #fb490# Sb_af_52_6 GND nmos W=0.0975U L=0.065U
M859_ #202 __qr __pt_52_6 GND nmos W=0.0975U L=0.065U
M860_keeper #494 #fb493# __pt_52_6 Vdd pmos W=0.0975U L=0.065U
M861_keeper #495 #fb493# __pt_52_6 GND nmos W=0.0975U L=0.065U
M862_ #205 __qr __pf_52_6 GND nmos W=0.0975U L=0.065U
M863_ #207 w __pf_52_6 Vdd pmos W=0.1625U L=0.065U
M864_keeper #497 #fb496# __pf_52_6 Vdd pmos W=0.0975U L=0.065U
M865_keeper #498 #fb496# __pf_52_6 GND nmos W=0.0975U L=0.065U
M866_ #211 __k Sb_at_53_6 Vdd pmos W=0.1625U L=0.065U
M867_ #213 I_aa Sb_at_53_6 GND nmos W=0.0975U L=0.065U
M868_keeper #500 #fb499# Sb_at_53_6 Vdd pmos W=0.0975U L=0.065U
M869_keeper #501 #fb499# Sb_at_53_6 GND nmos W=0.0975U L=0.065U
M870_ #215 __k Sb_af_53_6 Vdd pmos W=0.1625U L=0.065U
M871_ #217 I_aa Sb_af_53_6 GND nmos W=0.0975U L=0.065U
M872_keeper #503 #fb502# Sb_af_53_6 Vdd pmos W=0.0975U L=0.065U
M873_keeper #504 #fb502# Sb_af_53_6 GND nmos W=0.0975U L=0.065U
M874_ #219 __qr __pt_53_6 GND nmos W=0.0975U L=0.065U
M875_keeper #506 #fb505# __pt_53_6 Vdd pmos W=0.0975U L=0.065U
M876_keeper #507 #fb505# __pt_53_6 GND nmos W=0.0975U L=0.065U
M877_ #222 __qr __pf_53_6 GND nmos W=0.0975U L=0.065U
M878_ #224 w __pf_53_6 Vdd pmos W=0.1625U L=0.065U
M879_keeper #509 #fb508# __pf_53_6 Vdd pmos W=0.0975U L=0.065U
M880_keeper #510 #fb508# __pf_53_6 GND nmos W=0.0975U L=0.065U
M881_ #228 __k Sb_at_54_6 Vdd pmos W=0.1625U L=0.065U
M882_ #230 I_aa Sb_at_54_6 GND nmos W=0.0975U L=0.065U
M883_keeper #512 #fb511# Sb_at_54_6 Vdd pmos W=0.0975U L=0.065U
M884_keeper #513 #fb511# Sb_at_54_6 GND nmos W=0.0975U L=0.065U
M885_ #232 __k Sb_af_54_6 Vdd pmos W=0.1625U L=0.065U
M886_ #234 I_aa Sb_af_54_6 GND nmos W=0.0975U L=0.065U
M887_keeper #515 #fb514# Sb_af_54_6 Vdd pmos W=0.0975U L=0.065U
M888_keeper #516 #fb514# Sb_af_54_6 GND nmos W=0.0975U L=0.065U
M889_ #236 __qr __pt_54_6 GND nmos W=0.0975U L=0.065U
M890_keeper #518 #fb517# __pt_54_6 Vdd pmos W=0.0975U L=0.065U
M891_keeper #519 #fb517# __pt_54_6 GND nmos W=0.0975U L=0.065U
M892_ #239 __qr __pf_54_6 GND nmos W=0.0975U L=0.065U
M893_ #241 w __pf_54_6 Vdd pmos W=0.1625U L=0.065U
M894_keeper #521 #fb520# __pf_54_6 Vdd pmos W=0.0975U L=0.065U
M895_keeper #522 #fb520# __pf_54_6 GND nmos W=0.0975U L=0.065U
M896_ #245 __k Sb_at_55_6 Vdd pmos W=0.1625U L=0.065U
M897_ #247 I_aa Sb_at_55_6 GND nmos W=0.0975U L=0.065U
M898_keeper #524 #fb523# Sb_at_55_6 Vdd pmos W=0.0975U L=0.065U
M899_keeper #525 #fb523# Sb_at_55_6 GND nmos W=0.0975U L=0.065U
M900_ #249 __k Sb_af_55_6 Vdd pmos W=0.1625U L=0.065U
M901_ #251 I_aa Sb_af_55_6 GND nmos W=0.0975U L=0.065U
M902_keeper #527 #fb526# Sb_af_55_6 Vdd pmos W=0.0975U L=0.065U
M903_keeper #528 #fb526# Sb_af_55_6 GND nmos W=0.0975U L=0.065U
M904_ #253 __qr __pt_55_6 GND nmos W=0.0975U L=0.065U
M905_keeper #530 #fb529# __pt_55_6 Vdd pmos W=0.0975U L=0.065U
M906_keeper #531 #fb529# __pt_55_6 GND nmos W=0.0975U L=0.065U
M907_ #256 __qr __pf_55_6 GND nmos W=0.0975U L=0.065U
M908_ #258 w __pf_55_6 Vdd pmos W=0.1625U L=0.065U
M909_keeper #533 #fb532# __pf_55_6 Vdd pmos W=0.0975U L=0.065U
M910_keeper #534 #fb532# __pf_55_6 GND nmos W=0.0975U L=0.065U
M911_ #262 __k Sb_at_56_6 Vdd pmos W=0.1625U L=0.065U
M912_ #264 I_aa Sb_at_56_6 GND nmos W=0.0975U L=0.065U
M913_keeper #536 #fb535# Sb_at_56_6 Vdd pmos W=0.0975U L=0.065U
M914_keeper #537 #fb535# Sb_at_56_6 GND nmos W=0.0975U L=0.065U
M915_ #266 __k Sb_af_56_6 Vdd pmos W=0.1625U L=0.065U
M916_ #268 I_aa Sb_af_56_6 GND nmos W=0.0975U L=0.065U
M917_keeper #539 #fb538# Sb_af_56_6 Vdd pmos W=0.0975U L=0.065U
M918_keeper #540 #fb538# Sb_af_56_6 GND nmos W=0.0975U L=0.065U
M919_ #270 __qr __pt_56_6 GND nmos W=0.0975U L=0.065U
M920_keeper #542 #fb541# __pt_56_6 Vdd pmos W=0.0975U L=0.065U
M921_keeper #543 #fb541# __pt_56_6 GND nmos W=0.0975U L=0.065U
M922_ #273 __qr __pf_56_6 GND nmos W=0.0975U L=0.065U
M923_ #275 w __pf_56_6 Vdd pmos W=0.1625U L=0.065U
M924_keeper #545 #fb544# __pf_56_6 Vdd pmos W=0.0975U L=0.065U
M925_keeper #546 #fb544# __pf_56_6 GND nmos W=0.0975U L=0.065U
M926_ #279 __k Sb_at_57_6 Vdd pmos W=0.1625U L=0.065U
M927_ #281 I_aa Sb_at_57_6 GND nmos W=0.0975U L=0.065U
M928_keeper #548 #fb547# Sb_at_57_6 Vdd pmos W=0.0975U L=0.065U
M929_keeper #549 #fb547# Sb_at_57_6 GND nmos W=0.0975U L=0.065U
M930_ #283 __k Sb_af_57_6 Vdd pmos W=0.1625U L=0.065U
M931_ #285 I_aa Sb_af_57_6 GND nmos W=0.0975U L=0.065U
M932_keeper #551 #fb550# Sb_af_57_6 Vdd pmos W=0.0975U L=0.065U
M933_keeper #552 #fb550# Sb_af_57_6 GND nmos W=0.0975U L=0.065U
M934_ #287 __qr __pt_57_6 GND nmos W=0.0975U L=0.065U
M935_keeper #554 #fb553# __pt_57_6 Vdd pmos W=0.0975U L=0.065U
M936_keeper #555 #fb553# __pt_57_6 GND nmos W=0.0975U L=0.065U
M937_ #290 __qr __pf_57_6 GND nmos W=0.0975U L=0.065U
M938_ #292 w __pf_57_6 Vdd pmos W=0.1625U L=0.065U
M939_keeper #557 #fb556# __pf_57_6 Vdd pmos W=0.0975U L=0.065U
M940_keeper #558 #fb556# __pf_57_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: CounterLogic<> -----
*
*---- act defproc: Counter<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Cnt.req Cnt.t[0] Cnt.t[1] Cnt.t[2] Cnt.t[3] Cnt.t[4] Cnt.t[5] Cnt.t[6] Cnt.t[7] Cnt.f[0] Cnt.f[1] Cnt.f[2] Cnt.f[3] Cnt.f[4] Cnt.f[5] Cnt.f[6] Cnt.f[7]
*
.subckt Counter reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6
+ Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O Cnt_areq:I Cnt_at_50_6:O Cnt_at_51_6:O Cnt_at_52_6:O Cnt_at_53_6:O Cnt_at_54_6:O Cnt_at_55_6:O Cnt_at_56_6:O Cnt_at_57_6:O Cnt_af_50_6:O Cnt_af_51_6:O Cnt_af_52_6:O Cnt_af_53_6:O Cnt_af_54_6:O Cnt_af_55_6:O Cnt_af_56_6:O Cnt_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xreg reset reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6
+ reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6
+ reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa reg_aR_areq reg_aR_at_50_6 reg_aR_at_51_6
+ reg_aR_at_52_6 reg_aR_at_53_6 reg_aR_at_54_6 reg_aR_at_55_6 reg_aR_at_56_6 reg_aR_at_57_6 reg_aR_af_50_6
+ reg_aR_af_51_6 reg_aR_af_52_6 reg_aR_af_53_6 reg_aR_af_54_6 reg_aR_af_55_6 reg_aR_af_56_6 reg_aR_af_57_6
+ Reg8
xinc reset inc_aSa_at_50_6 inc_aSa_at_51_6 inc_aSa_at_52_6 inc_aSa_at_53_6 inc_aSa_af_50_6 inc_aSa_af_51_6
+ inc_aSa_af_52_6 inc_aSa_af_53_6 inc_aSb_at_50_6 inc_aSb_at_51_6 inc_aSb_at_52_6 inc_aSb_at_53_6
+ inc_aSb_at_54_6 inc_aSb_at_55_6 inc_aSb_at_56_6 inc_aSb_at_57_6 inc_aSb_af_50_6 inc_aSb_af_51_6
+ inc_aSb_af_52_6 inc_aSb_af_53_6 inc_aSb_af_54_6 inc_aSb_af_55_6 inc_aSb_af_56_6 inc_aSb_af_57_6
+ inc_aSo_at_50_6 inc_aSo_at_51_6 inc_aSo_at_52_6 inc_aSo_at_53_6 inc_aSo_at_54_6 inc_aSo_at_55_6
+ inc_aSo_at_56_6 inc_aSo_at_57_6 inc_aSo_af_50_6 inc_aSo_af_51_6 inc_aSo_af_52_6 inc_aSo_af_53_6
+ inc_aSo_af_54_6 inc_aSo_af_55_6 inc_aSo_af_56_6 inc_aSo_af_57_6 CounterInc
xlogic reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Cnt_areq
+ Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6 Cnt_af_50_6
+ Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6 reg_aW_at_50_6
+ reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6 reg_aW_at_56_6 reg_aW_at_57_6
+ reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6 reg_aW_af_55_6 reg_aW_af_56_6
+ reg_aW_af_57_6 reg_aW_aa reg_aR_areq reg_aR_at_50_6 reg_aR_at_51_6 reg_aR_at_52_6 reg_aR_at_53_6
+ reg_aR_at_54_6 reg_aR_at_55_6 reg_aR_at_56_6 reg_aR_at_57_6 reg_aR_af_50_6 reg_aR_af_51_6 reg_aR_af_52_6
+ reg_aR_af_53_6 reg_aR_af_54_6 reg_aR_af_55_6 reg_aR_af_56_6 reg_aR_af_57_6 inc_aSa_at_50_6 inc_aSa_at_51_6
+ inc_aSa_at_52_6 inc_aSa_at_53_6 inc_aSa_af_50_6 inc_aSa_af_51_6 inc_aSa_af_52_6 inc_aSa_af_53_6
+ inc_aSb_at_50_6 inc_aSb_at_51_6 inc_aSb_at_52_6 inc_aSb_at_53_6 inc_aSb_at_54_6 inc_aSb_at_55_6
+ inc_aSb_at_56_6 inc_aSb_at_57_6 inc_aSb_af_50_6 inc_aSb_af_51_6 inc_aSb_af_52_6 inc_aSb_af_53_6
+ inc_aSb_af_54_6 inc_aSb_af_55_6 inc_aSb_af_56_6 inc_aSb_af_57_6 inc_aSo_at_50_6 inc_aSo_at_51_6
+ inc_aSo_at_52_6 inc_aSo_at_53_6 inc_aSo_at_54_6 inc_aSo_at_55_6 inc_aSo_at_56_6 inc_aSo_at_57_6
+ inc_aSo_af_50_6 inc_aSo_af_51_6 inc_aSo_af_52_6 inc_aSo_af_53_6 inc_aSo_af_54_6 inc_aSo_af_55_6
+ inc_aSo_af_56_6 inc_aSo_af_57_6 CounterLogic
.ends
*---- end of process: Counter<> -----
*
*---- act defproc: QSlicer<> -----
* raw ports:  I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] A.req O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3]
*
.subckt QSlicer I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 A_areq
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6
*.PININFO I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I A_areq:I O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __o__t_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o__f_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O_at_50_6 (combinational)
* O_af_50_6 (combinational)
* __o__t_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o__f_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O_at_51_6 (combinational)
* O_af_51_6 (combinational)
* __o__t_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o__f_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O_at_52_6 (combinational)
* O_af_52_6 (combinational)
* __o__t_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o__f_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* O_at_53_6 (combinational)
* O_af_53_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd I_at_50_6 __o__t_50_6 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd I_af_50_6 __o__f_50_6 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __o__t_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __o__f_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I_at_51_6 __o__t_51_6 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I_af_51_6 __o__f_51_6 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __o__t_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __o__f_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd I_at_52_6 __o__t_52_6 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd I_af_52_6 __o__f_52_6 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __o__t_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __o__f_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd I_at_53_6 __o__t_53_6 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd I_af_53_6 __o__f_53_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __o__t_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __o__f_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd __o__t_50_6 #fb35# Vdd pmos W=0.1625U L=0.13U
M17_ Vdd __o__f_50_6 #fb38# Vdd pmos W=0.1625U L=0.13U
M18_keeper Vdd GND #36 Vdd pmos W=0.0975U L=0.585U
M19_ Vdd __o__t_51_6 #fb41# Vdd pmos W=0.1625U L=0.13U
M20_keeper Vdd GND #39 Vdd pmos W=0.0975U L=0.585U
M21_ Vdd __o__f_51_6 #fb44# Vdd pmos W=0.1625U L=0.13U
M22_keeper Vdd GND #42 Vdd pmos W=0.0975U L=0.585U
M23_ Vdd __o__t_52_6 #fb47# Vdd pmos W=0.1625U L=0.13U
M24_keeper Vdd GND #45 Vdd pmos W=0.0975U L=0.585U
M25_ Vdd __o__f_52_6 #fb50# Vdd pmos W=0.1625U L=0.13U
M26_keeper Vdd GND #48 Vdd pmos W=0.0975U L=0.585U
M27_ Vdd __o__t_53_6 #fb53# Vdd pmos W=0.1625U L=0.13U
M28_keeper Vdd GND #51 Vdd pmos W=0.0975U L=0.585U
M29_ Vdd __o__f_53_6 #fb56# Vdd pmos W=0.1625U L=0.13U
M30_keeper Vdd GND #54 Vdd pmos W=0.0975U L=0.585U
M31_keeper Vdd GND #57 Vdd pmos W=0.0975U L=0.585U
M32_ GND I_at_50_6 #3 GND nmos W=0.0975U L=0.065U
M33_ GND I_af_50_6 #7 GND nmos W=0.0975U L=0.065U
M34_ GND __o__t_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M35_ GND __o__f_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M36_ GND I_at_51_6 #12 GND nmos W=0.0975U L=0.065U
M37_ GND I_af_51_6 #15 GND nmos W=0.0975U L=0.065U
M38_ GND __o__t_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M39_ GND __o__f_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M40_ GND I_at_52_6 #20 GND nmos W=0.0975U L=0.065U
M41_ GND I_af_52_6 #23 GND nmos W=0.0975U L=0.065U
M42_ GND __o__t_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M43_ GND __o__f_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M44_ GND I_at_53_6 #28 GND nmos W=0.0975U L=0.065U
M45_ GND I_af_53_6 #31 GND nmos W=0.0975U L=0.065U
M46_ GND __o__t_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M47_ GND __o__f_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M48_ GND __o__t_50_6 #fb35# GND nmos W=0.0975U L=0.13U
M49_ GND __o__f_50_6 #fb38# GND nmos W=0.0975U L=0.13U
M50_keeper GND Vdd #37 GND nmos W=0.0975U L=0.715U
M51_ GND __o__t_51_6 #fb41# GND nmos W=0.0975U L=0.13U
M52_keeper GND Vdd #40 GND nmos W=0.0975U L=0.715U
M53_ GND __o__f_51_6 #fb44# GND nmos W=0.0975U L=0.13U
M54_keeper GND Vdd #43 GND nmos W=0.0975U L=0.715U
M55_ GND __o__t_52_6 #fb47# GND nmos W=0.0975U L=0.13U
M56_keeper GND Vdd #46 GND nmos W=0.0975U L=0.715U
M57_ GND __o__f_52_6 #fb50# GND nmos W=0.0975U L=0.13U
M58_keeper GND Vdd #49 GND nmos W=0.0975U L=0.715U
M59_ GND __o__t_53_6 #fb53# GND nmos W=0.0975U L=0.13U
M60_keeper GND Vdd #52 GND nmos W=0.0975U L=0.715U
M61_ GND __o__f_53_6 #fb56# GND nmos W=0.0975U L=0.13U
M62_keeper GND Vdd #55 GND nmos W=0.0975U L=0.715U
M63_keeper GND Vdd #58 GND nmos W=0.0975U L=0.715U
M64_ #3 A_areq __o__t_50_6 GND nmos W=0.0975U L=0.065U
M65_keeper #36 #fb35# __o__t_50_6 Vdd pmos W=0.0975U L=0.065U
M66_keeper #37 #fb35# __o__t_50_6 GND nmos W=0.0975U L=0.065U
M67_ #7 A_areq __o__f_50_6 GND nmos W=0.0975U L=0.065U
M68_keeper #39 #fb38# __o__f_50_6 Vdd pmos W=0.0975U L=0.065U
M69_keeper #40 #fb38# __o__f_50_6 GND nmos W=0.0975U L=0.065U
M70_ #12 A_areq __o__t_51_6 GND nmos W=0.0975U L=0.065U
M71_keeper #42 #fb41# __o__t_51_6 Vdd pmos W=0.0975U L=0.065U
M72_keeper #43 #fb41# __o__t_51_6 GND nmos W=0.0975U L=0.065U
M73_ #15 A_areq __o__f_51_6 GND nmos W=0.0975U L=0.065U
M74_keeper #45 #fb44# __o__f_51_6 Vdd pmos W=0.0975U L=0.065U
M75_keeper #46 #fb44# __o__f_51_6 GND nmos W=0.0975U L=0.065U
M76_ #20 A_areq __o__t_52_6 GND nmos W=0.0975U L=0.065U
M77_keeper #48 #fb47# __o__t_52_6 Vdd pmos W=0.0975U L=0.065U
M78_keeper #49 #fb47# __o__t_52_6 GND nmos W=0.0975U L=0.065U
M79_ #23 A_areq __o__f_52_6 GND nmos W=0.0975U L=0.065U
M80_keeper #51 #fb50# __o__f_52_6 Vdd pmos W=0.0975U L=0.065U
M81_keeper #52 #fb50# __o__f_52_6 GND nmos W=0.0975U L=0.065U
M82_ #28 A_areq __o__t_53_6 GND nmos W=0.0975U L=0.065U
M83_keeper #54 #fb53# __o__t_53_6 Vdd pmos W=0.0975U L=0.065U
M84_keeper #55 #fb53# __o__t_53_6 GND nmos W=0.0975U L=0.065U
M85_ #31 A_areq __o__f_53_6 GND nmos W=0.0975U L=0.065U
M86_keeper #57 #fb56# __o__f_53_6 Vdd pmos W=0.0975U L=0.065U
M87_keeper #58 #fb56# __o__f_53_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: QSlicer<> -----
*
*---- act defproc: Seq7<> -----
* raw ports:  reset A0.req A0.a A1.req A1.a A2.req A2.a A3.req A3.a A4.req A4.a A5.req A5.a A6.req A6.a
*
.subckt Seq7 reset A0_areq A0_aa A1_areq A1_aa A2_areq A2_aa A3_areq A3_aa A4_areq A4_aa A5_areq A5_aa
+ A6_areq A6_aa
*.PININFO reset:I A0_areq:O A0_aa:I A1_areq:O A1_aa:I A2_areq:O A2_aa:I A3_areq:O A3_aa:I A4_areq:O A4_aa:I A5_areq:O A5_aa:I A6_areq:O A6_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* q7 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __r (combinational)
* __a_56_6 (combinational)
* q6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a_50_6 (combinational)
* q5 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a_51_6 (combinational)
* q4 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a_52_6 (combinational)
* q3 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a_53_6 (combinational)
* q2 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a_54_6 (combinational)
* q1 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __a_55_6 (combinational)
* A0_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q7 (combinational)
* A1_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q6 (combinational)
* A2_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q5 (combinational)
* A3_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q4 (combinational)
* A4_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q3 (combinational)
* A5_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q2 (combinational)
* A6_areq (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __q1 (combinational)
*
* --- end node flags ---
*
M0_ Vdd __r q7 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd __a_56_6 #4 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __a_50_6 #8 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __a_51_6 #13 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __a_52_6 #17 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __a_53_6 #21 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __a_54_6 #25 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __a_55_6 #29 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __q7 #33 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __q6 #37 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __q5 #41 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __q4 #45 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd __q3 #49 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd __q2 #53 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __q1 #57 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M16_ Vdd A0_aa __a_50_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd A1_aa __a_51_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd A2_aa __a_52_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd A3_aa __a_53_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd A4_aa __a_54_6 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd A5_aa __a_55_6 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd A6_aa __a_56_6 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd q7 __q7 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd q6 __q6 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd q5 __q5 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd q4 __q4 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd q3 __q3 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd q2 __q2 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd q1 __q1 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd q7 #fb60# Vdd pmos W=0.1625U L=0.13U
M31_ Vdd q6 #fb63# Vdd pmos W=0.1625U L=0.13U
M32_keeper Vdd GND #61 Vdd pmos W=0.0975U L=0.585U
M33_ Vdd q5 #fb66# Vdd pmos W=0.1625U L=0.13U
M34_keeper Vdd GND #64 Vdd pmos W=0.0975U L=0.585U
M35_ Vdd q4 #fb69# Vdd pmos W=0.1625U L=0.13U
M36_keeper Vdd GND #67 Vdd pmos W=0.0975U L=0.585U
M37_ Vdd q3 #fb72# Vdd pmos W=0.1625U L=0.13U
M38_keeper Vdd GND #70 Vdd pmos W=0.0975U L=0.585U
M39_ Vdd q2 #fb75# Vdd pmos W=0.1625U L=0.13U
M40_keeper Vdd GND #73 Vdd pmos W=0.0975U L=0.585U
M41_ Vdd q1 #fb78# Vdd pmos W=0.1625U L=0.13U
M42_keeper Vdd GND #76 Vdd pmos W=0.0975U L=0.585U
M43_ Vdd A0_areq #fb81# Vdd pmos W=0.1625U L=0.13U
M44_keeper Vdd GND #79 Vdd pmos W=0.0975U L=0.585U
M45_ Vdd A1_areq #fb84# Vdd pmos W=0.1625U L=0.13U
M46_keeper Vdd GND #82 Vdd pmos W=0.0975U L=0.26U
M47_ Vdd A2_areq #fb87# Vdd pmos W=0.1625U L=0.13U
M48_keeper Vdd GND #85 Vdd pmos W=0.0975U L=0.26U
M49_ Vdd A3_areq #fb90# Vdd pmos W=0.1625U L=0.13U
M50_keeper Vdd GND #88 Vdd pmos W=0.0975U L=0.26U
M51_ Vdd A4_areq #fb93# Vdd pmos W=0.1625U L=0.13U
M52_keeper Vdd GND #91 Vdd pmos W=0.0975U L=0.26U
M53_ Vdd A5_areq #fb96# Vdd pmos W=0.1625U L=0.13U
M54_keeper Vdd GND #94 Vdd pmos W=0.0975U L=0.26U
M55_ Vdd A6_areq #fb99# Vdd pmos W=0.1625U L=0.13U
M56_keeper Vdd GND #97 Vdd pmos W=0.0975U L=0.26U
M57_keeper Vdd GND #100 Vdd pmos W=0.0975U L=0.26U
M58_ GND __a_56_6 #7 GND nmos W=0.0975U L=0.065U
M59_ GND reset q6 GND nmos W=0.0975U L=0.065U
M60_ GND __a_50_6 #12 GND nmos W=0.0975U L=0.065U
M61_ GND reset q5 GND nmos W=0.0975U L=0.065U
M62_ GND __a_51_6 #16 GND nmos W=0.0975U L=0.065U
M63_ GND reset q4 GND nmos W=0.0975U L=0.065U
M64_ GND __a_52_6 #20 GND nmos W=0.0975U L=0.065U
M65_ GND reset q3 GND nmos W=0.0975U L=0.065U
M66_ GND __a_53_6 #24 GND nmos W=0.0975U L=0.065U
M67_ GND reset q2 GND nmos W=0.0975U L=0.065U
M68_ GND __a_54_6 #28 GND nmos W=0.0975U L=0.065U
M69_ GND reset q1 GND nmos W=0.0975U L=0.065U
M70_ GND __a_55_6 #31 GND nmos W=0.0975U L=0.065U
M71_ GND __q7 A0_areq GND nmos W=0.0975U L=0.065U
M72_ GND __q6 A1_areq GND nmos W=0.0975U L=0.065U
M73_ GND __q5 A2_areq GND nmos W=0.0975U L=0.065U
M74_ GND __q4 A3_areq GND nmos W=0.0975U L=0.065U
M75_ GND __q3 A4_areq GND nmos W=0.0975U L=0.065U
M76_ GND __q2 A5_areq GND nmos W=0.0975U L=0.065U
M77_ GND __q1 A6_areq GND nmos W=0.0975U L=0.065U
M78_ GND reset __r GND nmos W=0.0975U L=0.065U
M79_ GND A0_aa __a_50_6 GND nmos W=0.0975U L=0.065U
M80_ GND A1_aa __a_51_6 GND nmos W=0.0975U L=0.065U
M81_ GND A2_aa __a_52_6 GND nmos W=0.0975U L=0.065U
M82_ GND A3_aa __a_53_6 GND nmos W=0.0975U L=0.065U
M83_ GND A4_aa __a_54_6 GND nmos W=0.0975U L=0.065U
M84_ GND A5_aa __a_55_6 GND nmos W=0.0975U L=0.065U
M85_ GND A6_aa __a_56_6 GND nmos W=0.0975U L=0.065U
M86_ GND q7 __q7 GND nmos W=0.0975U L=0.065U
M87_ GND q6 __q6 GND nmos W=0.0975U L=0.065U
M88_ GND q5 __q5 GND nmos W=0.0975U L=0.065U
M89_ GND q4 __q4 GND nmos W=0.0975U L=0.065U
M90_ GND q3 __q3 GND nmos W=0.0975U L=0.065U
M91_ GND q2 __q2 GND nmos W=0.0975U L=0.065U
M92_ GND q1 __q1 GND nmos W=0.0975U L=0.065U
M93_ GND q7 #fb60# GND nmos W=0.0975U L=0.13U
M94_ GND q6 #fb63# GND nmos W=0.0975U L=0.13U
M95_keeper GND Vdd #62 GND nmos W=0.0975U L=1.495U
M96_ GND q5 #fb66# GND nmos W=0.0975U L=0.13U
M97_keeper GND Vdd #65 GND nmos W=0.0975U L=1.495U
M98_ GND q4 #fb69# GND nmos W=0.0975U L=0.13U
M99_keeper GND Vdd #68 GND nmos W=0.0975U L=1.495U
M100_ GND q3 #fb72# GND nmos W=0.0975U L=0.13U
M101_keeper GND Vdd #71 GND nmos W=0.0975U L=1.495U
M102_ GND q2 #fb75# GND nmos W=0.0975U L=0.13U
M103_keeper GND Vdd #74 GND nmos W=0.0975U L=1.495U
M104_ GND q1 #fb78# GND nmos W=0.0975U L=0.13U
M105_keeper GND Vdd #77 GND nmos W=0.0975U L=1.495U
M106_ GND A0_areq #fb81# GND nmos W=0.0975U L=0.13U
M107_keeper GND Vdd #80 GND nmos W=0.0975U L=1.495U
M108_ GND A1_areq #fb84# GND nmos W=0.0975U L=0.13U
M109_keeper GND Vdd #83 GND nmos W=0.0975U L=1.495U
M110_ GND A2_areq #fb87# GND nmos W=0.0975U L=0.13U
M111_keeper GND Vdd #86 GND nmos W=0.0975U L=1.495U
M112_ GND A3_areq #fb90# GND nmos W=0.0975U L=0.13U
M113_keeper GND Vdd #89 GND nmos W=0.0975U L=1.495U
M114_ GND A4_areq #fb93# GND nmos W=0.0975U L=0.13U
M115_keeper GND Vdd #92 GND nmos W=0.0975U L=1.495U
M116_ GND A5_areq #fb96# GND nmos W=0.0975U L=0.13U
M117_keeper GND Vdd #95 GND nmos W=0.0975U L=1.495U
M118_ GND A6_areq #fb99# GND nmos W=0.0975U L=0.13U
M119_keeper GND Vdd #98 GND nmos W=0.0975U L=1.495U
M120_keeper GND Vdd #101 GND nmos W=0.0975U L=1.495U
M121_ #4 q6 q7 Vdd pmos W=0.1625U L=0.065U
M122_ #7 q6 q7 GND nmos W=0.0975U L=0.065U
M123_keeper #61 #fb60# q7 Vdd pmos W=0.0975U L=0.065U
M124_keeper #62 #fb60# q7 GND nmos W=0.0975U L=0.065U
M125_ #8 q5 q6 Vdd pmos W=0.1625U L=0.065U
M126_ #12 q5 q6 GND nmos W=0.0975U L=0.065U
M127_keeper #64 #fb63# q6 Vdd pmos W=0.0975U L=0.065U
M128_keeper #65 #fb63# q6 GND nmos W=0.0975U L=0.065U
M129_ #13 q4 q5 Vdd pmos W=0.1625U L=0.065U
M130_ #16 q4 q5 GND nmos W=0.0975U L=0.065U
M131_keeper #67 #fb66# q5 Vdd pmos W=0.0975U L=0.065U
M132_keeper #68 #fb66# q5 GND nmos W=0.0975U L=0.065U
M133_ #17 q3 q4 Vdd pmos W=0.1625U L=0.065U
M134_ #20 q3 q4 GND nmos W=0.0975U L=0.065U
M135_keeper #70 #fb69# q4 Vdd pmos W=0.0975U L=0.065U
M136_keeper #71 #fb69# q4 GND nmos W=0.0975U L=0.065U
M137_ #21 q2 q3 Vdd pmos W=0.1625U L=0.065U
M138_ #24 q2 q3 GND nmos W=0.0975U L=0.065U
M139_keeper #73 #fb72# q3 Vdd pmos W=0.0975U L=0.065U
M140_keeper #74 #fb72# q3 GND nmos W=0.0975U L=0.065U
M141_ #25 q1 q2 Vdd pmos W=0.1625U L=0.065U
M142_ #28 q1 q2 GND nmos W=0.0975U L=0.065U
M143_keeper #76 #fb75# q2 Vdd pmos W=0.0975U L=0.065U
M144_keeper #77 #fb75# q2 GND nmos W=0.0975U L=0.065U
M145_ #29 q7 q1 Vdd pmos W=0.1625U L=0.065U
M146_ #31 q7 q1 GND nmos W=0.0975U L=0.065U
M147_keeper #79 #fb78# q1 Vdd pmos W=0.0975U L=0.065U
M148_keeper #80 #fb78# q1 GND nmos W=0.0975U L=0.065U
M149_ #33 A6_aa A0_areq Vdd pmos W=0.1625U L=0.065U
M150_keeper #82 #fb81# A0_areq Vdd pmos W=0.0975U L=0.065U
M151_keeper #83 #fb81# A0_areq GND nmos W=0.0975U L=0.065U
M152_ #37 A0_aa A1_areq Vdd pmos W=0.1625U L=0.065U
M153_keeper #85 #fb84# A1_areq Vdd pmos W=0.0975U L=0.065U
M154_keeper #86 #fb84# A1_areq GND nmos W=0.0975U L=0.065U
M155_ #41 A1_aa A2_areq Vdd pmos W=0.1625U L=0.065U
M156_keeper #88 #fb87# A2_areq Vdd pmos W=0.0975U L=0.065U
M157_keeper #89 #fb87# A2_areq GND nmos W=0.0975U L=0.065U
M158_ #45 A2_aa A3_areq Vdd pmos W=0.1625U L=0.065U
M159_keeper #91 #fb90# A3_areq Vdd pmos W=0.0975U L=0.065U
M160_keeper #92 #fb90# A3_areq GND nmos W=0.0975U L=0.065U
M161_ #49 A3_aa A4_areq Vdd pmos W=0.1625U L=0.065U
M162_keeper #94 #fb93# A4_areq Vdd pmos W=0.0975U L=0.065U
M163_keeper #95 #fb93# A4_areq GND nmos W=0.0975U L=0.065U
M164_ #53 A4_aa A5_areq Vdd pmos W=0.1625U L=0.065U
M165_keeper #97 #fb96# A5_areq Vdd pmos W=0.0975U L=0.065U
M166_keeper #98 #fb96# A5_areq GND nmos W=0.0975U L=0.065U
M167_ #57 A5_aa A6_areq Vdd pmos W=0.1625U L=0.065U
M168_keeper #100 #fb99# A6_areq Vdd pmos W=0.0975U L=0.065U
M169_keeper #101 #fb99# A6_areq GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: Seq7<> -----
*
*---- act defproc: WordBuffer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.a O2.t[0] O2.t[1] O2.t[2] O2.t[3] O2.f[0] O2.f[1] O2.f[2] O2.f[3] O2.a O3.t[0] O3.t[1] O3.t[2] O3.t[3] O3.f[0] O3.f[1] O3.f[2] O3.f[3] O3.a O4.t[0] O4.t[1] O4.t[2] O4.t[3] O4.f[0] O4.f[1] O4.f[2] O4.f[3] O4.a O5.t[0] O5.t[1] O5.t[2] O5.t[3] O5.f[0] O5.f[1] O5.f[2] O5.f[3] O5.a O6.t[0] O6.t[1] O6.t[2] O6.t[3] O6.f[0] O6.f[1] O6.f[2] O6.f[3] O6.a O7.t[0] O7.t[1] O7.t[2] O7.t[3] O7.f[0] O7.f[1] O7.f[2] O7.f[3] O7.a
*
.subckt WordBuffer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6
+ I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6
+ I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6
+ I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6
+ I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6
+ I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6
+ I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O1_at_50_6
+ O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_aa O2_at_50_6 O2_at_51_6
+ O2_at_52_6 O2_at_53_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O2_aa O3_at_50_6 O3_at_51_6 O3_at_52_6
+ O3_at_53_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 O3_aa O4_at_50_6 O4_at_51_6 O4_at_52_6 O4_at_53_6
+ O4_af_50_6 O4_af_51_6 O4_af_52_6 O4_af_53_6 O4_aa O5_at_50_6 O5_at_51_6 O5_at_52_6 O5_at_53_6 O5_af_50_6
+ O5_af_51_6 O5_af_52_6 O5_af_53_6 O5_aa O6_at_50_6 O6_at_51_6 O6_at_52_6 O6_at_53_6 O6_af_50_6 O6_af_51_6
+ O6_af_52_6 O6_af_53_6 O6_aa O7_at_50_6 O7_at_51_6 O7_at_52_6 O7_at_53_6 O7_af_50_6 O7_af_51_6 O7_af_52_6
+ O7_af_53_6 O7_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O1_at_50_6:O O1_at_51_6:O O1_at_52_6:O O1_at_53_6:O O1_af_50_6:O O1_af_51_6:O O1_af_52_6:O O1_af_53_6:O O1_aa:I O2_at_50_6:O O2_at_51_6:O O2_at_52_6:O O2_at_53_6:O O2_af_50_6:O O2_af_51_6:O O2_af_52_6:O O2_af_53_6:O O2_aa:I O3_at_50_6:O O3_at_51_6:O O3_at_52_6:O O3_at_53_6:O O3_af_50_6:O O3_af_51_6:O O3_af_52_6:O O3_af_53_6:O O3_aa:I O4_at_50_6:O O4_at_51_6:O O4_at_52_6:O O4_at_53_6:O O4_af_50_6:O O4_af_51_6:O O4_af_52_6:O O4_af_53_6:O O4_aa:I O5_at_50_6:O O5_at_51_6:O O5_at_52_6:O O5_at_53_6:O O5_af_50_6:O O5_af_51_6:O O5_af_52_6:O O5_af_53_6:O O5_aa:I O6_at_50_6:O O6_at_51_6:O O6_at_52_6:O O6_at_53_6:O O6_af_50_6:O O6_af_51_6:O O6_af_52_6:O O6_af_53_6:O O6_aa:I O7_at_50_6:O O7_at_51_6:O O7_at_52_6:O O7_at_53_6:O O7_af_50_6:O O7_af_51_6:O O7_af_52_6:O O7_af_53_6:O O7_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __c_50_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_53_6 (combinational)
* b_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_52_6 (combinational)
* b_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_51_6 (combinational)
* b_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_50_6 (combinational)
* __c_51_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_57_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_57_6 (combinational)
* b_56_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_56_6 (combinational)
* b_55_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_55_6 (combinational)
* b_54_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_54_6 (combinational)
* __c_52_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_511_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_511_6 (combinational)
* b_510_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_510_6 (combinational)
* b_59_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_59_6 (combinational)
* b_58_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_58_6 (combinational)
* __c_53_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_515_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_515_6 (combinational)
* b_514_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_514_6 (combinational)
* b_513_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_513_6 (combinational)
* b_512_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_512_6 (combinational)
* __c_54_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_519_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_519_6 (combinational)
* b_518_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_518_6 (combinational)
* b_517_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_517_6 (combinational)
* b_516_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_516_6 (combinational)
* __c_55_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_523_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_523_6 (combinational)
* b_522_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_522_6 (combinational)
* b_521_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_521_6 (combinational)
* b_520_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_520_6 (combinational)
* __c_56_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_527_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_527_6 (combinational)
* b_526_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_526_6 (combinational)
* b_525_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_525_6 (combinational)
* b_524_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_524_6 (combinational)
* __c_57_6 (state-holding): pup_reff=3.2; pdn_reff=5.33333
* b_531_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_531_6 (combinational)
* b_530_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_530_6 (combinational)
* b_529_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_529_6 (combinational)
* b_528_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __b_528_6 (combinational)
* d_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* c (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __v (state-holding): pup_reff=3.2; pdn_reff=0.666667
* u7 (combinational)
* u6 (combinational)
* u5 (combinational)
* u4 (combinational)
* u3 (combinational)
* u2 (combinational)
* u1 (combinational)
* __r (combinational)
* __i__a (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __o1a (combinational)
* v (combinational)
* __i__t_50_6 (combinational)
* __i__t_51_6 (combinational)
* __i__t_52_6 (combinational)
* __i__t_53_6 (combinational)
* __i__t_54_6 (combinational)
* __i__t_55_6 (combinational)
* __i__t_56_6 (combinational)
* __i__t_57_6 (combinational)
* __i__t_58_6 (combinational)
* __i__t_59_6 (combinational)
* __i__t_510_6 (combinational)
* __i__t_511_6 (combinational)
* __i__t_512_6 (combinational)
* __i__t_513_6 (combinational)
* __i__t_514_6 (combinational)
* __i__t_515_6 (combinational)
* __i__t_516_6 (combinational)
* __i__t_517_6 (combinational)
* __i__t_518_6 (combinational)
* __i__t_519_6 (combinational)
* __i__t_520_6 (combinational)
* __i__t_521_6 (combinational)
* __i__t_522_6 (combinational)
* __i__t_523_6 (combinational)
* __i__t_524_6 (combinational)
* __i__t_525_6 (combinational)
* __i__t_526_6 (combinational)
* __i__t_527_6 (combinational)
* __i__t_528_6 (combinational)
* __i__t_529_6 (combinational)
* __i__t_530_6 (combinational)
* __i__t_531_6 (combinational)
* __u1 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o1t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O1_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* I_aa (combinational)
* __o1t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O1_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o1t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O1_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o1t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O1_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __u2 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o2t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O2_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o2t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O2_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o2t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O2_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o2t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O2_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __u3 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o3t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O3_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o3t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O3_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o3t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O3_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o3t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O3_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __u4 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o4t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O4_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o4t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O4_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o4t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O4_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o4t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O4_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __u5 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o5t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O5_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o5t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O5_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o5t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O5_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o5t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O5_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __u6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o6t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O6_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o6t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O6_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o6t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O6_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o6t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O6_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __u7 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __o7t_50_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O7_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o7t_51_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O7_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o7t_52_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O7_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __o7t_53_6 (state-holding): pup_reff=0.4; pdn_reff=2.66667
* O7_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* O1_at_50_6 (combinational)
* O1_at_51_6 (combinational)
* O1_at_52_6 (combinational)
* O1_at_53_6 (combinational)
* O2_at_50_6 (combinational)
* O2_at_51_6 (combinational)
* O2_at_52_6 (combinational)
* O2_at_53_6 (combinational)
* O3_at_50_6 (combinational)
* O3_at_51_6 (combinational)
* O3_at_52_6 (combinational)
* O3_at_53_6 (combinational)
* O4_at_50_6 (combinational)
* O4_at_51_6 (combinational)
* O4_at_52_6 (combinational)
* O4_at_53_6 (combinational)
* O5_at_50_6 (combinational)
* O5_at_51_6 (combinational)
* O5_at_52_6 (combinational)
* O5_at_53_6 (combinational)
* O6_at_50_6 (combinational)
* O6_at_51_6 (combinational)
* O6_at_52_6 (combinational)
* O6_at_53_6 (combinational)
* O7_at_50_6 (combinational)
* O7_at_51_6 (combinational)
* O7_at_52_6 (combinational)
* O7_at_53_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd I_at_53_6 #33 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd I_at_57_6 #68 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd I_at_511_6 #103 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I_at_515_6 #138 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I_at_519_6 #173 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I_at_523_6 #208 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd I_at_527_6 #243 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd I_at_531_6 #278 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __c_51_6 #283 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __c_53_6 #286 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __c_55_6 #289 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __c_57_6 #292 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd d_51_6 #296 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd d_53_6 #299 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __e_51_6 #301 Vdd pmos W=0.325U L=0.065U
M15_ Vdd c #310 Vdd pmos W=1.3U L=0.065U
M16_ Vdd __r __v Vdd pmos W=1.3U L=0.065U
M17_ Vdd v __i__a Vdd pmos W=0.65U L=0.065U
M18_ Vdd v #323 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd v #327 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd v #330 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd v #333 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd v #336 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd v #339 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd v #342 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd v #345 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd v #348 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd v #351 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd v #354 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd v #357 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd v #360 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd v #363 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd v #366 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd v #369 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd v #372 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd v #375 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd v #378 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd v #381 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd v #384 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd v #387 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd v #390 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd v #393 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd v #396 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd v #399 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd v #402 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd v #405 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd v #408 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd v #411 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd v #414 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd v #417 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd __i__a __u1 Vdd pmos W=0.325U L=0.065U
M51_ Vdd __r __u1 Vdd pmos W=0.325U L=0.065U
M52_ Vdd __u1 __o1t_50_6 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd __r __o1t_50_6 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd u1 #429 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd __u1 __o1t_51_6 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd __r __o1t_51_6 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd u1 #438 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd __u1 __o1t_52_6 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd __r __o1t_52_6 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd u1 #446 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd __u1 __o1t_53_6 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd __r __o1t_53_6 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd u1 #454 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd __i__a __u2 Vdd pmos W=0.325U L=0.065U
M65_ Vdd __r __u2 Vdd pmos W=0.325U L=0.065U
M66_ Vdd __u2 __o2t_50_6 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd __r __o2t_50_6 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd u2 #464 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd __u2 __o2t_51_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd __r __o2t_51_6 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd u2 #472 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd __u2 __o2t_52_6 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd __r __o2t_52_6 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd u2 #480 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd __u2 __o2t_53_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd __r __o2t_53_6 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd u2 #488 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd __i__a __u3 Vdd pmos W=0.325U L=0.065U
M79_ Vdd __r __u3 Vdd pmos W=0.325U L=0.065U
M80_ Vdd __u3 __o3t_50_6 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd __r __o3t_50_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd u3 #498 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd __u3 __o3t_51_6 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd __r __o3t_51_6 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd u3 #506 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd __u3 __o3t_52_6 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd __r __o3t_52_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd u3 #514 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd __u3 __o3t_53_6 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd __r __o3t_53_6 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd u3 #522 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd __i__a __u4 Vdd pmos W=0.325U L=0.065U
M93_ Vdd __r __u4 Vdd pmos W=0.325U L=0.065U
M94_ Vdd __u4 __o4t_50_6 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd __r __o4t_50_6 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd u4 #532 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd __u4 __o4t_51_6 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd __r __o4t_51_6 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd u4 #540 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd __u4 __o4t_52_6 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd __r __o4t_52_6 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd u4 #548 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd __u4 __o4t_53_6 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd __r __o4t_53_6 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd u4 #556 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd __i__a __u5 Vdd pmos W=0.325U L=0.065U
M107_ Vdd __r __u5 Vdd pmos W=0.325U L=0.065U
M108_ Vdd __u5 __o5t_50_6 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd __r __o5t_50_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd u5 #566 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd __u5 __o5t_51_6 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd __r __o5t_51_6 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd u5 #574 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd __u5 __o5t_52_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd __r __o5t_52_6 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd u5 #582 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd __u5 __o5t_53_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd __r __o5t_53_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd u5 #590 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd __i__a __u6 Vdd pmos W=0.325U L=0.065U
M121_ Vdd __r __u6 Vdd pmos W=0.325U L=0.065U
M122_ Vdd __u6 __o6t_50_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd __r __o6t_50_6 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd u6 #600 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd __u6 __o6t_51_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd __r __o6t_51_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd u6 #608 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd __u6 __o6t_52_6 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd __r __o6t_52_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd u6 #616 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd __u6 __o6t_53_6 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd __r __o6t_53_6 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd u6 #624 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd __i__a __u7 Vdd pmos W=0.325U L=0.065U
M135_ Vdd __r __u7 Vdd pmos W=0.325U L=0.065U
M136_ Vdd __u7 __o7t_50_6 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd __r __o7t_50_6 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd u7 #634 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd __u7 __o7t_51_6 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd __r __o7t_51_6 Vdd pmos W=0.1625U L=0.065U
M141_ Vdd u7 #642 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd __u7 __o7t_52_6 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd __r __o7t_52_6 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd u7 #650 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd __u7 __o7t_53_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd __r __o7t_53_6 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd u7 #658 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M149_ Vdd __v v Vdd pmos W=1.3U L=0.065U
M150_ Vdd __i__a I_aa Vdd pmos W=0.65U L=0.065U
M151_ Vdd O1_aa __o1a Vdd pmos W=0.1625U L=0.065U
M152_ Vdd b_50_6 __b_50_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd I_at_50_6 __i__t_50_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd b_51_6 __b_51_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd I_at_51_6 __i__t_51_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd b_52_6 __b_52_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd I_at_52_6 __i__t_52_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd b_53_6 __b_53_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd I_at_53_6 __i__t_53_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd b_54_6 __b_54_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd I_at_54_6 __i__t_54_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd b_55_6 __b_55_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd I_at_55_6 __i__t_55_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd b_56_6 __b_56_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd I_at_56_6 __i__t_56_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd b_57_6 __b_57_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd I_at_57_6 __i__t_57_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd b_58_6 __b_58_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd I_at_58_6 __i__t_58_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd b_59_6 __b_59_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd I_at_59_6 __i__t_59_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd b_510_6 __b_510_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd I_at_510_6 __i__t_510_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd b_511_6 __b_511_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd I_at_511_6 __i__t_511_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd b_512_6 __b_512_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd I_at_512_6 __i__t_512_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd b_513_6 __b_513_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd I_at_513_6 __i__t_513_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd b_514_6 __b_514_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd I_at_514_6 __i__t_514_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd b_515_6 __b_515_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd I_at_515_6 __i__t_515_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd b_516_6 __b_516_6 Vdd pmos W=0.1625U L=0.065U
M185_ Vdd I_at_516_6 __i__t_516_6 Vdd pmos W=0.1625U L=0.065U
M186_ Vdd b_517_6 __b_517_6 Vdd pmos W=0.1625U L=0.065U
M187_ Vdd I_at_517_6 __i__t_517_6 Vdd pmos W=0.1625U L=0.065U
M188_ Vdd b_518_6 __b_518_6 Vdd pmos W=0.1625U L=0.065U
M189_ Vdd I_at_518_6 __i__t_518_6 Vdd pmos W=0.1625U L=0.065U
M190_ Vdd b_519_6 __b_519_6 Vdd pmos W=0.1625U L=0.065U
M191_ Vdd I_at_519_6 __i__t_519_6 Vdd pmos W=0.1625U L=0.065U
M192_ Vdd b_520_6 __b_520_6 Vdd pmos W=0.1625U L=0.065U
M193_ Vdd I_at_520_6 __i__t_520_6 Vdd pmos W=0.1625U L=0.065U
M194_ Vdd b_521_6 __b_521_6 Vdd pmos W=0.1625U L=0.065U
M195_ Vdd I_at_521_6 __i__t_521_6 Vdd pmos W=0.1625U L=0.065U
M196_ Vdd b_522_6 __b_522_6 Vdd pmos W=0.1625U L=0.065U
M197_ Vdd I_at_522_6 __i__t_522_6 Vdd pmos W=0.1625U L=0.065U
M198_ Vdd b_523_6 __b_523_6 Vdd pmos W=0.1625U L=0.065U
M199_ Vdd I_at_523_6 __i__t_523_6 Vdd pmos W=0.1625U L=0.065U
M200_ Vdd b_524_6 __b_524_6 Vdd pmos W=0.1625U L=0.065U
M201_ Vdd I_at_524_6 __i__t_524_6 Vdd pmos W=0.1625U L=0.065U
M202_ Vdd b_525_6 __b_525_6 Vdd pmos W=0.1625U L=0.065U
M203_ Vdd I_at_525_6 __i__t_525_6 Vdd pmos W=0.1625U L=0.065U
M204_ Vdd b_526_6 __b_526_6 Vdd pmos W=0.1625U L=0.065U
M205_ Vdd I_at_526_6 __i__t_526_6 Vdd pmos W=0.1625U L=0.065U
M206_ Vdd b_527_6 __b_527_6 Vdd pmos W=0.1625U L=0.065U
M207_ Vdd I_at_527_6 __i__t_527_6 Vdd pmos W=0.1625U L=0.065U
M208_ Vdd b_528_6 __b_528_6 Vdd pmos W=0.1625U L=0.065U
M209_ Vdd I_at_528_6 __i__t_528_6 Vdd pmos W=0.1625U L=0.065U
M210_ Vdd b_529_6 __b_529_6 Vdd pmos W=0.1625U L=0.065U
M211_ Vdd I_at_529_6 __i__t_529_6 Vdd pmos W=0.1625U L=0.065U
M212_ Vdd b_530_6 __b_530_6 Vdd pmos W=0.1625U L=0.065U
M213_ Vdd I_at_530_6 __i__t_530_6 Vdd pmos W=0.1625U L=0.065U
M214_ Vdd b_531_6 __b_531_6 Vdd pmos W=0.1625U L=0.065U
M215_ Vdd I_at_531_6 __i__t_531_6 Vdd pmos W=0.1625U L=0.065U
M216_ Vdd __u1 u1 Vdd pmos W=0.325U L=0.065U
M217_ Vdd __o1t_50_6 O1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M218_ Vdd __o1t_51_6 O1_at_51_6 Vdd pmos W=0.1625U L=0.065U
M219_ Vdd __o1t_52_6 O1_at_52_6 Vdd pmos W=0.1625U L=0.065U
M220_ Vdd __o1t_53_6 O1_at_53_6 Vdd pmos W=0.1625U L=0.065U
M221_ Vdd __u2 u2 Vdd pmos W=0.325U L=0.065U
M222_ Vdd __o2t_50_6 O2_at_50_6 Vdd pmos W=0.1625U L=0.065U
M223_ Vdd __o2t_51_6 O2_at_51_6 Vdd pmos W=0.1625U L=0.065U
M224_ Vdd __o2t_52_6 O2_at_52_6 Vdd pmos W=0.1625U L=0.065U
M225_ Vdd __o2t_53_6 O2_at_53_6 Vdd pmos W=0.1625U L=0.065U
M226_ Vdd __u3 u3 Vdd pmos W=0.325U L=0.065U
M227_ Vdd __o3t_50_6 O3_at_50_6 Vdd pmos W=0.1625U L=0.065U
M228_ Vdd __o3t_51_6 O3_at_51_6 Vdd pmos W=0.1625U L=0.065U
M229_ Vdd __o3t_52_6 O3_at_52_6 Vdd pmos W=0.1625U L=0.065U
M230_ Vdd __o3t_53_6 O3_at_53_6 Vdd pmos W=0.1625U L=0.065U
M231_ Vdd __u4 u4 Vdd pmos W=0.325U L=0.065U
M232_ Vdd __o4t_50_6 O4_at_50_6 Vdd pmos W=0.1625U L=0.065U
M233_ Vdd __o4t_51_6 O4_at_51_6 Vdd pmos W=0.1625U L=0.065U
M234_ Vdd __o4t_52_6 O4_at_52_6 Vdd pmos W=0.1625U L=0.065U
M235_ Vdd __o4t_53_6 O4_at_53_6 Vdd pmos W=0.1625U L=0.065U
M236_ Vdd __u5 u5 Vdd pmos W=0.325U L=0.065U
M237_ Vdd __o5t_50_6 O5_at_50_6 Vdd pmos W=0.1625U L=0.065U
M238_ Vdd __o5t_51_6 O5_at_51_6 Vdd pmos W=0.1625U L=0.065U
M239_ Vdd __o5t_52_6 O5_at_52_6 Vdd pmos W=0.1625U L=0.065U
M240_ Vdd __o5t_53_6 O5_at_53_6 Vdd pmos W=0.1625U L=0.065U
M241_ Vdd __u6 u6 Vdd pmos W=0.325U L=0.065U
M242_ Vdd __o6t_50_6 O6_at_50_6 Vdd pmos W=0.1625U L=0.065U
M243_ Vdd __o6t_51_6 O6_at_51_6 Vdd pmos W=0.1625U L=0.065U
M244_ Vdd __o6t_52_6 O6_at_52_6 Vdd pmos W=0.1625U L=0.065U
M245_ Vdd __o6t_53_6 O6_at_53_6 Vdd pmos W=0.1625U L=0.065U
M246_ Vdd __u7 u7 Vdd pmos W=0.325U L=0.065U
M247_ Vdd __o7t_50_6 O7_at_50_6 Vdd pmos W=0.1625U L=0.065U
M248_ Vdd __o7t_51_6 O7_at_51_6 Vdd pmos W=0.1625U L=0.065U
M249_ Vdd __o7t_52_6 O7_at_52_6 Vdd pmos W=0.1625U L=0.065U
M250_ Vdd __o7t_53_6 O7_at_53_6 Vdd pmos W=0.1625U L=0.065U
M251_ Vdd __c_50_6 #fb687# Vdd pmos W=0.1625U L=0.13U
M252_ Vdd b_53_6 #fb690# Vdd pmos W=0.1625U L=0.13U
M253_keeper Vdd GND #688 Vdd pmos W=0.0975U L=2.535U
M254_ Vdd b_52_6 #fb693# Vdd pmos W=0.1625U L=0.13U
M255_keeper Vdd GND #691 Vdd pmos W=0.0975U L=0.585U
M256_ Vdd b_51_6 #fb696# Vdd pmos W=0.1625U L=0.13U
M257_keeper Vdd GND #694 Vdd pmos W=0.0975U L=0.585U
M258_ Vdd b_50_6 #fb699# Vdd pmos W=0.1625U L=0.13U
M259_keeper Vdd GND #697 Vdd pmos W=0.0975U L=0.585U
M260_ Vdd __c_51_6 #fb702# Vdd pmos W=0.1625U L=0.13U
M261_keeper Vdd GND #700 Vdd pmos W=0.0975U L=0.585U
M262_ Vdd b_57_6 #fb705# Vdd pmos W=0.1625U L=0.13U
M263_keeper Vdd GND #703 Vdd pmos W=0.0975U L=2.535U
M264_ Vdd b_56_6 #fb708# Vdd pmos W=0.1625U L=0.13U
M265_keeper Vdd GND #706 Vdd pmos W=0.0975U L=0.585U
M266_ Vdd b_55_6 #fb711# Vdd pmos W=0.1625U L=0.13U
M267_keeper Vdd GND #709 Vdd pmos W=0.0975U L=0.585U
M268_ Vdd b_54_6 #fb714# Vdd pmos W=0.1625U L=0.13U
M269_keeper Vdd GND #712 Vdd pmos W=0.0975U L=0.585U
M270_ Vdd __c_52_6 #fb717# Vdd pmos W=0.1625U L=0.13U
M271_keeper Vdd GND #715 Vdd pmos W=0.0975U L=0.585U
M272_ Vdd b_511_6 #fb720# Vdd pmos W=0.1625U L=0.13U
M273_keeper Vdd GND #718 Vdd pmos W=0.0975U L=2.535U
M274_ Vdd b_510_6 #fb723# Vdd pmos W=0.1625U L=0.13U
M275_keeper Vdd GND #721 Vdd pmos W=0.0975U L=0.585U
M276_ Vdd b_59_6 #fb726# Vdd pmos W=0.1625U L=0.13U
M277_keeper Vdd GND #724 Vdd pmos W=0.0975U L=0.585U
M278_ Vdd b_58_6 #fb729# Vdd pmos W=0.1625U L=0.13U
M279_keeper Vdd GND #727 Vdd pmos W=0.0975U L=0.585U
M280_ Vdd __c_53_6 #fb732# Vdd pmos W=0.1625U L=0.13U
M281_keeper Vdd GND #730 Vdd pmos W=0.0975U L=0.585U
M282_ Vdd b_515_6 #fb735# Vdd pmos W=0.1625U L=0.13U
M283_keeper Vdd GND #733 Vdd pmos W=0.0975U L=2.535U
M284_ Vdd b_514_6 #fb738# Vdd pmos W=0.1625U L=0.13U
M285_keeper Vdd GND #736 Vdd pmos W=0.0975U L=0.585U
M286_ Vdd b_513_6 #fb741# Vdd pmos W=0.1625U L=0.13U
M287_keeper Vdd GND #739 Vdd pmos W=0.0975U L=0.585U
M288_ Vdd b_512_6 #fb744# Vdd pmos W=0.1625U L=0.13U
M289_keeper Vdd GND #742 Vdd pmos W=0.0975U L=0.585U
M290_ Vdd __c_54_6 #fb747# Vdd pmos W=0.1625U L=0.13U
M291_keeper Vdd GND #745 Vdd pmos W=0.0975U L=0.585U
M292_ Vdd b_519_6 #fb750# Vdd pmos W=0.1625U L=0.13U
M293_keeper Vdd GND #748 Vdd pmos W=0.0975U L=2.535U
M294_ Vdd b_518_6 #fb753# Vdd pmos W=0.1625U L=0.13U
M295_keeper Vdd GND #751 Vdd pmos W=0.0975U L=0.585U
M296_ Vdd b_517_6 #fb756# Vdd pmos W=0.1625U L=0.13U
M297_keeper Vdd GND #754 Vdd pmos W=0.0975U L=0.585U
M298_ Vdd b_516_6 #fb759# Vdd pmos W=0.1625U L=0.13U
M299_keeper Vdd GND #757 Vdd pmos W=0.0975U L=0.585U
M300_ Vdd __c_55_6 #fb762# Vdd pmos W=0.1625U L=0.13U
M301_keeper Vdd GND #760 Vdd pmos W=0.0975U L=0.585U
M302_ Vdd b_523_6 #fb765# Vdd pmos W=0.1625U L=0.13U
M303_keeper Vdd GND #763 Vdd pmos W=0.0975U L=2.535U
M304_ Vdd b_522_6 #fb768# Vdd pmos W=0.1625U L=0.13U
M305_keeper Vdd GND #766 Vdd pmos W=0.0975U L=0.585U
M306_ Vdd b_521_6 #fb771# Vdd pmos W=0.1625U L=0.13U
M307_keeper Vdd GND #769 Vdd pmos W=0.0975U L=0.585U
M308_ Vdd b_520_6 #fb774# Vdd pmos W=0.1625U L=0.13U
M309_keeper Vdd GND #772 Vdd pmos W=0.0975U L=0.585U
M310_ Vdd __c_56_6 #fb777# Vdd pmos W=0.1625U L=0.13U
M311_keeper Vdd GND #775 Vdd pmos W=0.0975U L=0.585U
M312_ Vdd b_527_6 #fb780# Vdd pmos W=0.1625U L=0.13U
M313_keeper Vdd GND #778 Vdd pmos W=0.0975U L=2.535U
M314_ Vdd b_526_6 #fb783# Vdd pmos W=0.1625U L=0.13U
M315_keeper Vdd GND #781 Vdd pmos W=0.0975U L=0.585U
M316_ Vdd b_525_6 #fb786# Vdd pmos W=0.1625U L=0.13U
M317_keeper Vdd GND #784 Vdd pmos W=0.0975U L=0.585U
M318_ Vdd b_524_6 #fb789# Vdd pmos W=0.1625U L=0.13U
M319_keeper Vdd GND #787 Vdd pmos W=0.0975U L=0.585U
M320_ Vdd __c_57_6 #fb792# Vdd pmos W=0.1625U L=0.13U
M321_keeper Vdd GND #790 Vdd pmos W=0.0975U L=0.585U
M322_ Vdd b_531_6 #fb795# Vdd pmos W=0.1625U L=0.13U
M323_keeper Vdd GND #793 Vdd pmos W=0.0975U L=2.535U
M324_ Vdd b_530_6 #fb798# Vdd pmos W=0.1625U L=0.13U
M325_keeper Vdd GND #796 Vdd pmos W=0.0975U L=0.585U
M326_ Vdd b_529_6 #fb801# Vdd pmos W=0.1625U L=0.13U
M327_keeper Vdd GND #799 Vdd pmos W=0.0975U L=0.585U
M328_ Vdd b_528_6 #fb804# Vdd pmos W=0.1625U L=0.13U
M329_keeper Vdd GND #802 Vdd pmos W=0.0975U L=0.585U
M330_ Vdd d_50_6 #fb807# Vdd pmos W=0.1625U L=0.13U
M331_keeper Vdd GND #805 Vdd pmos W=0.0975U L=0.585U
M332_ Vdd d_51_6 #fb810# Vdd pmos W=0.1625U L=0.13U
M333_keeper Vdd GND #808 Vdd pmos W=0.0975U L=0.585U
M334_ Vdd d_52_6 #fb813# Vdd pmos W=0.1625U L=0.13U
M335_keeper Vdd GND #811 Vdd pmos W=0.0975U L=0.585U
M336_ Vdd d_53_6 #fb816# Vdd pmos W=0.1625U L=0.13U
M337_keeper Vdd GND #814 Vdd pmos W=0.0975U L=0.585U
M338_ Vdd __e_50_6 #fb819# Vdd pmos W=0.1625U L=0.13U
M339_keeper Vdd GND #817 Vdd pmos W=0.0975U L=0.585U
M340_ Vdd __e_51_6 #fb822# Vdd pmos W=0.1625U L=0.13U
M341_keeper Vdd GND #820 Vdd pmos W=0.0975U L=0.585U
M342_ Vdd c #fb825# Vdd pmos W=0.1625U L=0.13U
M343_keeper Vdd GND #823 Vdd pmos W=0.0975U L=0.585U
M344_ Vdd __v #fb828# Vdd pmos W=0.1625U L=0.13U
M345_keeper Vdd GND #826 Vdd pmos W=0.0975U L=0.585U
M346_ Vdd __i__a #fb831# Vdd pmos W=0.1625U L=0.13U
M347_keeper Vdd GND #829 Vdd pmos W=0.0975U L=0.26U
M348_ Vdd __u1 #fb834# Vdd pmos W=0.1625U L=0.13U
M349_keeper Vdd GND #832 Vdd pmos W=0.0975U L=0.585U
M350_ Vdd __o1t_50_6 #fb837# Vdd pmos W=0.1625U L=0.13U
M351_keeper Vdd GND #835 Vdd pmos W=0.0975U L=0.26U
M352_ Vdd O1_af_50_6 #fb840# Vdd pmos W=0.1625U L=0.13U
M353_keeper Vdd GND #838 Vdd pmos W=0.0975U L=1.235U
M354_ Vdd __o1t_51_6 #fb843# Vdd pmos W=0.1625U L=0.13U
M355_keeper Vdd GND #841 Vdd pmos W=0.0975U L=0.26U
M356_ Vdd O1_af_51_6 #fb846# Vdd pmos W=0.1625U L=0.13U
M357_keeper Vdd GND #844 Vdd pmos W=0.0975U L=1.235U
M358_ Vdd __o1t_52_6 #fb849# Vdd pmos W=0.1625U L=0.13U
M359_keeper Vdd GND #847 Vdd pmos W=0.0975U L=0.26U
M360_ Vdd O1_af_52_6 #fb852# Vdd pmos W=0.1625U L=0.13U
M361_keeper Vdd GND #850 Vdd pmos W=0.0975U L=1.235U
M362_ Vdd __o1t_53_6 #fb855# Vdd pmos W=0.1625U L=0.13U
M363_keeper Vdd GND #853 Vdd pmos W=0.0975U L=0.26U
M364_ Vdd O1_af_53_6 #fb858# Vdd pmos W=0.1625U L=0.13U
M365_keeper Vdd GND #856 Vdd pmos W=0.0975U L=1.235U
M366_ Vdd __u2 #fb861# Vdd pmos W=0.1625U L=0.13U
M367_keeper Vdd GND #859 Vdd pmos W=0.0975U L=0.26U
M368_ Vdd __o2t_50_6 #fb864# Vdd pmos W=0.1625U L=0.13U
M369_keeper Vdd GND #862 Vdd pmos W=0.0975U L=0.26U
M370_ Vdd O2_af_50_6 #fb867# Vdd pmos W=0.1625U L=0.13U
M371_keeper Vdd GND #865 Vdd pmos W=0.0975U L=1.235U
M372_ Vdd __o2t_51_6 #fb870# Vdd pmos W=0.1625U L=0.13U
M373_keeper Vdd GND #868 Vdd pmos W=0.0975U L=0.26U
M374_ Vdd O2_af_51_6 #fb873# Vdd pmos W=0.1625U L=0.13U
M375_keeper Vdd GND #871 Vdd pmos W=0.0975U L=1.235U
M376_ Vdd __o2t_52_6 #fb876# Vdd pmos W=0.1625U L=0.13U
M377_keeper Vdd GND #874 Vdd pmos W=0.0975U L=0.26U
M378_ Vdd O2_af_52_6 #fb879# Vdd pmos W=0.1625U L=0.13U
M379_keeper Vdd GND #877 Vdd pmos W=0.0975U L=1.235U
M380_ Vdd __o2t_53_6 #fb882# Vdd pmos W=0.1625U L=0.13U
M381_keeper Vdd GND #880 Vdd pmos W=0.0975U L=0.26U
M382_ Vdd O2_af_53_6 #fb885# Vdd pmos W=0.1625U L=0.13U
M383_keeper Vdd GND #883 Vdd pmos W=0.0975U L=1.235U
M384_ Vdd __u3 #fb888# Vdd pmos W=0.1625U L=0.13U
M385_keeper Vdd GND #886 Vdd pmos W=0.0975U L=0.26U
M386_ Vdd __o3t_50_6 #fb891# Vdd pmos W=0.1625U L=0.13U
M387_keeper Vdd GND #889 Vdd pmos W=0.0975U L=0.26U
M388_ Vdd O3_af_50_6 #fb894# Vdd pmos W=0.1625U L=0.13U
M389_keeper Vdd GND #892 Vdd pmos W=0.0975U L=1.235U
M390_ Vdd __o3t_51_6 #fb897# Vdd pmos W=0.1625U L=0.13U
M391_keeper Vdd GND #895 Vdd pmos W=0.0975U L=0.26U
M392_ Vdd O3_af_51_6 #fb900# Vdd pmos W=0.1625U L=0.13U
M393_keeper Vdd GND #898 Vdd pmos W=0.0975U L=1.235U
M394_ Vdd __o3t_52_6 #fb903# Vdd pmos W=0.1625U L=0.13U
M395_keeper Vdd GND #901 Vdd pmos W=0.0975U L=0.26U
M396_ Vdd O3_af_52_6 #fb906# Vdd pmos W=0.1625U L=0.13U
M397_keeper Vdd GND #904 Vdd pmos W=0.0975U L=1.235U
M398_ Vdd __o3t_53_6 #fb909# Vdd pmos W=0.1625U L=0.13U
M399_keeper Vdd GND #907 Vdd pmos W=0.0975U L=0.26U
M400_ Vdd O3_af_53_6 #fb912# Vdd pmos W=0.1625U L=0.13U
M401_keeper Vdd GND #910 Vdd pmos W=0.0975U L=1.235U
M402_ Vdd __u4 #fb915# Vdd pmos W=0.1625U L=0.13U
M403_keeper Vdd GND #913 Vdd pmos W=0.0975U L=0.26U
M404_ Vdd __o4t_50_6 #fb918# Vdd pmos W=0.1625U L=0.13U
M405_keeper Vdd GND #916 Vdd pmos W=0.0975U L=0.26U
M406_ Vdd O4_af_50_6 #fb921# Vdd pmos W=0.1625U L=0.13U
M407_keeper Vdd GND #919 Vdd pmos W=0.0975U L=1.235U
M408_ Vdd __o4t_51_6 #fb924# Vdd pmos W=0.1625U L=0.13U
M409_keeper Vdd GND #922 Vdd pmos W=0.0975U L=0.26U
M410_ Vdd O4_af_51_6 #fb927# Vdd pmos W=0.1625U L=0.13U
M411_keeper Vdd GND #925 Vdd pmos W=0.0975U L=1.235U
M412_ Vdd __o4t_52_6 #fb930# Vdd pmos W=0.1625U L=0.13U
M413_keeper Vdd GND #928 Vdd pmos W=0.0975U L=0.26U
M414_ Vdd O4_af_52_6 #fb933# Vdd pmos W=0.1625U L=0.13U
M415_keeper Vdd GND #931 Vdd pmos W=0.0975U L=1.235U
M416_ Vdd __o4t_53_6 #fb936# Vdd pmos W=0.1625U L=0.13U
M417_keeper Vdd GND #934 Vdd pmos W=0.0975U L=0.26U
M418_ Vdd O4_af_53_6 #fb939# Vdd pmos W=0.1625U L=0.13U
M419_keeper Vdd GND #937 Vdd pmos W=0.0975U L=1.235U
M420_ Vdd __u5 #fb942# Vdd pmos W=0.1625U L=0.13U
M421_keeper Vdd GND #940 Vdd pmos W=0.0975U L=0.26U
M422_ Vdd __o5t_50_6 #fb945# Vdd pmos W=0.1625U L=0.13U
M423_keeper Vdd GND #943 Vdd pmos W=0.0975U L=0.26U
M424_ Vdd O5_af_50_6 #fb948# Vdd pmos W=0.1625U L=0.13U
M425_keeper Vdd GND #946 Vdd pmos W=0.0975U L=1.235U
M426_ Vdd __o5t_51_6 #fb951# Vdd pmos W=0.1625U L=0.13U
M427_keeper Vdd GND #949 Vdd pmos W=0.0975U L=0.26U
M428_ Vdd O5_af_51_6 #fb954# Vdd pmos W=0.1625U L=0.13U
M429_keeper Vdd GND #952 Vdd pmos W=0.0975U L=1.235U
M430_ Vdd __o5t_52_6 #fb957# Vdd pmos W=0.1625U L=0.13U
M431_keeper Vdd GND #955 Vdd pmos W=0.0975U L=0.26U
M432_ Vdd O5_af_52_6 #fb960# Vdd pmos W=0.1625U L=0.13U
M433_keeper Vdd GND #958 Vdd pmos W=0.0975U L=1.235U
M434_ Vdd __o5t_53_6 #fb963# Vdd pmos W=0.1625U L=0.13U
M435_keeper Vdd GND #961 Vdd pmos W=0.0975U L=0.26U
M436_ Vdd O5_af_53_6 #fb966# Vdd pmos W=0.1625U L=0.13U
M437_keeper Vdd GND #964 Vdd pmos W=0.0975U L=1.235U
M438_ Vdd __u6 #fb969# Vdd pmos W=0.1625U L=0.13U
M439_keeper Vdd GND #967 Vdd pmos W=0.0975U L=0.26U
M440_ Vdd __o6t_50_6 #fb972# Vdd pmos W=0.1625U L=0.13U
M441_keeper Vdd GND #970 Vdd pmos W=0.0975U L=0.26U
M442_ Vdd O6_af_50_6 #fb975# Vdd pmos W=0.1625U L=0.13U
M443_keeper Vdd GND #973 Vdd pmos W=0.0975U L=1.235U
M444_ Vdd __o6t_51_6 #fb978# Vdd pmos W=0.1625U L=0.13U
M445_keeper Vdd GND #976 Vdd pmos W=0.0975U L=0.26U
M446_ Vdd O6_af_51_6 #fb981# Vdd pmos W=0.1625U L=0.13U
M447_keeper Vdd GND #979 Vdd pmos W=0.0975U L=1.235U
M448_ Vdd __o6t_52_6 #fb984# Vdd pmos W=0.1625U L=0.13U
M449_keeper Vdd GND #982 Vdd pmos W=0.0975U L=0.26U
M450_ Vdd O6_af_52_6 #fb987# Vdd pmos W=0.1625U L=0.13U
M451_keeper Vdd GND #985 Vdd pmos W=0.0975U L=1.235U
M452_ Vdd __o6t_53_6 #fb990# Vdd pmos W=0.1625U L=0.13U
M453_keeper Vdd GND #988 Vdd pmos W=0.0975U L=0.26U
M454_ Vdd O6_af_53_6 #fb993# Vdd pmos W=0.1625U L=0.13U
M455_keeper Vdd GND #991 Vdd pmos W=0.0975U L=1.235U
M456_ Vdd __u7 #fb996# Vdd pmos W=0.1625U L=0.13U
M457_keeper Vdd GND #994 Vdd pmos W=0.0975U L=0.26U
M458_ Vdd __o7t_50_6 #fb999# Vdd pmos W=0.1625U L=0.13U
M459_keeper Vdd GND #997 Vdd pmos W=0.0975U L=0.26U
M460_ Vdd O7_af_50_6 #fb1002# Vdd pmos W=0.1625U L=0.13U
M461_keeper Vdd GND #1000 Vdd pmos W=0.0975U L=1.235U
M462_ Vdd __o7t_51_6 #fb1005# Vdd pmos W=0.1625U L=0.13U
M463_keeper Vdd GND #1003 Vdd pmos W=0.0975U L=0.26U
M464_ Vdd O7_af_51_6 #fb1008# Vdd pmos W=0.1625U L=0.13U
M465_keeper Vdd GND #1006 Vdd pmos W=0.0975U L=1.235U
M466_ Vdd __o7t_52_6 #fb1011# Vdd pmos W=0.1625U L=0.13U
M467_keeper Vdd GND #1009 Vdd pmos W=0.0975U L=0.26U
M468_ Vdd O7_af_52_6 #fb1014# Vdd pmos W=0.1625U L=0.13U
M469_keeper Vdd GND #1012 Vdd pmos W=0.0975U L=1.235U
M470_ Vdd __o7t_53_6 #fb1017# Vdd pmos W=0.1625U L=0.13U
M471_keeper Vdd GND #1015 Vdd pmos W=0.0975U L=0.26U
M472_ Vdd O7_af_53_6 #fb1020# Vdd pmos W=0.1625U L=0.13U
M473_keeper Vdd GND #1018 Vdd pmos W=0.0975U L=1.235U
M474_keeper Vdd GND #1021 Vdd pmos W=0.0975U L=0.26U
M475_ GND I_at_53_6 #6 GND nmos W=0.0975U L=0.065U
M476_ GND I_af_53_6 #9 GND nmos W=0.0975U L=0.065U
M477_ GND I_at_57_6 #41 GND nmos W=0.0975U L=0.065U
M478_ GND I_af_57_6 #44 GND nmos W=0.0975U L=0.065U
M479_ GND I_at_511_6 #76 GND nmos W=0.0975U L=0.065U
M480_ GND I_af_511_6 #79 GND nmos W=0.0975U L=0.065U
M481_ GND I_at_515_6 #111 GND nmos W=0.0975U L=0.065U
M482_ GND I_af_515_6 #114 GND nmos W=0.0975U L=0.065U
M483_ GND I_at_519_6 #146 GND nmos W=0.0975U L=0.065U
M484_ GND I_af_519_6 #149 GND nmos W=0.0975U L=0.065U
M485_ GND I_at_523_6 #181 GND nmos W=0.0975U L=0.065U
M486_ GND I_af_523_6 #184 GND nmos W=0.0975U L=0.065U
M487_ GND I_at_527_6 #216 GND nmos W=0.0975U L=0.065U
M488_ GND I_af_527_6 #219 GND nmos W=0.0975U L=0.065U
M489_ GND I_at_531_6 #251 GND nmos W=0.0975U L=0.065U
M490_ GND I_af_531_6 #254 GND nmos W=0.0975U L=0.065U
M491_ GND __c_51_6 #284 GND nmos W=0.0975U L=0.065U
M492_ GND __c_53_6 #287 GND nmos W=0.0975U L=0.065U
M493_ GND __c_55_6 #290 GND nmos W=0.0975U L=0.065U
M494_ GND __c_57_6 #293 GND nmos W=0.0975U L=0.065U
M495_ GND d_51_6 #295 GND nmos W=0.0975U L=0.065U
M496_ GND d_53_6 #298 GND nmos W=0.0975U L=0.065U
M497_ GND __e_51_6 #302 GND nmos W=0.195U L=0.065U
M498_ GND c __v GND nmos W=0.78U L=0.065U
M499_ GND u1 #320 GND nmos W=0.39U L=0.065U
M500_ GND __v #325 GND nmos W=0.0975U L=0.065U
M501_ GND reset b_50_6 GND nmos W=0.0975U L=0.065U
M502_ GND __v #329 GND nmos W=0.0975U L=0.065U
M503_ GND reset b_51_6 GND nmos W=0.0975U L=0.065U
M504_ GND __v #332 GND nmos W=0.0975U L=0.065U
M505_ GND reset b_52_6 GND nmos W=0.0975U L=0.065U
M506_ GND __v #335 GND nmos W=0.0975U L=0.065U
M507_ GND reset b_53_6 GND nmos W=0.0975U L=0.065U
M508_ GND __v #338 GND nmos W=0.0975U L=0.065U
M509_ GND reset b_54_6 GND nmos W=0.0975U L=0.065U
M510_ GND __v #341 GND nmos W=0.0975U L=0.065U
M511_ GND reset b_55_6 GND nmos W=0.0975U L=0.065U
M512_ GND __v #344 GND nmos W=0.0975U L=0.065U
M513_ GND reset b_56_6 GND nmos W=0.0975U L=0.065U
M514_ GND __v #347 GND nmos W=0.0975U L=0.065U
M515_ GND reset b_57_6 GND nmos W=0.0975U L=0.065U
M516_ GND __v #350 GND nmos W=0.0975U L=0.065U
M517_ GND reset b_58_6 GND nmos W=0.0975U L=0.065U
M518_ GND __v #353 GND nmos W=0.0975U L=0.065U
M519_ GND reset b_59_6 GND nmos W=0.0975U L=0.065U
M520_ GND __v #356 GND nmos W=0.0975U L=0.065U
M521_ GND reset b_510_6 GND nmos W=0.0975U L=0.065U
M522_ GND __v #359 GND nmos W=0.0975U L=0.065U
M523_ GND reset b_511_6 GND nmos W=0.0975U L=0.065U
M524_ GND __v #362 GND nmos W=0.0975U L=0.065U
M525_ GND reset b_512_6 GND nmos W=0.0975U L=0.065U
M526_ GND __v #365 GND nmos W=0.0975U L=0.065U
M527_ GND reset b_513_6 GND nmos W=0.0975U L=0.065U
M528_ GND __v #368 GND nmos W=0.0975U L=0.065U
M529_ GND reset b_514_6 GND nmos W=0.0975U L=0.065U
M530_ GND __v #371 GND nmos W=0.0975U L=0.065U
M531_ GND reset b_515_6 GND nmos W=0.0975U L=0.065U
M532_ GND __v #374 GND nmos W=0.0975U L=0.065U
M533_ GND reset b_516_6 GND nmos W=0.0975U L=0.065U
M534_ GND __v #377 GND nmos W=0.0975U L=0.065U
M535_ GND reset b_517_6 GND nmos W=0.0975U L=0.065U
M536_ GND __v #380 GND nmos W=0.0975U L=0.065U
M537_ GND reset b_518_6 GND nmos W=0.0975U L=0.065U
M538_ GND __v #383 GND nmos W=0.0975U L=0.065U
M539_ GND reset b_519_6 GND nmos W=0.0975U L=0.065U
M540_ GND __v #386 GND nmos W=0.0975U L=0.065U
M541_ GND reset b_520_6 GND nmos W=0.0975U L=0.065U
M542_ GND __v #389 GND nmos W=0.0975U L=0.065U
M543_ GND reset b_521_6 GND nmos W=0.0975U L=0.065U
M544_ GND __v #392 GND nmos W=0.0975U L=0.065U
M545_ GND reset b_522_6 GND nmos W=0.0975U L=0.065U
M546_ GND __v #395 GND nmos W=0.0975U L=0.065U
M547_ GND reset b_523_6 GND nmos W=0.0975U L=0.065U
M548_ GND __v #398 GND nmos W=0.0975U L=0.065U
M549_ GND reset b_524_6 GND nmos W=0.0975U L=0.065U
M550_ GND __v #401 GND nmos W=0.0975U L=0.065U
M551_ GND reset b_525_6 GND nmos W=0.0975U L=0.065U
M552_ GND __v #404 GND nmos W=0.0975U L=0.065U
M553_ GND reset b_526_6 GND nmos W=0.0975U L=0.065U
M554_ GND __v #407 GND nmos W=0.0975U L=0.065U
M555_ GND reset b_527_6 GND nmos W=0.0975U L=0.065U
M556_ GND __v #410 GND nmos W=0.0975U L=0.065U
M557_ GND reset b_528_6 GND nmos W=0.0975U L=0.065U
M558_ GND __v #413 GND nmos W=0.0975U L=0.065U
M559_ GND reset b_529_6 GND nmos W=0.0975U L=0.065U
M560_ GND __v #416 GND nmos W=0.0975U L=0.065U
M561_ GND reset b_530_6 GND nmos W=0.0975U L=0.065U
M562_ GND __v #419 GND nmos W=0.0975U L=0.065U
M563_ GND reset b_531_6 GND nmos W=0.0975U L=0.065U
M564_ GND O1_aa __u1 GND nmos W=0.195U L=0.065U
M565_ GND __u1 #425 GND nmos W=0.0975U L=0.065U
M566_ GND u1 O1_af_50_6 GND nmos W=0.0975U L=0.065U
M567_ GND reset O1_af_50_6 GND nmos W=0.0975U L=0.065U
M568_ GND __u1 #434 GND nmos W=0.0975U L=0.065U
M569_ GND u1 O1_af_51_6 GND nmos W=0.0975U L=0.065U
M570_ GND reset O1_af_51_6 GND nmos W=0.0975U L=0.065U
M571_ GND __u1 #442 GND nmos W=0.0975U L=0.065U
M572_ GND u1 O1_af_52_6 GND nmos W=0.0975U L=0.065U
M573_ GND reset O1_af_52_6 GND nmos W=0.0975U L=0.065U
M574_ GND __u1 #450 GND nmos W=0.0975U L=0.065U
M575_ GND u1 O1_af_53_6 GND nmos W=0.0975U L=0.065U
M576_ GND reset O1_af_53_6 GND nmos W=0.0975U L=0.065U
M577_ GND O2_aa __u2 GND nmos W=0.195U L=0.065U
M578_ GND __u2 #460 GND nmos W=0.0975U L=0.065U
M579_ GND u2 O2_af_50_6 GND nmos W=0.0975U L=0.065U
M580_ GND reset O2_af_50_6 GND nmos W=0.0975U L=0.065U
M581_ GND __u2 #468 GND nmos W=0.0975U L=0.065U
M582_ GND u2 O2_af_51_6 GND nmos W=0.0975U L=0.065U
M583_ GND reset O2_af_51_6 GND nmos W=0.0975U L=0.065U
M584_ GND __u2 #476 GND nmos W=0.0975U L=0.065U
M585_ GND u2 O2_af_52_6 GND nmos W=0.0975U L=0.065U
M586_ GND reset O2_af_52_6 GND nmos W=0.0975U L=0.065U
M587_ GND __u2 #484 GND nmos W=0.0975U L=0.065U
M588_ GND u2 O2_af_53_6 GND nmos W=0.0975U L=0.065U
M589_ GND reset O2_af_53_6 GND nmos W=0.0975U L=0.065U
M590_ GND O3_aa __u3 GND nmos W=0.195U L=0.065U
M591_ GND __u3 #494 GND nmos W=0.0975U L=0.065U
M592_ GND u3 O3_af_50_6 GND nmos W=0.0975U L=0.065U
M593_ GND reset O3_af_50_6 GND nmos W=0.0975U L=0.065U
M594_ GND __u3 #502 GND nmos W=0.0975U L=0.065U
M595_ GND u3 O3_af_51_6 GND nmos W=0.0975U L=0.065U
M596_ GND reset O3_af_51_6 GND nmos W=0.0975U L=0.065U
M597_ GND __u3 #510 GND nmos W=0.0975U L=0.065U
M598_ GND u3 O3_af_52_6 GND nmos W=0.0975U L=0.065U
M599_ GND reset O3_af_52_6 GND nmos W=0.0975U L=0.065U
M600_ GND __u3 #518 GND nmos W=0.0975U L=0.065U
M601_ GND u3 O3_af_53_6 GND nmos W=0.0975U L=0.065U
M602_ GND reset O3_af_53_6 GND nmos W=0.0975U L=0.065U
M603_ GND O4_aa __u4 GND nmos W=0.195U L=0.065U
M604_ GND __u4 #528 GND nmos W=0.0975U L=0.065U
M605_ GND u4 O4_af_50_6 GND nmos W=0.0975U L=0.065U
M606_ GND reset O4_af_50_6 GND nmos W=0.0975U L=0.065U
M607_ GND __u4 #536 GND nmos W=0.0975U L=0.065U
M608_ GND u4 O4_af_51_6 GND nmos W=0.0975U L=0.065U
M609_ GND reset O4_af_51_6 GND nmos W=0.0975U L=0.065U
M610_ GND __u4 #544 GND nmos W=0.0975U L=0.065U
M611_ GND u4 O4_af_52_6 GND nmos W=0.0975U L=0.065U
M612_ GND reset O4_af_52_6 GND nmos W=0.0975U L=0.065U
M613_ GND __u4 #552 GND nmos W=0.0975U L=0.065U
M614_ GND u4 O4_af_53_6 GND nmos W=0.0975U L=0.065U
M615_ GND reset O4_af_53_6 GND nmos W=0.0975U L=0.065U
M616_ GND O5_aa __u5 GND nmos W=0.195U L=0.065U
M617_ GND __u5 #562 GND nmos W=0.0975U L=0.065U
M618_ GND u5 O5_af_50_6 GND nmos W=0.0975U L=0.065U
M619_ GND reset O5_af_50_6 GND nmos W=0.0975U L=0.065U
M620_ GND __u5 #570 GND nmos W=0.0975U L=0.065U
M621_ GND u5 O5_af_51_6 GND nmos W=0.0975U L=0.065U
M622_ GND reset O5_af_51_6 GND nmos W=0.0975U L=0.065U
M623_ GND __u5 #578 GND nmos W=0.0975U L=0.065U
M624_ GND u5 O5_af_52_6 GND nmos W=0.0975U L=0.065U
M625_ GND reset O5_af_52_6 GND nmos W=0.0975U L=0.065U
M626_ GND __u5 #586 GND nmos W=0.0975U L=0.065U
M627_ GND u5 O5_af_53_6 GND nmos W=0.0975U L=0.065U
M628_ GND reset O5_af_53_6 GND nmos W=0.0975U L=0.065U
M629_ GND O6_aa __u6 GND nmos W=0.195U L=0.065U
M630_ GND __u6 #596 GND nmos W=0.0975U L=0.065U
M631_ GND u6 O6_af_50_6 GND nmos W=0.0975U L=0.065U
M632_ GND reset O6_af_50_6 GND nmos W=0.0975U L=0.065U
M633_ GND __u6 #604 GND nmos W=0.0975U L=0.065U
M634_ GND u6 O6_af_51_6 GND nmos W=0.0975U L=0.065U
M635_ GND reset O6_af_51_6 GND nmos W=0.0975U L=0.065U
M636_ GND __u6 #612 GND nmos W=0.0975U L=0.065U
M637_ GND u6 O6_af_52_6 GND nmos W=0.0975U L=0.065U
M638_ GND reset O6_af_52_6 GND nmos W=0.0975U L=0.065U
M639_ GND __u6 #620 GND nmos W=0.0975U L=0.065U
M640_ GND u6 O6_af_53_6 GND nmos W=0.0975U L=0.065U
M641_ GND reset O6_af_53_6 GND nmos W=0.0975U L=0.065U
M642_ GND O7_aa __u7 GND nmos W=0.195U L=0.065U
M643_ GND __u7 #630 GND nmos W=0.0975U L=0.065U
M644_ GND u7 O7_af_50_6 GND nmos W=0.0975U L=0.065U
M645_ GND reset O7_af_50_6 GND nmos W=0.0975U L=0.065U
M646_ GND __u7 #638 GND nmos W=0.0975U L=0.065U
M647_ GND u7 O7_af_51_6 GND nmos W=0.0975U L=0.065U
M648_ GND reset O7_af_51_6 GND nmos W=0.0975U L=0.065U
M649_ GND __u7 #646 GND nmos W=0.0975U L=0.065U
M650_ GND u7 O7_af_52_6 GND nmos W=0.0975U L=0.065U
M651_ GND reset O7_af_52_6 GND nmos W=0.0975U L=0.065U
M652_ GND __u7 #654 GND nmos W=0.0975U L=0.065U
M653_ GND u7 O7_af_53_6 GND nmos W=0.0975U L=0.065U
M654_ GND reset O7_af_53_6 GND nmos W=0.0975U L=0.065U
M655_ GND reset __r GND nmos W=0.0975U L=0.065U
M656_ GND __v v GND nmos W=0.78U L=0.065U
M657_ GND __i__a I_aa GND nmos W=0.39U L=0.065U
M658_ GND O1_aa __o1a GND nmos W=0.0975U L=0.065U
M659_ GND b_50_6 __b_50_6 GND nmos W=0.0975U L=0.065U
M660_ GND I_at_50_6 __i__t_50_6 GND nmos W=0.0975U L=0.065U
M661_ GND b_51_6 __b_51_6 GND nmos W=0.0975U L=0.065U
M662_ GND I_at_51_6 __i__t_51_6 GND nmos W=0.0975U L=0.065U
M663_ GND b_52_6 __b_52_6 GND nmos W=0.0975U L=0.065U
M664_ GND I_at_52_6 __i__t_52_6 GND nmos W=0.0975U L=0.065U
M665_ GND b_53_6 __b_53_6 GND nmos W=0.0975U L=0.065U
M666_ GND I_at_53_6 __i__t_53_6 GND nmos W=0.0975U L=0.065U
M667_ GND b_54_6 __b_54_6 GND nmos W=0.0975U L=0.065U
M668_ GND I_at_54_6 __i__t_54_6 GND nmos W=0.0975U L=0.065U
M669_ GND b_55_6 __b_55_6 GND nmos W=0.0975U L=0.065U
M670_ GND I_at_55_6 __i__t_55_6 GND nmos W=0.0975U L=0.065U
M671_ GND b_56_6 __b_56_6 GND nmos W=0.0975U L=0.065U
M672_ GND I_at_56_6 __i__t_56_6 GND nmos W=0.0975U L=0.065U
M673_ GND b_57_6 __b_57_6 GND nmos W=0.0975U L=0.065U
M674_ GND I_at_57_6 __i__t_57_6 GND nmos W=0.0975U L=0.065U
M675_ GND b_58_6 __b_58_6 GND nmos W=0.0975U L=0.065U
M676_ GND I_at_58_6 __i__t_58_6 GND nmos W=0.0975U L=0.065U
M677_ GND b_59_6 __b_59_6 GND nmos W=0.0975U L=0.065U
M678_ GND I_at_59_6 __i__t_59_6 GND nmos W=0.0975U L=0.065U
M679_ GND b_510_6 __b_510_6 GND nmos W=0.0975U L=0.065U
M680_ GND I_at_510_6 __i__t_510_6 GND nmos W=0.0975U L=0.065U
M681_ GND b_511_6 __b_511_6 GND nmos W=0.0975U L=0.065U
M682_ GND I_at_511_6 __i__t_511_6 GND nmos W=0.0975U L=0.065U
M683_ GND b_512_6 __b_512_6 GND nmos W=0.0975U L=0.065U
M684_ GND I_at_512_6 __i__t_512_6 GND nmos W=0.0975U L=0.065U
M685_ GND b_513_6 __b_513_6 GND nmos W=0.0975U L=0.065U
M686_ GND I_at_513_6 __i__t_513_6 GND nmos W=0.0975U L=0.065U
M687_ GND b_514_6 __b_514_6 GND nmos W=0.0975U L=0.065U
M688_ GND I_at_514_6 __i__t_514_6 GND nmos W=0.0975U L=0.065U
M689_ GND b_515_6 __b_515_6 GND nmos W=0.0975U L=0.065U
M690_ GND I_at_515_6 __i__t_515_6 GND nmos W=0.0975U L=0.065U
M691_ GND b_516_6 __b_516_6 GND nmos W=0.0975U L=0.065U
M692_ GND I_at_516_6 __i__t_516_6 GND nmos W=0.0975U L=0.065U
M693_ GND b_517_6 __b_517_6 GND nmos W=0.0975U L=0.065U
M694_ GND I_at_517_6 __i__t_517_6 GND nmos W=0.0975U L=0.065U
M695_ GND b_518_6 __b_518_6 GND nmos W=0.0975U L=0.065U
M696_ GND I_at_518_6 __i__t_518_6 GND nmos W=0.0975U L=0.065U
M697_ GND b_519_6 __b_519_6 GND nmos W=0.0975U L=0.065U
M698_ GND I_at_519_6 __i__t_519_6 GND nmos W=0.0975U L=0.065U
M699_ GND b_520_6 __b_520_6 GND nmos W=0.0975U L=0.065U
M700_ GND I_at_520_6 __i__t_520_6 GND nmos W=0.0975U L=0.065U
M701_ GND b_521_6 __b_521_6 GND nmos W=0.0975U L=0.065U
M702_ GND I_at_521_6 __i__t_521_6 GND nmos W=0.0975U L=0.065U
M703_ GND b_522_6 __b_522_6 GND nmos W=0.0975U L=0.065U
M704_ GND I_at_522_6 __i__t_522_6 GND nmos W=0.0975U L=0.065U
M705_ GND b_523_6 __b_523_6 GND nmos W=0.0975U L=0.065U
M706_ GND I_at_523_6 __i__t_523_6 GND nmos W=0.0975U L=0.065U
M707_ GND b_524_6 __b_524_6 GND nmos W=0.0975U L=0.065U
M708_ GND I_at_524_6 __i__t_524_6 GND nmos W=0.0975U L=0.065U
M709_ GND b_525_6 __b_525_6 GND nmos W=0.0975U L=0.065U
M710_ GND I_at_525_6 __i__t_525_6 GND nmos W=0.0975U L=0.065U
M711_ GND b_526_6 __b_526_6 GND nmos W=0.0975U L=0.065U
M712_ GND I_at_526_6 __i__t_526_6 GND nmos W=0.0975U L=0.065U
M713_ GND b_527_6 __b_527_6 GND nmos W=0.0975U L=0.065U
M714_ GND I_at_527_6 __i__t_527_6 GND nmos W=0.0975U L=0.065U
M715_ GND b_528_6 __b_528_6 GND nmos W=0.0975U L=0.065U
M716_ GND I_at_528_6 __i__t_528_6 GND nmos W=0.0975U L=0.065U
M717_ GND b_529_6 __b_529_6 GND nmos W=0.0975U L=0.065U
M718_ GND I_at_529_6 __i__t_529_6 GND nmos W=0.0975U L=0.065U
M719_ GND b_530_6 __b_530_6 GND nmos W=0.0975U L=0.065U
M720_ GND I_at_530_6 __i__t_530_6 GND nmos W=0.0975U L=0.065U
M721_ GND b_531_6 __b_531_6 GND nmos W=0.0975U L=0.065U
M722_ GND I_at_531_6 __i__t_531_6 GND nmos W=0.0975U L=0.065U
M723_ GND __u1 u1 GND nmos W=0.195U L=0.065U
M724_ GND __o1t_50_6 O1_at_50_6 GND nmos W=0.0975U L=0.065U
M725_ GND __o1t_51_6 O1_at_51_6 GND nmos W=0.0975U L=0.065U
M726_ GND __o1t_52_6 O1_at_52_6 GND nmos W=0.0975U L=0.065U
M727_ GND __o1t_53_6 O1_at_53_6 GND nmos W=0.0975U L=0.065U
M728_ GND __u2 u2 GND nmos W=0.195U L=0.065U
M729_ GND __o2t_50_6 O2_at_50_6 GND nmos W=0.0975U L=0.065U
M730_ GND __o2t_51_6 O2_at_51_6 GND nmos W=0.0975U L=0.065U
M731_ GND __o2t_52_6 O2_at_52_6 GND nmos W=0.0975U L=0.065U
M732_ GND __o2t_53_6 O2_at_53_6 GND nmos W=0.0975U L=0.065U
M733_ GND __u3 u3 GND nmos W=0.195U L=0.065U
M734_ GND __o3t_50_6 O3_at_50_6 GND nmos W=0.0975U L=0.065U
M735_ GND __o3t_51_6 O3_at_51_6 GND nmos W=0.0975U L=0.065U
M736_ GND __o3t_52_6 O3_at_52_6 GND nmos W=0.0975U L=0.065U
M737_ GND __o3t_53_6 O3_at_53_6 GND nmos W=0.0975U L=0.065U
M738_ GND __u4 u4 GND nmos W=0.195U L=0.065U
M739_ GND __o4t_50_6 O4_at_50_6 GND nmos W=0.0975U L=0.065U
M740_ GND __o4t_51_6 O4_at_51_6 GND nmos W=0.0975U L=0.065U
M741_ GND __o4t_52_6 O4_at_52_6 GND nmos W=0.0975U L=0.065U
M742_ GND __o4t_53_6 O4_at_53_6 GND nmos W=0.0975U L=0.065U
M743_ GND __u5 u5 GND nmos W=0.195U L=0.065U
M744_ GND __o5t_50_6 O5_at_50_6 GND nmos W=0.0975U L=0.065U
M745_ GND __o5t_51_6 O5_at_51_6 GND nmos W=0.0975U L=0.065U
M746_ GND __o5t_52_6 O5_at_52_6 GND nmos W=0.0975U L=0.065U
M747_ GND __o5t_53_6 O5_at_53_6 GND nmos W=0.0975U L=0.065U
M748_ GND __u6 u6 GND nmos W=0.195U L=0.065U
M749_ GND __o6t_50_6 O6_at_50_6 GND nmos W=0.0975U L=0.065U
M750_ GND __o6t_51_6 O6_at_51_6 GND nmos W=0.0975U L=0.065U
M751_ GND __o6t_52_6 O6_at_52_6 GND nmos W=0.0975U L=0.065U
M752_ GND __o6t_53_6 O6_at_53_6 GND nmos W=0.0975U L=0.065U
M753_ GND __u7 u7 GND nmos W=0.195U L=0.065U
M754_ GND __o7t_50_6 O7_at_50_6 GND nmos W=0.0975U L=0.065U
M755_ GND __o7t_51_6 O7_at_51_6 GND nmos W=0.0975U L=0.065U
M756_ GND __o7t_52_6 O7_at_52_6 GND nmos W=0.0975U L=0.065U
M757_ GND __o7t_53_6 O7_at_53_6 GND nmos W=0.0975U L=0.065U
M758_ GND __c_50_6 #fb687# GND nmos W=0.0975U L=0.13U
M759_ GND b_53_6 #fb690# GND nmos W=0.0975U L=0.13U
M760_keeper GND Vdd #689 GND nmos W=0.0975U L=6.175U
M761_ GND b_52_6 #fb693# GND nmos W=0.0975U L=0.13U
M762_keeper GND Vdd #692 GND nmos W=0.0975U L=1.495U
M763_ GND b_51_6 #fb696# GND nmos W=0.0975U L=0.13U
M764_keeper GND Vdd #695 GND nmos W=0.0975U L=1.495U
M765_ GND b_50_6 #fb699# GND nmos W=0.0975U L=0.13U
M766_keeper GND Vdd #698 GND nmos W=0.0975U L=1.495U
M767_ GND __c_51_6 #fb702# GND nmos W=0.0975U L=0.13U
M768_keeper GND Vdd #701 GND nmos W=0.0975U L=1.495U
M769_ GND b_57_6 #fb705# GND nmos W=0.0975U L=0.13U
M770_keeper GND Vdd #704 GND nmos W=0.0975U L=6.175U
M771_ GND b_56_6 #fb708# GND nmos W=0.0975U L=0.13U
M772_keeper GND Vdd #707 GND nmos W=0.0975U L=1.495U
M773_ GND b_55_6 #fb711# GND nmos W=0.0975U L=0.13U
M774_keeper GND Vdd #710 GND nmos W=0.0975U L=1.495U
M775_ GND b_54_6 #fb714# GND nmos W=0.0975U L=0.13U
M776_keeper GND Vdd #713 GND nmos W=0.0975U L=1.495U
M777_ GND __c_52_6 #fb717# GND nmos W=0.0975U L=0.13U
M778_keeper GND Vdd #716 GND nmos W=0.0975U L=1.495U
M779_ GND b_511_6 #fb720# GND nmos W=0.0975U L=0.13U
M780_keeper GND Vdd #719 GND nmos W=0.0975U L=6.175U
M781_ GND b_510_6 #fb723# GND nmos W=0.0975U L=0.13U
M782_keeper GND Vdd #722 GND nmos W=0.0975U L=1.495U
M783_ GND b_59_6 #fb726# GND nmos W=0.0975U L=0.13U
M784_keeper GND Vdd #725 GND nmos W=0.0975U L=1.495U
M785_ GND b_58_6 #fb729# GND nmos W=0.0975U L=0.13U
M786_keeper GND Vdd #728 GND nmos W=0.0975U L=1.495U
M787_ GND __c_53_6 #fb732# GND nmos W=0.0975U L=0.13U
M788_keeper GND Vdd #731 GND nmos W=0.0975U L=1.495U
M789_ GND b_515_6 #fb735# GND nmos W=0.0975U L=0.13U
M790_keeper GND Vdd #734 GND nmos W=0.0975U L=6.175U
M791_ GND b_514_6 #fb738# GND nmos W=0.0975U L=0.13U
M792_keeper GND Vdd #737 GND nmos W=0.0975U L=1.495U
M793_ GND b_513_6 #fb741# GND nmos W=0.0975U L=0.13U
M794_keeper GND Vdd #740 GND nmos W=0.0975U L=1.495U
M795_ GND b_512_6 #fb744# GND nmos W=0.0975U L=0.13U
M796_keeper GND Vdd #743 GND nmos W=0.0975U L=1.495U
M797_ GND __c_54_6 #fb747# GND nmos W=0.0975U L=0.13U
M798_keeper GND Vdd #746 GND nmos W=0.0975U L=1.495U
M799_ GND b_519_6 #fb750# GND nmos W=0.0975U L=0.13U
M800_keeper GND Vdd #749 GND nmos W=0.0975U L=6.175U
M801_ GND b_518_6 #fb753# GND nmos W=0.0975U L=0.13U
M802_keeper GND Vdd #752 GND nmos W=0.0975U L=1.495U
M803_ GND b_517_6 #fb756# GND nmos W=0.0975U L=0.13U
M804_keeper GND Vdd #755 GND nmos W=0.0975U L=1.495U
M805_ GND b_516_6 #fb759# GND nmos W=0.0975U L=0.13U
M806_keeper GND Vdd #758 GND nmos W=0.0975U L=1.495U
M807_ GND __c_55_6 #fb762# GND nmos W=0.0975U L=0.13U
M808_keeper GND Vdd #761 GND nmos W=0.0975U L=1.495U
M809_ GND b_523_6 #fb765# GND nmos W=0.0975U L=0.13U
M810_keeper GND Vdd #764 GND nmos W=0.0975U L=6.175U
M811_ GND b_522_6 #fb768# GND nmos W=0.0975U L=0.13U
M812_keeper GND Vdd #767 GND nmos W=0.0975U L=1.495U
M813_ GND b_521_6 #fb771# GND nmos W=0.0975U L=0.13U
M814_keeper GND Vdd #770 GND nmos W=0.0975U L=1.495U
M815_ GND b_520_6 #fb774# GND nmos W=0.0975U L=0.13U
M816_keeper GND Vdd #773 GND nmos W=0.0975U L=1.495U
M817_ GND __c_56_6 #fb777# GND nmos W=0.0975U L=0.13U
M818_keeper GND Vdd #776 GND nmos W=0.0975U L=1.495U
M819_ GND b_527_6 #fb780# GND nmos W=0.0975U L=0.13U
M820_keeper GND Vdd #779 GND nmos W=0.0975U L=6.175U
M821_ GND b_526_6 #fb783# GND nmos W=0.0975U L=0.13U
M822_keeper GND Vdd #782 GND nmos W=0.0975U L=1.495U
M823_ GND b_525_6 #fb786# GND nmos W=0.0975U L=0.13U
M824_keeper GND Vdd #785 GND nmos W=0.0975U L=1.495U
M825_ GND b_524_6 #fb789# GND nmos W=0.0975U L=0.13U
M826_keeper GND Vdd #788 GND nmos W=0.0975U L=1.495U
M827_ GND __c_57_6 #fb792# GND nmos W=0.0975U L=0.13U
M828_keeper GND Vdd #791 GND nmos W=0.0975U L=1.495U
M829_ GND b_531_6 #fb795# GND nmos W=0.0975U L=0.13U
M830_keeper GND Vdd #794 GND nmos W=0.0975U L=6.175U
M831_ GND b_530_6 #fb798# GND nmos W=0.0975U L=0.13U
M832_keeper GND Vdd #797 GND nmos W=0.0975U L=1.495U
M833_ GND b_529_6 #fb801# GND nmos W=0.0975U L=0.13U
M834_keeper GND Vdd #800 GND nmos W=0.0975U L=1.495U
M835_ GND b_528_6 #fb804# GND nmos W=0.0975U L=0.13U
M836_keeper GND Vdd #803 GND nmos W=0.0975U L=1.495U
M837_ GND d_50_6 #fb807# GND nmos W=0.0975U L=0.13U
M838_keeper GND Vdd #806 GND nmos W=0.0975U L=1.495U
M839_ GND d_51_6 #fb810# GND nmos W=0.0975U L=0.13U
M840_keeper GND Vdd #809 GND nmos W=0.0975U L=1.495U
M841_ GND d_52_6 #fb813# GND nmos W=0.0975U L=0.13U
M842_keeper GND Vdd #812 GND nmos W=0.0975U L=1.495U
M843_ GND d_53_6 #fb816# GND nmos W=0.0975U L=0.13U
M844_keeper GND Vdd #815 GND nmos W=0.0975U L=1.495U
M845_ GND __e_50_6 #fb819# GND nmos W=0.0975U L=0.13U
M846_keeper GND Vdd #818 GND nmos W=0.0975U L=1.495U
M847_ GND __e_51_6 #fb822# GND nmos W=0.0975U L=0.13U
M848_keeper GND Vdd #821 GND nmos W=0.0975U L=1.495U
M849_ GND c #fb825# GND nmos W=0.0975U L=0.13U
M850_keeper GND Vdd #824 GND nmos W=0.0975U L=1.495U
M851_ GND __v #fb828# GND nmos W=0.0975U L=0.13U
M852_keeper GND Vdd #827 GND nmos W=0.0975U L=1.495U
M853_ GND __i__a #fb831# GND nmos W=0.0975U L=0.13U
M854_keeper GND Vdd #830 GND nmos W=0.0975U L=6.175U
M855_ GND __u1 #fb834# GND nmos W=0.0975U L=0.13U
M856_keeper GND Vdd #833 GND nmos W=0.0975U L=0.715U
M857_ GND __o1t_50_6 #fb837# GND nmos W=0.0975U L=0.13U
M858_keeper GND Vdd #836 GND nmos W=0.0975U L=0.715U
M859_ GND O1_af_50_6 #fb840# GND nmos W=0.0975U L=0.13U
M860_keeper GND Vdd #839 GND nmos W=0.0975U L=0.715U
M861_ GND __o1t_51_6 #fb843# GND nmos W=0.0975U L=0.13U
M862_keeper GND Vdd #842 GND nmos W=0.0975U L=3.055U
M863_ GND O1_af_51_6 #fb846# GND nmos W=0.0975U L=0.13U
M864_keeper GND Vdd #845 GND nmos W=0.0975U L=0.715U
M865_ GND __o1t_52_6 #fb849# GND nmos W=0.0975U L=0.13U
M866_keeper GND Vdd #848 GND nmos W=0.0975U L=3.055U
M867_ GND O1_af_52_6 #fb852# GND nmos W=0.0975U L=0.13U
M868_keeper GND Vdd #851 GND nmos W=0.0975U L=0.715U
M869_ GND __o1t_53_6 #fb855# GND nmos W=0.0975U L=0.13U
M870_keeper GND Vdd #854 GND nmos W=0.0975U L=3.055U
M871_ GND O1_af_53_6 #fb858# GND nmos W=0.0975U L=0.13U
M872_keeper GND Vdd #857 GND nmos W=0.0975U L=0.715U
M873_ GND __u2 #fb861# GND nmos W=0.0975U L=0.13U
M874_keeper GND Vdd #860 GND nmos W=0.0975U L=3.055U
M875_ GND __o2t_50_6 #fb864# GND nmos W=0.0975U L=0.13U
M876_keeper GND Vdd #863 GND nmos W=0.0975U L=0.715U
M877_ GND O2_af_50_6 #fb867# GND nmos W=0.0975U L=0.13U
M878_keeper GND Vdd #866 GND nmos W=0.0975U L=0.715U
M879_ GND __o2t_51_6 #fb870# GND nmos W=0.0975U L=0.13U
M880_keeper GND Vdd #869 GND nmos W=0.0975U L=3.055U
M881_ GND O2_af_51_6 #fb873# GND nmos W=0.0975U L=0.13U
M882_keeper GND Vdd #872 GND nmos W=0.0975U L=0.715U
M883_ GND __o2t_52_6 #fb876# GND nmos W=0.0975U L=0.13U
M884_keeper GND Vdd #875 GND nmos W=0.0975U L=3.055U
M885_ GND O2_af_52_6 #fb879# GND nmos W=0.0975U L=0.13U
M886_keeper GND Vdd #878 GND nmos W=0.0975U L=0.715U
M887_ GND __o2t_53_6 #fb882# GND nmos W=0.0975U L=0.13U
M888_keeper GND Vdd #881 GND nmos W=0.0975U L=3.055U
M889_ GND O2_af_53_6 #fb885# GND nmos W=0.0975U L=0.13U
M890_keeper GND Vdd #884 GND nmos W=0.0975U L=0.715U
M891_ GND __u3 #fb888# GND nmos W=0.0975U L=0.13U
M892_keeper GND Vdd #887 GND nmos W=0.0975U L=3.055U
M893_ GND __o3t_50_6 #fb891# GND nmos W=0.0975U L=0.13U
M894_keeper GND Vdd #890 GND nmos W=0.0975U L=0.715U
M895_ GND O3_af_50_6 #fb894# GND nmos W=0.0975U L=0.13U
M896_keeper GND Vdd #893 GND nmos W=0.0975U L=0.715U
M897_ GND __o3t_51_6 #fb897# GND nmos W=0.0975U L=0.13U
M898_keeper GND Vdd #896 GND nmos W=0.0975U L=3.055U
M899_ GND O3_af_51_6 #fb900# GND nmos W=0.0975U L=0.13U
M900_keeper GND Vdd #899 GND nmos W=0.0975U L=0.715U
M901_ GND __o3t_52_6 #fb903# GND nmos W=0.0975U L=0.13U
M902_keeper GND Vdd #902 GND nmos W=0.0975U L=3.055U
M903_ GND O3_af_52_6 #fb906# GND nmos W=0.0975U L=0.13U
M904_keeper GND Vdd #905 GND nmos W=0.0975U L=0.715U
M905_ GND __o3t_53_6 #fb909# GND nmos W=0.0975U L=0.13U
M906_keeper GND Vdd #908 GND nmos W=0.0975U L=3.055U
M907_ GND O3_af_53_6 #fb912# GND nmos W=0.0975U L=0.13U
M908_keeper GND Vdd #911 GND nmos W=0.0975U L=0.715U
M909_ GND __u4 #fb915# GND nmos W=0.0975U L=0.13U
M910_keeper GND Vdd #914 GND nmos W=0.0975U L=3.055U
M911_ GND __o4t_50_6 #fb918# GND nmos W=0.0975U L=0.13U
M912_keeper GND Vdd #917 GND nmos W=0.0975U L=0.715U
M913_ GND O4_af_50_6 #fb921# GND nmos W=0.0975U L=0.13U
M914_keeper GND Vdd #920 GND nmos W=0.0975U L=0.715U
M915_ GND __o4t_51_6 #fb924# GND nmos W=0.0975U L=0.13U
M916_keeper GND Vdd #923 GND nmos W=0.0975U L=3.055U
M917_ GND O4_af_51_6 #fb927# GND nmos W=0.0975U L=0.13U
M918_keeper GND Vdd #926 GND nmos W=0.0975U L=0.715U
M919_ GND __o4t_52_6 #fb930# GND nmos W=0.0975U L=0.13U
M920_keeper GND Vdd #929 GND nmos W=0.0975U L=3.055U
M921_ GND O4_af_52_6 #fb933# GND nmos W=0.0975U L=0.13U
M922_keeper GND Vdd #932 GND nmos W=0.0975U L=0.715U
M923_ GND __o4t_53_6 #fb936# GND nmos W=0.0975U L=0.13U
M924_keeper GND Vdd #935 GND nmos W=0.0975U L=3.055U
M925_ GND O4_af_53_6 #fb939# GND nmos W=0.0975U L=0.13U
M926_keeper GND Vdd #938 GND nmos W=0.0975U L=0.715U
M927_ GND __u5 #fb942# GND nmos W=0.0975U L=0.13U
M928_keeper GND Vdd #941 GND nmos W=0.0975U L=3.055U
M929_ GND __o5t_50_6 #fb945# GND nmos W=0.0975U L=0.13U
M930_keeper GND Vdd #944 GND nmos W=0.0975U L=0.715U
M931_ GND O5_af_50_6 #fb948# GND nmos W=0.0975U L=0.13U
M932_keeper GND Vdd #947 GND nmos W=0.0975U L=0.715U
M933_ GND __o5t_51_6 #fb951# GND nmos W=0.0975U L=0.13U
M934_keeper GND Vdd #950 GND nmos W=0.0975U L=3.055U
M935_ GND O5_af_51_6 #fb954# GND nmos W=0.0975U L=0.13U
M936_keeper GND Vdd #953 GND nmos W=0.0975U L=0.715U
M937_ GND __o5t_52_6 #fb957# GND nmos W=0.0975U L=0.13U
M938_keeper GND Vdd #956 GND nmos W=0.0975U L=3.055U
M939_ GND O5_af_52_6 #fb960# GND nmos W=0.0975U L=0.13U
M940_keeper GND Vdd #959 GND nmos W=0.0975U L=0.715U
M941_ GND __o5t_53_6 #fb963# GND nmos W=0.0975U L=0.13U
M942_keeper GND Vdd #962 GND nmos W=0.0975U L=3.055U
M943_ GND O5_af_53_6 #fb966# GND nmos W=0.0975U L=0.13U
M944_keeper GND Vdd #965 GND nmos W=0.0975U L=0.715U
M945_ GND __u6 #fb969# GND nmos W=0.0975U L=0.13U
M946_keeper GND Vdd #968 GND nmos W=0.0975U L=3.055U
M947_ GND __o6t_50_6 #fb972# GND nmos W=0.0975U L=0.13U
M948_keeper GND Vdd #971 GND nmos W=0.0975U L=0.715U
M949_ GND O6_af_50_6 #fb975# GND nmos W=0.0975U L=0.13U
M950_keeper GND Vdd #974 GND nmos W=0.0975U L=0.715U
M951_ GND __o6t_51_6 #fb978# GND nmos W=0.0975U L=0.13U
M952_keeper GND Vdd #977 GND nmos W=0.0975U L=3.055U
M953_ GND O6_af_51_6 #fb981# GND nmos W=0.0975U L=0.13U
M954_keeper GND Vdd #980 GND nmos W=0.0975U L=0.715U
M955_ GND __o6t_52_6 #fb984# GND nmos W=0.0975U L=0.13U
M956_keeper GND Vdd #983 GND nmos W=0.0975U L=3.055U
M957_ GND O6_af_52_6 #fb987# GND nmos W=0.0975U L=0.13U
M958_keeper GND Vdd #986 GND nmos W=0.0975U L=0.715U
M959_ GND __o6t_53_6 #fb990# GND nmos W=0.0975U L=0.13U
M960_keeper GND Vdd #989 GND nmos W=0.0975U L=3.055U
M961_ GND O6_af_53_6 #fb993# GND nmos W=0.0975U L=0.13U
M962_keeper GND Vdd #992 GND nmos W=0.0975U L=0.715U
M963_ GND __u7 #fb996# GND nmos W=0.0975U L=0.13U
M964_keeper GND Vdd #995 GND nmos W=0.0975U L=3.055U
M965_ GND __o7t_50_6 #fb999# GND nmos W=0.0975U L=0.13U
M966_keeper GND Vdd #998 GND nmos W=0.0975U L=0.715U
M967_ GND O7_af_50_6 #fb1002# GND nmos W=0.0975U L=0.13U
M968_keeper GND Vdd #1001 GND nmos W=0.0975U L=0.715U
M969_ GND __o7t_51_6 #fb1005# GND nmos W=0.0975U L=0.13U
M970_keeper GND Vdd #1004 GND nmos W=0.0975U L=3.055U
M971_ GND O7_af_51_6 #fb1008# GND nmos W=0.0975U L=0.13U
M972_keeper GND Vdd #1007 GND nmos W=0.0975U L=0.715U
M973_ GND __o7t_52_6 #fb1011# GND nmos W=0.0975U L=0.13U
M974_keeper GND Vdd #1010 GND nmos W=0.0975U L=3.055U
M975_ GND O7_af_52_6 #fb1014# GND nmos W=0.0975U L=0.13U
M976_keeper GND Vdd #1013 GND nmos W=0.0975U L=0.715U
M977_ GND __o7t_53_6 #fb1017# GND nmos W=0.0975U L=0.13U
M978_keeper GND Vdd #1016 GND nmos W=0.0975U L=3.055U
M979_ GND O7_af_53_6 #fb1020# GND nmos W=0.0975U L=0.13U
M980_keeper GND Vdd #1019 GND nmos W=0.0975U L=0.715U
M981_keeper GND Vdd #1022 GND nmos W=0.0975U L=3.055U
M982_ #24 b_50_6 __c_50_6 GND nmos W=0.0975U L=0.065U
M983_ #27 __b_50_6 __c_50_6 GND nmos W=0.0975U L=0.065U
M984_ #36 I_af_50_6 __c_50_6 Vdd pmos W=0.1625U L=0.065U
M985_keeper #688 #fb687# __c_50_6 Vdd pmos W=0.0975U L=0.065U
M986_keeper #689 #fb687# __c_50_6 GND nmos W=0.0975U L=0.065U
M987_ #18 b_51_6 #3 GND nmos W=0.0975U L=0.065U
M988_ #21 __b_51_6 #3 GND nmos W=0.0975U L=0.065U
M989_ #3 I_at_50_6 #24 GND nmos W=0.0975U L=0.065U
M990_ #3 I_af_50_6 #27 GND nmos W=0.0975U L=0.065U
M991_ #12 b_52_6 #4 GND nmos W=0.0975U L=0.065U
M992_ #15 __b_52_6 #4 GND nmos W=0.0975U L=0.065U
M993_ #4 I_at_51_6 #18 GND nmos W=0.0975U L=0.065U
M994_ #4 I_af_51_6 #21 GND nmos W=0.0975U L=0.065U
M995_ #6 b_53_6 #5 GND nmos W=0.0975U L=0.065U
M996_ #9 __b_53_6 #5 GND nmos W=0.0975U L=0.065U
M997_ #5 I_at_52_6 #12 GND nmos W=0.0975U L=0.065U
M998_ #5 I_af_52_6 #15 GND nmos W=0.0975U L=0.065U
M999_ #333 __i__t_53_6 b_53_6 Vdd pmos W=0.1625U L=0.065U
M1000_ #335 I_af_53_6 b_53_6 GND nmos W=0.0975U L=0.065U
M1001_keeper #691 #fb690# b_53_6 Vdd pmos W=0.0975U L=0.065U
M1002_keeper #692 #fb690# b_53_6 GND nmos W=0.0975U L=0.065U
M1003_ #330 __i__t_52_6 b_52_6 Vdd pmos W=0.1625U L=0.065U
M1004_ #332 I_af_52_6 b_52_6 GND nmos W=0.0975U L=0.065U
M1005_keeper #694 #fb693# b_52_6 Vdd pmos W=0.0975U L=0.065U
M1006_keeper #695 #fb693# b_52_6 GND nmos W=0.0975U L=0.065U
M1007_ #327 __i__t_51_6 b_51_6 Vdd pmos W=0.1625U L=0.065U
M1008_ #329 I_af_51_6 b_51_6 GND nmos W=0.0975U L=0.065U
M1009_keeper #697 #fb696# b_51_6 Vdd pmos W=0.0975U L=0.065U
M1010_keeper #698 #fb696# b_51_6 GND nmos W=0.0975U L=0.065U
M1011_ #323 __i__t_50_6 b_50_6 Vdd pmos W=0.1625U L=0.065U
M1012_ #325 I_af_50_6 b_50_6 GND nmos W=0.0975U L=0.065U
M1013_keeper #700 #fb699# b_50_6 Vdd pmos W=0.0975U L=0.065U
M1014_keeper #701 #fb699# b_50_6 GND nmos W=0.0975U L=0.065U
M1015_ #35 I_af_51_6 #30 Vdd pmos W=0.1625U L=0.065U
M1016_ #30 I_at_50_6 #36 Vdd pmos W=0.1625U L=0.065U
M1017_ #34 I_af_52_6 #31 Vdd pmos W=0.1625U L=0.065U
M1018_ #31 I_at_51_6 #35 Vdd pmos W=0.1625U L=0.065U
M1019_ #33 I_af_53_6 #32 Vdd pmos W=0.1625U L=0.065U
M1020_ #32 I_at_52_6 #34 Vdd pmos W=0.1625U L=0.065U
M1021_ #59 b_54_6 __c_51_6 GND nmos W=0.0975U L=0.065U
M1022_ #62 __b_54_6 __c_51_6 GND nmos W=0.0975U L=0.065U
M1023_ #71 I_af_54_6 __c_51_6 Vdd pmos W=0.1625U L=0.065U
M1024_keeper #703 #fb702# __c_51_6 Vdd pmos W=0.0975U L=0.065U
M1025_keeper #704 #fb702# __c_51_6 GND nmos W=0.0975U L=0.065U
M1026_ #53 b_55_6 #38 GND nmos W=0.0975U L=0.065U
M1027_ #56 __b_55_6 #38 GND nmos W=0.0975U L=0.065U
M1028_ #38 I_at_54_6 #59 GND nmos W=0.0975U L=0.065U
M1029_ #38 I_af_54_6 #62 GND nmos W=0.0975U L=0.065U
M1030_ #47 b_56_6 #39 GND nmos W=0.0975U L=0.065U
M1031_ #50 __b_56_6 #39 GND nmos W=0.0975U L=0.065U
M1032_ #39 I_at_55_6 #53 GND nmos W=0.0975U L=0.065U
M1033_ #39 I_af_55_6 #56 GND nmos W=0.0975U L=0.065U
M1034_ #41 b_57_6 #40 GND nmos W=0.0975U L=0.065U
M1035_ #44 __b_57_6 #40 GND nmos W=0.0975U L=0.065U
M1036_ #40 I_at_56_6 #47 GND nmos W=0.0975U L=0.065U
M1037_ #40 I_af_56_6 #50 GND nmos W=0.0975U L=0.065U
M1038_ #345 __i__t_57_6 b_57_6 Vdd pmos W=0.1625U L=0.065U
M1039_ #347 I_af_57_6 b_57_6 GND nmos W=0.0975U L=0.065U
M1040_keeper #706 #fb705# b_57_6 Vdd pmos W=0.0975U L=0.065U
M1041_keeper #707 #fb705# b_57_6 GND nmos W=0.0975U L=0.065U
M1042_ #342 __i__t_56_6 b_56_6 Vdd pmos W=0.1625U L=0.065U
M1043_ #344 I_af_56_6 b_56_6 GND nmos W=0.0975U L=0.065U
M1044_keeper #709 #fb708# b_56_6 Vdd pmos W=0.0975U L=0.065U
M1045_keeper #710 #fb708# b_56_6 GND nmos W=0.0975U L=0.065U
M1046_ #339 __i__t_55_6 b_55_6 Vdd pmos W=0.1625U L=0.065U
M1047_ #341 I_af_55_6 b_55_6 GND nmos W=0.0975U L=0.065U
M1048_keeper #712 #fb711# b_55_6 Vdd pmos W=0.0975U L=0.065U
M1049_keeper #713 #fb711# b_55_6 GND nmos W=0.0975U L=0.065U
M1050_ #336 __i__t_54_6 b_54_6 Vdd pmos W=0.1625U L=0.065U
M1051_ #338 I_af_54_6 b_54_6 GND nmos W=0.0975U L=0.065U
M1052_keeper #715 #fb714# b_54_6 Vdd pmos W=0.0975U L=0.065U
M1053_keeper #716 #fb714# b_54_6 GND nmos W=0.0975U L=0.065U
M1054_ #70 I_af_55_6 #65 Vdd pmos W=0.1625U L=0.065U
M1055_ #65 I_at_54_6 #71 Vdd pmos W=0.1625U L=0.065U
M1056_ #69 I_af_56_6 #66 Vdd pmos W=0.1625U L=0.065U
M1057_ #66 I_at_55_6 #70 Vdd pmos W=0.1625U L=0.065U
M1058_ #68 I_af_57_6 #67 Vdd pmos W=0.1625U L=0.065U
M1059_ #67 I_at_56_6 #69 Vdd pmos W=0.1625U L=0.065U
M1060_ #94 b_58_6 __c_52_6 GND nmos W=0.0975U L=0.065U
M1061_ #97 __b_58_6 __c_52_6 GND nmos W=0.0975U L=0.065U
M1062_ #106 I_af_58_6 __c_52_6 Vdd pmos W=0.1625U L=0.065U
M1063_keeper #718 #fb717# __c_52_6 Vdd pmos W=0.0975U L=0.065U
M1064_keeper #719 #fb717# __c_52_6 GND nmos W=0.0975U L=0.065U
M1065_ #88 b_59_6 #73 GND nmos W=0.0975U L=0.065U
M1066_ #91 __b_59_6 #73 GND nmos W=0.0975U L=0.065U
M1067_ #73 I_at_58_6 #94 GND nmos W=0.0975U L=0.065U
M1068_ #73 I_af_58_6 #97 GND nmos W=0.0975U L=0.065U
M1069_ #82 b_510_6 #74 GND nmos W=0.0975U L=0.065U
M1070_ #85 __b_510_6 #74 GND nmos W=0.0975U L=0.065U
M1071_ #74 I_at_59_6 #88 GND nmos W=0.0975U L=0.065U
M1072_ #74 I_af_59_6 #91 GND nmos W=0.0975U L=0.065U
M1073_ #76 b_511_6 #75 GND nmos W=0.0975U L=0.065U
M1074_ #79 __b_511_6 #75 GND nmos W=0.0975U L=0.065U
M1075_ #75 I_at_510_6 #82 GND nmos W=0.0975U L=0.065U
M1076_ #75 I_af_510_6 #85 GND nmos W=0.0975U L=0.065U
M1077_ #357 __i__t_511_6 b_511_6 Vdd pmos W=0.1625U L=0.065U
M1078_ #359 I_af_511_6 b_511_6 GND nmos W=0.0975U L=0.065U
M1079_keeper #721 #fb720# b_511_6 Vdd pmos W=0.0975U L=0.065U
M1080_keeper #722 #fb720# b_511_6 GND nmos W=0.0975U L=0.065U
M1081_ #354 __i__t_510_6 b_510_6 Vdd pmos W=0.1625U L=0.065U
M1082_ #356 I_af_510_6 b_510_6 GND nmos W=0.0975U L=0.065U
M1083_keeper #724 #fb723# b_510_6 Vdd pmos W=0.0975U L=0.065U
M1084_keeper #725 #fb723# b_510_6 GND nmos W=0.0975U L=0.065U
M1085_ #351 __i__t_59_6 b_59_6 Vdd pmos W=0.1625U L=0.065U
M1086_ #353 I_af_59_6 b_59_6 GND nmos W=0.0975U L=0.065U
M1087_keeper #727 #fb726# b_59_6 Vdd pmos W=0.0975U L=0.065U
M1088_keeper #728 #fb726# b_59_6 GND nmos W=0.0975U L=0.065U
M1089_ #348 __i__t_58_6 b_58_6 Vdd pmos W=0.1625U L=0.065U
M1090_ #350 I_af_58_6 b_58_6 GND nmos W=0.0975U L=0.065U
M1091_keeper #730 #fb729# b_58_6 Vdd pmos W=0.0975U L=0.065U
M1092_keeper #731 #fb729# b_58_6 GND nmos W=0.0975U L=0.065U
M1093_ #105 I_af_59_6 #100 Vdd pmos W=0.1625U L=0.065U
M1094_ #100 I_at_58_6 #106 Vdd pmos W=0.1625U L=0.065U
M1095_ #104 I_af_510_6 #101 Vdd pmos W=0.1625U L=0.065U
M1096_ #101 I_at_59_6 #105 Vdd pmos W=0.1625U L=0.065U
M1097_ #103 I_af_511_6 #102 Vdd pmos W=0.1625U L=0.065U
M1098_ #102 I_at_510_6 #104 Vdd pmos W=0.1625U L=0.065U
M1099_ #129 b_512_6 __c_53_6 GND nmos W=0.0975U L=0.065U
M1100_ #132 __b_512_6 __c_53_6 GND nmos W=0.0975U L=0.065U
M1101_ #141 I_af_512_6 __c_53_6 Vdd pmos W=0.1625U L=0.065U
M1102_keeper #733 #fb732# __c_53_6 Vdd pmos W=0.0975U L=0.065U
M1103_keeper #734 #fb732# __c_53_6 GND nmos W=0.0975U L=0.065U
M1104_ #123 b_513_6 #108 GND nmos W=0.0975U L=0.065U
M1105_ #126 __b_513_6 #108 GND nmos W=0.0975U L=0.065U
M1106_ #108 I_at_512_6 #129 GND nmos W=0.0975U L=0.065U
M1107_ #108 I_af_512_6 #132 GND nmos W=0.0975U L=0.065U
M1108_ #117 b_514_6 #109 GND nmos W=0.0975U L=0.065U
M1109_ #120 __b_514_6 #109 GND nmos W=0.0975U L=0.065U
M1110_ #109 I_at_513_6 #123 GND nmos W=0.0975U L=0.065U
M1111_ #109 I_af_513_6 #126 GND nmos W=0.0975U L=0.065U
M1112_ #111 b_515_6 #110 GND nmos W=0.0975U L=0.065U
M1113_ #114 __b_515_6 #110 GND nmos W=0.0975U L=0.065U
M1114_ #110 I_at_514_6 #117 GND nmos W=0.0975U L=0.065U
M1115_ #110 I_af_514_6 #120 GND nmos W=0.0975U L=0.065U
M1116_ #369 __i__t_515_6 b_515_6 Vdd pmos W=0.1625U L=0.065U
M1117_ #371 I_af_515_6 b_515_6 GND nmos W=0.0975U L=0.065U
M1118_keeper #736 #fb735# b_515_6 Vdd pmos W=0.0975U L=0.065U
M1119_keeper #737 #fb735# b_515_6 GND nmos W=0.0975U L=0.065U
M1120_ #366 __i__t_514_6 b_514_6 Vdd pmos W=0.1625U L=0.065U
M1121_ #368 I_af_514_6 b_514_6 GND nmos W=0.0975U L=0.065U
M1122_keeper #739 #fb738# b_514_6 Vdd pmos W=0.0975U L=0.065U
M1123_keeper #740 #fb738# b_514_6 GND nmos W=0.0975U L=0.065U
M1124_ #363 __i__t_513_6 b_513_6 Vdd pmos W=0.1625U L=0.065U
M1125_ #365 I_af_513_6 b_513_6 GND nmos W=0.0975U L=0.065U
M1126_keeper #742 #fb741# b_513_6 Vdd pmos W=0.0975U L=0.065U
M1127_keeper #743 #fb741# b_513_6 GND nmos W=0.0975U L=0.065U
M1128_ #360 __i__t_512_6 b_512_6 Vdd pmos W=0.1625U L=0.065U
M1129_ #362 I_af_512_6 b_512_6 GND nmos W=0.0975U L=0.065U
M1130_keeper #745 #fb744# b_512_6 Vdd pmos W=0.0975U L=0.065U
M1131_keeper #746 #fb744# b_512_6 GND nmos W=0.0975U L=0.065U
M1132_ #140 I_af_513_6 #135 Vdd pmos W=0.1625U L=0.065U
M1133_ #135 I_at_512_6 #141 Vdd pmos W=0.1625U L=0.065U
M1134_ #139 I_af_514_6 #136 Vdd pmos W=0.1625U L=0.065U
M1135_ #136 I_at_513_6 #140 Vdd pmos W=0.1625U L=0.065U
M1136_ #138 I_af_515_6 #137 Vdd pmos W=0.1625U L=0.065U
M1137_ #137 I_at_514_6 #139 Vdd pmos W=0.1625U L=0.065U
M1138_ #164 b_516_6 __c_54_6 GND nmos W=0.0975U L=0.065U
M1139_ #167 __b_516_6 __c_54_6 GND nmos W=0.0975U L=0.065U
M1140_ #176 I_af_516_6 __c_54_6 Vdd pmos W=0.1625U L=0.065U
M1141_keeper #748 #fb747# __c_54_6 Vdd pmos W=0.0975U L=0.065U
M1142_keeper #749 #fb747# __c_54_6 GND nmos W=0.0975U L=0.065U
M1143_ #158 b_517_6 #143 GND nmos W=0.0975U L=0.065U
M1144_ #161 __b_517_6 #143 GND nmos W=0.0975U L=0.065U
M1145_ #143 I_at_516_6 #164 GND nmos W=0.0975U L=0.065U
M1146_ #143 I_af_516_6 #167 GND nmos W=0.0975U L=0.065U
M1147_ #152 b_518_6 #144 GND nmos W=0.0975U L=0.065U
M1148_ #155 __b_518_6 #144 GND nmos W=0.0975U L=0.065U
M1149_ #144 I_at_517_6 #158 GND nmos W=0.0975U L=0.065U
M1150_ #144 I_af_517_6 #161 GND nmos W=0.0975U L=0.065U
M1151_ #146 b_519_6 #145 GND nmos W=0.0975U L=0.065U
M1152_ #149 __b_519_6 #145 GND nmos W=0.0975U L=0.065U
M1153_ #145 I_at_518_6 #152 GND nmos W=0.0975U L=0.065U
M1154_ #145 I_af_518_6 #155 GND nmos W=0.0975U L=0.065U
M1155_ #381 __i__t_519_6 b_519_6 Vdd pmos W=0.1625U L=0.065U
M1156_ #383 I_af_519_6 b_519_6 GND nmos W=0.0975U L=0.065U
M1157_keeper #751 #fb750# b_519_6 Vdd pmos W=0.0975U L=0.065U
M1158_keeper #752 #fb750# b_519_6 GND nmos W=0.0975U L=0.065U
M1159_ #378 __i__t_518_6 b_518_6 Vdd pmos W=0.1625U L=0.065U
M1160_ #380 I_af_518_6 b_518_6 GND nmos W=0.0975U L=0.065U
M1161_keeper #754 #fb753# b_518_6 Vdd pmos W=0.0975U L=0.065U
M1162_keeper #755 #fb753# b_518_6 GND nmos W=0.0975U L=0.065U
M1163_ #375 __i__t_517_6 b_517_6 Vdd pmos W=0.1625U L=0.065U
M1164_ #377 I_af_517_6 b_517_6 GND nmos W=0.0975U L=0.065U
M1165_keeper #757 #fb756# b_517_6 Vdd pmos W=0.0975U L=0.065U
M1166_keeper #758 #fb756# b_517_6 GND nmos W=0.0975U L=0.065U
M1167_ #372 __i__t_516_6 b_516_6 Vdd pmos W=0.1625U L=0.065U
M1168_ #374 I_af_516_6 b_516_6 GND nmos W=0.0975U L=0.065U
M1169_keeper #760 #fb759# b_516_6 Vdd pmos W=0.0975U L=0.065U
M1170_keeper #761 #fb759# b_516_6 GND nmos W=0.0975U L=0.065U
M1171_ #175 I_af_517_6 #170 Vdd pmos W=0.1625U L=0.065U
M1172_ #170 I_at_516_6 #176 Vdd pmos W=0.1625U L=0.065U
M1173_ #174 I_af_518_6 #171 Vdd pmos W=0.1625U L=0.065U
M1174_ #171 I_at_517_6 #175 Vdd pmos W=0.1625U L=0.065U
M1175_ #173 I_af_519_6 #172 Vdd pmos W=0.1625U L=0.065U
M1176_ #172 I_at_518_6 #174 Vdd pmos W=0.1625U L=0.065U
M1177_ #199 b_520_6 __c_55_6 GND nmos W=0.0975U L=0.065U
M1178_ #202 __b_520_6 __c_55_6 GND nmos W=0.0975U L=0.065U
M1179_ #211 I_af_520_6 __c_55_6 Vdd pmos W=0.1625U L=0.065U
M1180_keeper #763 #fb762# __c_55_6 Vdd pmos W=0.0975U L=0.065U
M1181_keeper #764 #fb762# __c_55_6 GND nmos W=0.0975U L=0.065U
M1182_ #193 b_521_6 #178 GND nmos W=0.0975U L=0.065U
M1183_ #196 __b_521_6 #178 GND nmos W=0.0975U L=0.065U
M1184_ #178 I_at_520_6 #199 GND nmos W=0.0975U L=0.065U
M1185_ #178 I_af_520_6 #202 GND nmos W=0.0975U L=0.065U
M1186_ #187 b_522_6 #179 GND nmos W=0.0975U L=0.065U
M1187_ #190 __b_522_6 #179 GND nmos W=0.0975U L=0.065U
M1188_ #179 I_at_521_6 #193 GND nmos W=0.0975U L=0.065U
M1189_ #179 I_af_521_6 #196 GND nmos W=0.0975U L=0.065U
M1190_ #181 b_523_6 #180 GND nmos W=0.0975U L=0.065U
M1191_ #184 __b_523_6 #180 GND nmos W=0.0975U L=0.065U
M1192_ #180 I_at_522_6 #187 GND nmos W=0.0975U L=0.065U
M1193_ #180 I_af_522_6 #190 GND nmos W=0.0975U L=0.065U
M1194_ #393 __i__t_523_6 b_523_6 Vdd pmos W=0.1625U L=0.065U
M1195_ #395 I_af_523_6 b_523_6 GND nmos W=0.0975U L=0.065U
M1196_keeper #766 #fb765# b_523_6 Vdd pmos W=0.0975U L=0.065U
M1197_keeper #767 #fb765# b_523_6 GND nmos W=0.0975U L=0.065U
M1198_ #390 __i__t_522_6 b_522_6 Vdd pmos W=0.1625U L=0.065U
M1199_ #392 I_af_522_6 b_522_6 GND nmos W=0.0975U L=0.065U
M1200_keeper #769 #fb768# b_522_6 Vdd pmos W=0.0975U L=0.065U
M1201_keeper #770 #fb768# b_522_6 GND nmos W=0.0975U L=0.065U
M1202_ #387 __i__t_521_6 b_521_6 Vdd pmos W=0.1625U L=0.065U
M1203_ #389 I_af_521_6 b_521_6 GND nmos W=0.0975U L=0.065U
M1204_keeper #772 #fb771# b_521_6 Vdd pmos W=0.0975U L=0.065U
M1205_keeper #773 #fb771# b_521_6 GND nmos W=0.0975U L=0.065U
M1206_ #384 __i__t_520_6 b_520_6 Vdd pmos W=0.1625U L=0.065U
M1207_ #386 I_af_520_6 b_520_6 GND nmos W=0.0975U L=0.065U
M1208_keeper #775 #fb774# b_520_6 Vdd pmos W=0.0975U L=0.065U
M1209_keeper #776 #fb774# b_520_6 GND nmos W=0.0975U L=0.065U
M1210_ #210 I_af_521_6 #205 Vdd pmos W=0.1625U L=0.065U
M1211_ #205 I_at_520_6 #211 Vdd pmos W=0.1625U L=0.065U
M1212_ #209 I_af_522_6 #206 Vdd pmos W=0.1625U L=0.065U
M1213_ #206 I_at_521_6 #210 Vdd pmos W=0.1625U L=0.065U
M1214_ #208 I_af_523_6 #207 Vdd pmos W=0.1625U L=0.065U
M1215_ #207 I_at_522_6 #209 Vdd pmos W=0.1625U L=0.065U
M1216_ #234 b_524_6 __c_56_6 GND nmos W=0.0975U L=0.065U
M1217_ #237 __b_524_6 __c_56_6 GND nmos W=0.0975U L=0.065U
M1218_ #246 I_af_524_6 __c_56_6 Vdd pmos W=0.1625U L=0.065U
M1219_keeper #778 #fb777# __c_56_6 Vdd pmos W=0.0975U L=0.065U
M1220_keeper #779 #fb777# __c_56_6 GND nmos W=0.0975U L=0.065U
M1221_ #228 b_525_6 #213 GND nmos W=0.0975U L=0.065U
M1222_ #231 __b_525_6 #213 GND nmos W=0.0975U L=0.065U
M1223_ #213 I_at_524_6 #234 GND nmos W=0.0975U L=0.065U
M1224_ #213 I_af_524_6 #237 GND nmos W=0.0975U L=0.065U
M1225_ #222 b_526_6 #214 GND nmos W=0.0975U L=0.065U
M1226_ #225 __b_526_6 #214 GND nmos W=0.0975U L=0.065U
M1227_ #214 I_at_525_6 #228 GND nmos W=0.0975U L=0.065U
M1228_ #214 I_af_525_6 #231 GND nmos W=0.0975U L=0.065U
M1229_ #216 b_527_6 #215 GND nmos W=0.0975U L=0.065U
M1230_ #219 __b_527_6 #215 GND nmos W=0.0975U L=0.065U
M1231_ #215 I_at_526_6 #222 GND nmos W=0.0975U L=0.065U
M1232_ #215 I_af_526_6 #225 GND nmos W=0.0975U L=0.065U
M1233_ #405 __i__t_527_6 b_527_6 Vdd pmos W=0.1625U L=0.065U
M1234_ #407 I_af_527_6 b_527_6 GND nmos W=0.0975U L=0.065U
M1235_keeper #781 #fb780# b_527_6 Vdd pmos W=0.0975U L=0.065U
M1236_keeper #782 #fb780# b_527_6 GND nmos W=0.0975U L=0.065U
M1237_ #402 __i__t_526_6 b_526_6 Vdd pmos W=0.1625U L=0.065U
M1238_ #404 I_af_526_6 b_526_6 GND nmos W=0.0975U L=0.065U
M1239_keeper #784 #fb783# b_526_6 Vdd pmos W=0.0975U L=0.065U
M1240_keeper #785 #fb783# b_526_6 GND nmos W=0.0975U L=0.065U
M1241_ #399 __i__t_525_6 b_525_6 Vdd pmos W=0.1625U L=0.065U
M1242_ #401 I_af_525_6 b_525_6 GND nmos W=0.0975U L=0.065U
M1243_keeper #787 #fb786# b_525_6 Vdd pmos W=0.0975U L=0.065U
M1244_keeper #788 #fb786# b_525_6 GND nmos W=0.0975U L=0.065U
M1245_ #396 __i__t_524_6 b_524_6 Vdd pmos W=0.1625U L=0.065U
M1246_ #398 I_af_524_6 b_524_6 GND nmos W=0.0975U L=0.065U
M1247_keeper #790 #fb789# b_524_6 Vdd pmos W=0.0975U L=0.065U
M1248_keeper #791 #fb789# b_524_6 GND nmos W=0.0975U L=0.065U
M1249_ #245 I_af_525_6 #240 Vdd pmos W=0.1625U L=0.065U
M1250_ #240 I_at_524_6 #246 Vdd pmos W=0.1625U L=0.065U
M1251_ #244 I_af_526_6 #241 Vdd pmos W=0.1625U L=0.065U
M1252_ #241 I_at_525_6 #245 Vdd pmos W=0.1625U L=0.065U
M1253_ #243 I_af_527_6 #242 Vdd pmos W=0.1625U L=0.065U
M1254_ #242 I_at_526_6 #244 Vdd pmos W=0.1625U L=0.065U
M1255_ #269 b_528_6 __c_57_6 GND nmos W=0.0975U L=0.065U
M1256_ #272 __b_528_6 __c_57_6 GND nmos W=0.0975U L=0.065U
M1257_ #281 I_af_528_6 __c_57_6 Vdd pmos W=0.1625U L=0.065U
M1258_keeper #793 #fb792# __c_57_6 Vdd pmos W=0.0975U L=0.065U
M1259_keeper #794 #fb792# __c_57_6 GND nmos W=0.0975U L=0.065U
M1260_ #263 b_529_6 #248 GND nmos W=0.0975U L=0.065U
M1261_ #266 __b_529_6 #248 GND nmos W=0.0975U L=0.065U
M1262_ #248 I_at_528_6 #269 GND nmos W=0.0975U L=0.065U
M1263_ #248 I_af_528_6 #272 GND nmos W=0.0975U L=0.065U
M1264_ #257 b_530_6 #249 GND nmos W=0.0975U L=0.065U
M1265_ #260 __b_530_6 #249 GND nmos W=0.0975U L=0.065U
M1266_ #249 I_at_529_6 #263 GND nmos W=0.0975U L=0.065U
M1267_ #249 I_af_529_6 #266 GND nmos W=0.0975U L=0.065U
M1268_ #251 b_531_6 #250 GND nmos W=0.0975U L=0.065U
M1269_ #254 __b_531_6 #250 GND nmos W=0.0975U L=0.065U
M1270_ #250 I_at_530_6 #257 GND nmos W=0.0975U L=0.065U
M1271_ #250 I_af_530_6 #260 GND nmos W=0.0975U L=0.065U
M1272_ #417 __i__t_531_6 b_531_6 Vdd pmos W=0.1625U L=0.065U
M1273_ #419 I_af_531_6 b_531_6 GND nmos W=0.0975U L=0.065U
M1274_keeper #796 #fb795# b_531_6 Vdd pmos W=0.0975U L=0.065U
M1275_keeper #797 #fb795# b_531_6 GND nmos W=0.0975U L=0.065U
M1276_ #414 __i__t_530_6 b_530_6 Vdd pmos W=0.1625U L=0.065U
M1277_ #416 I_af_530_6 b_530_6 GND nmos W=0.0975U L=0.065U
M1278_keeper #799 #fb798# b_530_6 Vdd pmos W=0.0975U L=0.065U
M1279_keeper #800 #fb798# b_530_6 GND nmos W=0.0975U L=0.065U
M1280_ #411 __i__t_529_6 b_529_6 Vdd pmos W=0.1625U L=0.065U
M1281_ #413 I_af_529_6 b_529_6 GND nmos W=0.0975U L=0.065U
M1282_keeper #802 #fb801# b_529_6 Vdd pmos W=0.0975U L=0.065U
M1283_keeper #803 #fb801# b_529_6 GND nmos W=0.0975U L=0.065U
M1284_ #408 __i__t_528_6 b_528_6 Vdd pmos W=0.1625U L=0.065U
M1285_ #410 I_af_528_6 b_528_6 GND nmos W=0.0975U L=0.065U
M1286_keeper #805 #fb804# b_528_6 Vdd pmos W=0.0975U L=0.065U
M1287_keeper #806 #fb804# b_528_6 GND nmos W=0.0975U L=0.065U
M1288_ #280 I_af_529_6 #275 Vdd pmos W=0.1625U L=0.065U
M1289_ #275 I_at_528_6 #281 Vdd pmos W=0.1625U L=0.065U
M1290_ #279 I_af_530_6 #276 Vdd pmos W=0.1625U L=0.065U
M1291_ #276 I_at_529_6 #280 Vdd pmos W=0.1625U L=0.065U
M1292_ #278 I_af_531_6 #277 Vdd pmos W=0.1625U L=0.065U
M1293_ #277 I_at_530_6 #279 Vdd pmos W=0.1625U L=0.065U
M1294_ #283 __c_50_6 d_50_6 Vdd pmos W=0.1625U L=0.065U
M1295_ #284 __c_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M1296_keeper #808 #fb807# d_50_6 Vdd pmos W=0.0975U L=0.065U
M1297_keeper #809 #fb807# d_50_6 GND nmos W=0.0975U L=0.065U
M1298_ #286 __c_52_6 d_51_6 Vdd pmos W=0.1625U L=0.065U
M1299_ #287 __c_52_6 d_51_6 GND nmos W=0.0975U L=0.065U
M1300_keeper #811 #fb810# d_51_6 Vdd pmos W=0.0975U L=0.065U
M1301_keeper #812 #fb810# d_51_6 GND nmos W=0.0975U L=0.065U
M1302_ #289 __c_54_6 d_52_6 Vdd pmos W=0.1625U L=0.065U
M1303_ #290 __c_54_6 d_52_6 GND nmos W=0.0975U L=0.065U
M1304_keeper #814 #fb813# d_52_6 Vdd pmos W=0.0975U L=0.065U
M1305_keeper #815 #fb813# d_52_6 GND nmos W=0.0975U L=0.065U
M1306_ #292 __c_56_6 d_53_6 Vdd pmos W=0.1625U L=0.065U
M1307_ #293 __c_56_6 d_53_6 GND nmos W=0.0975U L=0.065U
M1308_keeper #817 #fb816# d_53_6 Vdd pmos W=0.0975U L=0.065U
M1309_keeper #818 #fb816# d_53_6 GND nmos W=0.0975U L=0.065U
M1310_ #295 d_50_6 __e_50_6 GND nmos W=0.0975U L=0.065U
M1311_ #296 d_50_6 __e_50_6 Vdd pmos W=0.1625U L=0.065U
M1312_keeper #820 #fb819# __e_50_6 Vdd pmos W=0.0975U L=0.065U
M1313_keeper #821 #fb819# __e_50_6 GND nmos W=0.0975U L=0.065U
M1314_ #298 d_52_6 __e_51_6 GND nmos W=0.0975U L=0.065U
M1315_ #299 d_52_6 __e_51_6 Vdd pmos W=0.1625U L=0.065U
M1316_keeper #823 #fb822# __e_51_6 Vdd pmos W=0.0975U L=0.065U
M1317_keeper #824 #fb822# __e_51_6 GND nmos W=0.0975U L=0.065U
M1318_ #301 __e_50_6 c Vdd pmos W=0.325U L=0.065U
M1319_ #302 __e_50_6 c GND nmos W=0.195U L=0.065U
M1320_keeper #826 #fb825# c Vdd pmos W=0.0975U L=0.065U
M1321_keeper #827 #fb825# c GND nmos W=0.0975U L=0.065U
M1322_ #304 u1 __v Vdd pmos W=1.3U L=0.065U
M1323_keeper #829 #fb828# __v Vdd pmos W=0.0975U L=0.065U
M1324_keeper #830 #fb828# __v GND nmos W=0.0975U L=0.065U
M1325_ #305 u2 #304 Vdd pmos W=1.3U L=0.065U
M1326_ #306 u3 #305 Vdd pmos W=1.3U L=0.065U
M1327_ #307 u4 #306 Vdd pmos W=1.3U L=0.065U
M1328_ #308 u5 #307 Vdd pmos W=1.3U L=0.065U
M1329_ #309 u6 #308 Vdd pmos W=1.3U L=0.065U
M1330_ #310 u7 #309 Vdd pmos W=1.3U L=0.065U
M1331_ #320 __o1a __i__a GND nmos W=0.39U L=0.065U
M1332_keeper #832 #fb831# __i__a Vdd pmos W=0.0975U L=0.065U
M1333_keeper #833 #fb831# __i__a GND nmos W=0.0975U L=0.065U
M1334_keeper #835 #fb834# __u1 Vdd pmos W=0.0975U L=0.065U
M1335_keeper #836 #fb834# __u1 GND nmos W=0.0975U L=0.065U
M1336_ #423 b_54_6 __o1t_50_6 GND nmos W=0.0975U L=0.065U
M1337_keeper #838 #fb837# __o1t_50_6 Vdd pmos W=0.0975U L=0.065U
M1338_keeper #839 #fb837# __o1t_50_6 GND nmos W=0.0975U L=0.065U
M1339_ #424 __i__a #423 GND nmos W=0.0975U L=0.065U
M1340_ #425 v #424 GND nmos W=0.0975U L=0.065U
M1341_ #427 b_54_6 O1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1342_keeper #841 #fb840# O1_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1343_keeper #842 #fb840# O1_af_50_6 GND nmos W=0.0975U L=0.065U
M1344_ #428 I_aa #427 Vdd pmos W=0.1625U L=0.065U
M1345_ #429 __v #428 Vdd pmos W=0.1625U L=0.065U
M1346_ #432 b_55_6 __o1t_51_6 GND nmos W=0.0975U L=0.065U
M1347_keeper #844 #fb843# __o1t_51_6 Vdd pmos W=0.0975U L=0.065U
M1348_keeper #845 #fb843# __o1t_51_6 GND nmos W=0.0975U L=0.065U
M1349_ #433 __i__a #432 GND nmos W=0.0975U L=0.065U
M1350_ #434 v #433 GND nmos W=0.0975U L=0.065U
M1351_ #436 b_55_6 O1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1352_keeper #847 #fb846# O1_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1353_keeper #848 #fb846# O1_af_51_6 GND nmos W=0.0975U L=0.065U
M1354_ #437 I_aa #436 Vdd pmos W=0.1625U L=0.065U
M1355_ #438 __v #437 Vdd pmos W=0.1625U L=0.065U
M1356_ #440 b_56_6 __o1t_52_6 GND nmos W=0.0975U L=0.065U
M1357_keeper #850 #fb849# __o1t_52_6 Vdd pmos W=0.0975U L=0.065U
M1358_keeper #851 #fb849# __o1t_52_6 GND nmos W=0.0975U L=0.065U
M1359_ #441 __i__a #440 GND nmos W=0.0975U L=0.065U
M1360_ #442 v #441 GND nmos W=0.0975U L=0.065U
M1361_ #444 b_56_6 O1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1362_keeper #853 #fb852# O1_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1363_keeper #854 #fb852# O1_af_52_6 GND nmos W=0.0975U L=0.065U
M1364_ #445 I_aa #444 Vdd pmos W=0.1625U L=0.065U
M1365_ #446 __v #445 Vdd pmos W=0.1625U L=0.065U
M1366_ #448 b_57_6 __o1t_53_6 GND nmos W=0.0975U L=0.065U
M1367_keeper #856 #fb855# __o1t_53_6 Vdd pmos W=0.0975U L=0.065U
M1368_keeper #857 #fb855# __o1t_53_6 GND nmos W=0.0975U L=0.065U
M1369_ #449 __i__a #448 GND nmos W=0.0975U L=0.065U
M1370_ #450 v #449 GND nmos W=0.0975U L=0.065U
M1371_ #452 b_57_6 O1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1372_keeper #859 #fb858# O1_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1373_keeper #860 #fb858# O1_af_53_6 GND nmos W=0.0975U L=0.065U
M1374_ #453 I_aa #452 Vdd pmos W=0.1625U L=0.065U
M1375_ #454 __v #453 Vdd pmos W=0.1625U L=0.065U
M1376_keeper #862 #fb861# __u2 Vdd pmos W=0.0975U L=0.065U
M1377_keeper #863 #fb861# __u2 GND nmos W=0.0975U L=0.065U
M1378_ #458 b_58_6 __o2t_50_6 GND nmos W=0.0975U L=0.065U
M1379_keeper #865 #fb864# __o2t_50_6 Vdd pmos W=0.0975U L=0.065U
M1380_keeper #866 #fb864# __o2t_50_6 GND nmos W=0.0975U L=0.065U
M1381_ #459 __i__a #458 GND nmos W=0.0975U L=0.065U
M1382_ #460 v #459 GND nmos W=0.0975U L=0.065U
M1383_ #462 b_58_6 O2_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1384_keeper #868 #fb867# O2_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1385_keeper #869 #fb867# O2_af_50_6 GND nmos W=0.0975U L=0.065U
M1386_ #463 I_aa #462 Vdd pmos W=0.1625U L=0.065U
M1387_ #464 __v #463 Vdd pmos W=0.1625U L=0.065U
M1388_ #466 b_59_6 __o2t_51_6 GND nmos W=0.0975U L=0.065U
M1389_keeper #871 #fb870# __o2t_51_6 Vdd pmos W=0.0975U L=0.065U
M1390_keeper #872 #fb870# __o2t_51_6 GND nmos W=0.0975U L=0.065U
M1391_ #467 __i__a #466 GND nmos W=0.0975U L=0.065U
M1392_ #468 v #467 GND nmos W=0.0975U L=0.065U
M1393_ #470 b_59_6 O2_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1394_keeper #874 #fb873# O2_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1395_keeper #875 #fb873# O2_af_51_6 GND nmos W=0.0975U L=0.065U
M1396_ #471 I_aa #470 Vdd pmos W=0.1625U L=0.065U
M1397_ #472 __v #471 Vdd pmos W=0.1625U L=0.065U
M1398_ #474 b_510_6 __o2t_52_6 GND nmos W=0.0975U L=0.065U
M1399_keeper #877 #fb876# __o2t_52_6 Vdd pmos W=0.0975U L=0.065U
M1400_keeper #878 #fb876# __o2t_52_6 GND nmos W=0.0975U L=0.065U
M1401_ #475 __i__a #474 GND nmos W=0.0975U L=0.065U
M1402_ #476 v #475 GND nmos W=0.0975U L=0.065U
M1403_ #478 b_510_6 O2_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1404_keeper #880 #fb879# O2_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1405_keeper #881 #fb879# O2_af_52_6 GND nmos W=0.0975U L=0.065U
M1406_ #479 I_aa #478 Vdd pmos W=0.1625U L=0.065U
M1407_ #480 __v #479 Vdd pmos W=0.1625U L=0.065U
M1408_ #482 b_511_6 __o2t_53_6 GND nmos W=0.0975U L=0.065U
M1409_keeper #883 #fb882# __o2t_53_6 Vdd pmos W=0.0975U L=0.065U
M1410_keeper #884 #fb882# __o2t_53_6 GND nmos W=0.0975U L=0.065U
M1411_ #483 __i__a #482 GND nmos W=0.0975U L=0.065U
M1412_ #484 v #483 GND nmos W=0.0975U L=0.065U
M1413_ #486 b_511_6 O2_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1414_keeper #886 #fb885# O2_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1415_keeper #887 #fb885# O2_af_53_6 GND nmos W=0.0975U L=0.065U
M1416_ #487 I_aa #486 Vdd pmos W=0.1625U L=0.065U
M1417_ #488 __v #487 Vdd pmos W=0.1625U L=0.065U
M1418_keeper #889 #fb888# __u3 Vdd pmos W=0.0975U L=0.065U
M1419_keeper #890 #fb888# __u3 GND nmos W=0.0975U L=0.065U
M1420_ #492 b_512_6 __o3t_50_6 GND nmos W=0.0975U L=0.065U
M1421_keeper #892 #fb891# __o3t_50_6 Vdd pmos W=0.0975U L=0.065U
M1422_keeper #893 #fb891# __o3t_50_6 GND nmos W=0.0975U L=0.065U
M1423_ #493 __i__a #492 GND nmos W=0.0975U L=0.065U
M1424_ #494 v #493 GND nmos W=0.0975U L=0.065U
M1425_ #496 b_512_6 O3_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1426_keeper #895 #fb894# O3_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1427_keeper #896 #fb894# O3_af_50_6 GND nmos W=0.0975U L=0.065U
M1428_ #497 I_aa #496 Vdd pmos W=0.1625U L=0.065U
M1429_ #498 __v #497 Vdd pmos W=0.1625U L=0.065U
M1430_ #500 b_513_6 __o3t_51_6 GND nmos W=0.0975U L=0.065U
M1431_keeper #898 #fb897# __o3t_51_6 Vdd pmos W=0.0975U L=0.065U
M1432_keeper #899 #fb897# __o3t_51_6 GND nmos W=0.0975U L=0.065U
M1433_ #501 __i__a #500 GND nmos W=0.0975U L=0.065U
M1434_ #502 v #501 GND nmos W=0.0975U L=0.065U
M1435_ #504 b_513_6 O3_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1436_keeper #901 #fb900# O3_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1437_keeper #902 #fb900# O3_af_51_6 GND nmos W=0.0975U L=0.065U
M1438_ #505 I_aa #504 Vdd pmos W=0.1625U L=0.065U
M1439_ #506 __v #505 Vdd pmos W=0.1625U L=0.065U
M1440_ #508 b_514_6 __o3t_52_6 GND nmos W=0.0975U L=0.065U
M1441_keeper #904 #fb903# __o3t_52_6 Vdd pmos W=0.0975U L=0.065U
M1442_keeper #905 #fb903# __o3t_52_6 GND nmos W=0.0975U L=0.065U
M1443_ #509 __i__a #508 GND nmos W=0.0975U L=0.065U
M1444_ #510 v #509 GND nmos W=0.0975U L=0.065U
M1445_ #512 b_514_6 O3_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1446_keeper #907 #fb906# O3_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1447_keeper #908 #fb906# O3_af_52_6 GND nmos W=0.0975U L=0.065U
M1448_ #513 I_aa #512 Vdd pmos W=0.1625U L=0.065U
M1449_ #514 __v #513 Vdd pmos W=0.1625U L=0.065U
M1450_ #516 b_515_6 __o3t_53_6 GND nmos W=0.0975U L=0.065U
M1451_keeper #910 #fb909# __o3t_53_6 Vdd pmos W=0.0975U L=0.065U
M1452_keeper #911 #fb909# __o3t_53_6 GND nmos W=0.0975U L=0.065U
M1453_ #517 __i__a #516 GND nmos W=0.0975U L=0.065U
M1454_ #518 v #517 GND nmos W=0.0975U L=0.065U
M1455_ #520 b_515_6 O3_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1456_keeper #913 #fb912# O3_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1457_keeper #914 #fb912# O3_af_53_6 GND nmos W=0.0975U L=0.065U
M1458_ #521 I_aa #520 Vdd pmos W=0.1625U L=0.065U
M1459_ #522 __v #521 Vdd pmos W=0.1625U L=0.065U
M1460_keeper #916 #fb915# __u4 Vdd pmos W=0.0975U L=0.065U
M1461_keeper #917 #fb915# __u4 GND nmos W=0.0975U L=0.065U
M1462_ #526 b_516_6 __o4t_50_6 GND nmos W=0.0975U L=0.065U
M1463_keeper #919 #fb918# __o4t_50_6 Vdd pmos W=0.0975U L=0.065U
M1464_keeper #920 #fb918# __o4t_50_6 GND nmos W=0.0975U L=0.065U
M1465_ #527 __i__a #526 GND nmos W=0.0975U L=0.065U
M1466_ #528 v #527 GND nmos W=0.0975U L=0.065U
M1467_ #530 b_516_6 O4_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1468_keeper #922 #fb921# O4_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1469_keeper #923 #fb921# O4_af_50_6 GND nmos W=0.0975U L=0.065U
M1470_ #531 I_aa #530 Vdd pmos W=0.1625U L=0.065U
M1471_ #532 __v #531 Vdd pmos W=0.1625U L=0.065U
M1472_ #534 b_517_6 __o4t_51_6 GND nmos W=0.0975U L=0.065U
M1473_keeper #925 #fb924# __o4t_51_6 Vdd pmos W=0.0975U L=0.065U
M1474_keeper #926 #fb924# __o4t_51_6 GND nmos W=0.0975U L=0.065U
M1475_ #535 __i__a #534 GND nmos W=0.0975U L=0.065U
M1476_ #536 v #535 GND nmos W=0.0975U L=0.065U
M1477_ #538 b_517_6 O4_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1478_keeper #928 #fb927# O4_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1479_keeper #929 #fb927# O4_af_51_6 GND nmos W=0.0975U L=0.065U
M1480_ #539 I_aa #538 Vdd pmos W=0.1625U L=0.065U
M1481_ #540 __v #539 Vdd pmos W=0.1625U L=0.065U
M1482_ #542 b_518_6 __o4t_52_6 GND nmos W=0.0975U L=0.065U
M1483_keeper #931 #fb930# __o4t_52_6 Vdd pmos W=0.0975U L=0.065U
M1484_keeper #932 #fb930# __o4t_52_6 GND nmos W=0.0975U L=0.065U
M1485_ #543 __i__a #542 GND nmos W=0.0975U L=0.065U
M1486_ #544 v #543 GND nmos W=0.0975U L=0.065U
M1487_ #546 b_518_6 O4_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1488_keeper #934 #fb933# O4_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1489_keeper #935 #fb933# O4_af_52_6 GND nmos W=0.0975U L=0.065U
M1490_ #547 I_aa #546 Vdd pmos W=0.1625U L=0.065U
M1491_ #548 __v #547 Vdd pmos W=0.1625U L=0.065U
M1492_ #550 b_519_6 __o4t_53_6 GND nmos W=0.0975U L=0.065U
M1493_keeper #937 #fb936# __o4t_53_6 Vdd pmos W=0.0975U L=0.065U
M1494_keeper #938 #fb936# __o4t_53_6 GND nmos W=0.0975U L=0.065U
M1495_ #551 __i__a #550 GND nmos W=0.0975U L=0.065U
M1496_ #552 v #551 GND nmos W=0.0975U L=0.065U
M1497_ #554 b_519_6 O4_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1498_keeper #940 #fb939# O4_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1499_keeper #941 #fb939# O4_af_53_6 GND nmos W=0.0975U L=0.065U
M1500_ #555 I_aa #554 Vdd pmos W=0.1625U L=0.065U
M1501_ #556 __v #555 Vdd pmos W=0.1625U L=0.065U
M1502_keeper #943 #fb942# __u5 Vdd pmos W=0.0975U L=0.065U
M1503_keeper #944 #fb942# __u5 GND nmos W=0.0975U L=0.065U
M1504_ #560 b_520_6 __o5t_50_6 GND nmos W=0.0975U L=0.065U
M1505_keeper #946 #fb945# __o5t_50_6 Vdd pmos W=0.0975U L=0.065U
M1506_keeper #947 #fb945# __o5t_50_6 GND nmos W=0.0975U L=0.065U
M1507_ #561 __i__a #560 GND nmos W=0.0975U L=0.065U
M1508_ #562 v #561 GND nmos W=0.0975U L=0.065U
M1509_ #564 b_520_6 O5_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1510_keeper #949 #fb948# O5_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1511_keeper #950 #fb948# O5_af_50_6 GND nmos W=0.0975U L=0.065U
M1512_ #565 I_aa #564 Vdd pmos W=0.1625U L=0.065U
M1513_ #566 __v #565 Vdd pmos W=0.1625U L=0.065U
M1514_ #568 b_521_6 __o5t_51_6 GND nmos W=0.0975U L=0.065U
M1515_keeper #952 #fb951# __o5t_51_6 Vdd pmos W=0.0975U L=0.065U
M1516_keeper #953 #fb951# __o5t_51_6 GND nmos W=0.0975U L=0.065U
M1517_ #569 __i__a #568 GND nmos W=0.0975U L=0.065U
M1518_ #570 v #569 GND nmos W=0.0975U L=0.065U
M1519_ #572 b_521_6 O5_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1520_keeper #955 #fb954# O5_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1521_keeper #956 #fb954# O5_af_51_6 GND nmos W=0.0975U L=0.065U
M1522_ #573 I_aa #572 Vdd pmos W=0.1625U L=0.065U
M1523_ #574 __v #573 Vdd pmos W=0.1625U L=0.065U
M1524_ #576 b_522_6 __o5t_52_6 GND nmos W=0.0975U L=0.065U
M1525_keeper #958 #fb957# __o5t_52_6 Vdd pmos W=0.0975U L=0.065U
M1526_keeper #959 #fb957# __o5t_52_6 GND nmos W=0.0975U L=0.065U
M1527_ #577 __i__a #576 GND nmos W=0.0975U L=0.065U
M1528_ #578 v #577 GND nmos W=0.0975U L=0.065U
M1529_ #580 b_522_6 O5_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1530_keeper #961 #fb960# O5_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1531_keeper #962 #fb960# O5_af_52_6 GND nmos W=0.0975U L=0.065U
M1532_ #581 I_aa #580 Vdd pmos W=0.1625U L=0.065U
M1533_ #582 __v #581 Vdd pmos W=0.1625U L=0.065U
M1534_ #584 b_523_6 __o5t_53_6 GND nmos W=0.0975U L=0.065U
M1535_keeper #964 #fb963# __o5t_53_6 Vdd pmos W=0.0975U L=0.065U
M1536_keeper #965 #fb963# __o5t_53_6 GND nmos W=0.0975U L=0.065U
M1537_ #585 __i__a #584 GND nmos W=0.0975U L=0.065U
M1538_ #586 v #585 GND nmos W=0.0975U L=0.065U
M1539_ #588 b_523_6 O5_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1540_keeper #967 #fb966# O5_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1541_keeper #968 #fb966# O5_af_53_6 GND nmos W=0.0975U L=0.065U
M1542_ #589 I_aa #588 Vdd pmos W=0.1625U L=0.065U
M1543_ #590 __v #589 Vdd pmos W=0.1625U L=0.065U
M1544_keeper #970 #fb969# __u6 Vdd pmos W=0.0975U L=0.065U
M1545_keeper #971 #fb969# __u6 GND nmos W=0.0975U L=0.065U
M1546_ #594 b_524_6 __o6t_50_6 GND nmos W=0.0975U L=0.065U
M1547_keeper #973 #fb972# __o6t_50_6 Vdd pmos W=0.0975U L=0.065U
M1548_keeper #974 #fb972# __o6t_50_6 GND nmos W=0.0975U L=0.065U
M1549_ #595 __i__a #594 GND nmos W=0.0975U L=0.065U
M1550_ #596 v #595 GND nmos W=0.0975U L=0.065U
M1551_ #598 b_524_6 O6_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1552_keeper #976 #fb975# O6_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1553_keeper #977 #fb975# O6_af_50_6 GND nmos W=0.0975U L=0.065U
M1554_ #599 I_aa #598 Vdd pmos W=0.1625U L=0.065U
M1555_ #600 __v #599 Vdd pmos W=0.1625U L=0.065U
M1556_ #602 b_525_6 __o6t_51_6 GND nmos W=0.0975U L=0.065U
M1557_keeper #979 #fb978# __o6t_51_6 Vdd pmos W=0.0975U L=0.065U
M1558_keeper #980 #fb978# __o6t_51_6 GND nmos W=0.0975U L=0.065U
M1559_ #603 __i__a #602 GND nmos W=0.0975U L=0.065U
M1560_ #604 v #603 GND nmos W=0.0975U L=0.065U
M1561_ #606 b_525_6 O6_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1562_keeper #982 #fb981# O6_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1563_keeper #983 #fb981# O6_af_51_6 GND nmos W=0.0975U L=0.065U
M1564_ #607 I_aa #606 Vdd pmos W=0.1625U L=0.065U
M1565_ #608 __v #607 Vdd pmos W=0.1625U L=0.065U
M1566_ #610 b_526_6 __o6t_52_6 GND nmos W=0.0975U L=0.065U
M1567_keeper #985 #fb984# __o6t_52_6 Vdd pmos W=0.0975U L=0.065U
M1568_keeper #986 #fb984# __o6t_52_6 GND nmos W=0.0975U L=0.065U
M1569_ #611 __i__a #610 GND nmos W=0.0975U L=0.065U
M1570_ #612 v #611 GND nmos W=0.0975U L=0.065U
M1571_ #614 b_526_6 O6_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1572_keeper #988 #fb987# O6_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1573_keeper #989 #fb987# O6_af_52_6 GND nmos W=0.0975U L=0.065U
M1574_ #615 I_aa #614 Vdd pmos W=0.1625U L=0.065U
M1575_ #616 __v #615 Vdd pmos W=0.1625U L=0.065U
M1576_ #618 b_527_6 __o6t_53_6 GND nmos W=0.0975U L=0.065U
M1577_keeper #991 #fb990# __o6t_53_6 Vdd pmos W=0.0975U L=0.065U
M1578_keeper #992 #fb990# __o6t_53_6 GND nmos W=0.0975U L=0.065U
M1579_ #619 __i__a #618 GND nmos W=0.0975U L=0.065U
M1580_ #620 v #619 GND nmos W=0.0975U L=0.065U
M1581_ #622 b_527_6 O6_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1582_keeper #994 #fb993# O6_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1583_keeper #995 #fb993# O6_af_53_6 GND nmos W=0.0975U L=0.065U
M1584_ #623 I_aa #622 Vdd pmos W=0.1625U L=0.065U
M1585_ #624 __v #623 Vdd pmos W=0.1625U L=0.065U
M1586_keeper #997 #fb996# __u7 Vdd pmos W=0.0975U L=0.065U
M1587_keeper #998 #fb996# __u7 GND nmos W=0.0975U L=0.065U
M1588_ #628 b_528_6 __o7t_50_6 GND nmos W=0.0975U L=0.065U
M1589_keeper #1000 #fb999# __o7t_50_6 Vdd pmos W=0.0975U L=0.065U
M1590_keeper #1001 #fb999# __o7t_50_6 GND nmos W=0.0975U L=0.065U
M1591_ #629 __i__a #628 GND nmos W=0.0975U L=0.065U
M1592_ #630 v #629 GND nmos W=0.0975U L=0.065U
M1593_ #632 b_528_6 O7_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1594_keeper #1003 #fb1002# O7_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1595_keeper #1004 #fb1002# O7_af_50_6 GND nmos W=0.0975U L=0.065U
M1596_ #633 I_aa #632 Vdd pmos W=0.1625U L=0.065U
M1597_ #634 __v #633 Vdd pmos W=0.1625U L=0.065U
M1598_ #636 b_529_6 __o7t_51_6 GND nmos W=0.0975U L=0.065U
M1599_keeper #1006 #fb1005# __o7t_51_6 Vdd pmos W=0.0975U L=0.065U
M1600_keeper #1007 #fb1005# __o7t_51_6 GND nmos W=0.0975U L=0.065U
M1601_ #637 __i__a #636 GND nmos W=0.0975U L=0.065U
M1602_ #638 v #637 GND nmos W=0.0975U L=0.065U
M1603_ #640 b_529_6 O7_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1604_keeper #1009 #fb1008# O7_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1605_keeper #1010 #fb1008# O7_af_51_6 GND nmos W=0.0975U L=0.065U
M1606_ #641 I_aa #640 Vdd pmos W=0.1625U L=0.065U
M1607_ #642 __v #641 Vdd pmos W=0.1625U L=0.065U
M1608_ #644 b_530_6 __o7t_52_6 GND nmos W=0.0975U L=0.065U
M1609_keeper #1012 #fb1011# __o7t_52_6 Vdd pmos W=0.0975U L=0.065U
M1610_keeper #1013 #fb1011# __o7t_52_6 GND nmos W=0.0975U L=0.065U
M1611_ #645 __i__a #644 GND nmos W=0.0975U L=0.065U
M1612_ #646 v #645 GND nmos W=0.0975U L=0.065U
M1613_ #648 b_530_6 O7_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1614_keeper #1015 #fb1014# O7_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1615_keeper #1016 #fb1014# O7_af_52_6 GND nmos W=0.0975U L=0.065U
M1616_ #649 I_aa #648 Vdd pmos W=0.1625U L=0.065U
M1617_ #650 __v #649 Vdd pmos W=0.1625U L=0.065U
M1618_ #652 b_531_6 __o7t_53_6 GND nmos W=0.0975U L=0.065U
M1619_keeper #1018 #fb1017# __o7t_53_6 Vdd pmos W=0.0975U L=0.065U
M1620_keeper #1019 #fb1017# __o7t_53_6 GND nmos W=0.0975U L=0.065U
M1621_ #653 __i__a #652 GND nmos W=0.0975U L=0.065U
M1622_ #654 v #653 GND nmos W=0.0975U L=0.065U
M1623_ #656 b_531_6 O7_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1624_keeper #1021 #fb1020# O7_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1625_keeper #1022 #fb1020# O7_af_53_6 GND nmos W=0.0975U L=0.065U
M1626_ #657 I_aa #656 Vdd pmos W=0.1625U L=0.065U
M1627_ #658 __v #657 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: WordBuffer<> -----
*
*---- act defproc: Merge<4,t> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a
*
.subckt Merge_34_7t_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6
+ I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
*.PININFO I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I
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
*
* --- end node flags ---
*
M0_ Vdd O_aa n__I0__a Vdd pmos W=0.325U L=0.065U
M1_ Vdd O_aa n__I1__a Vdd pmos W=0.325U L=0.065U
M2_ Vdd I0_at_50_6 #14 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I0_af_50_6 #18 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I0_at_51_6 #22 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I0_af_51_6 #26 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd I0_at_52_6 #30 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd I0_af_52_6 #34 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd I0_at_53_6 #36 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd I0_af_53_6 #38 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd n__I0__a I0_aa Vdd pmos W=0.325U L=0.065U
M11_ Vdd n__I1__a I1_aa Vdd pmos W=0.325U L=0.065U
M12_ Vdd n__O__t_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd n__O__f_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd n__O__t_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd n__O__f_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd n__O__t_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd n__O__f_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd n__O__t_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd n__O__f_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd n__I0__a #fb49# Vdd pmos W=0.1625U L=0.13U
M21_ Vdd n__I1__a #fb52# Vdd pmos W=0.1625U L=0.13U
M22_keeper Vdd GND #50 Vdd pmos W=0.0975U L=0.585U
M23_keeper Vdd GND #53 Vdd pmos W=0.0975U L=0.585U
M24_ GND O_aa #3 GND nmos W=0.195U L=0.065U
M25_ GND O_aa #8 GND nmos W=0.195U L=0.065U
M26_ GND I0_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M27_ GND I1_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M28_ GND I0_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M29_ GND I1_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M30_ GND I0_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M31_ GND I1_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M32_ GND I0_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M33_ GND I1_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M34_ GND I0_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M35_ GND I1_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M36_ GND I0_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M37_ GND I1_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M38_ GND I0_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M39_ GND I1_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M40_ GND I0_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M41_ GND I1_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M42_ GND n__I0__a I0_aa GND nmos W=0.195U L=0.065U
M43_ GND n__I1__a I1_aa GND nmos W=0.195U L=0.065U
M44_ GND n__O__t_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M45_ GND n__O__f_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M46_ GND n__O__t_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M47_ GND n__O__f_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M48_ GND n__O__t_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M49_ GND n__O__f_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M50_ GND n__O__t_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M51_ GND n__O__f_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M52_ GND n__I0__a #fb49# GND nmos W=0.0975U L=0.13U
M53_ GND n__I1__a #fb52# GND nmos W=0.0975U L=0.13U
M54_keeper GND Vdd #51 GND nmos W=0.0975U L=0.715U
M55_keeper GND Vdd #54 GND nmos W=0.0975U L=0.715U
M56_ #3 I0_at_53_6 n__I0__a GND nmos W=0.195U L=0.065U
M57_ #3 I0_af_53_6 n__I0__a GND nmos W=0.195U L=0.065U
M58_keeper #50 #fb49# n__I0__a Vdd pmos W=0.0975U L=0.065U
M59_keeper #51 #fb49# n__I0__a GND nmos W=0.0975U L=0.065U
M60_ #8 I1_at_53_6 n__I1__a GND nmos W=0.195U L=0.065U
M61_ #8 I1_af_53_6 n__I1__a GND nmos W=0.195U L=0.065U
M62_keeper #53 #fb52# n__I1__a Vdd pmos W=0.0975U L=0.065U
M63_keeper #54 #fb52# n__I1__a GND nmos W=0.0975U L=0.065U
M64_ #14 I1_at_50_6 n__O__t_50_6 Vdd pmos W=0.1625U L=0.065U
M65_ #18 I1_af_50_6 n__O__f_50_6 Vdd pmos W=0.1625U L=0.065U
M66_ #22 I1_at_51_6 n__O__t_51_6 Vdd pmos W=0.1625U L=0.065U
M67_ #26 I1_af_51_6 n__O__f_51_6 Vdd pmos W=0.1625U L=0.065U
M68_ #30 I1_at_52_6 n__O__t_52_6 Vdd pmos W=0.1625U L=0.065U
M69_ #34 I1_af_52_6 n__O__f_52_6 Vdd pmos W=0.1625U L=0.065U
M70_ #36 I1_at_53_6 n__O__t_53_6 Vdd pmos W=0.1625U L=0.065U
M71_ #38 I1_af_53_6 n__O__f_53_6 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: Merge<4,t> -----
*
*---- act defproc: MergeTree7<> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.a I2.t[0] I2.t[1] I2.t[2] I2.t[3] I2.f[0] I2.f[1] I2.f[2] I2.f[3] I2.a I3.t[0] I3.t[1] I3.t[2] I3.t[3] I3.f[0] I3.f[1] I3.f[2] I3.f[3] I3.a I4.t[0] I4.t[1] I4.t[2] I4.t[3] I4.f[0] I4.f[1] I4.f[2] I4.f[3] I4.a I5.t[0] I5.t[1] I5.t[2] I5.t[3] I5.f[0] I5.f[1] I5.f[2] I5.f[3] I5.a I6.t[0] I6.t[1] I6.t[2] I6.t[3] I6.f[0] I6.f[1] I6.f[2] I6.f[3] I6.a O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a
*
.subckt MergeTree7 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6
+ I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa
+ I2_at_50_6 I2_at_51_6 I2_at_52_6 I2_at_53_6 I2_af_50_6 I2_af_51_6 I2_af_52_6 I2_af_53_6 I2_aa I3_at_50_6
+ I3_at_51_6 I3_at_52_6 I3_at_53_6 I3_af_50_6 I3_af_51_6 I3_af_52_6 I3_af_53_6 I3_aa I4_at_50_6 I4_at_51_6
+ I4_at_52_6 I4_at_53_6 I4_af_50_6 I4_af_51_6 I4_af_52_6 I4_af_53_6 I4_aa I5_at_50_6 I5_at_51_6 I5_at_52_6
+ I5_at_53_6 I5_af_50_6 I5_af_51_6 I5_af_52_6 I5_af_53_6 I5_aa I6_at_50_6 I6_at_51_6 I6_at_52_6 I6_at_53_6
+ I6_af_50_6 I6_af_51_6 I6_af_52_6 I6_af_53_6 I6_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6
+ O_af_51_6 O_af_52_6 O_af_53_6 O_aa
*.PININFO I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_aa:O I2_at_50_6:I I2_at_51_6:I I2_at_52_6:I I2_at_53_6:I I2_af_50_6:I I2_af_51_6:I I2_af_52_6:I I2_af_53_6:I I2_aa:O I3_at_50_6:I I3_at_51_6:I I3_at_52_6:I I3_at_53_6:I I3_af_50_6:I I3_af_51_6:I I3_af_52_6:I I3_af_53_6:I I3_aa:O I4_at_50_6:I I4_at_51_6:I I4_at_52_6:I I4_at_53_6:I I4_af_50_6:I I4_af_51_6:I I4_af_52_6:I I4_af_53_6:I I4_aa:O I5_at_50_6:I I5_at_51_6:I I5_at_52_6:I I5_at_53_6:I I5_af_50_6:I I5_af_51_6:I I5_af_52_6:I I5_af_53_6:I I5_aa:O I6_at_50_6:I I6_at_51_6:I I6_at_52_6:I I6_at_53_6:I I6_af_50_6:I I6_af_51_6:I I6_af_52_6:I I6_af_53_6:I I6_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xmerge56 I4_at_50_6 I4_at_51_6 I4_at_52_6 I4_at_53_6 I4_af_50_6 I4_af_51_6 I4_af_52_6 I4_af_53_6 I4_aa
+ I5_at_50_6 I5_at_51_6 I5_at_52_6 I5_at_53_6 I5_af_50_6 I5_af_51_6 I5_af_52_6 I5_af_53_6 I5_aa
+ merge56_aO_at_50_6 merge56_aO_at_51_6 merge56_aO_at_52_6 merge56_aO_at_53_6 merge56_aO_af_50_6
+ merge56_aO_af_51_6 merge56_aO_af_52_6 merge56_aO_af_53_6 merge56_aO_aa Merge_34_7t_4
xmerge34 I2_at_50_6 I2_at_51_6 I2_at_52_6 I2_at_53_6 I2_af_50_6 I2_af_51_6 I2_af_52_6 I2_af_53_6 I2_aa
+ I3_at_50_6 I3_at_51_6 I3_at_52_6 I3_at_53_6 I3_af_50_6 I3_af_51_6 I3_af_52_6 I3_af_53_6 I3_aa
+ merge34_aO_at_50_6 merge34_aO_at_51_6 merge34_aO_at_52_6 merge34_aO_at_53_6 merge34_aO_af_50_6
+ merge34_aO_af_51_6 merge34_aO_af_52_6 merge34_aO_af_53_6 merge34_aO_aa Merge_34_7t_4
xroot root_aI0_at_50_6 root_aI0_at_51_6 root_aI0_at_52_6 root_aI0_at_53_6 root_aI0_af_50_6 root_aI0_af_51_6
+ root_aI0_af_52_6 root_aI0_af_53_6 root_aI0_aa root_aI1_at_50_6 root_aI1_at_51_6 root_aI1_at_52_6
+ root_aI1_at_53_6 root_aI1_af_50_6 root_aI1_af_51_6 root_aI1_af_52_6 root_aI1_af_53_6 root_aI1_aa O_at_50_6
+ O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa Merge_34_7t_4
xmerge567 merge56_aO_at_50_6 merge56_aO_at_51_6 merge56_aO_at_52_6 merge56_aO_at_53_6 merge56_aO_af_50_6
+ merge56_aO_af_51_6 merge56_aO_af_52_6 merge56_aO_af_53_6 merge56_aO_aa I6_at_50_6 I6_at_51_6 I6_at_52_6
+ I6_at_53_6 I6_af_50_6 I6_af_51_6 I6_af_52_6 I6_af_53_6 I6_aa root_aI1_at_50_6 root_aI1_at_51_6
+ root_aI1_at_52_6 root_aI1_at_53_6 root_aI1_af_50_6 root_aI1_af_51_6 root_aI1_af_52_6 root_aI1_af_53_6
+ root_aI1_aa Merge_34_7t_4
xmerge1234 merge12_aO_at_50_6 merge12_aO_at_51_6 merge12_aO_at_52_6 merge12_aO_at_53_6 merge12_aO_af_50_6
+ merge12_aO_af_51_6 merge12_aO_af_52_6 merge12_aO_af_53_6 merge12_aO_aa merge34_aO_at_50_6
+ merge34_aO_at_51_6 merge34_aO_at_52_6 merge34_aO_at_53_6 merge34_aO_af_50_6 merge34_aO_af_51_6
+ merge34_aO_af_52_6 merge34_aO_af_53_6 merge34_aO_aa root_aI0_at_50_6 root_aI0_at_51_6 root_aI0_at_52_6
+ root_aI0_at_53_6 root_aI0_af_50_6 root_aI0_af_51_6 root_aI0_af_52_6 root_aI0_af_53_6 root_aI0_aa
+ Merge_34_7t_4
xmerge12 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_aa
+ I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa
+ merge12_aO_at_50_6 merge12_aO_at_51_6 merge12_aO_at_52_6 merge12_aO_at_53_6 merge12_aO_af_50_6
+ merge12_aO_af_51_6 merge12_aO_af_52_6 merge12_aO_af_53_6 merge12_aO_aa Merge_34_7t_4
.ends
*---- end of process: MergeTree7<> -----
*
*---- act defproc: Serializer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a
*
.subckt Serializer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6
+ I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6
+ I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6
+ I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6
+ I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6
+ I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6
+ I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O_at_50_6
+ O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xqs6 wb_aO6_at_50_6 wb_aO6_at_51_6 wb_aO6_at_52_6 wb_aO6_at_53_6 wb_aO6_af_50_6 wb_aO6_af_51_6 wb_aO6_af_52_6
+ wb_aO6_af_53_6 qs6_aA_areq qs6_aO_at_50_6 qs6_aO_at_51_6 qs6_aO_at_52_6 qs6_aO_at_53_6 qs6_aO_af_50_6
+ qs6_aO_af_51_6 qs6_aO_af_52_6 qs6_aO_af_53_6 QSlicer
xqs2 wb_aO2_at_50_6 wb_aO2_at_51_6 wb_aO2_at_52_6 wb_aO2_at_53_6 wb_aO2_af_50_6 wb_aO2_af_51_6 wb_aO2_af_52_6
+ wb_aO2_af_53_6 qs2_aA_areq qs2_aO_at_50_6 qs2_aO_at_51_6 qs2_aO_at_52_6 qs2_aO_at_53_6 qs2_aO_af_50_6
+ qs2_aO_af_51_6 qs2_aO_af_52_6 qs2_aO_af_53_6 QSlicer
xqs4 wb_aO4_at_50_6 wb_aO4_at_51_6 wb_aO4_at_52_6 wb_aO4_at_53_6 wb_aO4_af_50_6 wb_aO4_af_51_6 wb_aO4_af_52_6
+ wb_aO4_af_53_6 qs4_aA_areq qs4_aO_at_50_6 qs4_aO_at_51_6 qs4_aO_at_52_6 qs4_aO_at_53_6 qs4_aO_af_50_6
+ qs4_aO_af_51_6 qs4_aO_af_52_6 qs4_aO_af_53_6 QSlicer
xseq reset qs7_aA_areq wb_aO7_aa qs6_aA_areq wb_aO6_aa qs5_aA_areq wb_aO5_aa qs4_aA_areq wb_aO4_aa
+ qs3_aA_areq wb_aO3_aa qs2_aA_areq wb_aO2_aa qs1_aA_areq wb_aO1_aa Seq7
xqs7 wb_aO7_at_50_6 wb_aO7_at_51_6 wb_aO7_at_52_6 wb_aO7_at_53_6 wb_aO7_af_50_6 wb_aO7_af_51_6 wb_aO7_af_52_6
+ wb_aO7_af_53_6 qs7_aA_areq qs7_aO_at_50_6 qs7_aO_at_51_6 qs7_aO_at_52_6 qs7_aO_at_53_6 qs7_aO_af_50_6
+ qs7_aO_af_51_6 qs7_aO_af_52_6 qs7_aO_af_53_6 QSlicer
xqs1 wb_aO1_at_50_6 wb_aO1_at_51_6 wb_aO1_at_52_6 wb_aO1_at_53_6 wb_aO1_af_50_6 wb_aO1_af_51_6 wb_aO1_af_52_6
+ wb_aO1_af_53_6 qs1_aA_areq qs1_aO_at_50_6 qs1_aO_at_51_6 qs1_aO_at_52_6 qs1_aO_at_53_6 qs1_aO_af_50_6
+ qs1_aO_af_51_6 qs1_aO_af_52_6 qs1_aO_af_53_6 QSlicer
xqs3 wb_aO3_at_50_6 wb_aO3_at_51_6 wb_aO3_at_52_6 wb_aO3_at_53_6 wb_aO3_af_50_6 wb_aO3_af_51_6 wb_aO3_af_52_6
+ wb_aO3_af_53_6 qs3_aA_areq qs3_aO_at_50_6 qs3_aO_at_51_6 qs3_aO_at_52_6 qs3_aO_at_53_6 qs3_aO_af_50_6
+ qs3_aO_af_51_6 qs3_aO_af_52_6 qs3_aO_af_53_6 QSlicer
xqs5 wb_aO5_at_50_6 wb_aO5_at_51_6 wb_aO5_at_52_6 wb_aO5_at_53_6 wb_aO5_af_50_6 wb_aO5_af_51_6 wb_aO5_af_52_6
+ wb_aO5_af_53_6 qs5_aA_areq qs5_aO_at_50_6 qs5_aO_at_51_6 qs5_aO_at_52_6 qs5_aO_at_53_6 qs5_aO_af_50_6
+ qs5_aO_af_51_6 qs5_aO_af_52_6 qs5_aO_af_53_6 QSlicer
xwb reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6
+ I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6
+ I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6
+ I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6
+ I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6
+ I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6
+ I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa wb_aO1_at_50_6
+ wb_aO1_at_51_6 wb_aO1_at_52_6 wb_aO1_at_53_6 wb_aO1_af_50_6 wb_aO1_af_51_6 wb_aO1_af_52_6 wb_aO1_af_53_6
+ wb_aO1_aa wb_aO2_at_50_6 wb_aO2_at_51_6 wb_aO2_at_52_6 wb_aO2_at_53_6 wb_aO2_af_50_6 wb_aO2_af_51_6
+ wb_aO2_af_52_6 wb_aO2_af_53_6 wb_aO2_aa wb_aO3_at_50_6 wb_aO3_at_51_6 wb_aO3_at_52_6 wb_aO3_at_53_6
+ wb_aO3_af_50_6 wb_aO3_af_51_6 wb_aO3_af_52_6 wb_aO3_af_53_6 wb_aO3_aa wb_aO4_at_50_6 wb_aO4_at_51_6
+ wb_aO4_at_52_6 wb_aO4_at_53_6 wb_aO4_af_50_6 wb_aO4_af_51_6 wb_aO4_af_52_6 wb_aO4_af_53_6 wb_aO4_aa
+ wb_aO5_at_50_6 wb_aO5_at_51_6 wb_aO5_at_52_6 wb_aO5_at_53_6 wb_aO5_af_50_6 wb_aO5_af_51_6 wb_aO5_af_52_6
+ wb_aO5_af_53_6 wb_aO5_aa wb_aO6_at_50_6 wb_aO6_at_51_6 wb_aO6_at_52_6 wb_aO6_at_53_6 wb_aO6_af_50_6
+ wb_aO6_af_51_6 wb_aO6_af_52_6 wb_aO6_af_53_6 wb_aO6_aa wb_aO7_at_50_6 wb_aO7_at_51_6 wb_aO7_at_52_6
+ wb_aO7_at_53_6 wb_aO7_af_50_6 wb_aO7_af_51_6 wb_aO7_af_52_6 wb_aO7_af_53_6 wb_aO7_aa WordBuffer
xmerge qs1_aO_at_50_6 qs1_aO_at_51_6 qs1_aO_at_52_6 qs1_aO_at_53_6 qs1_aO_af_50_6 qs1_aO_af_51_6
+ qs1_aO_af_52_6 qs1_aO_af_53_6 wb_aO1_aa qs2_aO_at_50_6 qs2_aO_at_51_6 qs2_aO_at_52_6 qs2_aO_at_53_6
+ qs2_aO_af_50_6 qs2_aO_af_51_6 qs2_aO_af_52_6 qs2_aO_af_53_6 wb_aO2_aa qs3_aO_at_50_6 qs3_aO_at_51_6
+ qs3_aO_at_52_6 qs3_aO_at_53_6 qs3_aO_af_50_6 qs3_aO_af_51_6 qs3_aO_af_52_6 qs3_aO_af_53_6 wb_aO3_aa
+ qs4_aO_at_50_6 qs4_aO_at_51_6 qs4_aO_at_52_6 qs4_aO_at_53_6 qs4_aO_af_50_6 qs4_aO_af_51_6 qs4_aO_af_52_6
+ qs4_aO_af_53_6 wb_aO4_aa qs5_aO_at_50_6 qs5_aO_at_51_6 qs5_aO_at_52_6 qs5_aO_at_53_6 qs5_aO_af_50_6
+ qs5_aO_af_51_6 qs5_aO_af_52_6 qs5_aO_af_53_6 wb_aO5_aa qs6_aO_at_50_6 qs6_aO_at_51_6 qs6_aO_at_52_6
+ qs6_aO_at_53_6 qs6_aO_af_50_6 qs6_aO_af_51_6 qs6_aO_af_52_6 qs6_aO_af_53_6 wb_aO6_aa qs7_aO_at_50_6
+ qs7_aO_at_51_6 qs7_aO_at_52_6 qs7_aO_at_53_6 qs7_aO_af_50_6 qs7_aO_af_51_6 qs7_aO_af_52_6 qs7_aO_af_53_6
+ wb_aO7_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa MergeTree7
.ends
*---- end of process: Serializer<> -----
*
*---- act defproc: Merge<32,t> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.t[4] I0.t[5] I0.t[6] I0.t[7] I0.t[8] I0.t[9] I0.t[10] I0.t[11] I0.t[12] I0.t[13] I0.t[14] I0.t[15] I0.t[16] I0.t[17] I0.t[18] I0.t[19] I0.t[20] I0.t[21] I0.t[22] I0.t[23] I0.t[24] I0.t[25] I0.t[26] I0.t[27] I0.t[28] I0.t[29] I0.t[30] I0.t[31] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.f[4] I0.f[5] I0.f[6] I0.f[7] I0.f[8] I0.f[9] I0.f[10] I0.f[11] I0.f[12] I0.f[13] I0.f[14] I0.f[15] I0.f[16] I0.f[17] I0.f[18] I0.f[19] I0.f[20] I0.f[21] I0.f[22] I0.f[23] I0.f[24] I0.f[25] I0.f[26] I0.f[27] I0.f[28] I0.f[29] I0.f[30] I0.f[31] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.t[4] I1.t[5] I1.t[6] I1.t[7] I1.t[8] I1.t[9] I1.t[10] I1.t[11] I1.t[12] I1.t[13] I1.t[14] I1.t[15] I1.t[16] I1.t[17] I1.t[18] I1.t[19] I1.t[20] I1.t[21] I1.t[22] I1.t[23] I1.t[24] I1.t[25] I1.t[26] I1.t[27] I1.t[28] I1.t[29] I1.t[30] I1.t[31] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.f[4] I1.f[5] I1.f[6] I1.f[7] I1.f[8] I1.f[9] I1.f[10] I1.f[11] I1.f[12] I1.f[13] I1.f[14] I1.f[15] I1.f[16] I1.f[17] I1.f[18] I1.f[19] I1.f[20] I1.f[21] I1.f[22] I1.f[23] I1.f[24] I1.f[25] I1.f[26] I1.f[27] I1.f[28] I1.f[29] I1.f[30] I1.f[31] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt Merge_332_7t_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_at_54_6 I0_at_55_6 I0_at_56_6
+ I0_at_57_6 I0_at_58_6 I0_at_59_6 I0_at_510_6 I0_at_511_6 I0_at_512_6 I0_at_513_6 I0_at_514_6 I0_at_515_6
+ I0_at_516_6 I0_at_517_6 I0_at_518_6 I0_at_519_6 I0_at_520_6 I0_at_521_6 I0_at_522_6 I0_at_523_6 I0_at_524_6
+ I0_at_525_6 I0_at_526_6 I0_at_527_6 I0_at_528_6 I0_at_529_6 I0_at_530_6 I0_at_531_6 I0_af_50_6 I0_af_51_6
+ I0_af_52_6 I0_af_53_6 I0_af_54_6 I0_af_55_6 I0_af_56_6 I0_af_57_6 I0_af_58_6 I0_af_59_6 I0_af_510_6
+ I0_af_511_6 I0_af_512_6 I0_af_513_6 I0_af_514_6 I0_af_515_6 I0_af_516_6 I0_af_517_6 I0_af_518_6 I0_af_519_6
+ I0_af_520_6 I0_af_521_6 I0_af_522_6 I0_af_523_6 I0_af_524_6 I0_af_525_6 I0_af_526_6 I0_af_527_6 I0_af_528_6
+ I0_af_529_6 I0_af_530_6 I0_af_531_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_at_54_6 I1_at_55_6
+ I1_at_56_6 I1_at_57_6 I1_at_58_6 I1_at_59_6 I1_at_510_6 I1_at_511_6 I1_at_512_6 I1_at_513_6 I1_at_514_6
+ I1_at_515_6 I1_at_516_6 I1_at_517_6 I1_at_518_6 I1_at_519_6 I1_at_520_6 I1_at_521_6 I1_at_522_6 I1_at_523_6
+ I1_at_524_6 I1_at_525_6 I1_at_526_6 I1_at_527_6 I1_at_528_6 I1_at_529_6 I1_at_530_6 I1_at_531_6 I1_af_50_6
+ I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_af_54_6 I1_af_55_6 I1_af_56_6 I1_af_57_6 I1_af_58_6 I1_af_59_6
+ I1_af_510_6 I1_af_511_6 I1_af_512_6 I1_af_513_6 I1_af_514_6 I1_af_515_6 I1_af_516_6 I1_af_517_6 I1_af_518_6
+ I1_af_519_6 I1_af_520_6 I1_af_521_6 I1_af_522_6 I1_af_523_6 I1_af_524_6 I1_af_525_6 I1_af_526_6 I1_af_527_6
+ I1_af_528_6 I1_af_529_6 I1_af_530_6 I1_af_531_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6
+ O_at_55_6 O_at_56_6 O_at_57_6 O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6
+ O_at_515_6 O_at_516_6 O_at_517_6 O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6
+ O_at_524_6 O_at_525_6 O_at_526_6 O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6
+ O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6
+ O_af_512_6 O_af_513_6 O_af_514_6 O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6
+ O_af_521_6 O_af_522_6 O_af_523_6 O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6
+ O_af_530_6 O_af_531_6 O_aa
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
*---- act defproc: ChildDispatch<> -----
* raw ports:  reset C.t[0] C.f[0] C.a I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.t[8] O.t[9] O.t[10] O.t[11] O.t[12] O.t[13] O.t[14] O.t[15] O.t[16] O.t[17] O.t[18] O.t[19] O.t[20] O.t[21] O.t[22] O.t[23] O.t[24] O.t[25] O.t[26] O.t[27] O.t[28] O.t[29] O.t[30] O.t[31] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.f[8] O.f[9] O.f[10] O.f[11] O.f[12] O.f[13] O.f[14] O.f[15] O.f[16] O.f[17] O.f[18] O.f[19] O.f[20] O.f[21] O.f[22] O.f[23] O.f[24] O.f[25] O.f[26] O.f[27] O.f[28] O.f[29] O.f[30] O.f[31] O.a
*
.subckt ChildDispatch reset C_at_50_6 C_af_50_6 C_aa I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6
+ I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6
+ I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6
+ I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6
+ I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6
+ I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6
+ I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6
+ I_af_530_6 I_af_531_6 I_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6
+ O_at_58_6 O_at_59_6 O_at_510_6 O_at_511_6 O_at_512_6 O_at_513_6 O_at_514_6 O_at_515_6 O_at_516_6 O_at_517_6
+ O_at_518_6 O_at_519_6 O_at_520_6 O_at_521_6 O_at_522_6 O_at_523_6 O_at_524_6 O_at_525_6 O_at_526_6
+ O_at_527_6 O_at_528_6 O_at_529_6 O_at_530_6 O_at_531_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6
+ O_af_55_6 O_af_56_6 O_af_57_6 O_af_58_6 O_af_59_6 O_af_510_6 O_af_511_6 O_af_512_6 O_af_513_6 O_af_514_6
+ O_af_515_6 O_af_516_6 O_af_517_6 O_af_518_6 O_af_519_6 O_af_520_6 O_af_521_6 O_af_522_6 O_af_523_6
+ O_af_524_6 O_af_525_6 O_af_526_6 O_af_527_6 O_af_528_6 O_af_529_6 O_af_530_6 O_af_531_6 O_aa
*.PININFO reset:I C_at_50_6:I C_af_50_6:I C_aa:O I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_at_58_6:O O_at_59_6:O O_at_510_6:O O_at_511_6:O O_at_512_6:O O_at_513_6:O O_at_514_6:O O_at_515_6:O O_at_516_6:O O_at_517_6:O O_at_518_6:O O_at_519_6:O O_at_520_6:O O_at_521_6:O O_at_522_6:O O_at_523_6:O O_at_524_6:O O_at_525_6:O O_at_526_6:O O_at_527_6:O O_at_528_6:O O_at_529_6:O O_at_530_6:O O_at_531_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O O_af_58_6:O O_af_59_6:O O_af_510_6:O O_af_511_6:O O_af_512_6:O O_af_513_6:O O_af_514_6:O O_af_515_6:O O_af_516_6:O O_af_517_6:O O_af_518_6:O O_af_519_6:O O_af_520_6:O O_af_521_6:O O_af_522_6:O O_af_523_6:O O_af_524_6:O O_af_525_6:O O_af_526_6:O O_af_527_6:O O_af_528_6:O O_af_529_6:O O_af_530_6:O O_af_531_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __m_50_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_51_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_52_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_53_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_54_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_55_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_56_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* __m_57_6 (state-holding): pup_reff=3.2; pdn_reff=2.66667
* d_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __e_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* completion (state-holding): pup_reff=0.8; pdn_reff=1.33333
* v (state-holding): pup_reff=1.2; pdn_reff=0.666667
* __j (state-holding): pup_reff=0.4; pdn_reff=2
* __ia (combinational)
* c (state-holding): pup_reff=0.4; pdn_reff=2
* __cht (combinational)
* w0 (state-holding): pup_reff=0.8; pdn_reff=2
* I_aa (state-holding): pup_reff=0.4; pdn_reff=2.66667
* __oa (combinational)
* __cha (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __c (combinational)
* __it0 (combinational)
* w1 (state-holding): pup_reff=0.8; pdn_reff=2
* __if0 (combinational)
* __v (combinational)
* __r (combinational)
* __w0 (combinational)
* __w1 (combinational)
* __ot_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_50_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_51_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_52_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_53_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_54_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_54_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_55_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_55_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_56_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_56_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_57_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_57_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_58_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_58_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_59_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_59_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_510_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_510_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_511_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_511_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_512_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_512_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_513_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_513_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_514_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_514_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_515_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_515_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_516_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_516_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_517_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_517_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_518_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_518_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_519_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_519_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_520_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_520_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_521_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_521_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_522_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_522_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_523_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_523_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_524_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_524_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_525_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_525_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_526_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_526_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_527_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_527_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_528_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_528_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_529_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_529_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_530_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_530_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __ot_531_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* __of_531_6 (state-holding): pup_reff=0.4; pdn_reff=1.33333
* C_aa (combinational)
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
M0_ Vdd I_at_53_6 #17 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd I_at_57_6 #36 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd I_at_511_6 #55 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I_at_515_6 #74 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd I_at_519_6 #93 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd I_at_523_6 #112 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd I_at_527_6 #131 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd I_at_531_6 #150 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __m_51_6 #155 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __m_53_6 #158 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __m_55_6 #161 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __m_57_6 #164 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd d_51_6 #168 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd d_53_6 #171 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __e_51_6 #173 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __j #177 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd __cht c Vdd pmos W=0.65U L=0.065U
M17_ Vdd C_at_50_6 #194 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd __it0 #195 Vdd pmos W=0.325U L=0.065U
M19_ Vdd __if0 #200 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd __v __j Vdd pmos W=0.1625U L=0.065U
M21_ Vdd __r __j Vdd pmos W=0.1625U L=0.065U
M22_ Vdd __j I_aa Vdd pmos W=0.325U L=0.065U
M23_ Vdd __oa I_aa Vdd pmos W=0.325U L=0.065U
M24_ Vdd I_at_50_6 __ot_50_6 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd I_af_50_6 __of_50_6 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I_at_51_6 __ot_51_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd I_af_51_6 __of_51_6 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd I_at_52_6 __ot_52_6 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd I_af_52_6 __of_52_6 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd I_at_53_6 __ot_53_6 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd I_af_53_6 __of_53_6 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd I_at_54_6 __ot_54_6 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd I_af_54_6 __of_54_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd I_at_55_6 __ot_55_6 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd I_af_55_6 __of_55_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd I_at_56_6 __ot_56_6 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd I_af_56_6 __of_56_6 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd I_at_57_6 __ot_57_6 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd I_af_57_6 __of_57_6 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd I_at_58_6 __ot_58_6 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd I_af_58_6 __of_58_6 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd I_at_59_6 __ot_59_6 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd I_af_59_6 __of_59_6 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd I_at_510_6 __ot_510_6 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd I_af_510_6 __of_510_6 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd I_at_511_6 __ot_511_6 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd I_af_511_6 __of_511_6 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd I_at_512_6 __ot_512_6 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd I_af_512_6 __of_512_6 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd I_at_513_6 __ot_513_6 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd I_af_513_6 __of_513_6 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd I_at_514_6 __ot_514_6 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd I_af_514_6 __of_514_6 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd I_at_515_6 __ot_515_6 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd I_af_515_6 __of_515_6 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd I_at_516_6 __ot_516_6 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd I_af_516_6 __of_516_6 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd I_at_517_6 __ot_517_6 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd I_af_517_6 __of_517_6 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd I_at_518_6 __ot_518_6 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd I_af_518_6 __of_518_6 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd I_at_519_6 __ot_519_6 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd I_af_519_6 __of_519_6 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd I_at_520_6 __ot_520_6 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd I_af_520_6 __of_520_6 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd I_at_521_6 __ot_521_6 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd I_af_521_6 __of_521_6 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd I_at_522_6 __ot_522_6 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd I_af_522_6 __of_522_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd I_at_523_6 __ot_523_6 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd I_af_523_6 __of_523_6 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd I_at_524_6 __ot_524_6 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd I_af_524_6 __of_524_6 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd I_at_525_6 __ot_525_6 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd I_af_525_6 __of_525_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd I_at_526_6 __ot_526_6 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd I_af_526_6 __of_526_6 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd I_at_527_6 __ot_527_6 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd I_af_527_6 __of_527_6 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd I_at_528_6 __ot_528_6 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd I_af_528_6 __of_528_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd I_at_529_6 __ot_529_6 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd I_af_529_6 __of_529_6 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd I_at_530_6 __ot_530_6 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd I_af_530_6 __of_530_6 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd I_at_531_6 __ot_531_6 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd I_af_531_6 __of_531_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd C_at_50_6 __cht Vdd pmos W=0.325U L=0.065U
M89_ Vdd c __c Vdd pmos W=0.1625U L=0.065U
M90_ Vdd O_aa __oa Vdd pmos W=0.325U L=0.065U
M91_ Vdd I_aa __ia Vdd pmos W=0.1625U L=0.065U
M92_ Vdd v __v Vdd pmos W=0.1625U L=0.065U
M93_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M94_ Vdd w0 __w0 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd w1 __w1 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd I_at_50_6 __it0 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd I_af_50_6 __if0 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd __cha C_aa Vdd pmos W=0.1625U L=0.065U
M99_ Vdd __ot_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd __of_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd __ot_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd __of_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd __ot_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd __of_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd __ot_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd __of_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd __ot_54_6 O_at_54_6 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd __of_54_6 O_af_54_6 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd __ot_55_6 O_at_55_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd __of_55_6 O_af_55_6 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd __ot_56_6 O_at_56_6 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd __of_56_6 O_af_56_6 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd __ot_57_6 O_at_57_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd __of_57_6 O_af_57_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd __ot_58_6 O_at_58_6 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd __of_58_6 O_af_58_6 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd __ot_59_6 O_at_59_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd __of_59_6 O_af_59_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd __ot_510_6 O_at_510_6 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd __of_510_6 O_af_510_6 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd __ot_511_6 O_at_511_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd __of_511_6 O_af_511_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd __ot_512_6 O_at_512_6 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd __of_512_6 O_af_512_6 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd __ot_513_6 O_at_513_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd __of_513_6 O_af_513_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd __ot_514_6 O_at_514_6 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd __of_514_6 O_af_514_6 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd __ot_515_6 O_at_515_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd __of_515_6 O_af_515_6 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd __ot_516_6 O_at_516_6 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd __of_516_6 O_af_516_6 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd __ot_517_6 O_at_517_6 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd __of_517_6 O_af_517_6 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd __ot_518_6 O_at_518_6 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd __of_518_6 O_af_518_6 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd __ot_519_6 O_at_519_6 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd __of_519_6 O_af_519_6 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd __ot_520_6 O_at_520_6 Vdd pmos W=0.1625U L=0.065U
M140_ Vdd __of_520_6 O_af_520_6 Vdd pmos W=0.1625U L=0.065U
M141_ Vdd __ot_521_6 O_at_521_6 Vdd pmos W=0.1625U L=0.065U
M142_ Vdd __of_521_6 O_af_521_6 Vdd pmos W=0.1625U L=0.065U
M143_ Vdd __ot_522_6 O_at_522_6 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd __of_522_6 O_af_522_6 Vdd pmos W=0.1625U L=0.065U
M145_ Vdd __ot_523_6 O_at_523_6 Vdd pmos W=0.1625U L=0.065U
M146_ Vdd __of_523_6 O_af_523_6 Vdd pmos W=0.1625U L=0.065U
M147_ Vdd __ot_524_6 O_at_524_6 Vdd pmos W=0.1625U L=0.065U
M148_ Vdd __of_524_6 O_af_524_6 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd __ot_525_6 O_at_525_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd __of_525_6 O_af_525_6 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd __ot_526_6 O_at_526_6 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd __of_526_6 O_af_526_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd __ot_527_6 O_at_527_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd __of_527_6 O_af_527_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd __ot_528_6 O_at_528_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd __of_528_6 O_af_528_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd __ot_529_6 O_at_529_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd __of_529_6 O_af_529_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd __ot_530_6 O_at_530_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd __of_530_6 O_af_530_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd __ot_531_6 O_at_531_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd __of_531_6 O_af_531_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd __m_50_6 #fb407# Vdd pmos W=0.1625U L=0.13U
M164_ Vdd __m_51_6 #fb410# Vdd pmos W=0.1625U L=0.13U
M165_keeper Vdd GND #408 Vdd pmos W=0.0975U L=1.235U
M166_ Vdd __m_52_6 #fb413# Vdd pmos W=0.1625U L=0.13U
M167_keeper Vdd GND #411 Vdd pmos W=0.0975U L=1.235U
M168_ Vdd __m_53_6 #fb416# Vdd pmos W=0.1625U L=0.13U
M169_keeper Vdd GND #414 Vdd pmos W=0.0975U L=1.235U
M170_ Vdd __m_54_6 #fb419# Vdd pmos W=0.1625U L=0.13U
M171_keeper Vdd GND #417 Vdd pmos W=0.0975U L=1.235U
M172_ Vdd __m_55_6 #fb422# Vdd pmos W=0.1625U L=0.13U
M173_keeper Vdd GND #420 Vdd pmos W=0.0975U L=1.235U
M174_ Vdd __m_56_6 #fb425# Vdd pmos W=0.1625U L=0.13U
M175_keeper Vdd GND #423 Vdd pmos W=0.0975U L=1.235U
M176_ Vdd __m_57_6 #fb428# Vdd pmos W=0.1625U L=0.13U
M177_keeper Vdd GND #426 Vdd pmos W=0.0975U L=1.235U
M178_ Vdd d_50_6 #fb431# Vdd pmos W=0.1625U L=0.13U
M179_keeper Vdd GND #429 Vdd pmos W=0.0975U L=1.235U
M180_ Vdd d_51_6 #fb434# Vdd pmos W=0.1625U L=0.13U
M181_keeper Vdd GND #432 Vdd pmos W=0.0975U L=0.585U
M182_ Vdd d_52_6 #fb437# Vdd pmos W=0.1625U L=0.13U
M183_keeper Vdd GND #435 Vdd pmos W=0.0975U L=0.585U
M184_ Vdd d_53_6 #fb440# Vdd pmos W=0.1625U L=0.13U
M185_keeper Vdd GND #438 Vdd pmos W=0.0975U L=0.585U
M186_ Vdd __e_50_6 #fb443# Vdd pmos W=0.1625U L=0.13U
M187_keeper Vdd GND #441 Vdd pmos W=0.0975U L=0.585U
M188_ Vdd __e_51_6 #fb446# Vdd pmos W=0.1625U L=0.13U
M189_keeper Vdd GND #444 Vdd pmos W=0.0975U L=0.585U
M190_ Vdd completion #fb449# Vdd pmos W=0.1625U L=0.13U
M191_keeper Vdd GND #447 Vdd pmos W=0.0975U L=0.585U
M192_ Vdd v #fb452# Vdd pmos W=0.1625U L=0.13U
M193_keeper Vdd GND #450 Vdd pmos W=0.0975U L=0.585U
M194_ Vdd __j #fb455# Vdd pmos W=0.1625U L=0.13U
M195_keeper Vdd GND #453 Vdd pmos W=0.0975U L=0.26U
M196_ Vdd c #fb458# Vdd pmos W=0.1625U L=0.13U
M197_keeper Vdd GND #456 Vdd pmos W=0.0975U L=0.91U
M198_ Vdd w0 #fb461# Vdd pmos W=0.1625U L=0.13U
M199_keeper Vdd GND #459 Vdd pmos W=0.0975U L=0.91U
M200_ Vdd I_aa #fb464# Vdd pmos W=0.1625U L=0.13U
M201_keeper Vdd GND #462 Vdd pmos W=0.0975U L=0.91U
M202_ Vdd __cha #fb467# Vdd pmos W=0.1625U L=0.13U
M203_keeper Vdd GND #465 Vdd pmos W=0.0975U L=1.235U
M204_ Vdd w1 #fb470# Vdd pmos W=0.1625U L=0.13U
M205_keeper Vdd GND #468 Vdd pmos W=0.0975U L=0.585U
M206_ Vdd __ot_50_6 #fb473# Vdd pmos W=0.1625U L=0.13U
M207_keeper Vdd GND #471 Vdd pmos W=0.0975U L=0.91U
M208_ Vdd __of_50_6 #fb476# Vdd pmos W=0.1625U L=0.13U
M209_keeper Vdd GND #474 Vdd pmos W=0.0975U L=0.585U
M210_ Vdd __ot_51_6 #fb479# Vdd pmos W=0.1625U L=0.13U
M211_keeper Vdd GND #477 Vdd pmos W=0.0975U L=0.585U
M212_ Vdd __of_51_6 #fb482# Vdd pmos W=0.1625U L=0.13U
M213_keeper Vdd GND #480 Vdd pmos W=0.0975U L=0.585U
M214_ Vdd __ot_52_6 #fb485# Vdd pmos W=0.1625U L=0.13U
M215_keeper Vdd GND #483 Vdd pmos W=0.0975U L=0.585U
M216_ Vdd __of_52_6 #fb488# Vdd pmos W=0.1625U L=0.13U
M217_keeper Vdd GND #486 Vdd pmos W=0.0975U L=0.585U
M218_ Vdd __ot_53_6 #fb491# Vdd pmos W=0.1625U L=0.13U
M219_keeper Vdd GND #489 Vdd pmos W=0.0975U L=0.585U
M220_ Vdd __of_53_6 #fb494# Vdd pmos W=0.1625U L=0.13U
M221_keeper Vdd GND #492 Vdd pmos W=0.0975U L=0.585U
M222_ Vdd __ot_54_6 #fb497# Vdd pmos W=0.1625U L=0.13U
M223_keeper Vdd GND #495 Vdd pmos W=0.0975U L=0.585U
M224_ Vdd __of_54_6 #fb500# Vdd pmos W=0.1625U L=0.13U
M225_keeper Vdd GND #498 Vdd pmos W=0.0975U L=0.585U
M226_ Vdd __ot_55_6 #fb503# Vdd pmos W=0.1625U L=0.13U
M227_keeper Vdd GND #501 Vdd pmos W=0.0975U L=0.585U
M228_ Vdd __of_55_6 #fb506# Vdd pmos W=0.1625U L=0.13U
M229_keeper Vdd GND #504 Vdd pmos W=0.0975U L=0.585U
M230_ Vdd __ot_56_6 #fb509# Vdd pmos W=0.1625U L=0.13U
M231_keeper Vdd GND #507 Vdd pmos W=0.0975U L=0.585U
M232_ Vdd __of_56_6 #fb512# Vdd pmos W=0.1625U L=0.13U
M233_keeper Vdd GND #510 Vdd pmos W=0.0975U L=0.585U
M234_ Vdd __ot_57_6 #fb515# Vdd pmos W=0.1625U L=0.13U
M235_keeper Vdd GND #513 Vdd pmos W=0.0975U L=0.585U
M236_ Vdd __of_57_6 #fb518# Vdd pmos W=0.1625U L=0.13U
M237_keeper Vdd GND #516 Vdd pmos W=0.0975U L=0.585U
M238_ Vdd __ot_58_6 #fb521# Vdd pmos W=0.1625U L=0.13U
M239_keeper Vdd GND #519 Vdd pmos W=0.0975U L=0.585U
M240_ Vdd __of_58_6 #fb524# Vdd pmos W=0.1625U L=0.13U
M241_keeper Vdd GND #522 Vdd pmos W=0.0975U L=0.585U
M242_ Vdd __ot_59_6 #fb527# Vdd pmos W=0.1625U L=0.13U
M243_keeper Vdd GND #525 Vdd pmos W=0.0975U L=0.585U
M244_ Vdd __of_59_6 #fb530# Vdd pmos W=0.1625U L=0.13U
M245_keeper Vdd GND #528 Vdd pmos W=0.0975U L=0.585U
M246_ Vdd __ot_510_6 #fb533# Vdd pmos W=0.1625U L=0.13U
M247_keeper Vdd GND #531 Vdd pmos W=0.0975U L=0.585U
M248_ Vdd __of_510_6 #fb536# Vdd pmos W=0.1625U L=0.13U
M249_keeper Vdd GND #534 Vdd pmos W=0.0975U L=0.585U
M250_ Vdd __ot_511_6 #fb539# Vdd pmos W=0.1625U L=0.13U
M251_keeper Vdd GND #537 Vdd pmos W=0.0975U L=0.585U
M252_ Vdd __of_511_6 #fb542# Vdd pmos W=0.1625U L=0.13U
M253_keeper Vdd GND #540 Vdd pmos W=0.0975U L=0.585U
M254_ Vdd __ot_512_6 #fb545# Vdd pmos W=0.1625U L=0.13U
M255_keeper Vdd GND #543 Vdd pmos W=0.0975U L=0.585U
M256_ Vdd __of_512_6 #fb548# Vdd pmos W=0.1625U L=0.13U
M257_keeper Vdd GND #546 Vdd pmos W=0.0975U L=0.585U
M258_ Vdd __ot_513_6 #fb551# Vdd pmos W=0.1625U L=0.13U
M259_keeper Vdd GND #549 Vdd pmos W=0.0975U L=0.585U
M260_ Vdd __of_513_6 #fb554# Vdd pmos W=0.1625U L=0.13U
M261_keeper Vdd GND #552 Vdd pmos W=0.0975U L=0.585U
M262_ Vdd __ot_514_6 #fb557# Vdd pmos W=0.1625U L=0.13U
M263_keeper Vdd GND #555 Vdd pmos W=0.0975U L=0.585U
M264_ Vdd __of_514_6 #fb560# Vdd pmos W=0.1625U L=0.13U
M265_keeper Vdd GND #558 Vdd pmos W=0.0975U L=0.585U
M266_ Vdd __ot_515_6 #fb563# Vdd pmos W=0.1625U L=0.13U
M267_keeper Vdd GND #561 Vdd pmos W=0.0975U L=0.585U
M268_ Vdd __of_515_6 #fb566# Vdd pmos W=0.1625U L=0.13U
M269_keeper Vdd GND #564 Vdd pmos W=0.0975U L=0.585U
M270_ Vdd __ot_516_6 #fb569# Vdd pmos W=0.1625U L=0.13U
M271_keeper Vdd GND #567 Vdd pmos W=0.0975U L=0.585U
M272_ Vdd __of_516_6 #fb572# Vdd pmos W=0.1625U L=0.13U
M273_keeper Vdd GND #570 Vdd pmos W=0.0975U L=0.585U
M274_ Vdd __ot_517_6 #fb575# Vdd pmos W=0.1625U L=0.13U
M275_keeper Vdd GND #573 Vdd pmos W=0.0975U L=0.585U
M276_ Vdd __of_517_6 #fb578# Vdd pmos W=0.1625U L=0.13U
M277_keeper Vdd GND #576 Vdd pmos W=0.0975U L=0.585U
M278_ Vdd __ot_518_6 #fb581# Vdd pmos W=0.1625U L=0.13U
M279_keeper Vdd GND #579 Vdd pmos W=0.0975U L=0.585U
M280_ Vdd __of_518_6 #fb584# Vdd pmos W=0.1625U L=0.13U
M281_keeper Vdd GND #582 Vdd pmos W=0.0975U L=0.585U
M282_ Vdd __ot_519_6 #fb587# Vdd pmos W=0.1625U L=0.13U
M283_keeper Vdd GND #585 Vdd pmos W=0.0975U L=0.585U
M284_ Vdd __of_519_6 #fb590# Vdd pmos W=0.1625U L=0.13U
M285_keeper Vdd GND #588 Vdd pmos W=0.0975U L=0.585U
M286_ Vdd __ot_520_6 #fb593# Vdd pmos W=0.1625U L=0.13U
M287_keeper Vdd GND #591 Vdd pmos W=0.0975U L=0.585U
M288_ Vdd __of_520_6 #fb596# Vdd pmos W=0.1625U L=0.13U
M289_keeper Vdd GND #594 Vdd pmos W=0.0975U L=0.585U
M290_ Vdd __ot_521_6 #fb599# Vdd pmos W=0.1625U L=0.13U
M291_keeper Vdd GND #597 Vdd pmos W=0.0975U L=0.585U
M292_ Vdd __of_521_6 #fb602# Vdd pmos W=0.1625U L=0.13U
M293_keeper Vdd GND #600 Vdd pmos W=0.0975U L=0.585U
M294_ Vdd __ot_522_6 #fb605# Vdd pmos W=0.1625U L=0.13U
M295_keeper Vdd GND #603 Vdd pmos W=0.0975U L=0.585U
M296_ Vdd __of_522_6 #fb608# Vdd pmos W=0.1625U L=0.13U
M297_keeper Vdd GND #606 Vdd pmos W=0.0975U L=0.585U
M298_ Vdd __ot_523_6 #fb611# Vdd pmos W=0.1625U L=0.13U
M299_keeper Vdd GND #609 Vdd pmos W=0.0975U L=0.585U
M300_ Vdd __of_523_6 #fb614# Vdd pmos W=0.1625U L=0.13U
M301_keeper Vdd GND #612 Vdd pmos W=0.0975U L=0.585U
M302_ Vdd __ot_524_6 #fb617# Vdd pmos W=0.1625U L=0.13U
M303_keeper Vdd GND #615 Vdd pmos W=0.0975U L=0.585U
M304_ Vdd __of_524_6 #fb620# Vdd pmos W=0.1625U L=0.13U
M305_keeper Vdd GND #618 Vdd pmos W=0.0975U L=0.585U
M306_ Vdd __ot_525_6 #fb623# Vdd pmos W=0.1625U L=0.13U
M307_keeper Vdd GND #621 Vdd pmos W=0.0975U L=0.585U
M308_ Vdd __of_525_6 #fb626# Vdd pmos W=0.1625U L=0.13U
M309_keeper Vdd GND #624 Vdd pmos W=0.0975U L=0.585U
M310_ Vdd __ot_526_6 #fb629# Vdd pmos W=0.1625U L=0.13U
M311_keeper Vdd GND #627 Vdd pmos W=0.0975U L=0.585U
M312_ Vdd __of_526_6 #fb632# Vdd pmos W=0.1625U L=0.13U
M313_keeper Vdd GND #630 Vdd pmos W=0.0975U L=0.585U
M314_ Vdd __ot_527_6 #fb635# Vdd pmos W=0.1625U L=0.13U
M315_keeper Vdd GND #633 Vdd pmos W=0.0975U L=0.585U
M316_ Vdd __of_527_6 #fb638# Vdd pmos W=0.1625U L=0.13U
M317_keeper Vdd GND #636 Vdd pmos W=0.0975U L=0.585U
M318_ Vdd __ot_528_6 #fb641# Vdd pmos W=0.1625U L=0.13U
M319_keeper Vdd GND #639 Vdd pmos W=0.0975U L=0.585U
M320_ Vdd __of_528_6 #fb644# Vdd pmos W=0.1625U L=0.13U
M321_keeper Vdd GND #642 Vdd pmos W=0.0975U L=0.585U
M322_ Vdd __ot_529_6 #fb647# Vdd pmos W=0.1625U L=0.13U
M323_keeper Vdd GND #645 Vdd pmos W=0.0975U L=0.585U
M324_ Vdd __of_529_6 #fb650# Vdd pmos W=0.1625U L=0.13U
M325_keeper Vdd GND #648 Vdd pmos W=0.0975U L=0.585U
M326_ Vdd __ot_530_6 #fb653# Vdd pmos W=0.1625U L=0.13U
M327_keeper Vdd GND #651 Vdd pmos W=0.0975U L=0.585U
M328_ Vdd __of_530_6 #fb656# Vdd pmos W=0.1625U L=0.13U
M329_keeper Vdd GND #654 Vdd pmos W=0.0975U L=0.585U
M330_ Vdd __ot_531_6 #fb659# Vdd pmos W=0.1625U L=0.13U
M331_keeper Vdd GND #657 Vdd pmos W=0.0975U L=0.585U
M332_ Vdd __of_531_6 #fb662# Vdd pmos W=0.1625U L=0.13U
M333_keeper Vdd GND #660 Vdd pmos W=0.0975U L=0.585U
M334_keeper Vdd GND #663 Vdd pmos W=0.0975U L=0.585U
M335_ GND I_at_53_6 #5 GND nmos W=0.0975U L=0.065U
M336_ GND I_af_53_6 #5 GND nmos W=0.0975U L=0.065U
M337_ GND I_at_57_6 #24 GND nmos W=0.0975U L=0.065U
M338_ GND I_af_57_6 #24 GND nmos W=0.0975U L=0.065U
M339_ GND I_at_511_6 #43 GND nmos W=0.0975U L=0.065U
M340_ GND I_af_511_6 #43 GND nmos W=0.0975U L=0.065U
M341_ GND I_at_515_6 #62 GND nmos W=0.0975U L=0.065U
M342_ GND I_af_515_6 #62 GND nmos W=0.0975U L=0.065U
M343_ GND I_at_519_6 #81 GND nmos W=0.0975U L=0.065U
M344_ GND I_af_519_6 #81 GND nmos W=0.0975U L=0.065U
M345_ GND I_at_523_6 #100 GND nmos W=0.0975U L=0.065U
M346_ GND I_af_523_6 #100 GND nmos W=0.0975U L=0.065U
M347_ GND I_at_527_6 #119 GND nmos W=0.0975U L=0.065U
M348_ GND I_af_527_6 #119 GND nmos W=0.0975U L=0.065U
M349_ GND I_at_531_6 #138 GND nmos W=0.0975U L=0.065U
M350_ GND I_af_531_6 #138 GND nmos W=0.0975U L=0.065U
M351_ GND __m_51_6 #156 GND nmos W=0.0975U L=0.065U
M352_ GND __m_53_6 #159 GND nmos W=0.0975U L=0.065U
M353_ GND __m_55_6 #162 GND nmos W=0.0975U L=0.065U
M354_ GND __m_57_6 #165 GND nmos W=0.0975U L=0.065U
M355_ GND d_51_6 #167 GND nmos W=0.0975U L=0.065U
M356_ GND d_53_6 #170 GND nmos W=0.0975U L=0.065U
M357_ GND __e_51_6 #174 GND nmos W=0.0975U L=0.065U
M358_ GND __ia v GND nmos W=0.0975U L=0.065U
M359_ GND reset v GND nmos W=0.0975U L=0.065U
M360_ GND w0 #184 GND nmos W=0.39U L=0.065U
M361_ GND reset c GND nmos W=0.39U L=0.065U
M362_ GND C_at_50_6 #189 GND nmos W=0.0975U L=0.065U
M363_ GND C_af_50_6 #191 GND nmos W=0.0975U L=0.065U
M364_ GND __c #198 GND nmos W=0.195U L=0.065U
M365_ GND reset w0 GND nmos W=0.195U L=0.065U
M366_ GND c #203 GND nmos W=0.0975U L=0.065U
M367_ GND reset w1 GND nmos W=0.0975U L=0.065U
M368_ GND __v #205 GND nmos W=0.0975U L=0.065U
M369_ GND __j #208 GND nmos W=0.195U L=0.065U
M370_ GND reset I_aa GND nmos W=0.195U L=0.065U
M371_ GND c #214 GND nmos W=0.0975U L=0.065U
M372_ GND c #216 GND nmos W=0.0975U L=0.065U
M373_ GND c #218 GND nmos W=0.0975U L=0.065U
M374_ GND c #220 GND nmos W=0.0975U L=0.065U
M375_ GND c #222 GND nmos W=0.0975U L=0.065U
M376_ GND c #224 GND nmos W=0.0975U L=0.065U
M377_ GND c #226 GND nmos W=0.0975U L=0.065U
M378_ GND c #228 GND nmos W=0.0975U L=0.065U
M379_ GND c #230 GND nmos W=0.0975U L=0.065U
M380_ GND c #232 GND nmos W=0.0975U L=0.065U
M381_ GND c #234 GND nmos W=0.0975U L=0.065U
M382_ GND c #236 GND nmos W=0.0975U L=0.065U
M383_ GND c #238 GND nmos W=0.0975U L=0.065U
M384_ GND c #240 GND nmos W=0.0975U L=0.065U
M385_ GND c #242 GND nmos W=0.0975U L=0.065U
M386_ GND c #244 GND nmos W=0.0975U L=0.065U
M387_ GND c #246 GND nmos W=0.0975U L=0.065U
M388_ GND c #248 GND nmos W=0.0975U L=0.065U
M389_ GND c #250 GND nmos W=0.0975U L=0.065U
M390_ GND c #252 GND nmos W=0.0975U L=0.065U
M391_ GND c #254 GND nmos W=0.0975U L=0.065U
M392_ GND c #256 GND nmos W=0.0975U L=0.065U
M393_ GND c #258 GND nmos W=0.0975U L=0.065U
M394_ GND c #260 GND nmos W=0.0975U L=0.065U
M395_ GND c #262 GND nmos W=0.0975U L=0.065U
M396_ GND c #264 GND nmos W=0.0975U L=0.065U
M397_ GND c #266 GND nmos W=0.0975U L=0.065U
M398_ GND c #268 GND nmos W=0.0975U L=0.065U
M399_ GND c #270 GND nmos W=0.0975U L=0.065U
M400_ GND c #272 GND nmos W=0.0975U L=0.065U
M401_ GND c #274 GND nmos W=0.0975U L=0.065U
M402_ GND c #276 GND nmos W=0.0975U L=0.065U
M403_ GND c #278 GND nmos W=0.0975U L=0.065U
M404_ GND c #280 GND nmos W=0.0975U L=0.065U
M405_ GND c #282 GND nmos W=0.0975U L=0.065U
M406_ GND c #284 GND nmos W=0.0975U L=0.065U
M407_ GND c #286 GND nmos W=0.0975U L=0.065U
M408_ GND c #288 GND nmos W=0.0975U L=0.065U
M409_ GND c #290 GND nmos W=0.0975U L=0.065U
M410_ GND c #292 GND nmos W=0.0975U L=0.065U
M411_ GND c #294 GND nmos W=0.0975U L=0.065U
M412_ GND c #296 GND nmos W=0.0975U L=0.065U
M413_ GND c #298 GND nmos W=0.0975U L=0.065U
M414_ GND c #300 GND nmos W=0.0975U L=0.065U
M415_ GND c #302 GND nmos W=0.0975U L=0.065U
M416_ GND c #304 GND nmos W=0.0975U L=0.065U
M417_ GND c #306 GND nmos W=0.0975U L=0.065U
M418_ GND c #308 GND nmos W=0.0975U L=0.065U
M419_ GND c #310 GND nmos W=0.0975U L=0.065U
M420_ GND c #312 GND nmos W=0.0975U L=0.065U
M421_ GND c #314 GND nmos W=0.0975U L=0.065U
M422_ GND c #316 GND nmos W=0.0975U L=0.065U
M423_ GND c #318 GND nmos W=0.0975U L=0.065U
M424_ GND c #320 GND nmos W=0.0975U L=0.065U
M425_ GND c #322 GND nmos W=0.0975U L=0.065U
M426_ GND c #324 GND nmos W=0.0975U L=0.065U
M427_ GND c #326 GND nmos W=0.0975U L=0.065U
M428_ GND c #328 GND nmos W=0.0975U L=0.065U
M429_ GND c #330 GND nmos W=0.0975U L=0.065U
M430_ GND c #332 GND nmos W=0.0975U L=0.065U
M431_ GND c #334 GND nmos W=0.0975U L=0.065U
M432_ GND c #336 GND nmos W=0.0975U L=0.065U
M433_ GND c #338 GND nmos W=0.0975U L=0.065U
M434_ GND c #340 GND nmos W=0.0975U L=0.065U
M435_ GND C_at_50_6 __cht GND nmos W=0.195U L=0.065U
M436_ GND c __c GND nmos W=0.0975U L=0.065U
M437_ GND O_aa __oa GND nmos W=0.195U L=0.065U
M438_ GND I_aa __ia GND nmos W=0.0975U L=0.065U
M439_ GND v __v GND nmos W=0.0975U L=0.065U
M440_ GND reset __r GND nmos W=0.0975U L=0.065U
M441_ GND w0 __w0 GND nmos W=0.0975U L=0.065U
M442_ GND w1 __w1 GND nmos W=0.0975U L=0.065U
M443_ GND I_at_50_6 __it0 GND nmos W=0.0975U L=0.065U
M444_ GND I_af_50_6 __if0 GND nmos W=0.0975U L=0.065U
M445_ GND __cha C_aa GND nmos W=0.0975U L=0.065U
M446_ GND __ot_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M447_ GND __of_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M448_ GND __ot_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M449_ GND __of_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M450_ GND __ot_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M451_ GND __of_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M452_ GND __ot_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M453_ GND __of_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M454_ GND __ot_54_6 O_at_54_6 GND nmos W=0.0975U L=0.065U
M455_ GND __of_54_6 O_af_54_6 GND nmos W=0.0975U L=0.065U
M456_ GND __ot_55_6 O_at_55_6 GND nmos W=0.0975U L=0.065U
M457_ GND __of_55_6 O_af_55_6 GND nmos W=0.0975U L=0.065U
M458_ GND __ot_56_6 O_at_56_6 GND nmos W=0.0975U L=0.065U
M459_ GND __of_56_6 O_af_56_6 GND nmos W=0.0975U L=0.065U
M460_ GND __ot_57_6 O_at_57_6 GND nmos W=0.0975U L=0.065U
M461_ GND __of_57_6 O_af_57_6 GND nmos W=0.0975U L=0.065U
M462_ GND __ot_58_6 O_at_58_6 GND nmos W=0.0975U L=0.065U
M463_ GND __of_58_6 O_af_58_6 GND nmos W=0.0975U L=0.065U
M464_ GND __ot_59_6 O_at_59_6 GND nmos W=0.0975U L=0.065U
M465_ GND __of_59_6 O_af_59_6 GND nmos W=0.0975U L=0.065U
M466_ GND __ot_510_6 O_at_510_6 GND nmos W=0.0975U L=0.065U
M467_ GND __of_510_6 O_af_510_6 GND nmos W=0.0975U L=0.065U
M468_ GND __ot_511_6 O_at_511_6 GND nmos W=0.0975U L=0.065U
M469_ GND __of_511_6 O_af_511_6 GND nmos W=0.0975U L=0.065U
M470_ GND __ot_512_6 O_at_512_6 GND nmos W=0.0975U L=0.065U
M471_ GND __of_512_6 O_af_512_6 GND nmos W=0.0975U L=0.065U
M472_ GND __ot_513_6 O_at_513_6 GND nmos W=0.0975U L=0.065U
M473_ GND __of_513_6 O_af_513_6 GND nmos W=0.0975U L=0.065U
M474_ GND __ot_514_6 O_at_514_6 GND nmos W=0.0975U L=0.065U
M475_ GND __of_514_6 O_af_514_6 GND nmos W=0.0975U L=0.065U
M476_ GND __ot_515_6 O_at_515_6 GND nmos W=0.0975U L=0.065U
M477_ GND __of_515_6 O_af_515_6 GND nmos W=0.0975U L=0.065U
M478_ GND __ot_516_6 O_at_516_6 GND nmos W=0.0975U L=0.065U
M479_ GND __of_516_6 O_af_516_6 GND nmos W=0.0975U L=0.065U
M480_ GND __ot_517_6 O_at_517_6 GND nmos W=0.0975U L=0.065U
M481_ GND __of_517_6 O_af_517_6 GND nmos W=0.0975U L=0.065U
M482_ GND __ot_518_6 O_at_518_6 GND nmos W=0.0975U L=0.065U
M483_ GND __of_518_6 O_af_518_6 GND nmos W=0.0975U L=0.065U
M484_ GND __ot_519_6 O_at_519_6 GND nmos W=0.0975U L=0.065U
M485_ GND __of_519_6 O_af_519_6 GND nmos W=0.0975U L=0.065U
M486_ GND __ot_520_6 O_at_520_6 GND nmos W=0.0975U L=0.065U
M487_ GND __of_520_6 O_af_520_6 GND nmos W=0.0975U L=0.065U
M488_ GND __ot_521_6 O_at_521_6 GND nmos W=0.0975U L=0.065U
M489_ GND __of_521_6 O_af_521_6 GND nmos W=0.0975U L=0.065U
M490_ GND __ot_522_6 O_at_522_6 GND nmos W=0.0975U L=0.065U
M491_ GND __of_522_6 O_af_522_6 GND nmos W=0.0975U L=0.065U
M492_ GND __ot_523_6 O_at_523_6 GND nmos W=0.0975U L=0.065U
M493_ GND __of_523_6 O_af_523_6 GND nmos W=0.0975U L=0.065U
M494_ GND __ot_524_6 O_at_524_6 GND nmos W=0.0975U L=0.065U
M495_ GND __of_524_6 O_af_524_6 GND nmos W=0.0975U L=0.065U
M496_ GND __ot_525_6 O_at_525_6 GND nmos W=0.0975U L=0.065U
M497_ GND __of_525_6 O_af_525_6 GND nmos W=0.0975U L=0.065U
M498_ GND __ot_526_6 O_at_526_6 GND nmos W=0.0975U L=0.065U
M499_ GND __of_526_6 O_af_526_6 GND nmos W=0.0975U L=0.065U
M500_ GND __ot_527_6 O_at_527_6 GND nmos W=0.0975U L=0.065U
M501_ GND __of_527_6 O_af_527_6 GND nmos W=0.0975U L=0.065U
M502_ GND __ot_528_6 O_at_528_6 GND nmos W=0.0975U L=0.065U
M503_ GND __of_528_6 O_af_528_6 GND nmos W=0.0975U L=0.065U
M504_ GND __ot_529_6 O_at_529_6 GND nmos W=0.0975U L=0.065U
M505_ GND __of_529_6 O_af_529_6 GND nmos W=0.0975U L=0.065U
M506_ GND __ot_530_6 O_at_530_6 GND nmos W=0.0975U L=0.065U
M507_ GND __of_530_6 O_af_530_6 GND nmos W=0.0975U L=0.065U
M508_ GND __ot_531_6 O_at_531_6 GND nmos W=0.0975U L=0.065U
M509_ GND __of_531_6 O_af_531_6 GND nmos W=0.0975U L=0.065U
M510_ GND __m_50_6 #fb407# GND nmos W=0.0975U L=0.13U
M511_ GND __m_51_6 #fb410# GND nmos W=0.0975U L=0.13U
M512_keeper GND Vdd #409 GND nmos W=0.0975U L=6.175U
M513_ GND __m_52_6 #fb413# GND nmos W=0.0975U L=0.13U
M514_keeper GND Vdd #412 GND nmos W=0.0975U L=6.175U
M515_ GND __m_53_6 #fb416# GND nmos W=0.0975U L=0.13U
M516_keeper GND Vdd #415 GND nmos W=0.0975U L=6.175U
M517_ GND __m_54_6 #fb419# GND nmos W=0.0975U L=0.13U
M518_keeper GND Vdd #418 GND nmos W=0.0975U L=6.175U
M519_ GND __m_55_6 #fb422# GND nmos W=0.0975U L=0.13U
M520_keeper GND Vdd #421 GND nmos W=0.0975U L=6.175U
M521_ GND __m_56_6 #fb425# GND nmos W=0.0975U L=0.13U
M522_keeper GND Vdd #424 GND nmos W=0.0975U L=6.175U
M523_ GND __m_57_6 #fb428# GND nmos W=0.0975U L=0.13U
M524_keeper GND Vdd #427 GND nmos W=0.0975U L=6.175U
M525_ GND d_50_6 #fb431# GND nmos W=0.0975U L=0.13U
M526_keeper GND Vdd #430 GND nmos W=0.0975U L=6.175U
M527_ GND d_51_6 #fb434# GND nmos W=0.0975U L=0.13U
M528_keeper GND Vdd #433 GND nmos W=0.0975U L=1.495U
M529_ GND d_52_6 #fb437# GND nmos W=0.0975U L=0.13U
M530_keeper GND Vdd #436 GND nmos W=0.0975U L=1.495U
M531_ GND d_53_6 #fb440# GND nmos W=0.0975U L=0.13U
M532_keeper GND Vdd #439 GND nmos W=0.0975U L=1.495U
M533_ GND __e_50_6 #fb443# GND nmos W=0.0975U L=0.13U
M534_keeper GND Vdd #442 GND nmos W=0.0975U L=1.495U
M535_ GND __e_51_6 #fb446# GND nmos W=0.0975U L=0.13U
M536_keeper GND Vdd #445 GND nmos W=0.0975U L=1.495U
M537_ GND completion #fb449# GND nmos W=0.0975U L=0.13U
M538_keeper GND Vdd #448 GND nmos W=0.0975U L=1.495U
M539_ GND v #fb452# GND nmos W=0.0975U L=0.13U
M540_keeper GND Vdd #451 GND nmos W=0.0975U L=1.495U
M541_ GND __j #fb455# GND nmos W=0.0975U L=0.13U
M542_keeper GND Vdd #454 GND nmos W=0.0975U L=2.275U
M543_ GND c #fb458# GND nmos W=0.0975U L=0.13U
M544_keeper GND Vdd #457 GND nmos W=0.0975U L=0.715U
M545_ GND w0 #fb461# GND nmos W=0.0975U L=0.13U
M546_keeper GND Vdd #460 GND nmos W=0.0975U L=0.715U
M547_ GND I_aa #fb464# GND nmos W=0.0975U L=0.13U
M548_keeper GND Vdd #463 GND nmos W=0.0975U L=1.495U
M549_ GND __cha #fb467# GND nmos W=0.0975U L=0.13U
M550_keeper GND Vdd #466 GND nmos W=0.0975U L=0.715U
M551_ GND w1 #fb470# GND nmos W=0.0975U L=0.13U
M552_keeper GND Vdd #469 GND nmos W=0.0975U L=1.495U
M553_ GND __ot_50_6 #fb473# GND nmos W=0.0975U L=0.13U
M554_keeper GND Vdd #472 GND nmos W=0.0975U L=1.495U
M555_ GND __of_50_6 #fb476# GND nmos W=0.0975U L=0.13U
M556_keeper GND Vdd #475 GND nmos W=0.0975U L=0.715U
M557_ GND __ot_51_6 #fb479# GND nmos W=0.0975U L=0.13U
M558_keeper GND Vdd #478 GND nmos W=0.0975U L=0.715U
M559_ GND __of_51_6 #fb482# GND nmos W=0.0975U L=0.13U
M560_keeper GND Vdd #481 GND nmos W=0.0975U L=0.715U
M561_ GND __ot_52_6 #fb485# GND nmos W=0.0975U L=0.13U
M562_keeper GND Vdd #484 GND nmos W=0.0975U L=0.715U
M563_ GND __of_52_6 #fb488# GND nmos W=0.0975U L=0.13U
M564_keeper GND Vdd #487 GND nmos W=0.0975U L=0.715U
M565_ GND __ot_53_6 #fb491# GND nmos W=0.0975U L=0.13U
M566_keeper GND Vdd #490 GND nmos W=0.0975U L=0.715U
M567_ GND __of_53_6 #fb494# GND nmos W=0.0975U L=0.13U
M568_keeper GND Vdd #493 GND nmos W=0.0975U L=0.715U
M569_ GND __ot_54_6 #fb497# GND nmos W=0.0975U L=0.13U
M570_keeper GND Vdd #496 GND nmos W=0.0975U L=0.715U
M571_ GND __of_54_6 #fb500# GND nmos W=0.0975U L=0.13U
M572_keeper GND Vdd #499 GND nmos W=0.0975U L=0.715U
M573_ GND __ot_55_6 #fb503# GND nmos W=0.0975U L=0.13U
M574_keeper GND Vdd #502 GND nmos W=0.0975U L=0.715U
M575_ GND __of_55_6 #fb506# GND nmos W=0.0975U L=0.13U
M576_keeper GND Vdd #505 GND nmos W=0.0975U L=0.715U
M577_ GND __ot_56_6 #fb509# GND nmos W=0.0975U L=0.13U
M578_keeper GND Vdd #508 GND nmos W=0.0975U L=0.715U
M579_ GND __of_56_6 #fb512# GND nmos W=0.0975U L=0.13U
M580_keeper GND Vdd #511 GND nmos W=0.0975U L=0.715U
M581_ GND __ot_57_6 #fb515# GND nmos W=0.0975U L=0.13U
M582_keeper GND Vdd #514 GND nmos W=0.0975U L=0.715U
M583_ GND __of_57_6 #fb518# GND nmos W=0.0975U L=0.13U
M584_keeper GND Vdd #517 GND nmos W=0.0975U L=0.715U
M585_ GND __ot_58_6 #fb521# GND nmos W=0.0975U L=0.13U
M586_keeper GND Vdd #520 GND nmos W=0.0975U L=0.715U
M587_ GND __of_58_6 #fb524# GND nmos W=0.0975U L=0.13U
M588_keeper GND Vdd #523 GND nmos W=0.0975U L=0.715U
M589_ GND __ot_59_6 #fb527# GND nmos W=0.0975U L=0.13U
M590_keeper GND Vdd #526 GND nmos W=0.0975U L=0.715U
M591_ GND __of_59_6 #fb530# GND nmos W=0.0975U L=0.13U
M592_keeper GND Vdd #529 GND nmos W=0.0975U L=0.715U
M593_ GND __ot_510_6 #fb533# GND nmos W=0.0975U L=0.13U
M594_keeper GND Vdd #532 GND nmos W=0.0975U L=0.715U
M595_ GND __of_510_6 #fb536# GND nmos W=0.0975U L=0.13U
M596_keeper GND Vdd #535 GND nmos W=0.0975U L=0.715U
M597_ GND __ot_511_6 #fb539# GND nmos W=0.0975U L=0.13U
M598_keeper GND Vdd #538 GND nmos W=0.0975U L=0.715U
M599_ GND __of_511_6 #fb542# GND nmos W=0.0975U L=0.13U
M600_keeper GND Vdd #541 GND nmos W=0.0975U L=0.715U
M601_ GND __ot_512_6 #fb545# GND nmos W=0.0975U L=0.13U
M602_keeper GND Vdd #544 GND nmos W=0.0975U L=0.715U
M603_ GND __of_512_6 #fb548# GND nmos W=0.0975U L=0.13U
M604_keeper GND Vdd #547 GND nmos W=0.0975U L=0.715U
M605_ GND __ot_513_6 #fb551# GND nmos W=0.0975U L=0.13U
M606_keeper GND Vdd #550 GND nmos W=0.0975U L=0.715U
M607_ GND __of_513_6 #fb554# GND nmos W=0.0975U L=0.13U
M608_keeper GND Vdd #553 GND nmos W=0.0975U L=0.715U
M609_ GND __ot_514_6 #fb557# GND nmos W=0.0975U L=0.13U
M610_keeper GND Vdd #556 GND nmos W=0.0975U L=0.715U
M611_ GND __of_514_6 #fb560# GND nmos W=0.0975U L=0.13U
M612_keeper GND Vdd #559 GND nmos W=0.0975U L=0.715U
M613_ GND __ot_515_6 #fb563# GND nmos W=0.0975U L=0.13U
M614_keeper GND Vdd #562 GND nmos W=0.0975U L=0.715U
M615_ GND __of_515_6 #fb566# GND nmos W=0.0975U L=0.13U
M616_keeper GND Vdd #565 GND nmos W=0.0975U L=0.715U
M617_ GND __ot_516_6 #fb569# GND nmos W=0.0975U L=0.13U
M618_keeper GND Vdd #568 GND nmos W=0.0975U L=0.715U
M619_ GND __of_516_6 #fb572# GND nmos W=0.0975U L=0.13U
M620_keeper GND Vdd #571 GND nmos W=0.0975U L=0.715U
M621_ GND __ot_517_6 #fb575# GND nmos W=0.0975U L=0.13U
M622_keeper GND Vdd #574 GND nmos W=0.0975U L=0.715U
M623_ GND __of_517_6 #fb578# GND nmos W=0.0975U L=0.13U
M624_keeper GND Vdd #577 GND nmos W=0.0975U L=0.715U
M625_ GND __ot_518_6 #fb581# GND nmos W=0.0975U L=0.13U
M626_keeper GND Vdd #580 GND nmos W=0.0975U L=0.715U
M627_ GND __of_518_6 #fb584# GND nmos W=0.0975U L=0.13U
M628_keeper GND Vdd #583 GND nmos W=0.0975U L=0.715U
M629_ GND __ot_519_6 #fb587# GND nmos W=0.0975U L=0.13U
M630_keeper GND Vdd #586 GND nmos W=0.0975U L=0.715U
M631_ GND __of_519_6 #fb590# GND nmos W=0.0975U L=0.13U
M632_keeper GND Vdd #589 GND nmos W=0.0975U L=0.715U
M633_ GND __ot_520_6 #fb593# GND nmos W=0.0975U L=0.13U
M634_keeper GND Vdd #592 GND nmos W=0.0975U L=0.715U
M635_ GND __of_520_6 #fb596# GND nmos W=0.0975U L=0.13U
M636_keeper GND Vdd #595 GND nmos W=0.0975U L=0.715U
M637_ GND __ot_521_6 #fb599# GND nmos W=0.0975U L=0.13U
M638_keeper GND Vdd #598 GND nmos W=0.0975U L=0.715U
M639_ GND __of_521_6 #fb602# GND nmos W=0.0975U L=0.13U
M640_keeper GND Vdd #601 GND nmos W=0.0975U L=0.715U
M641_ GND __ot_522_6 #fb605# GND nmos W=0.0975U L=0.13U
M642_keeper GND Vdd #604 GND nmos W=0.0975U L=0.715U
M643_ GND __of_522_6 #fb608# GND nmos W=0.0975U L=0.13U
M644_keeper GND Vdd #607 GND nmos W=0.0975U L=0.715U
M645_ GND __ot_523_6 #fb611# GND nmos W=0.0975U L=0.13U
M646_keeper GND Vdd #610 GND nmos W=0.0975U L=0.715U
M647_ GND __of_523_6 #fb614# GND nmos W=0.0975U L=0.13U
M648_keeper GND Vdd #613 GND nmos W=0.0975U L=0.715U
M649_ GND __ot_524_6 #fb617# GND nmos W=0.0975U L=0.13U
M650_keeper GND Vdd #616 GND nmos W=0.0975U L=0.715U
M651_ GND __of_524_6 #fb620# GND nmos W=0.0975U L=0.13U
M652_keeper GND Vdd #619 GND nmos W=0.0975U L=0.715U
M653_ GND __ot_525_6 #fb623# GND nmos W=0.0975U L=0.13U
M654_keeper GND Vdd #622 GND nmos W=0.0975U L=0.715U
M655_ GND __of_525_6 #fb626# GND nmos W=0.0975U L=0.13U
M656_keeper GND Vdd #625 GND nmos W=0.0975U L=0.715U
M657_ GND __ot_526_6 #fb629# GND nmos W=0.0975U L=0.13U
M658_keeper GND Vdd #628 GND nmos W=0.0975U L=0.715U
M659_ GND __of_526_6 #fb632# GND nmos W=0.0975U L=0.13U
M660_keeper GND Vdd #631 GND nmos W=0.0975U L=0.715U
M661_ GND __ot_527_6 #fb635# GND nmos W=0.0975U L=0.13U
M662_keeper GND Vdd #634 GND nmos W=0.0975U L=0.715U
M663_ GND __of_527_6 #fb638# GND nmos W=0.0975U L=0.13U
M664_keeper GND Vdd #637 GND nmos W=0.0975U L=0.715U
M665_ GND __ot_528_6 #fb641# GND nmos W=0.0975U L=0.13U
M666_keeper GND Vdd #640 GND nmos W=0.0975U L=0.715U
M667_ GND __of_528_6 #fb644# GND nmos W=0.0975U L=0.13U
M668_keeper GND Vdd #643 GND nmos W=0.0975U L=0.715U
M669_ GND __ot_529_6 #fb647# GND nmos W=0.0975U L=0.13U
M670_keeper GND Vdd #646 GND nmos W=0.0975U L=0.715U
M671_ GND __of_529_6 #fb650# GND nmos W=0.0975U L=0.13U
M672_keeper GND Vdd #649 GND nmos W=0.0975U L=0.715U
M673_ GND __ot_530_6 #fb653# GND nmos W=0.0975U L=0.13U
M674_keeper GND Vdd #652 GND nmos W=0.0975U L=0.715U
M675_ GND __of_530_6 #fb656# GND nmos W=0.0975U L=0.13U
M676_keeper GND Vdd #655 GND nmos W=0.0975U L=0.715U
M677_ GND __ot_531_6 #fb659# GND nmos W=0.0975U L=0.13U
M678_keeper GND Vdd #658 GND nmos W=0.0975U L=0.715U
M679_ GND __of_531_6 #fb662# GND nmos W=0.0975U L=0.13U
M680_keeper GND Vdd #661 GND nmos W=0.0975U L=0.715U
M681_keeper GND Vdd #664 GND nmos W=0.0975U L=0.715U
M682_ #3 I_at_50_6 __m_50_6 GND nmos W=0.0975U L=0.065U
M683_ #3 I_af_50_6 __m_50_6 GND nmos W=0.0975U L=0.065U
M684_ #20 I_af_50_6 __m_50_6 Vdd pmos W=0.1625U L=0.065U
M685_keeper #408 #fb407# __m_50_6 Vdd pmos W=0.0975U L=0.065U
M686_keeper #409 #fb407# __m_50_6 GND nmos W=0.0975U L=0.065U
M687_ #4 I_at_51_6 #3 GND nmos W=0.0975U L=0.065U
M688_ #4 I_af_51_6 #3 GND nmos W=0.0975U L=0.065U
M689_ #5 I_at_52_6 #4 GND nmos W=0.0975U L=0.065U
M690_ #5 I_af_52_6 #4 GND nmos W=0.0975U L=0.065U
M691_ #19 I_af_51_6 #14 Vdd pmos W=0.1625U L=0.065U
M692_ #14 I_at_50_6 #20 Vdd pmos W=0.1625U L=0.065U
M693_ #18 I_af_52_6 #15 Vdd pmos W=0.1625U L=0.065U
M694_ #15 I_at_51_6 #19 Vdd pmos W=0.1625U L=0.065U
M695_ #17 I_af_53_6 #16 Vdd pmos W=0.1625U L=0.065U
M696_ #16 I_at_52_6 #18 Vdd pmos W=0.1625U L=0.065U
M697_ #22 I_at_54_6 __m_51_6 GND nmos W=0.0975U L=0.065U
M698_ #22 I_af_54_6 __m_51_6 GND nmos W=0.0975U L=0.065U
M699_ #39 I_af_54_6 __m_51_6 Vdd pmos W=0.1625U L=0.065U
M700_keeper #411 #fb410# __m_51_6 Vdd pmos W=0.0975U L=0.065U
M701_keeper #412 #fb410# __m_51_6 GND nmos W=0.0975U L=0.065U
M702_ #23 I_at_55_6 #22 GND nmos W=0.0975U L=0.065U
M703_ #23 I_af_55_6 #22 GND nmos W=0.0975U L=0.065U
M704_ #24 I_at_56_6 #23 GND nmos W=0.0975U L=0.065U
M705_ #24 I_af_56_6 #23 GND nmos W=0.0975U L=0.065U
M706_ #38 I_af_55_6 #33 Vdd pmos W=0.1625U L=0.065U
M707_ #33 I_at_54_6 #39 Vdd pmos W=0.1625U L=0.065U
M708_ #37 I_af_56_6 #34 Vdd pmos W=0.1625U L=0.065U
M709_ #34 I_at_55_6 #38 Vdd pmos W=0.1625U L=0.065U
M710_ #36 I_af_57_6 #35 Vdd pmos W=0.1625U L=0.065U
M711_ #35 I_at_56_6 #37 Vdd pmos W=0.1625U L=0.065U
M712_ #41 I_at_58_6 __m_52_6 GND nmos W=0.0975U L=0.065U
M713_ #41 I_af_58_6 __m_52_6 GND nmos W=0.0975U L=0.065U
M714_ #58 I_af_58_6 __m_52_6 Vdd pmos W=0.1625U L=0.065U
M715_keeper #414 #fb413# __m_52_6 Vdd pmos W=0.0975U L=0.065U
M716_keeper #415 #fb413# __m_52_6 GND nmos W=0.0975U L=0.065U
M717_ #42 I_at_59_6 #41 GND nmos W=0.0975U L=0.065U
M718_ #42 I_af_59_6 #41 GND nmos W=0.0975U L=0.065U
M719_ #43 I_at_510_6 #42 GND nmos W=0.0975U L=0.065U
M720_ #43 I_af_510_6 #42 GND nmos W=0.0975U L=0.065U
M721_ #57 I_af_59_6 #52 Vdd pmos W=0.1625U L=0.065U
M722_ #52 I_at_58_6 #58 Vdd pmos W=0.1625U L=0.065U
M723_ #56 I_af_510_6 #53 Vdd pmos W=0.1625U L=0.065U
M724_ #53 I_at_59_6 #57 Vdd pmos W=0.1625U L=0.065U
M725_ #55 I_af_511_6 #54 Vdd pmos W=0.1625U L=0.065U
M726_ #54 I_at_510_6 #56 Vdd pmos W=0.1625U L=0.065U
M727_ #60 I_at_512_6 __m_53_6 GND nmos W=0.0975U L=0.065U
M728_ #60 I_af_512_6 __m_53_6 GND nmos W=0.0975U L=0.065U
M729_ #77 I_af_512_6 __m_53_6 Vdd pmos W=0.1625U L=0.065U
M730_keeper #417 #fb416# __m_53_6 Vdd pmos W=0.0975U L=0.065U
M731_keeper #418 #fb416# __m_53_6 GND nmos W=0.0975U L=0.065U
M732_ #61 I_at_513_6 #60 GND nmos W=0.0975U L=0.065U
M733_ #61 I_af_513_6 #60 GND nmos W=0.0975U L=0.065U
M734_ #62 I_at_514_6 #61 GND nmos W=0.0975U L=0.065U
M735_ #62 I_af_514_6 #61 GND nmos W=0.0975U L=0.065U
M736_ #76 I_af_513_6 #71 Vdd pmos W=0.1625U L=0.065U
M737_ #71 I_at_512_6 #77 Vdd pmos W=0.1625U L=0.065U
M738_ #75 I_af_514_6 #72 Vdd pmos W=0.1625U L=0.065U
M739_ #72 I_at_513_6 #76 Vdd pmos W=0.1625U L=0.065U
M740_ #74 I_af_515_6 #73 Vdd pmos W=0.1625U L=0.065U
M741_ #73 I_at_514_6 #75 Vdd pmos W=0.1625U L=0.065U
M742_ #79 I_at_516_6 __m_54_6 GND nmos W=0.0975U L=0.065U
M743_ #79 I_af_516_6 __m_54_6 GND nmos W=0.0975U L=0.065U
M744_ #96 I_af_516_6 __m_54_6 Vdd pmos W=0.1625U L=0.065U
M745_keeper #420 #fb419# __m_54_6 Vdd pmos W=0.0975U L=0.065U
M746_keeper #421 #fb419# __m_54_6 GND nmos W=0.0975U L=0.065U
M747_ #80 I_at_517_6 #79 GND nmos W=0.0975U L=0.065U
M748_ #80 I_af_517_6 #79 GND nmos W=0.0975U L=0.065U
M749_ #81 I_at_518_6 #80 GND nmos W=0.0975U L=0.065U
M750_ #81 I_af_518_6 #80 GND nmos W=0.0975U L=0.065U
M751_ #95 I_af_517_6 #90 Vdd pmos W=0.1625U L=0.065U
M752_ #90 I_at_516_6 #96 Vdd pmos W=0.1625U L=0.065U
M753_ #94 I_af_518_6 #91 Vdd pmos W=0.1625U L=0.065U
M754_ #91 I_at_517_6 #95 Vdd pmos W=0.1625U L=0.065U
M755_ #93 I_af_519_6 #92 Vdd pmos W=0.1625U L=0.065U
M756_ #92 I_at_518_6 #94 Vdd pmos W=0.1625U L=0.065U
M757_ #98 I_at_520_6 __m_55_6 GND nmos W=0.0975U L=0.065U
M758_ #98 I_af_520_6 __m_55_6 GND nmos W=0.0975U L=0.065U
M759_ #115 I_af_520_6 __m_55_6 Vdd pmos W=0.1625U L=0.065U
M760_keeper #423 #fb422# __m_55_6 Vdd pmos W=0.0975U L=0.065U
M761_keeper #424 #fb422# __m_55_6 GND nmos W=0.0975U L=0.065U
M762_ #99 I_at_521_6 #98 GND nmos W=0.0975U L=0.065U
M763_ #99 I_af_521_6 #98 GND nmos W=0.0975U L=0.065U
M764_ #100 I_at_522_6 #99 GND nmos W=0.0975U L=0.065U
M765_ #100 I_af_522_6 #99 GND nmos W=0.0975U L=0.065U
M766_ #114 I_af_521_6 #109 Vdd pmos W=0.1625U L=0.065U
M767_ #109 I_at_520_6 #115 Vdd pmos W=0.1625U L=0.065U
M768_ #113 I_af_522_6 #110 Vdd pmos W=0.1625U L=0.065U
M769_ #110 I_at_521_6 #114 Vdd pmos W=0.1625U L=0.065U
M770_ #112 I_af_523_6 #111 Vdd pmos W=0.1625U L=0.065U
M771_ #111 I_at_522_6 #113 Vdd pmos W=0.1625U L=0.065U
M772_ #117 I_at_524_6 __m_56_6 GND nmos W=0.0975U L=0.065U
M773_ #117 I_af_524_6 __m_56_6 GND nmos W=0.0975U L=0.065U
M774_ #134 I_af_524_6 __m_56_6 Vdd pmos W=0.1625U L=0.065U
M775_keeper #426 #fb425# __m_56_6 Vdd pmos W=0.0975U L=0.065U
M776_keeper #427 #fb425# __m_56_6 GND nmos W=0.0975U L=0.065U
M777_ #118 I_at_525_6 #117 GND nmos W=0.0975U L=0.065U
M778_ #118 I_af_525_6 #117 GND nmos W=0.0975U L=0.065U
M779_ #119 I_at_526_6 #118 GND nmos W=0.0975U L=0.065U
M780_ #119 I_af_526_6 #118 GND nmos W=0.0975U L=0.065U
M781_ #133 I_af_525_6 #128 Vdd pmos W=0.1625U L=0.065U
M782_ #128 I_at_524_6 #134 Vdd pmos W=0.1625U L=0.065U
M783_ #132 I_af_526_6 #129 Vdd pmos W=0.1625U L=0.065U
M784_ #129 I_at_525_6 #133 Vdd pmos W=0.1625U L=0.065U
M785_ #131 I_af_527_6 #130 Vdd pmos W=0.1625U L=0.065U
M786_ #130 I_at_526_6 #132 Vdd pmos W=0.1625U L=0.065U
M787_ #136 I_at_528_6 __m_57_6 GND nmos W=0.0975U L=0.065U
M788_ #136 I_af_528_6 __m_57_6 GND nmos W=0.0975U L=0.065U
M789_ #153 I_af_528_6 __m_57_6 Vdd pmos W=0.1625U L=0.065U
M790_keeper #429 #fb428# __m_57_6 Vdd pmos W=0.0975U L=0.065U
M791_keeper #430 #fb428# __m_57_6 GND nmos W=0.0975U L=0.065U
M792_ #137 I_at_529_6 #136 GND nmos W=0.0975U L=0.065U
M793_ #137 I_af_529_6 #136 GND nmos W=0.0975U L=0.065U
M794_ #138 I_at_530_6 #137 GND nmos W=0.0975U L=0.065U
M795_ #138 I_af_530_6 #137 GND nmos W=0.0975U L=0.065U
M796_ #152 I_af_529_6 #147 Vdd pmos W=0.1625U L=0.065U
M797_ #147 I_at_528_6 #153 Vdd pmos W=0.1625U L=0.065U
M798_ #151 I_af_530_6 #148 Vdd pmos W=0.1625U L=0.065U
M799_ #148 I_at_529_6 #152 Vdd pmos W=0.1625U L=0.065U
M800_ #150 I_af_531_6 #149 Vdd pmos W=0.1625U L=0.065U
M801_ #149 I_at_530_6 #151 Vdd pmos W=0.1625U L=0.065U
M802_ #155 __m_50_6 d_50_6 Vdd pmos W=0.1625U L=0.065U
M803_ #156 __m_50_6 d_50_6 GND nmos W=0.0975U L=0.065U
M804_keeper #432 #fb431# d_50_6 Vdd pmos W=0.0975U L=0.065U
M805_keeper #433 #fb431# d_50_6 GND nmos W=0.0975U L=0.065U
M806_ #158 __m_52_6 d_51_6 Vdd pmos W=0.1625U L=0.065U
M807_ #159 __m_52_6 d_51_6 GND nmos W=0.0975U L=0.065U
M808_keeper #435 #fb434# d_51_6 Vdd pmos W=0.0975U L=0.065U
M809_keeper #436 #fb434# d_51_6 GND nmos W=0.0975U L=0.065U
M810_ #161 __m_54_6 d_52_6 Vdd pmos W=0.1625U L=0.065U
M811_ #162 __m_54_6 d_52_6 GND nmos W=0.0975U L=0.065U
M812_keeper #438 #fb437# d_52_6 Vdd pmos W=0.0975U L=0.065U
M813_keeper #439 #fb437# d_52_6 GND nmos W=0.0975U L=0.065U
M814_ #164 __m_56_6 d_53_6 Vdd pmos W=0.1625U L=0.065U
M815_ #165 __m_56_6 d_53_6 GND nmos W=0.0975U L=0.065U
M816_keeper #441 #fb440# d_53_6 Vdd pmos W=0.0975U L=0.065U
M817_keeper #442 #fb440# d_53_6 GND nmos W=0.0975U L=0.065U
M818_ #167 d_50_6 __e_50_6 GND nmos W=0.0975U L=0.065U
M819_ #168 d_50_6 __e_50_6 Vdd pmos W=0.1625U L=0.065U
M820_keeper #444 #fb443# __e_50_6 Vdd pmos W=0.0975U L=0.065U
M821_keeper #445 #fb443# __e_50_6 GND nmos W=0.0975U L=0.065U
M822_ #170 d_52_6 __e_51_6 GND nmos W=0.0975U L=0.065U
M823_ #171 d_52_6 __e_51_6 Vdd pmos W=0.1625U L=0.065U
M824_keeper #447 #fb446# __e_51_6 Vdd pmos W=0.0975U L=0.065U
M825_keeper #448 #fb446# __e_51_6 GND nmos W=0.0975U L=0.065U
M826_ #173 __e_50_6 completion Vdd pmos W=0.1625U L=0.065U
M827_ #174 __e_50_6 completion GND nmos W=0.0975U L=0.065U
M828_keeper #450 #fb449# completion Vdd pmos W=0.0975U L=0.065U
M829_keeper #451 #fb449# completion GND nmos W=0.0975U L=0.065U
M830_ #176 completion v Vdd pmos W=0.1625U L=0.065U
M831_keeper #453 #fb452# v Vdd pmos W=0.0975U L=0.065U
M832_keeper #454 #fb452# v GND nmos W=0.0975U L=0.065U
M833_ #177 __ia #176 Vdd pmos W=0.1625U L=0.065U
M834_ #204 I_at_531_6 __j GND nmos W=0.0975U L=0.065U
M835_ #204 I_af_531_6 __j GND nmos W=0.0975U L=0.065U
M836_keeper #456 #fb455# __j Vdd pmos W=0.0975U L=0.065U
M837_keeper #457 #fb455# __j GND nmos W=0.0975U L=0.065U
M838_ #183 __oa c GND nmos W=0.39U L=0.065U
M839_keeper #459 #fb458# c Vdd pmos W=0.0975U L=0.065U
M840_keeper #460 #fb458# c GND nmos W=0.0975U L=0.065U
M841_ #184 I_aa #183 GND nmos W=0.39U L=0.065U
M842_ #195 __c w0 Vdd pmos W=0.325U L=0.065U
M843_ #197 __oa w0 GND nmos W=0.195U L=0.065U
M844_keeper #462 #fb461# w0 Vdd pmos W=0.0975U L=0.065U
M845_keeper #463 #fb461# w0 GND nmos W=0.0975U L=0.065U
M846_ #208 v I_aa GND nmos W=0.195U L=0.065U
M847_ #209 __oa I_aa GND nmos W=0.195U L=0.065U
M848_keeper #465 #fb464# I_aa Vdd pmos W=0.0975U L=0.065U
M849_keeper #466 #fb464# I_aa GND nmos W=0.0975U L=0.065U
M850_ #189 c __cha GND nmos W=0.0975U L=0.065U
M851_ #191 __c __cha GND nmos W=0.0975U L=0.065U
M852_ #194 C_af_50_6 __cha Vdd pmos W=0.1625U L=0.065U
M853_keeper #468 #fb467# __cha Vdd pmos W=0.0975U L=0.065U
M854_keeper #469 #fb467# __cha GND nmos W=0.0975U L=0.065U
M855_ #198 I_aa #197 GND nmos W=0.195U L=0.065U
M856_ #200 __c w1 Vdd pmos W=0.1625U L=0.065U
M857_ #202 __oa w1 GND nmos W=0.0975U L=0.065U
M858_keeper #471 #fb470# w1 Vdd pmos W=0.0975U L=0.065U
M859_keeper #472 #fb470# w1 GND nmos W=0.0975U L=0.065U
M860_ #203 I_aa #202 GND nmos W=0.0975U L=0.065U
M861_ #205 __c #204 GND nmos W=0.0975U L=0.065U
M862_ #208 __w0 #210 GND nmos W=0.195U L=0.065U
M863_ #210 __w1 #209 GND nmos W=0.195U L=0.065U
M864_ #214 I_at_50_6 __ot_50_6 GND nmos W=0.0975U L=0.065U
M865_keeper #474 #fb473# __ot_50_6 Vdd pmos W=0.0975U L=0.065U
M866_keeper #475 #fb473# __ot_50_6 GND nmos W=0.0975U L=0.065U
M867_ #216 I_af_50_6 __of_50_6 GND nmos W=0.0975U L=0.065U
M868_keeper #477 #fb476# __of_50_6 Vdd pmos W=0.0975U L=0.065U
M869_keeper #478 #fb476# __of_50_6 GND nmos W=0.0975U L=0.065U
M870_ #218 I_at_51_6 __ot_51_6 GND nmos W=0.0975U L=0.065U
M871_keeper #480 #fb479# __ot_51_6 Vdd pmos W=0.0975U L=0.065U
M872_keeper #481 #fb479# __ot_51_6 GND nmos W=0.0975U L=0.065U
M873_ #220 I_af_51_6 __of_51_6 GND nmos W=0.0975U L=0.065U
M874_keeper #483 #fb482# __of_51_6 Vdd pmos W=0.0975U L=0.065U
M875_keeper #484 #fb482# __of_51_6 GND nmos W=0.0975U L=0.065U
M876_ #222 I_at_52_6 __ot_52_6 GND nmos W=0.0975U L=0.065U
M877_keeper #486 #fb485# __ot_52_6 Vdd pmos W=0.0975U L=0.065U
M878_keeper #487 #fb485# __ot_52_6 GND nmos W=0.0975U L=0.065U
M879_ #224 I_af_52_6 __of_52_6 GND nmos W=0.0975U L=0.065U
M880_keeper #489 #fb488# __of_52_6 Vdd pmos W=0.0975U L=0.065U
M881_keeper #490 #fb488# __of_52_6 GND nmos W=0.0975U L=0.065U
M882_ #226 I_at_53_6 __ot_53_6 GND nmos W=0.0975U L=0.065U
M883_keeper #492 #fb491# __ot_53_6 Vdd pmos W=0.0975U L=0.065U
M884_keeper #493 #fb491# __ot_53_6 GND nmos W=0.0975U L=0.065U
M885_ #228 I_af_53_6 __of_53_6 GND nmos W=0.0975U L=0.065U
M886_keeper #495 #fb494# __of_53_6 Vdd pmos W=0.0975U L=0.065U
M887_keeper #496 #fb494# __of_53_6 GND nmos W=0.0975U L=0.065U
M888_ #230 I_at_54_6 __ot_54_6 GND nmos W=0.0975U L=0.065U
M889_keeper #498 #fb497# __ot_54_6 Vdd pmos W=0.0975U L=0.065U
M890_keeper #499 #fb497# __ot_54_6 GND nmos W=0.0975U L=0.065U
M891_ #232 I_af_54_6 __of_54_6 GND nmos W=0.0975U L=0.065U
M892_keeper #501 #fb500# __of_54_6 Vdd pmos W=0.0975U L=0.065U
M893_keeper #502 #fb500# __of_54_6 GND nmos W=0.0975U L=0.065U
M894_ #234 I_at_55_6 __ot_55_6 GND nmos W=0.0975U L=0.065U
M895_keeper #504 #fb503# __ot_55_6 Vdd pmos W=0.0975U L=0.065U
M896_keeper #505 #fb503# __ot_55_6 GND nmos W=0.0975U L=0.065U
M897_ #236 I_af_55_6 __of_55_6 GND nmos W=0.0975U L=0.065U
M898_keeper #507 #fb506# __of_55_6 Vdd pmos W=0.0975U L=0.065U
M899_keeper #508 #fb506# __of_55_6 GND nmos W=0.0975U L=0.065U
M900_ #238 I_at_56_6 __ot_56_6 GND nmos W=0.0975U L=0.065U
M901_keeper #510 #fb509# __ot_56_6 Vdd pmos W=0.0975U L=0.065U
M902_keeper #511 #fb509# __ot_56_6 GND nmos W=0.0975U L=0.065U
M903_ #240 I_af_56_6 __of_56_6 GND nmos W=0.0975U L=0.065U
M904_keeper #513 #fb512# __of_56_6 Vdd pmos W=0.0975U L=0.065U
M905_keeper #514 #fb512# __of_56_6 GND nmos W=0.0975U L=0.065U
M906_ #242 I_at_57_6 __ot_57_6 GND nmos W=0.0975U L=0.065U
M907_keeper #516 #fb515# __ot_57_6 Vdd pmos W=0.0975U L=0.065U
M908_keeper #517 #fb515# __ot_57_6 GND nmos W=0.0975U L=0.065U
M909_ #244 I_af_57_6 __of_57_6 GND nmos W=0.0975U L=0.065U
M910_keeper #519 #fb518# __of_57_6 Vdd pmos W=0.0975U L=0.065U
M911_keeper #520 #fb518# __of_57_6 GND nmos W=0.0975U L=0.065U
M912_ #246 I_at_58_6 __ot_58_6 GND nmos W=0.0975U L=0.065U
M913_keeper #522 #fb521# __ot_58_6 Vdd pmos W=0.0975U L=0.065U
M914_keeper #523 #fb521# __ot_58_6 GND nmos W=0.0975U L=0.065U
M915_ #248 I_af_58_6 __of_58_6 GND nmos W=0.0975U L=0.065U
M916_keeper #525 #fb524# __of_58_6 Vdd pmos W=0.0975U L=0.065U
M917_keeper #526 #fb524# __of_58_6 GND nmos W=0.0975U L=0.065U
M918_ #250 I_at_59_6 __ot_59_6 GND nmos W=0.0975U L=0.065U
M919_keeper #528 #fb527# __ot_59_6 Vdd pmos W=0.0975U L=0.065U
M920_keeper #529 #fb527# __ot_59_6 GND nmos W=0.0975U L=0.065U
M921_ #252 I_af_59_6 __of_59_6 GND nmos W=0.0975U L=0.065U
M922_keeper #531 #fb530# __of_59_6 Vdd pmos W=0.0975U L=0.065U
M923_keeper #532 #fb530# __of_59_6 GND nmos W=0.0975U L=0.065U
M924_ #254 I_at_510_6 __ot_510_6 GND nmos W=0.0975U L=0.065U
M925_keeper #534 #fb533# __ot_510_6 Vdd pmos W=0.0975U L=0.065U
M926_keeper #535 #fb533# __ot_510_6 GND nmos W=0.0975U L=0.065U
M927_ #256 I_af_510_6 __of_510_6 GND nmos W=0.0975U L=0.065U
M928_keeper #537 #fb536# __of_510_6 Vdd pmos W=0.0975U L=0.065U
M929_keeper #538 #fb536# __of_510_6 GND nmos W=0.0975U L=0.065U
M930_ #258 I_at_511_6 __ot_511_6 GND nmos W=0.0975U L=0.065U
M931_keeper #540 #fb539# __ot_511_6 Vdd pmos W=0.0975U L=0.065U
M932_keeper #541 #fb539# __ot_511_6 GND nmos W=0.0975U L=0.065U
M933_ #260 I_af_511_6 __of_511_6 GND nmos W=0.0975U L=0.065U
M934_keeper #543 #fb542# __of_511_6 Vdd pmos W=0.0975U L=0.065U
M935_keeper #544 #fb542# __of_511_6 GND nmos W=0.0975U L=0.065U
M936_ #262 I_at_512_6 __ot_512_6 GND nmos W=0.0975U L=0.065U
M937_keeper #546 #fb545# __ot_512_6 Vdd pmos W=0.0975U L=0.065U
M938_keeper #547 #fb545# __ot_512_6 GND nmos W=0.0975U L=0.065U
M939_ #264 I_af_512_6 __of_512_6 GND nmos W=0.0975U L=0.065U
M940_keeper #549 #fb548# __of_512_6 Vdd pmos W=0.0975U L=0.065U
M941_keeper #550 #fb548# __of_512_6 GND nmos W=0.0975U L=0.065U
M942_ #266 I_at_513_6 __ot_513_6 GND nmos W=0.0975U L=0.065U
M943_keeper #552 #fb551# __ot_513_6 Vdd pmos W=0.0975U L=0.065U
M944_keeper #553 #fb551# __ot_513_6 GND nmos W=0.0975U L=0.065U
M945_ #268 I_af_513_6 __of_513_6 GND nmos W=0.0975U L=0.065U
M946_keeper #555 #fb554# __of_513_6 Vdd pmos W=0.0975U L=0.065U
M947_keeper #556 #fb554# __of_513_6 GND nmos W=0.0975U L=0.065U
M948_ #270 I_at_514_6 __ot_514_6 GND nmos W=0.0975U L=0.065U
M949_keeper #558 #fb557# __ot_514_6 Vdd pmos W=0.0975U L=0.065U
M950_keeper #559 #fb557# __ot_514_6 GND nmos W=0.0975U L=0.065U
M951_ #272 I_af_514_6 __of_514_6 GND nmos W=0.0975U L=0.065U
M952_keeper #561 #fb560# __of_514_6 Vdd pmos W=0.0975U L=0.065U
M953_keeper #562 #fb560# __of_514_6 GND nmos W=0.0975U L=0.065U
M954_ #274 I_at_515_6 __ot_515_6 GND nmos W=0.0975U L=0.065U
M955_keeper #564 #fb563# __ot_515_6 Vdd pmos W=0.0975U L=0.065U
M956_keeper #565 #fb563# __ot_515_6 GND nmos W=0.0975U L=0.065U
M957_ #276 I_af_515_6 __of_515_6 GND nmos W=0.0975U L=0.065U
M958_keeper #567 #fb566# __of_515_6 Vdd pmos W=0.0975U L=0.065U
M959_keeper #568 #fb566# __of_515_6 GND nmos W=0.0975U L=0.065U
M960_ #278 I_at_516_6 __ot_516_6 GND nmos W=0.0975U L=0.065U
M961_keeper #570 #fb569# __ot_516_6 Vdd pmos W=0.0975U L=0.065U
M962_keeper #571 #fb569# __ot_516_6 GND nmos W=0.0975U L=0.065U
M963_ #280 I_af_516_6 __of_516_6 GND nmos W=0.0975U L=0.065U
M964_keeper #573 #fb572# __of_516_6 Vdd pmos W=0.0975U L=0.065U
M965_keeper #574 #fb572# __of_516_6 GND nmos W=0.0975U L=0.065U
M966_ #282 I_at_517_6 __ot_517_6 GND nmos W=0.0975U L=0.065U
M967_keeper #576 #fb575# __ot_517_6 Vdd pmos W=0.0975U L=0.065U
M968_keeper #577 #fb575# __ot_517_6 GND nmos W=0.0975U L=0.065U
M969_ #284 I_af_517_6 __of_517_6 GND nmos W=0.0975U L=0.065U
M970_keeper #579 #fb578# __of_517_6 Vdd pmos W=0.0975U L=0.065U
M971_keeper #580 #fb578# __of_517_6 GND nmos W=0.0975U L=0.065U
M972_ #286 I_at_518_6 __ot_518_6 GND nmos W=0.0975U L=0.065U
M973_keeper #582 #fb581# __ot_518_6 Vdd pmos W=0.0975U L=0.065U
M974_keeper #583 #fb581# __ot_518_6 GND nmos W=0.0975U L=0.065U
M975_ #288 I_af_518_6 __of_518_6 GND nmos W=0.0975U L=0.065U
M976_keeper #585 #fb584# __of_518_6 Vdd pmos W=0.0975U L=0.065U
M977_keeper #586 #fb584# __of_518_6 GND nmos W=0.0975U L=0.065U
M978_ #290 I_at_519_6 __ot_519_6 GND nmos W=0.0975U L=0.065U
M979_keeper #588 #fb587# __ot_519_6 Vdd pmos W=0.0975U L=0.065U
M980_keeper #589 #fb587# __ot_519_6 GND nmos W=0.0975U L=0.065U
M981_ #292 I_af_519_6 __of_519_6 GND nmos W=0.0975U L=0.065U
M982_keeper #591 #fb590# __of_519_6 Vdd pmos W=0.0975U L=0.065U
M983_keeper #592 #fb590# __of_519_6 GND nmos W=0.0975U L=0.065U
M984_ #294 I_at_520_6 __ot_520_6 GND nmos W=0.0975U L=0.065U
M985_keeper #594 #fb593# __ot_520_6 Vdd pmos W=0.0975U L=0.065U
M986_keeper #595 #fb593# __ot_520_6 GND nmos W=0.0975U L=0.065U
M987_ #296 I_af_520_6 __of_520_6 GND nmos W=0.0975U L=0.065U
M988_keeper #597 #fb596# __of_520_6 Vdd pmos W=0.0975U L=0.065U
M989_keeper #598 #fb596# __of_520_6 GND nmos W=0.0975U L=0.065U
M990_ #298 I_at_521_6 __ot_521_6 GND nmos W=0.0975U L=0.065U
M991_keeper #600 #fb599# __ot_521_6 Vdd pmos W=0.0975U L=0.065U
M992_keeper #601 #fb599# __ot_521_6 GND nmos W=0.0975U L=0.065U
M993_ #300 I_af_521_6 __of_521_6 GND nmos W=0.0975U L=0.065U
M994_keeper #603 #fb602# __of_521_6 Vdd pmos W=0.0975U L=0.065U
M995_keeper #604 #fb602# __of_521_6 GND nmos W=0.0975U L=0.065U
M996_ #302 I_at_522_6 __ot_522_6 GND nmos W=0.0975U L=0.065U
M997_keeper #606 #fb605# __ot_522_6 Vdd pmos W=0.0975U L=0.065U
M998_keeper #607 #fb605# __ot_522_6 GND nmos W=0.0975U L=0.065U
M999_ #304 I_af_522_6 __of_522_6 GND nmos W=0.0975U L=0.065U
M1000_keeper #609 #fb608# __of_522_6 Vdd pmos W=0.0975U L=0.065U
M1001_keeper #610 #fb608# __of_522_6 GND nmos W=0.0975U L=0.065U
M1002_ #306 I_at_523_6 __ot_523_6 GND nmos W=0.0975U L=0.065U
M1003_keeper #612 #fb611# __ot_523_6 Vdd pmos W=0.0975U L=0.065U
M1004_keeper #613 #fb611# __ot_523_6 GND nmos W=0.0975U L=0.065U
M1005_ #308 I_af_523_6 __of_523_6 GND nmos W=0.0975U L=0.065U
M1006_keeper #615 #fb614# __of_523_6 Vdd pmos W=0.0975U L=0.065U
M1007_keeper #616 #fb614# __of_523_6 GND nmos W=0.0975U L=0.065U
M1008_ #310 I_at_524_6 __ot_524_6 GND nmos W=0.0975U L=0.065U
M1009_keeper #618 #fb617# __ot_524_6 Vdd pmos W=0.0975U L=0.065U
M1010_keeper #619 #fb617# __ot_524_6 GND nmos W=0.0975U L=0.065U
M1011_ #312 I_af_524_6 __of_524_6 GND nmos W=0.0975U L=0.065U
M1012_keeper #621 #fb620# __of_524_6 Vdd pmos W=0.0975U L=0.065U
M1013_keeper #622 #fb620# __of_524_6 GND nmos W=0.0975U L=0.065U
M1014_ #314 I_at_525_6 __ot_525_6 GND nmos W=0.0975U L=0.065U
M1015_keeper #624 #fb623# __ot_525_6 Vdd pmos W=0.0975U L=0.065U
M1016_keeper #625 #fb623# __ot_525_6 GND nmos W=0.0975U L=0.065U
M1017_ #316 I_af_525_6 __of_525_6 GND nmos W=0.0975U L=0.065U
M1018_keeper #627 #fb626# __of_525_6 Vdd pmos W=0.0975U L=0.065U
M1019_keeper #628 #fb626# __of_525_6 GND nmos W=0.0975U L=0.065U
M1020_ #318 I_at_526_6 __ot_526_6 GND nmos W=0.0975U L=0.065U
M1021_keeper #630 #fb629# __ot_526_6 Vdd pmos W=0.0975U L=0.065U
M1022_keeper #631 #fb629# __ot_526_6 GND nmos W=0.0975U L=0.065U
M1023_ #320 I_af_526_6 __of_526_6 GND nmos W=0.0975U L=0.065U
M1024_keeper #633 #fb632# __of_526_6 Vdd pmos W=0.0975U L=0.065U
M1025_keeper #634 #fb632# __of_526_6 GND nmos W=0.0975U L=0.065U
M1026_ #322 I_at_527_6 __ot_527_6 GND nmos W=0.0975U L=0.065U
M1027_keeper #636 #fb635# __ot_527_6 Vdd pmos W=0.0975U L=0.065U
M1028_keeper #637 #fb635# __ot_527_6 GND nmos W=0.0975U L=0.065U
M1029_ #324 I_af_527_6 __of_527_6 GND nmos W=0.0975U L=0.065U
M1030_keeper #639 #fb638# __of_527_6 Vdd pmos W=0.0975U L=0.065U
M1031_keeper #640 #fb638# __of_527_6 GND nmos W=0.0975U L=0.065U
M1032_ #326 I_at_528_6 __ot_528_6 GND nmos W=0.0975U L=0.065U
M1033_keeper #642 #fb641# __ot_528_6 Vdd pmos W=0.0975U L=0.065U
M1034_keeper #643 #fb641# __ot_528_6 GND nmos W=0.0975U L=0.065U
M1035_ #328 I_af_528_6 __of_528_6 GND nmos W=0.0975U L=0.065U
M1036_keeper #645 #fb644# __of_528_6 Vdd pmos W=0.0975U L=0.065U
M1037_keeper #646 #fb644# __of_528_6 GND nmos W=0.0975U L=0.065U
M1038_ #330 I_at_529_6 __ot_529_6 GND nmos W=0.0975U L=0.065U
M1039_keeper #648 #fb647# __ot_529_6 Vdd pmos W=0.0975U L=0.065U
M1040_keeper #649 #fb647# __ot_529_6 GND nmos W=0.0975U L=0.065U
M1041_ #332 I_af_529_6 __of_529_6 GND nmos W=0.0975U L=0.065U
M1042_keeper #651 #fb650# __of_529_6 Vdd pmos W=0.0975U L=0.065U
M1043_keeper #652 #fb650# __of_529_6 GND nmos W=0.0975U L=0.065U
M1044_ #334 I_at_530_6 __ot_530_6 GND nmos W=0.0975U L=0.065U
M1045_keeper #654 #fb653# __ot_530_6 Vdd pmos W=0.0975U L=0.065U
M1046_keeper #655 #fb653# __ot_530_6 GND nmos W=0.0975U L=0.065U
M1047_ #336 I_af_530_6 __of_530_6 GND nmos W=0.0975U L=0.065U
M1048_keeper #657 #fb656# __of_530_6 Vdd pmos W=0.0975U L=0.065U
M1049_keeper #658 #fb656# __of_530_6 GND nmos W=0.0975U L=0.065U
M1050_ #338 I_at_531_6 __ot_531_6 GND nmos W=0.0975U L=0.065U
M1051_keeper #660 #fb659# __ot_531_6 Vdd pmos W=0.0975U L=0.065U
M1052_keeper #661 #fb659# __ot_531_6 GND nmos W=0.0975U L=0.065U
M1053_ #340 I_af_531_6 __of_531_6 GND nmos W=0.0975U L=0.065U
M1054_keeper #663 #fb662# __of_531_6 Vdd pmos W=0.0975U L=0.065U
M1055_keeper #664 #fb662# __of_531_6 GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: ChildDispatch<> -----
*
*---- act defproc: PayloadDispatch<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a Ch.t[0] Ch.t[1] Ch.t[2] Ch.t[3] Ch.f[0] Ch.f[1] Ch.f[2] Ch.f[3] Ch.a C0.t[0] C0.t[1] C0.t[2] C0.t[3] C0.t[4] C0.t[5] C0.t[6] C0.t[7] C0.t[8] C0.t[9] C0.t[10] C0.t[11] C0.t[12] C0.t[13] C0.t[14] C0.t[15] C0.t[16] C0.t[17] C0.t[18] C0.t[19] C0.t[20] C0.t[21] C0.t[22] C0.t[23] C0.t[24] C0.t[25] C0.t[26] C0.t[27] C0.t[28] C0.t[29] C0.t[30] C0.t[31] C0.f[0] C0.f[1] C0.f[2] C0.f[3] C0.f[4] C0.f[5] C0.f[6] C0.f[7] C0.f[8] C0.f[9] C0.f[10] C0.f[11] C0.f[12] C0.f[13] C0.f[14] C0.f[15] C0.f[16] C0.f[17] C0.f[18] C0.f[19] C0.f[20] C0.f[21] C0.f[22] C0.f[23] C0.f[24] C0.f[25] C0.f[26] C0.f[27] C0.f[28] C0.f[29] C0.f[30] C0.f[31] C0.a C1.t[0] C1.t[1] C1.t[2] C1.t[3] C1.t[4] C1.t[5] C1.t[6] C1.t[7] C1.t[8] C1.t[9] C1.t[10] C1.t[11] C1.t[12] C1.t[13] C1.t[14] C1.t[15] C1.t[16] C1.t[17] C1.t[18] C1.t[19] C1.t[20] C1.t[21] C1.t[22] C1.t[23] C1.t[24] C1.t[25] C1.t[26] C1.t[27] C1.t[28] C1.t[29] C1.t[30] C1.t[31] C1.f[0] C1.f[1] C1.f[2] C1.f[3] C1.f[4] C1.f[5] C1.f[6] C1.f[7] C1.f[8] C1.f[9] C1.f[10] C1.f[11] C1.f[12] C1.f[13] C1.f[14] C1.f[15] C1.f[16] C1.f[17] C1.f[18] C1.f[19] C1.f[20] C1.f[21] C1.f[22] C1.f[23] C1.f[24] C1.f[25] C1.f[26] C1.f[27] C1.f[28] C1.f[29] C1.f[30] C1.f[31] C1.a C2.t[0] C2.t[1] C2.t[2] C2.t[3] C2.t[4] C2.t[5] C2.t[6] C2.t[7] C2.t[8] C2.t[9] C2.t[10] C2.t[11] C2.t[12] C2.t[13] C2.t[14] C2.t[15] C2.t[16] C2.t[17] C2.t[18] C2.t[19] C2.t[20] C2.t[21] C2.t[22] C2.t[23] C2.t[24] C2.t[25] C2.t[26] C2.t[27] C2.t[28] C2.t[29] C2.t[30] C2.t[31] C2.f[0] C2.f[1] C2.f[2] C2.f[3] C2.f[4] C2.f[5] C2.f[6] C2.f[7] C2.f[8] C2.f[9] C2.f[10] C2.f[11] C2.f[12] C2.f[13] C2.f[14] C2.f[15] C2.f[16] C2.f[17] C2.f[18] C2.f[19] C2.f[20] C2.f[21] C2.f[22] C2.f[23] C2.f[24] C2.f[25] C2.f[26] C2.f[27] C2.f[28] C2.f[29] C2.f[30] C2.f[31] C2.a C3.t[0] C3.t[1] C3.t[2] C3.t[3] C3.t[4] C3.t[5] C3.t[6] C3.t[7] C3.t[8] C3.t[9] C3.t[10] C3.t[11] C3.t[12] C3.t[13] C3.t[14] C3.t[15] C3.t[16] C3.t[17] C3.t[18] C3.t[19] C3.t[20] C3.t[21] C3.t[22] C3.t[23] C3.t[24] C3.t[25] C3.t[26] C3.t[27] C3.t[28] C3.t[29] C3.t[30] C3.t[31] C3.f[0] C3.f[1] C3.f[2] C3.f[3] C3.f[4] C3.f[5] C3.f[6] C3.f[7] C3.f[8] C3.f[9] C3.f[10] C3.f[11] C3.f[12] C3.f[13] C3.f[14] C3.f[15] C3.f[16] C3.f[17] C3.f[18] C3.f[19] C3.f[20] C3.f[21] C3.f[22] C3.f[23] C3.f[24] C3.f[25] C3.f[26] C3.f[27] C3.f[28] C3.f[29] C3.f[30] C3.f[31] C3.a
*
.subckt PayloadDispatch reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6
+ I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6
+ I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6
+ I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6
+ I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6
+ I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6
+ I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa Ch_at_50_6
+ Ch_at_51_6 Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa C0_at_50_6 C0_at_51_6
+ C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6
+ C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6
+ C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6
+ C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6
+ C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6
+ C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6
+ C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa
+ C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6
+ C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6 C1_at_517_6
+ C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6
+ C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6
+ C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6
+ C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6
+ C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6
+ C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6
+ C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6
+ C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6
+ C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6
+ C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6
+ C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6
+ C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6
+ C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6
+ C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6
+ C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6
+ C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6
+ C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6
+ C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6
+ C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O Ch_at_50_6:I Ch_at_51_6:I Ch_at_52_6:I Ch_at_53_6:I Ch_af_50_6:I Ch_af_51_6:I Ch_af_52_6:I Ch_af_53_6:I Ch_aa:O C0_at_50_6:O C0_at_51_6:O C0_at_52_6:O C0_at_53_6:O C0_at_54_6:O C0_at_55_6:O C0_at_56_6:O C0_at_57_6:O C0_at_58_6:O C0_at_59_6:O C0_at_510_6:O C0_at_511_6:O C0_at_512_6:O C0_at_513_6:O C0_at_514_6:O C0_at_515_6:O C0_at_516_6:O C0_at_517_6:O C0_at_518_6:O C0_at_519_6:O C0_at_520_6:O C0_at_521_6:O C0_at_522_6:O C0_at_523_6:O C0_at_524_6:O C0_at_525_6:O C0_at_526_6:O C0_at_527_6:O C0_at_528_6:O C0_at_529_6:O C0_at_530_6:O C0_at_531_6:O C0_af_50_6:O C0_af_51_6:O C0_af_52_6:O C0_af_53_6:O C0_af_54_6:O C0_af_55_6:O C0_af_56_6:O C0_af_57_6:O C0_af_58_6:O C0_af_59_6:O C0_af_510_6:O C0_af_511_6:O C0_af_512_6:O C0_af_513_6:O C0_af_514_6:O C0_af_515_6:O C0_af_516_6:O C0_af_517_6:O C0_af_518_6:O C0_af_519_6:O C0_af_520_6:O C0_af_521_6:O C0_af_522_6:O C0_af_523_6:O C0_af_524_6:O C0_af_525_6:O C0_af_526_6:O C0_af_527_6:O C0_af_528_6:O C0_af_529_6:O C0_af_530_6:O C0_af_531_6:O C0_aa:I C1_at_50_6:O C1_at_51_6:O C1_at_52_6:O C1_at_53_6:O C1_at_54_6:O C1_at_55_6:O C1_at_56_6:O C1_at_57_6:O C1_at_58_6:O C1_at_59_6:O C1_at_510_6:O C1_at_511_6:O C1_at_512_6:O C1_at_513_6:O C1_at_514_6:O C1_at_515_6:O C1_at_516_6:O C1_at_517_6:O C1_at_518_6:O C1_at_519_6:O C1_at_520_6:O C1_at_521_6:O C1_at_522_6:O C1_at_523_6:O C1_at_524_6:O C1_at_525_6:O C1_at_526_6:O C1_at_527_6:O C1_at_528_6:O C1_at_529_6:O C1_at_530_6:O C1_at_531_6:O C1_af_50_6:O C1_af_51_6:O C1_af_52_6:O C1_af_53_6:O C1_af_54_6:O C1_af_55_6:O C1_af_56_6:O C1_af_57_6:O C1_af_58_6:O C1_af_59_6:O C1_af_510_6:O C1_af_511_6:O C1_af_512_6:O C1_af_513_6:O C1_af_514_6:O C1_af_515_6:O C1_af_516_6:O C1_af_517_6:O C1_af_518_6:O C1_af_519_6:O C1_af_520_6:O C1_af_521_6:O C1_af_522_6:O C1_af_523_6:O C1_af_524_6:O C1_af_525_6:O C1_af_526_6:O C1_af_527_6:O C1_af_528_6:O C1_af_529_6:O C1_af_530_6:O C1_af_531_6:O C1_aa:I C2_at_50_6:O C2_at_51_6:O C2_at_52_6:O C2_at_53_6:O C2_at_54_6:O C2_at_55_6:O C2_at_56_6:O C2_at_57_6:O C2_at_58_6:O C2_at_59_6:O C2_at_510_6:O C2_at_511_6:O C2_at_512_6:O C2_at_513_6:O C2_at_514_6:O C2_at_515_6:O C2_at_516_6:O C2_at_517_6:O C2_at_518_6:O C2_at_519_6:O C2_at_520_6:O C2_at_521_6:O C2_at_522_6:O C2_at_523_6:O C2_at_524_6:O C2_at_525_6:O C2_at_526_6:O C2_at_527_6:O C2_at_528_6:O C2_at_529_6:O C2_at_530_6:O C2_at_531_6:O C2_af_50_6:O C2_af_51_6:O C2_af_52_6:O C2_af_53_6:O C2_af_54_6:O C2_af_55_6:O C2_af_56_6:O C2_af_57_6:O C2_af_58_6:O C2_af_59_6:O C2_af_510_6:O C2_af_511_6:O C2_af_512_6:O C2_af_513_6:O C2_af_514_6:O C2_af_515_6:O C2_af_516_6:O C2_af_517_6:O C2_af_518_6:O C2_af_519_6:O C2_af_520_6:O C2_af_521_6:O C2_af_522_6:O C2_af_523_6:O C2_af_524_6:O C2_af_525_6:O C2_af_526_6:O C2_af_527_6:O C2_af_528_6:O C2_af_529_6:O C2_af_530_6:O C2_af_531_6:O C2_aa:I C3_at_50_6:O C3_at_51_6:O C3_at_52_6:O C3_at_53_6:O C3_at_54_6:O C3_at_55_6:O C3_at_56_6:O C3_at_57_6:O C3_at_58_6:O C3_at_59_6:O C3_at_510_6:O C3_at_511_6:O C3_at_512_6:O C3_at_513_6:O C3_at_514_6:O C3_at_515_6:O C3_at_516_6:O C3_at_517_6:O C3_at_518_6:O C3_at_519_6:O C3_at_520_6:O C3_at_521_6:O C3_at_522_6:O C3_at_523_6:O C3_at_524_6:O C3_at_525_6:O C3_at_526_6:O C3_at_527_6:O C3_at_528_6:O C3_at_529_6:O C3_at_530_6:O C3_at_531_6:O C3_af_50_6:O C3_af_51_6:O C3_af_52_6:O C3_af_53_6:O C3_af_54_6:O C3_af_55_6:O C3_af_56_6:O C3_af_57_6:O C3_af_58_6:O C3_af_59_6:O C3_af_510_6:O C3_af_511_6:O C3_af_512_6:O C3_af_513_6:O C3_af_514_6:O C3_af_515_6:O C3_af_516_6:O C3_af_517_6:O C3_af_518_6:O C3_af_519_6:O C3_af_520_6:O C3_af_521_6:O C3_af_522_6:O C3_af_523_6:O C3_af_524_6:O C3_af_525_6:O C3_af_526_6:O C3_af_527_6:O C3_af_528_6:O C3_af_529_6:O C3_af_530_6:O C3_af_531_6:O C3_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __i__a (state-holding): pup_reff=1.6; pdn_reff=2.66667
* cd0_aI_aa (combinational)
* cd1_aI_aa (combinational)
* cd2_aI_aa (combinational)
* cd3_aI_aa (combinational)
* __ch__a (state-holding): pup_reff=1.6; pdn_reff=2.66667
* cd0_aC_aa (combinational)
* cd1_aC_aa (combinational)
* cd2_aC_aa (combinational)
* cd3_aC_aa (combinational)
* I_aa (combinational)
* Ch_aa (combinational)
*
* --- end node flags ---
*
M0_ Vdd cd0_aI_aa #12 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd cd0_aC_aa #23 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __i__a I_aa Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __ch__a Ch_aa Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __i__a #fb26# Vdd pmos W=0.1625U L=0.13U
M5_ Vdd __ch__a #fb29# Vdd pmos W=0.1625U L=0.13U
M6_keeper Vdd GND #27 Vdd pmos W=0.0975U L=1.235U
M7_keeper Vdd GND #30 Vdd pmos W=0.0975U L=1.235U
M8_ GND cd0_aI_aa #5 GND nmos W=0.0975U L=0.065U
M9_ GND cd0_aC_aa #16 GND nmos W=0.0975U L=0.065U
M10_ GND __i__a I_aa GND nmos W=0.0975U L=0.065U
M11_ GND __ch__a Ch_aa GND nmos W=0.0975U L=0.065U
M12_ GND __i__a #fb26# GND nmos W=0.0975U L=0.13U
M13_ GND __ch__a #fb29# GND nmos W=0.0975U L=0.13U
M14_keeper GND Vdd #28 GND nmos W=0.0975U L=3.055U
M15_keeper GND Vdd #31 GND nmos W=0.0975U L=3.055U
M16_ #3 cd3_aI_aa __i__a GND nmos W=0.0975U L=0.065U
M17_ #10 cd3_aI_aa __i__a Vdd pmos W=0.1625U L=0.065U
M18_keeper #27 #fb26# __i__a Vdd pmos W=0.0975U L=0.065U
M19_keeper #28 #fb26# __i__a GND nmos W=0.0975U L=0.065U
M20_ #4 cd2_aI_aa #3 GND nmos W=0.0975U L=0.065U
M21_ #5 cd1_aI_aa #4 GND nmos W=0.0975U L=0.065U
M22_ #11 cd2_aI_aa #10 Vdd pmos W=0.1625U L=0.065U
M23_ #12 cd1_aI_aa #11 Vdd pmos W=0.1625U L=0.065U
M24_ #14 cd3_aC_aa __ch__a GND nmos W=0.0975U L=0.065U
M25_ #21 cd3_aC_aa __ch__a Vdd pmos W=0.1625U L=0.065U
M26_keeper #30 #fb29# __ch__a Vdd pmos W=0.0975U L=0.065U
M27_keeper #31 #fb29# __ch__a GND nmos W=0.0975U L=0.065U
M28_ #15 cd2_aC_aa #14 GND nmos W=0.0975U L=0.065U
M29_ #16 cd1_aC_aa #15 GND nmos W=0.0975U L=0.065U
M30_ #22 cd2_aC_aa #21 Vdd pmos W=0.1625U L=0.065U
M31_ #23 cd1_aC_aa #22 Vdd pmos W=0.1625U L=0.065U
xcd1 reset Ch_at_52_6 Ch_af_52_6 cd1_aC_aa I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6
+ I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6
+ I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6
+ I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6
+ I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6
+ I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6
+ I_af_531_6 cd1_aI_aa C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6
+ C1_at_57_6 C1_at_58_6 C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6
+ C1_at_516_6 C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6
+ C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6
+ C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6
+ C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6
+ C1_af_520_6 C1_af_521_6 C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6
+ C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa ChildDispatch
xcd3 reset Ch_at_50_6 Ch_af_50_6 cd3_aC_aa I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6
+ I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6
+ I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6
+ I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6
+ I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6
+ I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6
+ I_af_531_6 cd3_aI_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6
+ C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6
+ C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6
+ C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6
+ C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6
+ C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6
+ C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa ChildDispatch
xcd2 reset Ch_at_51_6 Ch_af_51_6 cd2_aC_aa I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6
+ I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6
+ I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6
+ I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6
+ I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6
+ I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6
+ I_af_531_6 cd2_aI_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6
+ C2_at_57_6 C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6
+ C2_at_516_6 C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6
+ C2_at_525_6 C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6
+ C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6
+ C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6
+ C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6
+ C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa ChildDispatch
xcd0 reset Ch_at_53_6 Ch_af_53_6 cd0_aC_aa I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6
+ I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6
+ I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6
+ I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6
+ I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6
+ I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6
+ I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6
+ I_af_531_6 cd0_aI_aa C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6
+ C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6
+ C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6
+ C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6
+ C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6
+ C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6 C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6
+ C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6 C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6
+ C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa ChildDispatch
.ends
*---- end of process: PayloadDispatch<> -----
*
*---- act defproc: Merge<4,f> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a
*
.subckt Merge_34_7f_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6
+ I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa
+ O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
*.PININFO I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I
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
M8_ Vdd I0_at_53_6 #36 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd I0_af_53_6 #38 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd n__I0__a I0_aa Vdd pmos W=0.1625U L=0.065U
M11_ Vdd n__I1__a I1_aa Vdd pmos W=0.1625U L=0.065U
M12_ Vdd n__O__t_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd n__O__f_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd n__O__t_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd n__O__f_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd n__O__t_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd n__O__f_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd n__O__t_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd n__O__f_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd n__I0__a #fb49# Vdd pmos W=0.1625U L=0.13U
M21_ Vdd n__I1__a #fb52# Vdd pmos W=0.1625U L=0.13U
M22_keeper Vdd GND #50 Vdd pmos W=0.0975U L=0.585U
M23_keeper Vdd GND #53 Vdd pmos W=0.0975U L=0.585U
M24_ GND O_aa #3 GND nmos W=0.0975U L=0.065U
M25_ GND O_aa #8 GND nmos W=0.0975U L=0.065U
M26_ GND I0_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M27_ GND I1_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M28_ GND I0_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M29_ GND I1_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M30_ GND I0_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M31_ GND I1_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M32_ GND I0_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M33_ GND I1_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M34_ GND I0_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M35_ GND I1_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M36_ GND I0_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M37_ GND I1_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M38_ GND I0_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M39_ GND I1_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M40_ GND I0_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M41_ GND I1_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M42_ GND n__I0__a I0_aa GND nmos W=0.0975U L=0.065U
M43_ GND n__I1__a I1_aa GND nmos W=0.0975U L=0.065U
M44_ GND n__O__t_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M45_ GND n__O__f_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M46_ GND n__O__t_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M47_ GND n__O__f_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M48_ GND n__O__t_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M49_ GND n__O__f_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M50_ GND n__O__t_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M51_ GND n__O__f_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M52_ GND n__I0__a #fb49# GND nmos W=0.0975U L=0.13U
M53_ GND n__I1__a #fb52# GND nmos W=0.0975U L=0.13U
M54_keeper GND Vdd #51 GND nmos W=0.0975U L=0.715U
M55_keeper GND Vdd #54 GND nmos W=0.0975U L=0.715U
M56_ #3 I0_at_53_6 n__I0__a GND nmos W=0.0975U L=0.065U
M57_ #3 I0_af_53_6 n__I0__a GND nmos W=0.0975U L=0.065U
M58_keeper #50 #fb49# n__I0__a Vdd pmos W=0.0975U L=0.065U
M59_keeper #51 #fb49# n__I0__a GND nmos W=0.0975U L=0.065U
M60_ #8 I1_at_53_6 n__I1__a GND nmos W=0.0975U L=0.065U
M61_ #8 I1_af_53_6 n__I1__a GND nmos W=0.0975U L=0.065U
M62_keeper #53 #fb52# n__I1__a Vdd pmos W=0.0975U L=0.065U
M63_keeper #54 #fb52# n__I1__a GND nmos W=0.0975U L=0.065U
M64_ #14 I1_at_50_6 n__O__t_50_6 Vdd pmos W=0.1625U L=0.065U
M65_ #18 I1_af_50_6 n__O__f_50_6 Vdd pmos W=0.1625U L=0.065U
M66_ #22 I1_at_51_6 n__O__t_51_6 Vdd pmos W=0.1625U L=0.065U
M67_ #26 I1_af_51_6 n__O__f_51_6 Vdd pmos W=0.1625U L=0.065U
M68_ #30 I1_at_52_6 n__O__t_52_6 Vdd pmos W=0.1625U L=0.065U
M69_ #34 I1_af_52_6 n__O__f_52_6 Vdd pmos W=0.1625U L=0.065U
M70_ #36 I1_at_53_6 n__O__t_53_6 Vdd pmos W=0.1625U L=0.065U
M71_ #38 I1_af_53_6 n__O__f_53_6 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: Merge<4,f> -----
*
*---- act defproc: HalfAdderP<> -----
* raw ports:  a.t a.f d.t d.f s.t s.f
*
.subckt HalfAdderP a_at a_af d_at d_af s_at s_af
*.PININFO a_at:I a_af:I d_at:O d_af:O s_at:O s_af:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __dt (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __df (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __st (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __sf (state-holding): pup_reff=0.8; pdn_reff=0.666667
* d_at (combinational)
* d_af (combinational)
* s_at (combinational)
* s_af (combinational)
*
* --- end node flags ---
*
M0_ Vdd a_at #4 Vdd pmos W=0.325U L=0.065U
M1_ Vdd a_at #7 Vdd pmos W=0.325U L=0.065U
M2_ Vdd a_at #9 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd a_at #11 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __dt d_at Vdd pmos W=0.325U L=0.065U
M5_ Vdd __df d_af Vdd pmos W=0.325U L=0.065U
M6_ Vdd __st s_at Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __sf s_af Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __dt #fb16# Vdd pmos W=0.1625U L=0.13U
M9_ Vdd __df #fb19# Vdd pmos W=0.1625U L=0.13U
M10_keeper Vdd GND #17 Vdd pmos W=0.0975U L=0.26U
M11_ Vdd __st #fb22# Vdd pmos W=0.1625U L=0.13U
M12_keeper Vdd GND #20 Vdd pmos W=0.0975U L=0.26U
M13_ Vdd __sf #fb25# Vdd pmos W=0.1625U L=0.13U
M14_keeper Vdd GND #23 Vdd pmos W=0.0975U L=0.26U
M15_keeper Vdd GND #26 Vdd pmos W=0.0975U L=0.26U
M16_ GND a_at __dt GND nmos W=0.195U L=0.065U
M17_ GND a_af __df GND nmos W=0.195U L=0.065U
M18_ GND a_af __st GND nmos W=0.0975U L=0.065U
M19_ GND a_at __sf GND nmos W=0.0975U L=0.065U
M20_ GND __dt d_at GND nmos W=0.2925U L=0.065U
M21_ GND __df d_af GND nmos W=0.2925U L=0.065U
M22_ GND __st s_at GND nmos W=0.0975U L=0.065U
M23_ GND __sf s_af GND nmos W=0.0975U L=0.065U
M24_ GND __dt #fb16# GND nmos W=0.0975U L=0.13U
M25_ GND __df #fb19# GND nmos W=0.0975U L=0.13U
M26_keeper GND Vdd #18 GND nmos W=0.0975U L=1.495U
M27_ GND __st #fb22# GND nmos W=0.0975U L=0.13U
M28_keeper GND Vdd #21 GND nmos W=0.0975U L=1.495U
M29_ GND __sf #fb25# GND nmos W=0.0975U L=0.13U
M30_keeper GND Vdd #24 GND nmos W=0.0975U L=1.495U
M31_keeper GND Vdd #27 GND nmos W=0.0975U L=1.495U
M32_ #4 a_af __dt Vdd pmos W=0.325U L=0.065U
M33_keeper #17 #fb16# __dt Vdd pmos W=0.0975U L=0.065U
M34_keeper #18 #fb16# __dt GND nmos W=0.0975U L=0.065U
M35_ #7 a_af __df Vdd pmos W=0.325U L=0.065U
M36_keeper #20 #fb19# __df Vdd pmos W=0.0975U L=0.065U
M37_keeper #21 #fb19# __df GND nmos W=0.0975U L=0.065U
M38_ #9 a_af __st Vdd pmos W=0.1625U L=0.065U
M39_keeper #23 #fb22# __st Vdd pmos W=0.0975U L=0.065U
M40_keeper #24 #fb22# __st GND nmos W=0.0975U L=0.065U
M41_ #11 a_af __sf Vdd pmos W=0.1625U L=0.065U
M42_keeper #26 #fb25# __sf Vdd pmos W=0.0975U L=0.065U
M43_keeper #27 #fb25# __sf GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: HalfAdderP<> -----
*
*---- act defproc: FullAdderP<> -----
* raw ports:  a.t a.f c.t c.f d.t d.f s.t s.f
*
.subckt FullAdderP a_at a_af c_at c_af d_at d_af s_at s_af
*.PININFO a_at:I a_af:I c_at:I c_af:I d_at:O d_af:O s_at:O s_af:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __dt (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __df (state-holding): pup_reff=1.6; pdn_reff=1.33333
* __st (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __sf (state-holding): pup_reff=0.8; pdn_reff=1.33333
* d_at (combinational)
* d_af (combinational)
* s_at (combinational)
* s_af (combinational)
*
* --- end node flags ---
*
M0_ Vdd a_at #7 Vdd pmos W=0.65U L=0.065U
M1_ Vdd a_at #14 Vdd pmos W=0.65U L=0.065U
M2_ Vdd c_at #18 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd c_at #21 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __dt d_at Vdd pmos W=0.325U L=0.065U
M5_ Vdd __df d_af Vdd pmos W=0.325U L=0.065U
M6_ Vdd __st s_at Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __sf s_af Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __dt #fb26# Vdd pmos W=0.1625U L=0.13U
M9_ Vdd __df #fb29# Vdd pmos W=0.1625U L=0.13U
M10_keeper Vdd GND #27 Vdd pmos W=0.0975U L=0.26U
M11_ Vdd __st #fb32# Vdd pmos W=0.1625U L=0.13U
M12_keeper Vdd GND #30 Vdd pmos W=0.0975U L=0.585U
M13_ Vdd __sf #fb35# Vdd pmos W=0.1625U L=0.13U
M14_keeper Vdd GND #33 Vdd pmos W=0.0975U L=0.585U
M15_keeper Vdd GND #36 Vdd pmos W=0.0975U L=0.585U
M16_ GND a_at __dt GND nmos W=0.195U L=0.065U
M17_ GND c_at __dt GND nmos W=0.195U L=0.065U
M18_ GND a_af #11 GND nmos W=0.195U L=0.065U
M19_ GND c_at #16 GND nmos W=0.0975U L=0.065U
M20_ GND c_af #17 GND nmos W=0.0975U L=0.065U
M21_ GND c_af #20 GND nmos W=0.0975U L=0.065U
M22_ GND a_af #20 GND nmos W=0.0975U L=0.065U
M23_ GND __dt d_at GND nmos W=0.2925U L=0.065U
M24_ GND __df d_af GND nmos W=0.2925U L=0.065U
M25_ GND __st s_at GND nmos W=0.0975U L=0.065U
M26_ GND __sf s_af GND nmos W=0.0975U L=0.065U
M27_ GND __dt #fb26# GND nmos W=0.0975U L=0.13U
M28_ GND __df #fb29# GND nmos W=0.0975U L=0.13U
M29_keeper GND Vdd #28 GND nmos W=0.0975U L=3.055U
M30_ GND __st #fb32# GND nmos W=0.0975U L=0.13U
M31_keeper GND Vdd #31 GND nmos W=0.0975U L=3.055U
M32_ GND __sf #fb35# GND nmos W=0.0975U L=0.13U
M33_keeper GND Vdd #34 GND nmos W=0.0975U L=1.495U
M34_keeper GND Vdd #37 GND nmos W=0.0975U L=1.495U
M35_ #5 c_af __dt Vdd pmos W=0.65U L=0.065U
M36_keeper #27 #fb26# __dt Vdd pmos W=0.0975U L=0.065U
M37_keeper #28 #fb26# __dt GND nmos W=0.0975U L=0.065U
M38_ #6 c_at #5 Vdd pmos W=0.65U L=0.065U
M39_ #7 a_af #6 Vdd pmos W=0.65U L=0.065U
M40_ #11 c_af __df GND nmos W=0.195U L=0.065U
M41_ #12 c_af __df Vdd pmos W=0.65U L=0.065U
M42_keeper #30 #fb29# __df Vdd pmos W=0.0975U L=0.065U
M43_keeper #31 #fb29# __df GND nmos W=0.0975U L=0.065U
M44_ #13 c_at #12 Vdd pmos W=0.65U L=0.065U
M45_ #14 a_af #13 Vdd pmos W=0.65U L=0.065U
M46_ #16 a_at __st GND nmos W=0.0975U L=0.065U
M47_ #17 a_af __st GND nmos W=0.0975U L=0.065U
M48_ #18 c_af __st Vdd pmos W=0.1625U L=0.065U
M49_keeper #33 #fb32# __st Vdd pmos W=0.0975U L=0.065U
M50_keeper #34 #fb32# __st GND nmos W=0.0975U L=0.065U
M51_ #20 c_at __sf GND nmos W=0.0975U L=0.065U
M52_ #20 a_at __sf GND nmos W=0.0975U L=0.065U
M53_ #21 c_af __sf Vdd pmos W=0.1625U L=0.065U
M54_keeper #36 #fb35# __sf Vdd pmos W=0.0975U L=0.065U
M55_keeper #37 #fb35# __sf GND nmos W=0.0975U L=0.065U
.ends
*---- end of process: FullAdderP<> -----
*
*---- act defproc: CounterDec<> -----
* raw ports:  I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7]
*
.subckt CounterDec I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_af_50_6
+ I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 O_at_50_6 O_at_51_6 O_at_52_6
+ O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6
+ O_af_55_6 O_af_56_6 O_af_57_6
*.PININFO I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xha I_at_50_6 I_af_50_6 ha_ad_at ha_ad_af O_at_50_6 O_af_50_6 HalfAdderP
xfa1 I_at_51_6 I_af_51_6 ha_ad_at ha_ad_af fa1_ad_at fa1_ad_af O_at_51_6 O_af_51_6 FullAdderP
xfa5 I_at_55_6 I_af_55_6 fa4_ad_at fa4_ad_af fa5_ad_at fa5_ad_af O_at_55_6 O_af_55_6 FullAdderP
xfa7 I_at_57_6 I_af_57_6 fa6_ad_at fa6_ad_af fa7_ad_at fa7_ad_af O_at_57_6 O_af_57_6 FullAdderP
xfa6 I_at_56_6 I_af_56_6 fa5_ad_at fa5_ad_af fa6_ad_at fa6_ad_af O_at_56_6 O_af_56_6 FullAdderP
xfa2 I_at_52_6 I_af_52_6 fa1_ad_at fa1_ad_af fa2_ad_at fa2_ad_af O_at_52_6 O_af_52_6 FullAdderP
xfa3 I_at_53_6 I_af_53_6 fa2_ad_at fa2_ad_af fa3_ad_at fa3_ad_af O_at_53_6 O_af_53_6 FullAdderP
xfa4 I_at_54_6 I_af_54_6 fa3_ad_at fa3_ad_af fa4_ad_at fa4_ad_af O_at_54_6 O_af_54_6 FullAdderP
.ends
*---- end of process: CounterDec<> -----
*
*---- act defproc: ChildServer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Cnt.req Cnt.t[0] Cnt.t[1] Cnt.t[2] Cnt.t[3] Cnt.t[4] Cnt.t[5] Cnt.t[6] Cnt.t[7] Cnt.f[0] Cnt.f[1] Cnt.f[2] Cnt.f[3] Cnt.f[4] Cnt.f[5] Cnt.f[6] Cnt.f[7] R.req R.t[0] R.t[1] R.t[2] R.t[3] R.t[4] R.t[5] R.t[6] R.t[7] R.f[0] R.f[1] R.f[2] R.f[3] R.f[4] R.f[5] R.f[6] R.f[7] Od.t[0] Od.t[1] Od.t[2] Od.t[3] Od.f[0] Od.f[1] Od.f[2] Od.f[3] Od.a Oc.t[0] Oc.t[1] Oc.t[2] Oc.t[3] Oc.f[0] Oc.f[1] Oc.f[2] Oc.f[3] Oc.a W.t[0] W.t[1] W.t[2] W.t[3] W.t[4] W.t[5] W.t[6] W.t[7] W.f[0] W.f[1] W.f[2] W.f[3] W.f[4] W.f[5] W.f[6] W.f[7] W.a A.req A.a
*
.subckt ChildServer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6
+ I_aa Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6
+ Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6
+ R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6
+ R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6 Od_at_50_6 Od_at_51_6 Od_at_52_6 Od_at_53_6
+ Od_af_50_6 Od_af_51_6 Od_af_52_6 Od_af_53_6 Od_aa Oc_at_50_6 Oc_at_51_6 Oc_at_52_6 Oc_at_53_6 Oc_af_50_6
+ Oc_af_51_6 Oc_af_52_6 Oc_af_53_6 Oc_aa W_at_50_6 W_at_51_6 W_at_52_6 W_at_53_6 W_at_54_6 W_at_55_6
+ W_at_56_6 W_at_57_6 W_af_50_6 W_af_51_6 W_af_52_6 W_af_53_6 W_af_54_6 W_af_55_6 W_af_56_6 W_af_57_6 W_aa
+ A_areq A_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O Cnt_areq:O Cnt_at_50_6:I Cnt_at_51_6:I Cnt_at_52_6:I Cnt_at_53_6:I Cnt_at_54_6:I Cnt_at_55_6:I Cnt_at_56_6:I Cnt_at_57_6:I Cnt_af_50_6:I Cnt_af_51_6:I Cnt_af_52_6:I Cnt_af_53_6:I Cnt_af_54_6:I Cnt_af_55_6:I Cnt_af_56_6:I Cnt_af_57_6:I R_areq:O R_at_50_6:I R_at_51_6:I R_at_52_6:I R_at_53_6:I R_at_54_6:I R_at_55_6:I R_at_56_6:I R_at_57_6:I R_af_50_6:I R_af_51_6:I R_af_52_6:I R_af_53_6:I R_af_54_6:I R_af_55_6:I R_af_56_6:I R_af_57_6:I Od_at_50_6:O Od_at_51_6:O Od_at_52_6:O Od_at_53_6:O Od_af_50_6:O Od_af_51_6:O Od_af_52_6:O Od_af_53_6:O Od_aa:I Oc_at_50_6:O Oc_at_51_6:O Oc_at_52_6:O Oc_at_53_6:O Oc_af_50_6:O Oc_af_51_6:O Oc_af_52_6:O Oc_af_53_6:O Oc_aa:I W_at_50_6:O W_at_51_6:O W_at_52_6:O W_at_53_6:O W_at_54_6:O W_at_55_6:O W_at_56_6:O W_at_57_6:O W_af_50_6:O W_af_51_6:O W_af_52_6:O W_af_53_6:O W_af_54_6:O W_af_55_6:O W_af_56_6:O W_af_57_6:O W_aa:I A_areq:I A_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* x_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_50_6 (combinational)
* __q_50_6 (combinational)
* __rf_50_6 (combinational)
* q_50_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_51_6 (combinational)
* __q_51_6 (combinational)
* __rf_51_6 (combinational)
* q_51_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_52_6 (combinational)
* __q_52_6 (combinational)
* __rf_52_6 (combinational)
* q_52_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_53_6 (combinational)
* __q_53_6 (combinational)
* __rf_53_6 (combinational)
* q_53_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_54_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_54_6 (combinational)
* __q_54_6 (combinational)
* __rf_54_6 (combinational)
* q_54_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_55_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_55_6 (combinational)
* __q_55_6 (combinational)
* __rf_55_6 (combinational)
* q_55_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_56_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_56_6 (combinational)
* __q_56_6 (combinational)
* __rf_56_6 (combinational)
* q_56_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* x_57_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __rt_57_6 (combinational)
* __q_57_6 (combinational)
* __rf_57_6 (combinational)
* q_57_6 (state-holding): pup_reff=0.4; pdn_reff=0.666667
* __y_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __y_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __y_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __y_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* z_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* z_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __u (state-holding): pup_reff=0.8; pdn_reff=1.33333
* s (state-holding): pup_reff=0.8; pdn_reff=2
* __rr (combinational)
* __h_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_50_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_50_6 (combinational)
* __h_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_51_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_51_6 (combinational)
* __h_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_52_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_52_6 (combinational)
* __h_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_53_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_53_6 (combinational)
* l_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* l_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* p0 (combinational)
* A_aa (state-holding): pup_reff=0.8; pdn_reff=1.33333
* e_50_6 (combinational)
* e_51_6 (combinational)
* e_52_6 (combinational)
* e_53_6 (combinational)
* e_54_6 (combinational)
* e_55_6 (combinational)
* e_56_6 (combinational)
* e_57_6 (combinational)
* __f_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __f_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __f_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __f_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* g_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* g_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __m (state-holding): pup_reff=0.8; pdn_reff=1.33333
* j (state-holding): pup_reff=1.2; pdn_reff=2
* __s (combinational)
* __v_50_6 (combinational)
* __it_50_6 (combinational)
* __if_50_6 (combinational)
* __v_51_6 (combinational)
* __it_51_6 (combinational)
* __if_51_6 (combinational)
* __v_52_6 (combinational)
* __it_52_6 (combinational)
* __if_52_6 (combinational)
* __v_53_6 (combinational)
* __it_53_6 (combinational)
* __if_53_6 (combinational)
* t_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* t_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* R_areq (state-holding): pup_reff=2.8; pdn_reff=0.666667
* __ar (combinational)
* __p0 (state-holding): pup_reff=1.2; pdn_reff=1.33333
* __oca (combinational)
* __oda (combinational)
* __wa (combinational)
* __r (combinational)
* p1 (state-holding): pup_reff=4; pdn_reff=0.666667
* __j (combinational)
* __ia (state-holding): pup_reff=0.4; pdn_reff=2
* Cnt_areq (state-holding): pup_reff=0.4; pdn_reff=2
* __p1 (combinational)
* dec_aI_at_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* I_aa (combinational)
* dec_aI_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_54_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_54_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_55_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_55_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_56_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_56_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_at_57_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* dec_aI_af_57_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_at_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_at_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_af_50_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_at_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_at_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_at_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_at_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_at_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Od_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_at_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* Oc_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* __wt_50_6 (combinational)
* dec_aO_at_50_6 (combinational)
* __wf_50_6 (combinational)
* dec_aO_af_50_6 (combinational)
* W_at_50_6 (combinational)
* W_af_50_6 (combinational)
* __wt_51_6 (combinational)
* dec_aO_at_51_6 (combinational)
* __wf_51_6 (combinational)
* dec_aO_af_51_6 (combinational)
* W_at_51_6 (combinational)
* W_af_51_6 (combinational)
* __wt_52_6 (combinational)
* dec_aO_at_52_6 (combinational)
* __wf_52_6 (combinational)
* dec_aO_af_52_6 (combinational)
* W_at_52_6 (combinational)
* W_af_52_6 (combinational)
* __wt_53_6 (combinational)
* dec_aO_at_53_6 (combinational)
* __wf_53_6 (combinational)
* dec_aO_af_53_6 (combinational)
* W_at_53_6 (combinational)
* W_af_53_6 (combinational)
* __wt_54_6 (combinational)
* dec_aO_at_54_6 (combinational)
* __wf_54_6 (combinational)
* dec_aO_af_54_6 (combinational)
* W_at_54_6 (combinational)
* W_af_54_6 (combinational)
* __wt_55_6 (combinational)
* dec_aO_at_55_6 (combinational)
* __wf_55_6 (combinational)
* dec_aO_af_55_6 (combinational)
* W_at_55_6 (combinational)
* W_af_55_6 (combinational)
* __wt_56_6 (combinational)
* dec_aO_at_56_6 (combinational)
* __wf_56_6 (combinational)
* dec_aO_af_56_6 (combinational)
* W_at_56_6 (combinational)
* W_af_56_6 (combinational)
* __wt_57_6 (combinational)
* dec_aO_at_57_6 (combinational)
* __wf_57_6 (combinational)
* dec_aO_af_57_6 (combinational)
* W_at_57_6 (combinational)
* W_af_57_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd __rt_50_6 #3 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd __rf_50_6 #6 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd __rt_51_6 #11 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd __rf_51_6 #14 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __rt_52_6 #19 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __rf_52_6 #22 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd __rt_53_6 #27 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __rf_53_6 #30 Vdd pmos W=0.1625U L=0.065U
M8_ Vdd __rt_54_6 #35 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __rf_54_6 #38 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __rt_55_6 #43 Vdd pmos W=0.1625U L=0.065U
M11_ Vdd __rf_55_6 #46 Vdd pmos W=0.1625U L=0.065U
M12_ Vdd __rt_56_6 #51 Vdd pmos W=0.1625U L=0.065U
M13_ Vdd __rf_56_6 #54 Vdd pmos W=0.1625U L=0.065U
M14_ Vdd __rt_57_6 #59 Vdd pmos W=0.1625U L=0.065U
M15_ Vdd __rf_57_6 #62 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd x_51_6 #68 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd x_53_6 #71 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd x_55_6 #74 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd x_57_6 #77 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd __y_51_6 #79 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd __y_53_6 #82 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd z_51_6 #86 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd __rr #88 Vdd pmos W=0.325U L=0.065U
M24_ Vdd I_at_50_6 #97 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd I_at_51_6 #105 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I_at_52_6 #113 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd I_at_53_6 #121 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd __h_51_6 #123 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd __h_53_6 #126 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd R_at_50_6 #134 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd R_at_51_6 #138 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd R_at_52_6 #142 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd R_at_53_6 #146 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd R_at_54_6 #150 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd R_at_55_6 #154 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd R_at_56_6 #158 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd R_at_57_6 #162 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd e_51_6 #167 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd e_53_6 #170 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd e_55_6 #173 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd e_57_6 #176 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd __f_51_6 #178 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd __f_53_6 #181 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd g_51_6 #185 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd __s #188 Vdd pmos W=0.65U L=0.065U
M46_ Vdd __it_50_6 __v_50_6 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd __if_50_6 __v_50_6 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd __it_51_6 __v_51_6 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd __if_51_6 __v_51_6 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd __it_52_6 __v_52_6 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd __if_52_6 __v_52_6 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd __it_53_6 __v_53_6 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd __if_53_6 __v_53_6 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd __v_51_6 #207 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd __v_53_6 #210 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd __ar #220 Vdd pmos W=0.65U L=0.065U
M57_ Vdd __oca #228 Vdd pmos W=0.65U L=0.065U
M58_ Vdd __r __p0 Vdd pmos W=0.65U L=0.065U
M59_ Vdd A_aa #235 Vdd pmos W=0.65U L=0.065U
M60_ Vdd j __ia Vdd pmos W=0.1625U L=0.065U
M61_ Vdd __p1 Cnt_areq Vdd pmos W=0.1625U L=0.065U
M62_ Vdd __wa #251 Vdd pmos W=0.325U L=0.065U
M63_ Vdd __rt_50_6 q_50_6 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd __p0 #256 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd __p0 #261 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd __rt_51_6 q_51_6 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd __p0 #265 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd __p0 #269 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd __rt_52_6 q_52_6 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd __p0 #273 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd __p0 #277 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd __rt_53_6 q_53_6 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd __p0 #281 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd __p0 #285 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd __rt_54_6 q_54_6 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd __p0 #289 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd __p0 #293 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd __rt_55_6 q_55_6 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd __p0 #297 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd __p0 #301 Vdd pmos W=0.1625U L=0.065U
M81_ Vdd __rt_56_6 q_56_6 Vdd pmos W=0.1625U L=0.065U
M82_ Vdd __p0 #305 Vdd pmos W=0.1625U L=0.065U
M83_ Vdd __p0 #309 Vdd pmos W=0.1625U L=0.065U
M84_ Vdd __rt_57_6 q_57_6 Vdd pmos W=0.1625U L=0.065U
M85_ Vdd __p0 #313 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd __p0 #317 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd __p0 #319 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd __p0 #325 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd __p0 #329 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd __p0 #333 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd __p0 #337 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd __p0 #339 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd __p0 #345 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd __p0 #349 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd __p0 #353 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd __p0 #357 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd __p0 #359 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd __p0 #365 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd __p0 #369 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd __p0 #373 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd __p0 #377 Vdd pmos W=0.1625U L=0.065U
M102_ Vdd __p0 #379 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd __p0 #385 Vdd pmos W=0.1625U L=0.065U
M104_ Vdd __p0 #389 Vdd pmos W=0.1625U L=0.065U
M105_ Vdd __p0 #393 Vdd pmos W=0.1625U L=0.065U
M106_ Vdd __p0 #397 Vdd pmos W=0.1625U L=0.065U
M107_ Vdd Cnt_at_50_6 #399 Vdd pmos W=0.1625U L=0.065U
M108_ Vdd Cnt_af_50_6 #403 Vdd pmos W=0.1625U L=0.065U
M109_ Vdd __wt_50_6 W_at_50_6 Vdd pmos W=0.1625U L=0.065U
M110_ Vdd __wf_50_6 W_af_50_6 Vdd pmos W=0.1625U L=0.065U
M111_ Vdd Cnt_at_51_6 #409 Vdd pmos W=0.1625U L=0.065U
M112_ Vdd Cnt_af_51_6 #413 Vdd pmos W=0.1625U L=0.065U
M113_ Vdd __wt_51_6 W_at_51_6 Vdd pmos W=0.1625U L=0.065U
M114_ Vdd __wf_51_6 W_af_51_6 Vdd pmos W=0.1625U L=0.065U
M115_ Vdd Cnt_at_52_6 #419 Vdd pmos W=0.1625U L=0.065U
M116_ Vdd Cnt_af_52_6 #423 Vdd pmos W=0.1625U L=0.065U
M117_ Vdd __wt_52_6 W_at_52_6 Vdd pmos W=0.1625U L=0.065U
M118_ Vdd __wf_52_6 W_af_52_6 Vdd pmos W=0.1625U L=0.065U
M119_ Vdd Cnt_at_53_6 #429 Vdd pmos W=0.1625U L=0.065U
M120_ Vdd Cnt_af_53_6 #433 Vdd pmos W=0.1625U L=0.065U
M121_ Vdd __wt_53_6 W_at_53_6 Vdd pmos W=0.1625U L=0.065U
M122_ Vdd __wf_53_6 W_af_53_6 Vdd pmos W=0.1625U L=0.065U
M123_ Vdd Cnt_at_54_6 #439 Vdd pmos W=0.1625U L=0.065U
M124_ Vdd Cnt_af_54_6 #443 Vdd pmos W=0.1625U L=0.065U
M125_ Vdd __wt_54_6 W_at_54_6 Vdd pmos W=0.1625U L=0.065U
M126_ Vdd __wf_54_6 W_af_54_6 Vdd pmos W=0.1625U L=0.065U
M127_ Vdd Cnt_at_55_6 #449 Vdd pmos W=0.1625U L=0.065U
M128_ Vdd Cnt_af_55_6 #453 Vdd pmos W=0.1625U L=0.065U
M129_ Vdd __wt_55_6 W_at_55_6 Vdd pmos W=0.1625U L=0.065U
M130_ Vdd __wf_55_6 W_af_55_6 Vdd pmos W=0.1625U L=0.065U
M131_ Vdd Cnt_at_56_6 #459 Vdd pmos W=0.1625U L=0.065U
M132_ Vdd Cnt_af_56_6 #463 Vdd pmos W=0.1625U L=0.065U
M133_ Vdd __wt_56_6 W_at_56_6 Vdd pmos W=0.1625U L=0.065U
M134_ Vdd __wf_56_6 W_af_56_6 Vdd pmos W=0.1625U L=0.065U
M135_ Vdd Cnt_at_57_6 #469 Vdd pmos W=0.1625U L=0.065U
M136_ Vdd Cnt_af_57_6 #473 Vdd pmos W=0.1625U L=0.065U
M137_ Vdd __wt_57_6 W_at_57_6 Vdd pmos W=0.1625U L=0.065U
M138_ Vdd __wf_57_6 W_af_57_6 Vdd pmos W=0.1625U L=0.065U
M139_ Vdd A_areq __ar Vdd pmos W=0.325U L=0.065U
M140_ Vdd R_areq __rr Vdd pmos W=0.1625U L=0.065U
M141_ Vdd s __s Vdd pmos W=0.325U L=0.065U
M142_ Vdd j __j Vdd pmos W=0.1625U L=0.065U
M143_ Vdd p1 __p1 Vdd pmos W=0.1625U L=0.065U
M144_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M145_ Vdd Oc_aa __oca Vdd pmos W=0.1625U L=0.065U
M146_ Vdd Od_aa __oda Vdd pmos W=0.1625U L=0.065U
M147_ Vdd W_aa __wa Vdd pmos W=0.1625U L=0.065U
M148_ Vdd R_at_50_6 __rt_50_6 Vdd pmos W=0.1625U L=0.065U
M149_ Vdd R_af_50_6 __rf_50_6 Vdd pmos W=0.1625U L=0.065U
M150_ Vdd q_50_6 __q_50_6 Vdd pmos W=0.1625U L=0.065U
M151_ Vdd R_at_51_6 __rt_51_6 Vdd pmos W=0.1625U L=0.065U
M152_ Vdd R_af_51_6 __rf_51_6 Vdd pmos W=0.1625U L=0.065U
M153_ Vdd q_51_6 __q_51_6 Vdd pmos W=0.1625U L=0.065U
M154_ Vdd R_at_52_6 __rt_52_6 Vdd pmos W=0.1625U L=0.065U
M155_ Vdd R_af_52_6 __rf_52_6 Vdd pmos W=0.1625U L=0.065U
M156_ Vdd q_52_6 __q_52_6 Vdd pmos W=0.1625U L=0.065U
M157_ Vdd R_at_53_6 __rt_53_6 Vdd pmos W=0.1625U L=0.065U
M158_ Vdd R_af_53_6 __rf_53_6 Vdd pmos W=0.1625U L=0.065U
M159_ Vdd q_53_6 __q_53_6 Vdd pmos W=0.1625U L=0.065U
M160_ Vdd R_at_54_6 __rt_54_6 Vdd pmos W=0.1625U L=0.065U
M161_ Vdd R_af_54_6 __rf_54_6 Vdd pmos W=0.1625U L=0.065U
M162_ Vdd q_54_6 __q_54_6 Vdd pmos W=0.1625U L=0.065U
M163_ Vdd R_at_55_6 __rt_55_6 Vdd pmos W=0.1625U L=0.065U
M164_ Vdd R_af_55_6 __rf_55_6 Vdd pmos W=0.1625U L=0.065U
M165_ Vdd q_55_6 __q_55_6 Vdd pmos W=0.1625U L=0.065U
M166_ Vdd R_at_56_6 __rt_56_6 Vdd pmos W=0.1625U L=0.065U
M167_ Vdd R_af_56_6 __rf_56_6 Vdd pmos W=0.1625U L=0.065U
M168_ Vdd q_56_6 __q_56_6 Vdd pmos W=0.1625U L=0.065U
M169_ Vdd R_at_57_6 __rt_57_6 Vdd pmos W=0.1625U L=0.065U
M170_ Vdd R_af_57_6 __rf_57_6 Vdd pmos W=0.1625U L=0.065U
M171_ Vdd q_57_6 __q_57_6 Vdd pmos W=0.1625U L=0.065U
M172_ Vdd I_at_50_6 __it_50_6 Vdd pmos W=0.1625U L=0.065U
M173_ Vdd I_af_50_6 __if_50_6 Vdd pmos W=0.1625U L=0.065U
M174_ Vdd b_50_6 __b_50_6 Vdd pmos W=0.1625U L=0.065U
M175_ Vdd I_at_51_6 __it_51_6 Vdd pmos W=0.1625U L=0.065U
M176_ Vdd I_af_51_6 __if_51_6 Vdd pmos W=0.1625U L=0.065U
M177_ Vdd b_51_6 __b_51_6 Vdd pmos W=0.1625U L=0.065U
M178_ Vdd I_at_52_6 __it_52_6 Vdd pmos W=0.1625U L=0.065U
M179_ Vdd I_af_52_6 __if_52_6 Vdd pmos W=0.1625U L=0.065U
M180_ Vdd b_52_6 __b_52_6 Vdd pmos W=0.1625U L=0.065U
M181_ Vdd I_at_53_6 __it_53_6 Vdd pmos W=0.1625U L=0.065U
M182_ Vdd I_af_53_6 __if_53_6 Vdd pmos W=0.1625U L=0.065U
M183_ Vdd b_53_6 __b_53_6 Vdd pmos W=0.1625U L=0.065U
M184_ Vdd __p0 p0 Vdd pmos W=0.325U L=0.065U
M185_ Vdd __ia I_aa Vdd pmos W=0.65U L=0.065U
M186_ Vdd x_50_6 #fb479# Vdd pmos W=0.1625U L=0.13U
M187_ Vdd q_50_6 #fb482# Vdd pmos W=0.1625U L=0.13U
M188_keeper Vdd GND #480 Vdd pmos W=0.0975U L=0.585U
M189_ Vdd x_51_6 #fb485# Vdd pmos W=0.1625U L=0.13U
M190_keeper Vdd GND #483 Vdd pmos W=0.0975U L=0.26U
M191_ Vdd q_51_6 #fb488# Vdd pmos W=0.1625U L=0.13U
M192_keeper Vdd GND #486 Vdd pmos W=0.0975U L=0.585U
M193_ Vdd x_52_6 #fb491# Vdd pmos W=0.1625U L=0.13U
M194_keeper Vdd GND #489 Vdd pmos W=0.0975U L=0.26U
M195_ Vdd q_52_6 #fb494# Vdd pmos W=0.1625U L=0.13U
M196_keeper Vdd GND #492 Vdd pmos W=0.0975U L=0.585U
M197_ Vdd x_53_6 #fb497# Vdd pmos W=0.1625U L=0.13U
M198_keeper Vdd GND #495 Vdd pmos W=0.0975U L=0.26U
M199_ Vdd q_53_6 #fb500# Vdd pmos W=0.1625U L=0.13U
M200_keeper Vdd GND #498 Vdd pmos W=0.0975U L=0.585U
M201_ Vdd x_54_6 #fb503# Vdd pmos W=0.1625U L=0.13U
M202_keeper Vdd GND #501 Vdd pmos W=0.0975U L=0.26U
M203_ Vdd q_54_6 #fb506# Vdd pmos W=0.1625U L=0.13U
M204_keeper Vdd GND #504 Vdd pmos W=0.0975U L=0.585U
M205_ Vdd x_55_6 #fb509# Vdd pmos W=0.1625U L=0.13U
M206_keeper Vdd GND #507 Vdd pmos W=0.0975U L=0.26U
M207_ Vdd q_55_6 #fb512# Vdd pmos W=0.1625U L=0.13U
M208_keeper Vdd GND #510 Vdd pmos W=0.0975U L=0.585U
M209_ Vdd x_56_6 #fb515# Vdd pmos W=0.1625U L=0.13U
M210_keeper Vdd GND #513 Vdd pmos W=0.0975U L=0.26U
M211_ Vdd q_56_6 #fb518# Vdd pmos W=0.1625U L=0.13U
M212_keeper Vdd GND #516 Vdd pmos W=0.0975U L=0.585U
M213_ Vdd x_57_6 #fb521# Vdd pmos W=0.1625U L=0.13U
M214_keeper Vdd GND #519 Vdd pmos W=0.0975U L=0.26U
M215_ Vdd q_57_6 #fb524# Vdd pmos W=0.1625U L=0.13U
M216_keeper Vdd GND #522 Vdd pmos W=0.0975U L=0.585U
M217_ Vdd __y_50_6 #fb527# Vdd pmos W=0.1625U L=0.13U
M218_keeper Vdd GND #525 Vdd pmos W=0.0975U L=0.26U
M219_ Vdd __y_51_6 #fb530# Vdd pmos W=0.1625U L=0.13U
M220_keeper Vdd GND #528 Vdd pmos W=0.0975U L=0.585U
M221_ Vdd __y_52_6 #fb533# Vdd pmos W=0.1625U L=0.13U
M222_keeper Vdd GND #531 Vdd pmos W=0.0975U L=0.585U
M223_ Vdd __y_53_6 #fb536# Vdd pmos W=0.1625U L=0.13U
M224_keeper Vdd GND #534 Vdd pmos W=0.0975U L=0.585U
M225_ Vdd z_50_6 #fb539# Vdd pmos W=0.1625U L=0.13U
M226_keeper Vdd GND #537 Vdd pmos W=0.0975U L=0.585U
M227_ Vdd z_51_6 #fb542# Vdd pmos W=0.1625U L=0.13U
M228_keeper Vdd GND #540 Vdd pmos W=0.0975U L=0.585U
M229_ Vdd __u #fb545# Vdd pmos W=0.1625U L=0.13U
M230_keeper Vdd GND #543 Vdd pmos W=0.0975U L=0.585U
M231_ Vdd s #fb548# Vdd pmos W=0.1625U L=0.13U
M232_keeper Vdd GND #546 Vdd pmos W=0.0975U L=0.585U
M233_ Vdd __h_50_6 #fb551# Vdd pmos W=0.1625U L=0.13U
M234_keeper Vdd GND #549 Vdd pmos W=0.0975U L=0.91U
M235_ Vdd b_50_6 #fb554# Vdd pmos W=0.1625U L=0.13U
M236_keeper Vdd GND #552 Vdd pmos W=0.0975U L=0.585U
M237_ Vdd __h_51_6 #fb557# Vdd pmos W=0.1625U L=0.13U
M238_keeper Vdd GND #555 Vdd pmos W=0.0975U L=0.91U
M239_ Vdd b_51_6 #fb560# Vdd pmos W=0.1625U L=0.13U
M240_keeper Vdd GND #558 Vdd pmos W=0.0975U L=0.585U
M241_ Vdd __h_52_6 #fb563# Vdd pmos W=0.1625U L=0.13U
M242_keeper Vdd GND #561 Vdd pmos W=0.0975U L=0.91U
M243_ Vdd b_52_6 #fb566# Vdd pmos W=0.1625U L=0.13U
M244_keeper Vdd GND #564 Vdd pmos W=0.0975U L=0.585U
M245_ Vdd __h_53_6 #fb569# Vdd pmos W=0.1625U L=0.13U
M246_keeper Vdd GND #567 Vdd pmos W=0.0975U L=0.91U
M247_ Vdd b_53_6 #fb572# Vdd pmos W=0.1625U L=0.13U
M248_keeper Vdd GND #570 Vdd pmos W=0.0975U L=0.585U
M249_ Vdd l_50_6 #fb575# Vdd pmos W=0.1625U L=0.13U
M250_keeper Vdd GND #573 Vdd pmos W=0.0975U L=0.91U
M251_ Vdd l_51_6 #fb578# Vdd pmos W=0.1625U L=0.13U
M252_keeper Vdd GND #576 Vdd pmos W=0.0975U L=0.585U
M253_ Vdd A_aa #fb581# Vdd pmos W=0.1625U L=0.13U
M254_keeper Vdd GND #579 Vdd pmos W=0.0975U L=0.585U
M255_ Vdd __f_50_6 #fb584# Vdd pmos W=0.1625U L=0.13U
M256_keeper Vdd GND #582 Vdd pmos W=0.0975U L=0.585U
M257_ Vdd __f_51_6 #fb587# Vdd pmos W=0.1625U L=0.13U
M258_keeper Vdd GND #585 Vdd pmos W=0.0975U L=0.585U
M259_ Vdd __f_52_6 #fb590# Vdd pmos W=0.1625U L=0.13U
M260_keeper Vdd GND #588 Vdd pmos W=0.0975U L=0.585U
M261_ Vdd __f_53_6 #fb593# Vdd pmos W=0.1625U L=0.13U
M262_keeper Vdd GND #591 Vdd pmos W=0.0975U L=0.585U
M263_ Vdd g_50_6 #fb596# Vdd pmos W=0.1625U L=0.13U
M264_keeper Vdd GND #594 Vdd pmos W=0.0975U L=0.585U
M265_ Vdd g_51_6 #fb599# Vdd pmos W=0.1625U L=0.13U
M266_keeper Vdd GND #597 Vdd pmos W=0.0975U L=0.585U
M267_ Vdd __m #fb602# Vdd pmos W=0.1625U L=0.13U
M268_keeper Vdd GND #600 Vdd pmos W=0.0975U L=0.585U
M269_ Vdd j #fb605# Vdd pmos W=0.1625U L=0.13U
M270_keeper Vdd GND #603 Vdd pmos W=0.0975U L=0.585U
M271_ Vdd t_50_6 #fb608# Vdd pmos W=0.1625U L=0.13U
M272_keeper Vdd GND #606 Vdd pmos W=0.0975U L=0.91U
M273_ Vdd t_51_6 #fb611# Vdd pmos W=0.1625U L=0.13U
M274_keeper Vdd GND #609 Vdd pmos W=0.0975U L=0.585U
M275_ Vdd R_areq #fb614# Vdd pmos W=0.1625U L=0.13U
M276_keeper Vdd GND #612 Vdd pmos W=0.0975U L=0.585U
M277_ Vdd __p0 #fb617# Vdd pmos W=0.1625U L=0.13U
M278_keeper Vdd GND #615 Vdd pmos W=0.0975U L=0.26U
M279_ Vdd p1 #fb620# Vdd pmos W=0.1625U L=0.13U
M280_keeper Vdd GND #618 Vdd pmos W=0.0975U L=0.585U
M281_ Vdd __ia #fb623# Vdd pmos W=0.1625U L=0.13U
M282_keeper Vdd GND #621 Vdd pmos W=0.0975U L=0.26U
M283_ Vdd Cnt_areq #fb626# Vdd pmos W=0.1625U L=0.13U
M284_keeper Vdd GND #624 Vdd pmos W=0.0975U L=0.91U
M285_ Vdd dec_aI_at_50_6 #fb629# Vdd pmos W=0.1625U L=0.13U
M286_keeper Vdd GND #627 Vdd pmos W=0.0975U L=0.91U
M287_ Vdd dec_aI_af_50_6 #fb632# Vdd pmos W=0.1625U L=0.13U
M288_keeper Vdd GND #630 Vdd pmos W=0.0975U L=0.26U
M289_ Vdd dec_aI_at_51_6 #fb635# Vdd pmos W=0.1625U L=0.13U
M290_keeper Vdd GND #633 Vdd pmos W=0.0975U L=0.26U
M291_ Vdd dec_aI_af_51_6 #fb638# Vdd pmos W=0.1625U L=0.13U
M292_keeper Vdd GND #636 Vdd pmos W=0.0975U L=0.26U
M293_ Vdd dec_aI_at_52_6 #fb641# Vdd pmos W=0.1625U L=0.13U
M294_keeper Vdd GND #639 Vdd pmos W=0.0975U L=0.26U
M295_ Vdd dec_aI_af_52_6 #fb644# Vdd pmos W=0.1625U L=0.13U
M296_keeper Vdd GND #642 Vdd pmos W=0.0975U L=0.26U
M297_ Vdd dec_aI_at_53_6 #fb647# Vdd pmos W=0.1625U L=0.13U
M298_keeper Vdd GND #645 Vdd pmos W=0.0975U L=0.26U
M299_ Vdd dec_aI_af_53_6 #fb650# Vdd pmos W=0.1625U L=0.13U
M300_keeper Vdd GND #648 Vdd pmos W=0.0975U L=0.26U
M301_ Vdd dec_aI_at_54_6 #fb653# Vdd pmos W=0.1625U L=0.13U
M302_keeper Vdd GND #651 Vdd pmos W=0.0975U L=0.26U
M303_ Vdd dec_aI_af_54_6 #fb656# Vdd pmos W=0.1625U L=0.13U
M304_keeper Vdd GND #654 Vdd pmos W=0.0975U L=0.26U
M305_ Vdd dec_aI_at_55_6 #fb659# Vdd pmos W=0.1625U L=0.13U
M306_keeper Vdd GND #657 Vdd pmos W=0.0975U L=0.26U
M307_ Vdd dec_aI_af_55_6 #fb662# Vdd pmos W=0.1625U L=0.13U
M308_keeper Vdd GND #660 Vdd pmos W=0.0975U L=0.26U
M309_ Vdd dec_aI_at_56_6 #fb665# Vdd pmos W=0.1625U L=0.13U
M310_keeper Vdd GND #663 Vdd pmos W=0.0975U L=0.26U
M311_ Vdd dec_aI_af_56_6 #fb668# Vdd pmos W=0.1625U L=0.13U
M312_keeper Vdd GND #666 Vdd pmos W=0.0975U L=0.26U
M313_ Vdd dec_aI_at_57_6 #fb671# Vdd pmos W=0.1625U L=0.13U
M314_keeper Vdd GND #669 Vdd pmos W=0.0975U L=0.26U
M315_ Vdd dec_aI_af_57_6 #fb674# Vdd pmos W=0.1625U L=0.13U
M316_keeper Vdd GND #672 Vdd pmos W=0.0975U L=0.26U
M317_ Vdd Od_at_50_6 #fb677# Vdd pmos W=0.1625U L=0.13U
M318_keeper Vdd GND #675 Vdd pmos W=0.0975U L=0.26U
M319_ Vdd Od_af_50_6 #fb680# Vdd pmos W=0.1625U L=0.13U
M320_keeper Vdd GND #678 Vdd pmos W=0.0975U L=0.26U
M321_ Vdd Oc_at_50_6 #fb683# Vdd pmos W=0.1625U L=0.13U
M322_keeper Vdd GND #681 Vdd pmos W=0.0975U L=0.26U
M323_ Vdd Oc_af_50_6 #fb686# Vdd pmos W=0.1625U L=0.13U
M324_keeper Vdd GND #684 Vdd pmos W=0.0975U L=0.26U
M325_ Vdd Od_at_51_6 #fb689# Vdd pmos W=0.1625U L=0.13U
M326_keeper Vdd GND #687 Vdd pmos W=0.0975U L=0.26U
M327_ Vdd Od_af_51_6 #fb692# Vdd pmos W=0.1625U L=0.13U
M328_keeper Vdd GND #690 Vdd pmos W=0.0975U L=0.26U
M329_ Vdd Oc_at_51_6 #fb695# Vdd pmos W=0.1625U L=0.13U
M330_keeper Vdd GND #693 Vdd pmos W=0.0975U L=0.26U
M331_ Vdd Oc_af_51_6 #fb698# Vdd pmos W=0.1625U L=0.13U
M332_keeper Vdd GND #696 Vdd pmos W=0.0975U L=0.26U
M333_ Vdd Od_at_52_6 #fb701# Vdd pmos W=0.1625U L=0.13U
M334_keeper Vdd GND #699 Vdd pmos W=0.0975U L=0.26U
M335_ Vdd Od_af_52_6 #fb704# Vdd pmos W=0.1625U L=0.13U
M336_keeper Vdd GND #702 Vdd pmos W=0.0975U L=0.26U
M337_ Vdd Oc_at_52_6 #fb707# Vdd pmos W=0.1625U L=0.13U
M338_keeper Vdd GND #705 Vdd pmos W=0.0975U L=0.26U
M339_ Vdd Oc_af_52_6 #fb710# Vdd pmos W=0.1625U L=0.13U
M340_keeper Vdd GND #708 Vdd pmos W=0.0975U L=0.26U
M341_ Vdd Od_at_53_6 #fb713# Vdd pmos W=0.1625U L=0.13U
M342_keeper Vdd GND #711 Vdd pmos W=0.0975U L=0.26U
M343_ Vdd Od_af_53_6 #fb716# Vdd pmos W=0.1625U L=0.13U
M344_keeper Vdd GND #714 Vdd pmos W=0.0975U L=0.26U
M345_ Vdd Oc_at_53_6 #fb719# Vdd pmos W=0.1625U L=0.13U
M346_keeper Vdd GND #717 Vdd pmos W=0.0975U L=0.26U
M347_ Vdd Oc_af_53_6 #fb722# Vdd pmos W=0.1625U L=0.13U
M348_keeper Vdd GND #720 Vdd pmos W=0.0975U L=0.26U
M349_keeper Vdd GND #723 Vdd pmos W=0.0975U L=0.26U
M350_ GND __rt_50_6 #9 GND nmos W=0.0975U L=0.065U
M351_ GND __rt_51_6 #17 GND nmos W=0.0975U L=0.065U
M352_ GND __rt_52_6 #25 GND nmos W=0.0975U L=0.065U
M353_ GND __rt_53_6 #33 GND nmos W=0.0975U L=0.065U
M354_ GND __rt_54_6 #41 GND nmos W=0.0975U L=0.065U
M355_ GND __rt_55_6 #49 GND nmos W=0.0975U L=0.065U
M356_ GND __rt_56_6 #57 GND nmos W=0.0975U L=0.065U
M357_ GND __rt_57_6 #65 GND nmos W=0.0975U L=0.065U
M358_ GND x_51_6 #67 GND nmos W=0.0975U L=0.065U
M359_ GND x_53_6 #70 GND nmos W=0.0975U L=0.065U
M360_ GND x_55_6 #73 GND nmos W=0.0975U L=0.065U
M361_ GND x_57_6 #76 GND nmos W=0.0975U L=0.065U
M362_ GND __y_51_6 #80 GND nmos W=0.0975U L=0.065U
M363_ GND __y_53_6 #83 GND nmos W=0.0975U L=0.065U
M364_ GND z_51_6 #85 GND nmos W=0.0975U L=0.065U
M365_ GND I_at_50_6 #91 GND nmos W=0.0975U L=0.065U
M366_ GND I_af_50_6 #94 GND nmos W=0.0975U L=0.065U
M367_ GND I_at_51_6 #99 GND nmos W=0.0975U L=0.065U
M368_ GND I_af_51_6 #102 GND nmos W=0.0975U L=0.065U
M369_ GND I_at_52_6 #107 GND nmos W=0.0975U L=0.065U
M370_ GND I_af_52_6 #110 GND nmos W=0.0975U L=0.065U
M371_ GND I_at_53_6 #115 GND nmos W=0.0975U L=0.065U
M372_ GND I_af_53_6 #118 GND nmos W=0.0975U L=0.065U
M373_ GND __h_51_6 #124 GND nmos W=0.0975U L=0.065U
M374_ GND __h_53_6 #127 GND nmos W=0.0975U L=0.065U
M375_ GND p0 #129 GND nmos W=0.195U L=0.065U
M376_ GND A_aa s GND nmos W=0.195U L=0.065U
M377_ GND reset s GND nmos W=0.195U L=0.065U
M378_ GND R_at_50_6 e_50_6 GND nmos W=0.0975U L=0.065U
M379_ GND R_af_50_6 e_50_6 GND nmos W=0.0975U L=0.065U
M380_ GND R_at_51_6 e_51_6 GND nmos W=0.0975U L=0.065U
M381_ GND R_af_51_6 e_51_6 GND nmos W=0.0975U L=0.065U
M382_ GND R_at_52_6 e_52_6 GND nmos W=0.0975U L=0.065U
M383_ GND R_af_52_6 e_52_6 GND nmos W=0.0975U L=0.065U
M384_ GND R_at_53_6 e_53_6 GND nmos W=0.0975U L=0.065U
M385_ GND R_af_53_6 e_53_6 GND nmos W=0.0975U L=0.065U
M386_ GND R_at_54_6 e_54_6 GND nmos W=0.0975U L=0.065U
M387_ GND R_af_54_6 e_54_6 GND nmos W=0.0975U L=0.065U
M388_ GND R_at_55_6 e_55_6 GND nmos W=0.0975U L=0.065U
M389_ GND R_af_55_6 e_55_6 GND nmos W=0.0975U L=0.065U
M390_ GND R_at_56_6 e_56_6 GND nmos W=0.0975U L=0.065U
M391_ GND R_af_56_6 e_56_6 GND nmos W=0.0975U L=0.065U
M392_ GND R_at_57_6 e_57_6 GND nmos W=0.0975U L=0.065U
M393_ GND R_af_57_6 e_57_6 GND nmos W=0.0975U L=0.065U
M394_ GND e_51_6 #166 GND nmos W=0.0975U L=0.065U
M395_ GND e_53_6 #169 GND nmos W=0.0975U L=0.065U
M396_ GND e_55_6 #172 GND nmos W=0.0975U L=0.065U
M397_ GND e_57_6 #175 GND nmos W=0.0975U L=0.065U
M398_ GND __f_51_6 #179 GND nmos W=0.0975U L=0.065U
M399_ GND __f_53_6 #182 GND nmos W=0.0975U L=0.065U
M400_ GND g_51_6 #184 GND nmos W=0.0975U L=0.065U
M401_ GND __it_50_6 #191 GND nmos W=0.0975U L=0.065U
M402_ GND __it_51_6 #195 GND nmos W=0.0975U L=0.065U
M403_ GND __it_52_6 #199 GND nmos W=0.0975U L=0.065U
M404_ GND __it_53_6 #203 GND nmos W=0.0975U L=0.065U
M405_ GND __v_51_6 #208 GND nmos W=0.0975U L=0.065U
M406_ GND __v_53_6 #211 GND nmos W=0.0975U L=0.065U
M407_ GND __s #213 GND nmos W=0.39U L=0.065U
M408_ GND A_aa j GND nmos W=0.39U L=0.065U
M409_ GND reset j GND nmos W=0.39U L=0.065U
M410_ GND s R_areq GND nmos W=0.195U L=0.065U
M411_ GND reset R_areq GND nmos W=0.195U L=0.065U
M412_ GND j #226 GND nmos W=0.39U L=0.065U
M413_ GND A_aa p1 GND nmos W=0.0975U L=0.065U
M414_ GND reset p1 GND nmos W=0.0975U L=0.065U
M415_ GND j #246 GND nmos W=0.0975U L=0.065U
M416_ GND __j #250 GND nmos W=0.0975U L=0.065U
M417_ GND __wa #252 GND nmos W=0.195U L=0.065U
M418_ GND R_af_50_6 q_50_6 GND nmos W=0.0975U L=0.065U
M419_ GND reset q_50_6 GND nmos W=0.0975U L=0.065U
M420_ GND __p0 dec_aI_at_50_6 GND nmos W=0.0975U L=0.065U
M421_ GND __p0 dec_aI_af_50_6 GND nmos W=0.0975U L=0.065U
M422_ GND R_af_51_6 q_51_6 GND nmos W=0.0975U L=0.065U
M423_ GND reset q_51_6 GND nmos W=0.0975U L=0.065U
M424_ GND __p0 dec_aI_at_51_6 GND nmos W=0.0975U L=0.065U
M425_ GND __p0 dec_aI_af_51_6 GND nmos W=0.0975U L=0.065U
M426_ GND R_af_52_6 q_52_6 GND nmos W=0.0975U L=0.065U
M427_ GND reset q_52_6 GND nmos W=0.0975U L=0.065U
M428_ GND __p0 dec_aI_at_52_6 GND nmos W=0.0975U L=0.065U
M429_ GND __p0 dec_aI_af_52_6 GND nmos W=0.0975U L=0.065U
M430_ GND R_af_53_6 q_53_6 GND nmos W=0.0975U L=0.065U
M431_ GND reset q_53_6 GND nmos W=0.0975U L=0.065U
M432_ GND __p0 dec_aI_at_53_6 GND nmos W=0.0975U L=0.065U
M433_ GND __p0 dec_aI_af_53_6 GND nmos W=0.0975U L=0.065U
M434_ GND R_af_54_6 q_54_6 GND nmos W=0.0975U L=0.065U
M435_ GND reset q_54_6 GND nmos W=0.0975U L=0.065U
M436_ GND __p0 dec_aI_at_54_6 GND nmos W=0.0975U L=0.065U
M437_ GND __p0 dec_aI_af_54_6 GND nmos W=0.0975U L=0.065U
M438_ GND R_af_55_6 q_55_6 GND nmos W=0.0975U L=0.065U
M439_ GND reset q_55_6 GND nmos W=0.0975U L=0.065U
M440_ GND __p0 dec_aI_at_55_6 GND nmos W=0.0975U L=0.065U
M441_ GND __p0 dec_aI_af_55_6 GND nmos W=0.0975U L=0.065U
M442_ GND R_af_56_6 q_56_6 GND nmos W=0.0975U L=0.065U
M443_ GND reset q_56_6 GND nmos W=0.0975U L=0.065U
M444_ GND __p0 dec_aI_at_56_6 GND nmos W=0.0975U L=0.065U
M445_ GND __p0 dec_aI_af_56_6 GND nmos W=0.0975U L=0.065U
M446_ GND R_af_57_6 q_57_6 GND nmos W=0.0975U L=0.065U
M447_ GND reset q_57_6 GND nmos W=0.0975U L=0.065U
M448_ GND __p0 dec_aI_at_57_6 GND nmos W=0.0975U L=0.065U
M449_ GND __p0 dec_aI_af_57_6 GND nmos W=0.0975U L=0.065U
M450_ GND p0 #321 GND nmos W=0.0975U L=0.065U
M451_ GND reset b_50_6 GND nmos W=0.0975U L=0.065U
M452_ GND __p0 Od_at_50_6 GND nmos W=0.0975U L=0.065U
M453_ GND __p0 Od_af_50_6 GND nmos W=0.0975U L=0.065U
M454_ GND __p0 Oc_at_50_6 GND nmos W=0.0975U L=0.065U
M455_ GND __p0 Oc_af_50_6 GND nmos W=0.0975U L=0.065U
M456_ GND p0 #341 GND nmos W=0.0975U L=0.065U
M457_ GND reset b_51_6 GND nmos W=0.0975U L=0.065U
M458_ GND __p0 Od_at_51_6 GND nmos W=0.0975U L=0.065U
M459_ GND __p0 Od_af_51_6 GND nmos W=0.0975U L=0.065U
M460_ GND __p0 Oc_at_51_6 GND nmos W=0.0975U L=0.065U
M461_ GND __p0 Oc_af_51_6 GND nmos W=0.0975U L=0.065U
M462_ GND p0 #361 GND nmos W=0.0975U L=0.065U
M463_ GND reset b_52_6 GND nmos W=0.0975U L=0.065U
M464_ GND __p0 Od_at_52_6 GND nmos W=0.0975U L=0.065U
M465_ GND __p0 Od_af_52_6 GND nmos W=0.0975U L=0.065U
M466_ GND __p0 Oc_at_52_6 GND nmos W=0.0975U L=0.065U
M467_ GND __p0 Oc_af_52_6 GND nmos W=0.0975U L=0.065U
M468_ GND p0 #381 GND nmos W=0.0975U L=0.065U
M469_ GND reset b_53_6 GND nmos W=0.0975U L=0.065U
M470_ GND __p0 Od_at_53_6 GND nmos W=0.0975U L=0.065U
M471_ GND __p0 Od_af_53_6 GND nmos W=0.0975U L=0.065U
M472_ GND __p0 Oc_at_53_6 GND nmos W=0.0975U L=0.065U
M473_ GND __p0 Oc_af_53_6 GND nmos W=0.0975U L=0.065U
M474_ GND Cnt_at_50_6 __wt_50_6 GND nmos W=0.0975U L=0.065U
M475_ GND dec_aO_at_50_6 __wt_50_6 GND nmos W=0.0975U L=0.065U
M476_ GND Cnt_af_50_6 __wf_50_6 GND nmos W=0.0975U L=0.065U
M477_ GND dec_aO_af_50_6 __wf_50_6 GND nmos W=0.0975U L=0.065U
M478_ GND __wt_50_6 W_at_50_6 GND nmos W=0.0975U L=0.065U
M479_ GND __wf_50_6 W_af_50_6 GND nmos W=0.0975U L=0.065U
M480_ GND Cnt_at_51_6 __wt_51_6 GND nmos W=0.0975U L=0.065U
M481_ GND dec_aO_at_51_6 __wt_51_6 GND nmos W=0.0975U L=0.065U
M482_ GND Cnt_af_51_6 __wf_51_6 GND nmos W=0.0975U L=0.065U
M483_ GND dec_aO_af_51_6 __wf_51_6 GND nmos W=0.0975U L=0.065U
M484_ GND __wt_51_6 W_at_51_6 GND nmos W=0.0975U L=0.065U
M485_ GND __wf_51_6 W_af_51_6 GND nmos W=0.0975U L=0.065U
M486_ GND Cnt_at_52_6 __wt_52_6 GND nmos W=0.0975U L=0.065U
M487_ GND dec_aO_at_52_6 __wt_52_6 GND nmos W=0.0975U L=0.065U
M488_ GND Cnt_af_52_6 __wf_52_6 GND nmos W=0.0975U L=0.065U
M489_ GND dec_aO_af_52_6 __wf_52_6 GND nmos W=0.0975U L=0.065U
M490_ GND __wt_52_6 W_at_52_6 GND nmos W=0.0975U L=0.065U
M491_ GND __wf_52_6 W_af_52_6 GND nmos W=0.0975U L=0.065U
M492_ GND Cnt_at_53_6 __wt_53_6 GND nmos W=0.0975U L=0.065U
M493_ GND dec_aO_at_53_6 __wt_53_6 GND nmos W=0.0975U L=0.065U
M494_ GND Cnt_af_53_6 __wf_53_6 GND nmos W=0.0975U L=0.065U
M495_ GND dec_aO_af_53_6 __wf_53_6 GND nmos W=0.0975U L=0.065U
M496_ GND __wt_53_6 W_at_53_6 GND nmos W=0.0975U L=0.065U
M497_ GND __wf_53_6 W_af_53_6 GND nmos W=0.0975U L=0.065U
M498_ GND Cnt_at_54_6 __wt_54_6 GND nmos W=0.0975U L=0.065U
M499_ GND dec_aO_at_54_6 __wt_54_6 GND nmos W=0.0975U L=0.065U
M500_ GND Cnt_af_54_6 __wf_54_6 GND nmos W=0.0975U L=0.065U
M501_ GND dec_aO_af_54_6 __wf_54_6 GND nmos W=0.0975U L=0.065U
M502_ GND __wt_54_6 W_at_54_6 GND nmos W=0.0975U L=0.065U
M503_ GND __wf_54_6 W_af_54_6 GND nmos W=0.0975U L=0.065U
M504_ GND Cnt_at_55_6 __wt_55_6 GND nmos W=0.0975U L=0.065U
M505_ GND dec_aO_at_55_6 __wt_55_6 GND nmos W=0.0975U L=0.065U
M506_ GND Cnt_af_55_6 __wf_55_6 GND nmos W=0.0975U L=0.065U
M507_ GND dec_aO_af_55_6 __wf_55_6 GND nmos W=0.0975U L=0.065U
M508_ GND __wt_55_6 W_at_55_6 GND nmos W=0.0975U L=0.065U
M509_ GND __wf_55_6 W_af_55_6 GND nmos W=0.0975U L=0.065U
M510_ GND Cnt_at_56_6 __wt_56_6 GND nmos W=0.0975U L=0.065U
M511_ GND dec_aO_at_56_6 __wt_56_6 GND nmos W=0.0975U L=0.065U
M512_ GND Cnt_af_56_6 __wf_56_6 GND nmos W=0.0975U L=0.065U
M513_ GND dec_aO_af_56_6 __wf_56_6 GND nmos W=0.0975U L=0.065U
M514_ GND __wt_56_6 W_at_56_6 GND nmos W=0.0975U L=0.065U
M515_ GND __wf_56_6 W_af_56_6 GND nmos W=0.0975U L=0.065U
M516_ GND Cnt_at_57_6 __wt_57_6 GND nmos W=0.0975U L=0.065U
M517_ GND dec_aO_at_57_6 __wt_57_6 GND nmos W=0.0975U L=0.065U
M518_ GND Cnt_af_57_6 __wf_57_6 GND nmos W=0.0975U L=0.065U
M519_ GND dec_aO_af_57_6 __wf_57_6 GND nmos W=0.0975U L=0.065U
M520_ GND __wt_57_6 W_at_57_6 GND nmos W=0.0975U L=0.065U
M521_ GND __wf_57_6 W_af_57_6 GND nmos W=0.0975U L=0.065U
M522_ GND A_areq __ar GND nmos W=0.195U L=0.065U
M523_ GND R_areq __rr GND nmos W=0.0975U L=0.065U
M524_ GND s __s GND nmos W=0.195U L=0.065U
M525_ GND j __j GND nmos W=0.0975U L=0.065U
M526_ GND p1 __p1 GND nmos W=0.0975U L=0.065U
M527_ GND reset __r GND nmos W=0.0975U L=0.065U
M528_ GND Oc_aa __oca GND nmos W=0.0975U L=0.065U
M529_ GND Od_aa __oda GND nmos W=0.0975U L=0.065U
M530_ GND W_aa __wa GND nmos W=0.0975U L=0.065U
M531_ GND R_at_50_6 __rt_50_6 GND nmos W=0.0975U L=0.065U
M532_ GND R_af_50_6 __rf_50_6 GND nmos W=0.0975U L=0.065U
M533_ GND q_50_6 __q_50_6 GND nmos W=0.0975U L=0.065U
M534_ GND R_at_51_6 __rt_51_6 GND nmos W=0.0975U L=0.065U
M535_ GND R_af_51_6 __rf_51_6 GND nmos W=0.0975U L=0.065U
M536_ GND q_51_6 __q_51_6 GND nmos W=0.0975U L=0.065U
M537_ GND R_at_52_6 __rt_52_6 GND nmos W=0.0975U L=0.065U
M538_ GND R_af_52_6 __rf_52_6 GND nmos W=0.0975U L=0.065U
M539_ GND q_52_6 __q_52_6 GND nmos W=0.0975U L=0.065U
M540_ GND R_at_53_6 __rt_53_6 GND nmos W=0.0975U L=0.065U
M541_ GND R_af_53_6 __rf_53_6 GND nmos W=0.0975U L=0.065U
M542_ GND q_53_6 __q_53_6 GND nmos W=0.0975U L=0.065U
M543_ GND R_at_54_6 __rt_54_6 GND nmos W=0.0975U L=0.065U
M544_ GND R_af_54_6 __rf_54_6 GND nmos W=0.0975U L=0.065U
M545_ GND q_54_6 __q_54_6 GND nmos W=0.0975U L=0.065U
M546_ GND R_at_55_6 __rt_55_6 GND nmos W=0.0975U L=0.065U
M547_ GND R_af_55_6 __rf_55_6 GND nmos W=0.0975U L=0.065U
M548_ GND q_55_6 __q_55_6 GND nmos W=0.0975U L=0.065U
M549_ GND R_at_56_6 __rt_56_6 GND nmos W=0.0975U L=0.065U
M550_ GND R_af_56_6 __rf_56_6 GND nmos W=0.0975U L=0.065U
M551_ GND q_56_6 __q_56_6 GND nmos W=0.0975U L=0.065U
M552_ GND R_at_57_6 __rt_57_6 GND nmos W=0.0975U L=0.065U
M553_ GND R_af_57_6 __rf_57_6 GND nmos W=0.0975U L=0.065U
M554_ GND q_57_6 __q_57_6 GND nmos W=0.0975U L=0.065U
M555_ GND I_at_50_6 __it_50_6 GND nmos W=0.0975U L=0.065U
M556_ GND I_af_50_6 __if_50_6 GND nmos W=0.0975U L=0.065U
M557_ GND b_50_6 __b_50_6 GND nmos W=0.0975U L=0.065U
M558_ GND I_at_51_6 __it_51_6 GND nmos W=0.0975U L=0.065U
M559_ GND I_af_51_6 __if_51_6 GND nmos W=0.0975U L=0.065U
M560_ GND b_51_6 __b_51_6 GND nmos W=0.0975U L=0.065U
M561_ GND I_at_52_6 __it_52_6 GND nmos W=0.0975U L=0.065U
M562_ GND I_af_52_6 __if_52_6 GND nmos W=0.0975U L=0.065U
M563_ GND b_52_6 __b_52_6 GND nmos W=0.0975U L=0.065U
M564_ GND I_at_53_6 __it_53_6 GND nmos W=0.0975U L=0.065U
M565_ GND I_af_53_6 __if_53_6 GND nmos W=0.0975U L=0.065U
M566_ GND b_53_6 __b_53_6 GND nmos W=0.0975U L=0.065U
M567_ GND __p0 p0 GND nmos W=0.195U L=0.065U
M568_ GND __ia I_aa GND nmos W=0.39U L=0.065U
M569_ GND x_50_6 #fb479# GND nmos W=0.0975U L=0.13U
M570_ GND q_50_6 #fb482# GND nmos W=0.0975U L=0.13U
M571_keeper GND Vdd #481 GND nmos W=0.0975U L=1.495U
M572_ GND x_51_6 #fb485# GND nmos W=0.0975U L=0.13U
M573_keeper GND Vdd #484 GND nmos W=0.0975U L=0.715U
M574_ GND q_51_6 #fb488# GND nmos W=0.0975U L=0.13U
M575_keeper GND Vdd #487 GND nmos W=0.0975U L=1.495U
M576_ GND x_52_6 #fb491# GND nmos W=0.0975U L=0.13U
M577_keeper GND Vdd #490 GND nmos W=0.0975U L=0.715U
M578_ GND q_52_6 #fb494# GND nmos W=0.0975U L=0.13U
M579_keeper GND Vdd #493 GND nmos W=0.0975U L=1.495U
M580_ GND x_53_6 #fb497# GND nmos W=0.0975U L=0.13U
M581_keeper GND Vdd #496 GND nmos W=0.0975U L=0.715U
M582_ GND q_53_6 #fb500# GND nmos W=0.0975U L=0.13U
M583_keeper GND Vdd #499 GND nmos W=0.0975U L=1.495U
M584_ GND x_54_6 #fb503# GND nmos W=0.0975U L=0.13U
M585_keeper GND Vdd #502 GND nmos W=0.0975U L=0.715U
M586_ GND q_54_6 #fb506# GND nmos W=0.0975U L=0.13U
M587_keeper GND Vdd #505 GND nmos W=0.0975U L=1.495U
M588_ GND x_55_6 #fb509# GND nmos W=0.0975U L=0.13U
M589_keeper GND Vdd #508 GND nmos W=0.0975U L=0.715U
M590_ GND q_55_6 #fb512# GND nmos W=0.0975U L=0.13U
M591_keeper GND Vdd #511 GND nmos W=0.0975U L=1.495U
M592_ GND x_56_6 #fb515# GND nmos W=0.0975U L=0.13U
M593_keeper GND Vdd #514 GND nmos W=0.0975U L=0.715U
M594_ GND q_56_6 #fb518# GND nmos W=0.0975U L=0.13U
M595_keeper GND Vdd #517 GND nmos W=0.0975U L=1.495U
M596_ GND x_57_6 #fb521# GND nmos W=0.0975U L=0.13U
M597_keeper GND Vdd #520 GND nmos W=0.0975U L=0.715U
M598_ GND q_57_6 #fb524# GND nmos W=0.0975U L=0.13U
M599_keeper GND Vdd #523 GND nmos W=0.0975U L=1.495U
M600_ GND __y_50_6 #fb527# GND nmos W=0.0975U L=0.13U
M601_keeper GND Vdd #526 GND nmos W=0.0975U L=0.715U
M602_ GND __y_51_6 #fb530# GND nmos W=0.0975U L=0.13U
M603_keeper GND Vdd #529 GND nmos W=0.0975U L=1.495U
M604_ GND __y_52_6 #fb533# GND nmos W=0.0975U L=0.13U
M605_keeper GND Vdd #532 GND nmos W=0.0975U L=1.495U
M606_ GND __y_53_6 #fb536# GND nmos W=0.0975U L=0.13U
M607_keeper GND Vdd #535 GND nmos W=0.0975U L=1.495U
M608_ GND z_50_6 #fb539# GND nmos W=0.0975U L=0.13U
M609_keeper GND Vdd #538 GND nmos W=0.0975U L=1.495U
M610_ GND z_51_6 #fb542# GND nmos W=0.0975U L=0.13U
M611_keeper GND Vdd #541 GND nmos W=0.0975U L=1.495U
M612_ GND __u #fb545# GND nmos W=0.0975U L=0.13U
M613_keeper GND Vdd #544 GND nmos W=0.0975U L=1.495U
M614_ GND s #fb548# GND nmos W=0.0975U L=0.13U
M615_keeper GND Vdd #547 GND nmos W=0.0975U L=1.495U
M616_ GND __h_50_6 #fb551# GND nmos W=0.0975U L=0.13U
M617_keeper GND Vdd #550 GND nmos W=0.0975U L=1.495U
M618_ GND b_50_6 #fb554# GND nmos W=0.0975U L=0.13U
M619_keeper GND Vdd #553 GND nmos W=0.0975U L=1.495U
M620_ GND __h_51_6 #fb557# GND nmos W=0.0975U L=0.13U
M621_keeper GND Vdd #556 GND nmos W=0.0975U L=2.275U
M622_ GND b_51_6 #fb560# GND nmos W=0.0975U L=0.13U
M623_keeper GND Vdd #559 GND nmos W=0.0975U L=1.495U
M624_ GND __h_52_6 #fb563# GND nmos W=0.0975U L=0.13U
M625_keeper GND Vdd #562 GND nmos W=0.0975U L=2.275U
M626_ GND b_52_6 #fb566# GND nmos W=0.0975U L=0.13U
M627_keeper GND Vdd #565 GND nmos W=0.0975U L=1.495U
M628_ GND __h_53_6 #fb569# GND nmos W=0.0975U L=0.13U
M629_keeper GND Vdd #568 GND nmos W=0.0975U L=2.275U
M630_ GND b_53_6 #fb572# GND nmos W=0.0975U L=0.13U
M631_keeper GND Vdd #571 GND nmos W=0.0975U L=1.495U
M632_ GND l_50_6 #fb575# GND nmos W=0.0975U L=0.13U
M633_keeper GND Vdd #574 GND nmos W=0.0975U L=2.275U
M634_ GND l_51_6 #fb578# GND nmos W=0.0975U L=0.13U
M635_keeper GND Vdd #577 GND nmos W=0.0975U L=1.495U
M636_ GND A_aa #fb581# GND nmos W=0.0975U L=0.13U
M637_keeper GND Vdd #580 GND nmos W=0.0975U L=1.495U
M638_ GND __f_50_6 #fb584# GND nmos W=0.0975U L=0.13U
M639_keeper GND Vdd #583 GND nmos W=0.0975U L=1.495U
M640_ GND __f_51_6 #fb587# GND nmos W=0.0975U L=0.13U
M641_keeper GND Vdd #586 GND nmos W=0.0975U L=1.495U
M642_ GND __f_52_6 #fb590# GND nmos W=0.0975U L=0.13U
M643_keeper GND Vdd #589 GND nmos W=0.0975U L=1.495U
M644_ GND __f_53_6 #fb593# GND nmos W=0.0975U L=0.13U
M645_keeper GND Vdd #592 GND nmos W=0.0975U L=1.495U
M646_ GND g_50_6 #fb596# GND nmos W=0.0975U L=0.13U
M647_keeper GND Vdd #595 GND nmos W=0.0975U L=1.495U
M648_ GND g_51_6 #fb599# GND nmos W=0.0975U L=0.13U
M649_keeper GND Vdd #598 GND nmos W=0.0975U L=1.495U
M650_ GND __m #fb602# GND nmos W=0.0975U L=0.13U
M651_keeper GND Vdd #601 GND nmos W=0.0975U L=1.495U
M652_ GND j #fb605# GND nmos W=0.0975U L=0.13U
M653_keeper GND Vdd #604 GND nmos W=0.0975U L=1.495U
M654_ GND t_50_6 #fb608# GND nmos W=0.0975U L=0.13U
M655_keeper GND Vdd #607 GND nmos W=0.0975U L=2.275U
M656_ GND t_51_6 #fb611# GND nmos W=0.0975U L=0.13U
M657_keeper GND Vdd #610 GND nmos W=0.0975U L=1.495U
M658_ GND R_areq #fb614# GND nmos W=0.0975U L=0.13U
M659_keeper GND Vdd #613 GND nmos W=0.0975U L=1.495U
M660_ GND __p0 #fb617# GND nmos W=0.0975U L=0.13U
M661_keeper GND Vdd #616 GND nmos W=0.0975U L=5.395U
M662_ GND p1 #fb620# GND nmos W=0.0975U L=0.13U
M663_keeper GND Vdd #619 GND nmos W=0.0975U L=2.275U
M664_ GND __ia #fb623# GND nmos W=0.0975U L=0.13U
M665_keeper GND Vdd #622 GND nmos W=0.0975U L=7.735U
M666_ GND Cnt_areq #fb626# GND nmos W=0.0975U L=0.13U
M667_keeper GND Vdd #625 GND nmos W=0.0975U L=0.715U
M668_ GND dec_aI_at_50_6 #fb629# GND nmos W=0.0975U L=0.13U
M669_keeper GND Vdd #628 GND nmos W=0.0975U L=0.715U
M670_ GND dec_aI_af_50_6 #fb632# GND nmos W=0.0975U L=0.13U
M671_keeper GND Vdd #631 GND nmos W=0.0975U L=3.055U
M672_ GND dec_aI_at_51_6 #fb635# GND nmos W=0.0975U L=0.13U
M673_keeper GND Vdd #634 GND nmos W=0.0975U L=3.055U
M674_ GND dec_aI_af_51_6 #fb638# GND nmos W=0.0975U L=0.13U
M675_keeper GND Vdd #637 GND nmos W=0.0975U L=3.055U
M676_ GND dec_aI_at_52_6 #fb641# GND nmos W=0.0975U L=0.13U
M677_keeper GND Vdd #640 GND nmos W=0.0975U L=3.055U
M678_ GND dec_aI_af_52_6 #fb644# GND nmos W=0.0975U L=0.13U
M679_keeper GND Vdd #643 GND nmos W=0.0975U L=3.055U
M680_ GND dec_aI_at_53_6 #fb647# GND nmos W=0.0975U L=0.13U
M681_keeper GND Vdd #646 GND nmos W=0.0975U L=3.055U
M682_ GND dec_aI_af_53_6 #fb650# GND nmos W=0.0975U L=0.13U
M683_keeper GND Vdd #649 GND nmos W=0.0975U L=3.055U
M684_ GND dec_aI_at_54_6 #fb653# GND nmos W=0.0975U L=0.13U
M685_keeper GND Vdd #652 GND nmos W=0.0975U L=3.055U
M686_ GND dec_aI_af_54_6 #fb656# GND nmos W=0.0975U L=0.13U
M687_keeper GND Vdd #655 GND nmos W=0.0975U L=3.055U
M688_ GND dec_aI_at_55_6 #fb659# GND nmos W=0.0975U L=0.13U
M689_keeper GND Vdd #658 GND nmos W=0.0975U L=3.055U
M690_ GND dec_aI_af_55_6 #fb662# GND nmos W=0.0975U L=0.13U
M691_keeper GND Vdd #661 GND nmos W=0.0975U L=3.055U
M692_ GND dec_aI_at_56_6 #fb665# GND nmos W=0.0975U L=0.13U
M693_keeper GND Vdd #664 GND nmos W=0.0975U L=3.055U
M694_ GND dec_aI_af_56_6 #fb668# GND nmos W=0.0975U L=0.13U
M695_keeper GND Vdd #667 GND nmos W=0.0975U L=3.055U
M696_ GND dec_aI_at_57_6 #fb671# GND nmos W=0.0975U L=0.13U
M697_keeper GND Vdd #670 GND nmos W=0.0975U L=3.055U
M698_ GND dec_aI_af_57_6 #fb674# GND nmos W=0.0975U L=0.13U
M699_keeper GND Vdd #673 GND nmos W=0.0975U L=3.055U
M700_ GND Od_at_50_6 #fb677# GND nmos W=0.0975U L=0.13U
M701_keeper GND Vdd #676 GND nmos W=0.0975U L=3.055U
M702_ GND Od_af_50_6 #fb680# GND nmos W=0.0975U L=0.13U
M703_keeper GND Vdd #679 GND nmos W=0.0975U L=3.055U
M704_ GND Oc_at_50_6 #fb683# GND nmos W=0.0975U L=0.13U
M705_keeper GND Vdd #682 GND nmos W=0.0975U L=3.055U
M706_ GND Oc_af_50_6 #fb686# GND nmos W=0.0975U L=0.13U
M707_keeper GND Vdd #685 GND nmos W=0.0975U L=3.055U
M708_ GND Od_at_51_6 #fb689# GND nmos W=0.0975U L=0.13U
M709_keeper GND Vdd #688 GND nmos W=0.0975U L=3.055U
M710_ GND Od_af_51_6 #fb692# GND nmos W=0.0975U L=0.13U
M711_keeper GND Vdd #691 GND nmos W=0.0975U L=3.055U
M712_ GND Oc_at_51_6 #fb695# GND nmos W=0.0975U L=0.13U
M713_keeper GND Vdd #694 GND nmos W=0.0975U L=3.055U
M714_ GND Oc_af_51_6 #fb698# GND nmos W=0.0975U L=0.13U
M715_keeper GND Vdd #697 GND nmos W=0.0975U L=3.055U
M716_ GND Od_at_52_6 #fb701# GND nmos W=0.0975U L=0.13U
M717_keeper GND Vdd #700 GND nmos W=0.0975U L=3.055U
M718_ GND Od_af_52_6 #fb704# GND nmos W=0.0975U L=0.13U
M719_keeper GND Vdd #703 GND nmos W=0.0975U L=3.055U
M720_ GND Oc_at_52_6 #fb707# GND nmos W=0.0975U L=0.13U
M721_keeper GND Vdd #706 GND nmos W=0.0975U L=3.055U
M722_ GND Oc_af_52_6 #fb710# GND nmos W=0.0975U L=0.13U
M723_keeper GND Vdd #709 GND nmos W=0.0975U L=3.055U
M724_ GND Od_at_53_6 #fb713# GND nmos W=0.0975U L=0.13U
M725_keeper GND Vdd #712 GND nmos W=0.0975U L=3.055U
M726_ GND Od_af_53_6 #fb716# GND nmos W=0.0975U L=0.13U
M727_keeper GND Vdd #715 GND nmos W=0.0975U L=3.055U
M728_ GND Oc_at_53_6 #fb719# GND nmos W=0.0975U L=0.13U
M729_keeper GND Vdd #718 GND nmos W=0.0975U L=3.055U
M730_ GND Oc_af_53_6 #fb722# GND nmos W=0.0975U L=0.13U
M731_keeper GND Vdd #721 GND nmos W=0.0975U L=3.055U
M732_keeper GND Vdd #724 GND nmos W=0.0975U L=3.055U
M733_ #3 __q_50_6 x_50_6 Vdd pmos W=0.1625U L=0.065U
M734_ #6 q_50_6 x_50_6 Vdd pmos W=0.1625U L=0.065U
M735_ #9 __rf_50_6 x_50_6 GND nmos W=0.0975U L=0.065U
M736_keeper #480 #fb479# x_50_6 Vdd pmos W=0.0975U L=0.065U
M737_keeper #481 #fb479# x_50_6 GND nmos W=0.0975U L=0.065U
M738_keeper #483 #fb482# q_50_6 Vdd pmos W=0.0975U L=0.065U
M739_keeper #484 #fb482# q_50_6 GND nmos W=0.0975U L=0.065U
M740_ #11 __q_51_6 x_51_6 Vdd pmos W=0.1625U L=0.065U
M741_ #14 q_51_6 x_51_6 Vdd pmos W=0.1625U L=0.065U
M742_ #17 __rf_51_6 x_51_6 GND nmos W=0.0975U L=0.065U
M743_keeper #486 #fb485# x_51_6 Vdd pmos W=0.0975U L=0.065U
M744_keeper #487 #fb485# x_51_6 GND nmos W=0.0975U L=0.065U
M745_keeper #489 #fb488# q_51_6 Vdd pmos W=0.0975U L=0.065U
M746_keeper #490 #fb488# q_51_6 GND nmos W=0.0975U L=0.065U
M747_ #19 __q_52_6 x_52_6 Vdd pmos W=0.1625U L=0.065U
M748_ #22 q_52_6 x_52_6 Vdd pmos W=0.1625U L=0.065U
M749_ #25 __rf_52_6 x_52_6 GND nmos W=0.0975U L=0.065U
M750_keeper #492 #fb491# x_52_6 Vdd pmos W=0.0975U L=0.065U
M751_keeper #493 #fb491# x_52_6 GND nmos W=0.0975U L=0.065U
M752_keeper #495 #fb494# q_52_6 Vdd pmos W=0.0975U L=0.065U
M753_keeper #496 #fb494# q_52_6 GND nmos W=0.0975U L=0.065U
M754_ #27 __q_53_6 x_53_6 Vdd pmos W=0.1625U L=0.065U
M755_ #30 q_53_6 x_53_6 Vdd pmos W=0.1625U L=0.065U
M756_ #33 __rf_53_6 x_53_6 GND nmos W=0.0975U L=0.065U
M757_keeper #498 #fb497# x_53_6 Vdd pmos W=0.0975U L=0.065U
M758_keeper #499 #fb497# x_53_6 GND nmos W=0.0975U L=0.065U
M759_keeper #501 #fb500# q_53_6 Vdd pmos W=0.0975U L=0.065U
M760_keeper #502 #fb500# q_53_6 GND nmos W=0.0975U L=0.065U
M761_ #35 __q_54_6 x_54_6 Vdd pmos W=0.1625U L=0.065U
M762_ #38 q_54_6 x_54_6 Vdd pmos W=0.1625U L=0.065U
M763_ #41 __rf_54_6 x_54_6 GND nmos W=0.0975U L=0.065U
M764_keeper #504 #fb503# x_54_6 Vdd pmos W=0.0975U L=0.065U
M765_keeper #505 #fb503# x_54_6 GND nmos W=0.0975U L=0.065U
M766_keeper #507 #fb506# q_54_6 Vdd pmos W=0.0975U L=0.065U
M767_keeper #508 #fb506# q_54_6 GND nmos W=0.0975U L=0.065U
M768_ #43 __q_55_6 x_55_6 Vdd pmos W=0.1625U L=0.065U
M769_ #46 q_55_6 x_55_6 Vdd pmos W=0.1625U L=0.065U
M770_ #49 __rf_55_6 x_55_6 GND nmos W=0.0975U L=0.065U
M771_keeper #510 #fb509# x_55_6 Vdd pmos W=0.0975U L=0.065U
M772_keeper #511 #fb509# x_55_6 GND nmos W=0.0975U L=0.065U
M773_keeper #513 #fb512# q_55_6 Vdd pmos W=0.0975U L=0.065U
M774_keeper #514 #fb512# q_55_6 GND nmos W=0.0975U L=0.065U
M775_ #51 __q_56_6 x_56_6 Vdd pmos W=0.1625U L=0.065U
M776_ #54 q_56_6 x_56_6 Vdd pmos W=0.1625U L=0.065U
M777_ #57 __rf_56_6 x_56_6 GND nmos W=0.0975U L=0.065U
M778_keeper #516 #fb515# x_56_6 Vdd pmos W=0.0975U L=0.065U
M779_keeper #517 #fb515# x_56_6 GND nmos W=0.0975U L=0.065U
M780_keeper #519 #fb518# q_56_6 Vdd pmos W=0.0975U L=0.065U
M781_keeper #520 #fb518# q_56_6 GND nmos W=0.0975U L=0.065U
M782_ #59 __q_57_6 x_57_6 Vdd pmos W=0.1625U L=0.065U
M783_ #62 q_57_6 x_57_6 Vdd pmos W=0.1625U L=0.065U
M784_ #65 __rf_57_6 x_57_6 GND nmos W=0.0975U L=0.065U
M785_keeper #522 #fb521# x_57_6 Vdd pmos W=0.0975U L=0.065U
M786_keeper #523 #fb521# x_57_6 GND nmos W=0.0975U L=0.065U
M787_keeper #525 #fb524# q_57_6 Vdd pmos W=0.0975U L=0.065U
M788_keeper #526 #fb524# q_57_6 GND nmos W=0.0975U L=0.065U
M789_ #67 x_50_6 __y_50_6 GND nmos W=0.0975U L=0.065U
M790_ #68 x_50_6 __y_50_6 Vdd pmos W=0.1625U L=0.065U
M791_keeper #528 #fb527# __y_50_6 Vdd pmos W=0.0975U L=0.065U
M792_keeper #529 #fb527# __y_50_6 GND nmos W=0.0975U L=0.065U
M793_ #70 x_52_6 __y_51_6 GND nmos W=0.0975U L=0.065U
M794_ #71 x_52_6 __y_51_6 Vdd pmos W=0.1625U L=0.065U
M795_keeper #531 #fb530# __y_51_6 Vdd pmos W=0.0975U L=0.065U
M796_keeper #532 #fb530# __y_51_6 GND nmos W=0.0975U L=0.065U
M797_ #73 x_54_6 __y_52_6 GND nmos W=0.0975U L=0.065U
M798_ #74 x_54_6 __y_52_6 Vdd pmos W=0.1625U L=0.065U
M799_keeper #534 #fb533# __y_52_6 Vdd pmos W=0.0975U L=0.065U
M800_keeper #535 #fb533# __y_52_6 GND nmos W=0.0975U L=0.065U
M801_ #76 x_56_6 __y_53_6 GND nmos W=0.0975U L=0.065U
M802_ #77 x_56_6 __y_53_6 Vdd pmos W=0.1625U L=0.065U
M803_keeper #537 #fb536# __y_53_6 Vdd pmos W=0.0975U L=0.065U
M804_keeper #538 #fb536# __y_53_6 GND nmos W=0.0975U L=0.065U
M805_ #79 __y_50_6 z_50_6 Vdd pmos W=0.1625U L=0.065U
M806_ #80 __y_50_6 z_50_6 GND nmos W=0.0975U L=0.065U
M807_keeper #540 #fb539# z_50_6 Vdd pmos W=0.0975U L=0.065U
M808_keeper #541 #fb539# z_50_6 GND nmos W=0.0975U L=0.065U
M809_ #82 __y_52_6 z_51_6 Vdd pmos W=0.1625U L=0.065U
M810_ #83 __y_52_6 z_51_6 GND nmos W=0.0975U L=0.065U
M811_keeper #543 #fb542# z_51_6 Vdd pmos W=0.0975U L=0.065U
M812_keeper #544 #fb542# z_51_6 GND nmos W=0.0975U L=0.065U
M813_ #85 z_50_6 __u GND nmos W=0.0975U L=0.065U
M814_ #86 z_50_6 __u Vdd pmos W=0.1625U L=0.065U
M815_keeper #546 #fb545# __u Vdd pmos W=0.0975U L=0.065U
M816_keeper #547 #fb545# __u GND nmos W=0.0975U L=0.065U
M817_ #88 __u s Vdd pmos W=0.325U L=0.065U
M818_ #128 l_50_6 s GND nmos W=0.195U L=0.065U
M819_keeper #549 #fb548# s Vdd pmos W=0.0975U L=0.065U
M820_keeper #550 #fb548# s GND nmos W=0.0975U L=0.065U
M821_ #91 b_50_6 __h_50_6 GND nmos W=0.0975U L=0.065U
M822_ #94 __b_50_6 __h_50_6 GND nmos W=0.0975U L=0.065U
M823_ #97 I_af_50_6 __h_50_6 Vdd pmos W=0.1625U L=0.065U
M824_keeper #552 #fb551# __h_50_6 Vdd pmos W=0.0975U L=0.065U
M825_keeper #553 #fb551# __h_50_6 GND nmos W=0.0975U L=0.065U
M826_ #318 __it_50_6 b_50_6 Vdd pmos W=0.1625U L=0.065U
M827_ #320 I_af_50_6 b_50_6 GND nmos W=0.0975U L=0.065U
M828_keeper #555 #fb554# b_50_6 Vdd pmos W=0.0975U L=0.065U
M829_keeper #556 #fb554# b_50_6 GND nmos W=0.0975U L=0.065U
M830_ #99 b_51_6 __h_51_6 GND nmos W=0.0975U L=0.065U
M831_ #102 __b_51_6 __h_51_6 GND nmos W=0.0975U L=0.065U
M832_ #105 I_af_51_6 __h_51_6 Vdd pmos W=0.1625U L=0.065U
M833_keeper #558 #fb557# __h_51_6 Vdd pmos W=0.0975U L=0.065U
M834_keeper #559 #fb557# __h_51_6 GND nmos W=0.0975U L=0.065U
M835_ #338 __it_51_6 b_51_6 Vdd pmos W=0.1625U L=0.065U
M836_ #340 I_af_51_6 b_51_6 GND nmos W=0.0975U L=0.065U
M837_keeper #561 #fb560# b_51_6 Vdd pmos W=0.0975U L=0.065U
M838_keeper #562 #fb560# b_51_6 GND nmos W=0.0975U L=0.065U
M839_ #107 b_52_6 __h_52_6 GND nmos W=0.0975U L=0.065U
M840_ #110 __b_52_6 __h_52_6 GND nmos W=0.0975U L=0.065U
M841_ #113 I_af_52_6 __h_52_6 Vdd pmos W=0.1625U L=0.065U
M842_keeper #564 #fb563# __h_52_6 Vdd pmos W=0.0975U L=0.065U
M843_keeper #565 #fb563# __h_52_6 GND nmos W=0.0975U L=0.065U
M844_ #358 __it_52_6 b_52_6 Vdd pmos W=0.1625U L=0.065U
M845_ #360 I_af_52_6 b_52_6 GND nmos W=0.0975U L=0.065U
M846_keeper #567 #fb566# b_52_6 Vdd pmos W=0.0975U L=0.065U
M847_keeper #568 #fb566# b_52_6 GND nmos W=0.0975U L=0.065U
M848_ #115 b_53_6 __h_53_6 GND nmos W=0.0975U L=0.065U
M849_ #118 __b_53_6 __h_53_6 GND nmos W=0.0975U L=0.065U
M850_ #121 I_af_53_6 __h_53_6 Vdd pmos W=0.1625U L=0.065U
M851_keeper #570 #fb569# __h_53_6 Vdd pmos W=0.0975U L=0.065U
M852_keeper #571 #fb569# __h_53_6 GND nmos W=0.0975U L=0.065U
M853_ #378 __it_53_6 b_53_6 Vdd pmos W=0.1625U L=0.065U
M854_ #380 I_af_53_6 b_53_6 GND nmos W=0.0975U L=0.065U
M855_keeper #573 #fb572# b_53_6 Vdd pmos W=0.0975U L=0.065U
M856_keeper #574 #fb572# b_53_6 GND nmos W=0.0975U L=0.065U
M857_ #123 __h_50_6 l_50_6 Vdd pmos W=0.1625U L=0.065U
M858_ #124 __h_50_6 l_50_6 GND nmos W=0.0975U L=0.065U
M859_keeper #576 #fb575# l_50_6 Vdd pmos W=0.0975U L=0.065U
M860_keeper #577 #fb575# l_50_6 GND nmos W=0.0975U L=0.065U
M861_ #126 __h_52_6 l_51_6 Vdd pmos W=0.1625U L=0.065U
M862_ #127 __h_52_6 l_51_6 GND nmos W=0.0975U L=0.065U
M863_keeper #579 #fb578# l_51_6 Vdd pmos W=0.0975U L=0.065U
M864_keeper #580 #fb578# l_51_6 GND nmos W=0.0975U L=0.065U
M865_ #129 l_51_6 #128 GND nmos W=0.195U L=0.065U
M866_ #251 __p1 A_aa Vdd pmos W=0.325U L=0.065U
M867_ #252 __ar A_aa GND nmos W=0.195U L=0.065U
M868_keeper #582 #fb581# A_aa Vdd pmos W=0.0975U L=0.065U
M869_keeper #583 #fb581# A_aa GND nmos W=0.0975U L=0.065U
M870_ #134 R_af_50_6 e_50_6 Vdd pmos W=0.1625U L=0.065U
M871_ #138 R_af_51_6 e_51_6 Vdd pmos W=0.1625U L=0.065U
M872_ #142 R_af_52_6 e_52_6 Vdd pmos W=0.1625U L=0.065U
M873_ #146 R_af_53_6 e_53_6 Vdd pmos W=0.1625U L=0.065U
M874_ #150 R_af_54_6 e_54_6 Vdd pmos W=0.1625U L=0.065U
M875_ #154 R_af_55_6 e_55_6 Vdd pmos W=0.1625U L=0.065U
M876_ #158 R_af_56_6 e_56_6 Vdd pmos W=0.1625U L=0.065U
M877_ #162 R_af_57_6 e_57_6 Vdd pmos W=0.1625U L=0.065U
M878_ #166 e_50_6 __f_50_6 GND nmos W=0.0975U L=0.065U
M879_ #167 e_50_6 __f_50_6 Vdd pmos W=0.1625U L=0.065U
M880_keeper #585 #fb584# __f_50_6 Vdd pmos W=0.0975U L=0.065U
M881_keeper #586 #fb584# __f_50_6 GND nmos W=0.0975U L=0.065U
M882_ #169 e_52_6 __f_51_6 GND nmos W=0.0975U L=0.065U
M883_ #170 e_52_6 __f_51_6 Vdd pmos W=0.1625U L=0.065U
M884_keeper #588 #fb587# __f_51_6 Vdd pmos W=0.0975U L=0.065U
M885_keeper #589 #fb587# __f_51_6 GND nmos W=0.0975U L=0.065U
M886_ #172 e_54_6 __f_52_6 GND nmos W=0.0975U L=0.065U
M887_ #173 e_54_6 __f_52_6 Vdd pmos W=0.1625U L=0.065U
M888_keeper #591 #fb590# __f_52_6 Vdd pmos W=0.0975U L=0.065U
M889_keeper #592 #fb590# __f_52_6 GND nmos W=0.0975U L=0.065U
M890_ #175 e_56_6 __f_53_6 GND nmos W=0.0975U L=0.065U
M891_ #176 e_56_6 __f_53_6 Vdd pmos W=0.1625U L=0.065U
M892_keeper #594 #fb593# __f_53_6 Vdd pmos W=0.0975U L=0.065U
M893_keeper #595 #fb593# __f_53_6 GND nmos W=0.0975U L=0.065U
M894_ #178 __f_50_6 g_50_6 Vdd pmos W=0.1625U L=0.065U
M895_ #179 __f_50_6 g_50_6 GND nmos W=0.0975U L=0.065U
M896_keeper #597 #fb596# g_50_6 Vdd pmos W=0.0975U L=0.065U
M897_keeper #598 #fb596# g_50_6 GND nmos W=0.0975U L=0.065U
M898_ #181 __f_52_6 g_51_6 Vdd pmos W=0.1625U L=0.065U
M899_ #182 __f_52_6 g_51_6 GND nmos W=0.0975U L=0.065U
M900_keeper #600 #fb599# g_51_6 Vdd pmos W=0.0975U L=0.065U
M901_keeper #601 #fb599# g_51_6 GND nmos W=0.0975U L=0.065U
M902_ #184 g_50_6 __m GND nmos W=0.0975U L=0.065U
M903_ #185 g_50_6 __m Vdd pmos W=0.1625U L=0.065U
M904_keeper #603 #fb602# __m Vdd pmos W=0.0975U L=0.065U
M905_keeper #604 #fb602# __m GND nmos W=0.0975U L=0.065U
M906_ #187 __m j Vdd pmos W=0.65U L=0.065U
M907_ #212 t_50_6 j GND nmos W=0.39U L=0.065U
M908_keeper #606 #fb605# j Vdd pmos W=0.0975U L=0.065U
M909_keeper #607 #fb605# j GND nmos W=0.0975U L=0.065U
M910_ #188 A_aa #187 Vdd pmos W=0.65U L=0.065U
M911_ #191 __if_50_6 __v_50_6 GND nmos W=0.0975U L=0.065U
M912_ #195 __if_51_6 __v_51_6 GND nmos W=0.0975U L=0.065U
M913_ #199 __if_52_6 __v_52_6 GND nmos W=0.0975U L=0.065U
M914_ #203 __if_53_6 __v_53_6 GND nmos W=0.0975U L=0.065U
M915_ #207 __v_50_6 t_50_6 Vdd pmos W=0.1625U L=0.065U
M916_ #208 __v_50_6 t_50_6 GND nmos W=0.0975U L=0.065U
M917_keeper #609 #fb608# t_50_6 Vdd pmos W=0.0975U L=0.065U
M918_keeper #610 #fb608# t_50_6 GND nmos W=0.0975U L=0.065U
M919_ #210 __v_52_6 t_51_6 Vdd pmos W=0.1625U L=0.065U
M920_ #211 __v_52_6 t_51_6 GND nmos W=0.0975U L=0.065U
M921_keeper #612 #fb611# t_51_6 Vdd pmos W=0.0975U L=0.065U
M922_keeper #613 #fb611# t_51_6 GND nmos W=0.0975U L=0.065U
M923_ #213 t_51_6 #212 GND nmos W=0.39U L=0.065U
M924_ #215 W_aa R_areq Vdd pmos W=0.65U L=0.065U
M925_keeper #615 #fb614# R_areq Vdd pmos W=0.0975U L=0.065U
M926_keeper #616 #fb614# R_areq GND nmos W=0.0975U L=0.065U
M927_ #216 Od_aa #215 Vdd pmos W=0.65U L=0.065U
M928_ #217 Oc_aa #216 Vdd pmos W=0.65U L=0.065U
M929_ #218 p0 #217 Vdd pmos W=0.65U L=0.065U
M930_ #219 A_aa #218 Vdd pmos W=0.65U L=0.065U
M931_ #220 s #219 Vdd pmos W=0.65U L=0.065U
M932_ #226 q_57_6 __p0 GND nmos W=0.39U L=0.065U
M933_ #226 q_56_6 __p0 GND nmos W=0.39U L=0.065U
M934_ #226 q_55_6 __p0 GND nmos W=0.39U L=0.065U
M935_ #226 q_54_6 __p0 GND nmos W=0.39U L=0.065U
M936_ #226 q_53_6 __p0 GND nmos W=0.39U L=0.065U
M937_ #226 q_52_6 __p0 GND nmos W=0.39U L=0.065U
M938_ #226 q_51_6 __p0 GND nmos W=0.39U L=0.065U
M939_ #226 q_50_6 __p0 GND nmos W=0.39U L=0.065U
M940_ #227 __wa __p0 Vdd pmos W=0.65U L=0.065U
M941_keeper #618 #fb617# __p0 Vdd pmos W=0.0975U L=0.065U
M942_keeper #619 #fb617# __p0 GND nmos W=0.0975U L=0.065U
M943_ #228 __oda #227 Vdd pmos W=0.65U L=0.065U
M944_ #237 q_50_6 p1 Vdd pmos W=0.65U L=0.065U
M945_keeper #621 #fb620# p1 Vdd pmos W=0.0975U L=0.065U
M946_keeper #622 #fb620# p1 GND nmos W=0.0975U L=0.065U
M947_ #235 __j #234 Vdd pmos W=0.65U L=0.065U
M948_ #234 q_57_6 #243 Vdd pmos W=0.65U L=0.065U
M949_ #238 q_51_6 #237 Vdd pmos W=0.65U L=0.065U
M950_ #239 q_52_6 #238 Vdd pmos W=0.65U L=0.065U
M951_ #240 q_53_6 #239 Vdd pmos W=0.65U L=0.065U
M952_ #241 q_54_6 #240 Vdd pmos W=0.65U L=0.065U
M953_ #242 q_55_6 #241 Vdd pmos W=0.65U L=0.065U
M954_ #243 q_56_6 #242 Vdd pmos W=0.65U L=0.065U
M955_ #245 __s __ia GND nmos W=0.0975U L=0.065U
M956_keeper #624 #fb623# __ia Vdd pmos W=0.0975U L=0.065U
M957_keeper #625 #fb623# __ia GND nmos W=0.0975U L=0.065U
M958_ #246 p0 #245 GND nmos W=0.0975U L=0.065U
M959_ #249 __p1 Cnt_areq GND nmos W=0.0975U L=0.065U
M960_keeper #627 #fb626# Cnt_areq Vdd pmos W=0.0975U L=0.065U
M961_keeper #628 #fb626# Cnt_areq GND nmos W=0.0975U L=0.065U
M962_ #250 __s #249 GND nmos W=0.0975U L=0.065U
M963_ #254 __q_50_6 dec_aI_at_50_6 Vdd pmos W=0.1625U L=0.065U
M964_keeper #630 #fb629# dec_aI_at_50_6 Vdd pmos W=0.0975U L=0.065U
M965_keeper #631 #fb629# dec_aI_at_50_6 GND nmos W=0.0975U L=0.065U
M966_ #255 I_aa #254 Vdd pmos W=0.1625U L=0.065U
M967_ #256 j #255 Vdd pmos W=0.1625U L=0.065U
M968_ #259 q_50_6 dec_aI_af_50_6 Vdd pmos W=0.1625U L=0.065U
M969_keeper #633 #fb632# dec_aI_af_50_6 Vdd pmos W=0.0975U L=0.065U
M970_keeper #634 #fb632# dec_aI_af_50_6 GND nmos W=0.0975U L=0.065U
M971_ #260 I_aa #259 Vdd pmos W=0.1625U L=0.065U
M972_ #261 j #260 Vdd pmos W=0.1625U L=0.065U
M973_ #263 __q_51_6 dec_aI_at_51_6 Vdd pmos W=0.1625U L=0.065U
M974_keeper #636 #fb635# dec_aI_at_51_6 Vdd pmos W=0.0975U L=0.065U
M975_keeper #637 #fb635# dec_aI_at_51_6 GND nmos W=0.0975U L=0.065U
M976_ #264 I_aa #263 Vdd pmos W=0.1625U L=0.065U
M977_ #265 j #264 Vdd pmos W=0.1625U L=0.065U
M978_ #267 q_51_6 dec_aI_af_51_6 Vdd pmos W=0.1625U L=0.065U
M979_keeper #639 #fb638# dec_aI_af_51_6 Vdd pmos W=0.0975U L=0.065U
M980_keeper #640 #fb638# dec_aI_af_51_6 GND nmos W=0.0975U L=0.065U
M981_ #268 I_aa #267 Vdd pmos W=0.1625U L=0.065U
M982_ #269 j #268 Vdd pmos W=0.1625U L=0.065U
M983_ #271 __q_52_6 dec_aI_at_52_6 Vdd pmos W=0.1625U L=0.065U
M984_keeper #642 #fb641# dec_aI_at_52_6 Vdd pmos W=0.0975U L=0.065U
M985_keeper #643 #fb641# dec_aI_at_52_6 GND nmos W=0.0975U L=0.065U
M986_ #272 I_aa #271 Vdd pmos W=0.1625U L=0.065U
M987_ #273 j #272 Vdd pmos W=0.1625U L=0.065U
M988_ #275 q_52_6 dec_aI_af_52_6 Vdd pmos W=0.1625U L=0.065U
M989_keeper #645 #fb644# dec_aI_af_52_6 Vdd pmos W=0.0975U L=0.065U
M990_keeper #646 #fb644# dec_aI_af_52_6 GND nmos W=0.0975U L=0.065U
M991_ #276 I_aa #275 Vdd pmos W=0.1625U L=0.065U
M992_ #277 j #276 Vdd pmos W=0.1625U L=0.065U
M993_ #279 __q_53_6 dec_aI_at_53_6 Vdd pmos W=0.1625U L=0.065U
M994_keeper #648 #fb647# dec_aI_at_53_6 Vdd pmos W=0.0975U L=0.065U
M995_keeper #649 #fb647# dec_aI_at_53_6 GND nmos W=0.0975U L=0.065U
M996_ #280 I_aa #279 Vdd pmos W=0.1625U L=0.065U
M997_ #281 j #280 Vdd pmos W=0.1625U L=0.065U
M998_ #283 q_53_6 dec_aI_af_53_6 Vdd pmos W=0.1625U L=0.065U
M999_keeper #651 #fb650# dec_aI_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1000_keeper #652 #fb650# dec_aI_af_53_6 GND nmos W=0.0975U L=0.065U
M1001_ #284 I_aa #283 Vdd pmos W=0.1625U L=0.065U
M1002_ #285 j #284 Vdd pmos W=0.1625U L=0.065U
M1003_ #287 __q_54_6 dec_aI_at_54_6 Vdd pmos W=0.1625U L=0.065U
M1004_keeper #654 #fb653# dec_aI_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1005_keeper #655 #fb653# dec_aI_at_54_6 GND nmos W=0.0975U L=0.065U
M1006_ #288 I_aa #287 Vdd pmos W=0.1625U L=0.065U
M1007_ #289 j #288 Vdd pmos W=0.1625U L=0.065U
M1008_ #291 q_54_6 dec_aI_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1009_keeper #657 #fb656# dec_aI_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1010_keeper #658 #fb656# dec_aI_af_54_6 GND nmos W=0.0975U L=0.065U
M1011_ #292 I_aa #291 Vdd pmos W=0.1625U L=0.065U
M1012_ #293 j #292 Vdd pmos W=0.1625U L=0.065U
M1013_ #295 __q_55_6 dec_aI_at_55_6 Vdd pmos W=0.1625U L=0.065U
M1014_keeper #660 #fb659# dec_aI_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1015_keeper #661 #fb659# dec_aI_at_55_6 GND nmos W=0.0975U L=0.065U
M1016_ #296 I_aa #295 Vdd pmos W=0.1625U L=0.065U
M1017_ #297 j #296 Vdd pmos W=0.1625U L=0.065U
M1018_ #299 q_55_6 dec_aI_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1019_keeper #663 #fb662# dec_aI_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1020_keeper #664 #fb662# dec_aI_af_55_6 GND nmos W=0.0975U L=0.065U
M1021_ #300 I_aa #299 Vdd pmos W=0.1625U L=0.065U
M1022_ #301 j #300 Vdd pmos W=0.1625U L=0.065U
M1023_ #303 __q_56_6 dec_aI_at_56_6 Vdd pmos W=0.1625U L=0.065U
M1024_keeper #666 #fb665# dec_aI_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1025_keeper #667 #fb665# dec_aI_at_56_6 GND nmos W=0.0975U L=0.065U
M1026_ #304 I_aa #303 Vdd pmos W=0.1625U L=0.065U
M1027_ #305 j #304 Vdd pmos W=0.1625U L=0.065U
M1028_ #307 q_56_6 dec_aI_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1029_keeper #669 #fb668# dec_aI_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1030_keeper #670 #fb668# dec_aI_af_56_6 GND nmos W=0.0975U L=0.065U
M1031_ #308 I_aa #307 Vdd pmos W=0.1625U L=0.065U
M1032_ #309 j #308 Vdd pmos W=0.1625U L=0.065U
M1033_ #311 __q_57_6 dec_aI_at_57_6 Vdd pmos W=0.1625U L=0.065U
M1034_keeper #672 #fb671# dec_aI_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1035_keeper #673 #fb671# dec_aI_at_57_6 GND nmos W=0.0975U L=0.065U
M1036_ #312 I_aa #311 Vdd pmos W=0.1625U L=0.065U
M1037_ #313 j #312 Vdd pmos W=0.1625U L=0.065U
M1038_ #315 q_57_6 dec_aI_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1039_keeper #675 #fb674# dec_aI_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1040_keeper #676 #fb674# dec_aI_af_57_6 GND nmos W=0.0975U L=0.065U
M1041_ #316 I_aa #315 Vdd pmos W=0.1625U L=0.065U
M1042_ #317 j #316 Vdd pmos W=0.1625U L=0.065U
M1043_ #319 __s #318 Vdd pmos W=0.1625U L=0.065U
M1044_ #321 s #320 GND nmos W=0.0975U L=0.065U
M1045_ #323 __b_50_6 Od_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1046_keeper #678 #fb677# Od_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1047_keeper #679 #fb677# Od_at_50_6 GND nmos W=0.0975U L=0.065U
M1048_ #324 I_aa #323 Vdd pmos W=0.1625U L=0.065U
M1049_ #325 j #324 Vdd pmos W=0.1625U L=0.065U
M1050_ #327 b_50_6 Od_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1051_keeper #681 #fb680# Od_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1052_keeper #682 #fb680# Od_af_50_6 GND nmos W=0.0975U L=0.065U
M1053_ #328 I_aa #327 Vdd pmos W=0.1625U L=0.065U
M1054_ #329 j #328 Vdd pmos W=0.1625U L=0.065U
M1055_ #331 __b_50_6 Oc_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1056_keeper #684 #fb683# Oc_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1057_keeper #685 #fb683# Oc_at_50_6 GND nmos W=0.0975U L=0.065U
M1058_ #332 I_aa #331 Vdd pmos W=0.1625U L=0.065U
M1059_ #333 j #332 Vdd pmos W=0.1625U L=0.065U
M1060_ #335 b_50_6 Oc_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1061_keeper #687 #fb686# Oc_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1062_keeper #688 #fb686# Oc_af_50_6 GND nmos W=0.0975U L=0.065U
M1063_ #336 I_aa #335 Vdd pmos W=0.1625U L=0.065U
M1064_ #337 j #336 Vdd pmos W=0.1625U L=0.065U
M1065_ #339 __s #338 Vdd pmos W=0.1625U L=0.065U
M1066_ #341 s #340 GND nmos W=0.0975U L=0.065U
M1067_ #343 __b_51_6 Od_at_51_6 Vdd pmos W=0.1625U L=0.065U
M1068_keeper #690 #fb689# Od_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1069_keeper #691 #fb689# Od_at_51_6 GND nmos W=0.0975U L=0.065U
M1070_ #344 I_aa #343 Vdd pmos W=0.1625U L=0.065U
M1071_ #345 j #344 Vdd pmos W=0.1625U L=0.065U
M1072_ #347 b_51_6 Od_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1073_keeper #693 #fb692# Od_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1074_keeper #694 #fb692# Od_af_51_6 GND nmos W=0.0975U L=0.065U
M1075_ #348 I_aa #347 Vdd pmos W=0.1625U L=0.065U
M1076_ #349 j #348 Vdd pmos W=0.1625U L=0.065U
M1077_ #351 __b_51_6 Oc_at_51_6 Vdd pmos W=0.1625U L=0.065U
M1078_keeper #696 #fb695# Oc_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1079_keeper #697 #fb695# Oc_at_51_6 GND nmos W=0.0975U L=0.065U
M1080_ #352 I_aa #351 Vdd pmos W=0.1625U L=0.065U
M1081_ #353 j #352 Vdd pmos W=0.1625U L=0.065U
M1082_ #355 b_51_6 Oc_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1083_keeper #699 #fb698# Oc_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1084_keeper #700 #fb698# Oc_af_51_6 GND nmos W=0.0975U L=0.065U
M1085_ #356 I_aa #355 Vdd pmos W=0.1625U L=0.065U
M1086_ #357 j #356 Vdd pmos W=0.1625U L=0.065U
M1087_ #359 __s #358 Vdd pmos W=0.1625U L=0.065U
M1088_ #361 s #360 GND nmos W=0.0975U L=0.065U
M1089_ #363 __b_52_6 Od_at_52_6 Vdd pmos W=0.1625U L=0.065U
M1090_keeper #702 #fb701# Od_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1091_keeper #703 #fb701# Od_at_52_6 GND nmos W=0.0975U L=0.065U
M1092_ #364 I_aa #363 Vdd pmos W=0.1625U L=0.065U
M1093_ #365 j #364 Vdd pmos W=0.1625U L=0.065U
M1094_ #367 b_52_6 Od_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1095_keeper #705 #fb704# Od_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1096_keeper #706 #fb704# Od_af_52_6 GND nmos W=0.0975U L=0.065U
M1097_ #368 I_aa #367 Vdd pmos W=0.1625U L=0.065U
M1098_ #369 j #368 Vdd pmos W=0.1625U L=0.065U
M1099_ #371 __b_52_6 Oc_at_52_6 Vdd pmos W=0.1625U L=0.065U
M1100_keeper #708 #fb707# Oc_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1101_keeper #709 #fb707# Oc_at_52_6 GND nmos W=0.0975U L=0.065U
M1102_ #372 I_aa #371 Vdd pmos W=0.1625U L=0.065U
M1103_ #373 j #372 Vdd pmos W=0.1625U L=0.065U
M1104_ #375 b_52_6 Oc_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1105_keeper #711 #fb710# Oc_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1106_keeper #712 #fb710# Oc_af_52_6 GND nmos W=0.0975U L=0.065U
M1107_ #376 I_aa #375 Vdd pmos W=0.1625U L=0.065U
M1108_ #377 j #376 Vdd pmos W=0.1625U L=0.065U
M1109_ #379 __s #378 Vdd pmos W=0.1625U L=0.065U
M1110_ #381 s #380 GND nmos W=0.0975U L=0.065U
M1111_ #383 __b_53_6 Od_at_53_6 Vdd pmos W=0.1625U L=0.065U
M1112_keeper #714 #fb713# Od_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1113_keeper #715 #fb713# Od_at_53_6 GND nmos W=0.0975U L=0.065U
M1114_ #384 I_aa #383 Vdd pmos W=0.1625U L=0.065U
M1115_ #385 j #384 Vdd pmos W=0.1625U L=0.065U
M1116_ #387 b_53_6 Od_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1117_keeper #717 #fb716# Od_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1118_keeper #718 #fb716# Od_af_53_6 GND nmos W=0.0975U L=0.065U
M1119_ #388 I_aa #387 Vdd pmos W=0.1625U L=0.065U
M1120_ #389 j #388 Vdd pmos W=0.1625U L=0.065U
M1121_ #391 __b_53_6 Oc_at_53_6 Vdd pmos W=0.1625U L=0.065U
M1122_keeper #720 #fb719# Oc_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1123_keeper #721 #fb719# Oc_at_53_6 GND nmos W=0.0975U L=0.065U
M1124_ #392 I_aa #391 Vdd pmos W=0.1625U L=0.065U
M1125_ #393 j #392 Vdd pmos W=0.1625U L=0.065U
M1126_ #395 b_53_6 Oc_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1127_keeper #723 #fb722# Oc_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1128_keeper #724 #fb722# Oc_af_53_6 GND nmos W=0.0975U L=0.065U
M1129_ #396 I_aa #395 Vdd pmos W=0.1625U L=0.065U
M1130_ #397 j #396 Vdd pmos W=0.1625U L=0.065U
M1131_ #399 dec_aO_at_50_6 __wt_50_6 Vdd pmos W=0.1625U L=0.065U
M1132_ #403 dec_aO_af_50_6 __wf_50_6 Vdd pmos W=0.1625U L=0.065U
M1133_ #409 dec_aO_at_51_6 __wt_51_6 Vdd pmos W=0.1625U L=0.065U
M1134_ #413 dec_aO_af_51_6 __wf_51_6 Vdd pmos W=0.1625U L=0.065U
M1135_ #419 dec_aO_at_52_6 __wt_52_6 Vdd pmos W=0.1625U L=0.065U
M1136_ #423 dec_aO_af_52_6 __wf_52_6 Vdd pmos W=0.1625U L=0.065U
M1137_ #429 dec_aO_at_53_6 __wt_53_6 Vdd pmos W=0.1625U L=0.065U
M1138_ #433 dec_aO_af_53_6 __wf_53_6 Vdd pmos W=0.1625U L=0.065U
M1139_ #439 dec_aO_at_54_6 __wt_54_6 Vdd pmos W=0.1625U L=0.065U
M1140_ #443 dec_aO_af_54_6 __wf_54_6 Vdd pmos W=0.1625U L=0.065U
M1141_ #449 dec_aO_at_55_6 __wt_55_6 Vdd pmos W=0.1625U L=0.065U
M1142_ #453 dec_aO_af_55_6 __wf_55_6 Vdd pmos W=0.1625U L=0.065U
M1143_ #459 dec_aO_at_56_6 __wt_56_6 Vdd pmos W=0.1625U L=0.065U
M1144_ #463 dec_aO_af_56_6 __wf_56_6 Vdd pmos W=0.1625U L=0.065U
M1145_ #469 dec_aO_at_57_6 __wt_57_6 Vdd pmos W=0.1625U L=0.065U
M1146_ #473 dec_aO_af_57_6 __wf_57_6 Vdd pmos W=0.1625U L=0.065U
xdec dec_aI_at_50_6 dec_aI_at_51_6 dec_aI_at_52_6 dec_aI_at_53_6 dec_aI_at_54_6 dec_aI_at_55_6 dec_aI_at_56_6
+ dec_aI_at_57_6 dec_aI_af_50_6 dec_aI_af_51_6 dec_aI_af_52_6 dec_aI_af_53_6 dec_aI_af_54_6 dec_aI_af_55_6
+ dec_aI_af_56_6 dec_aI_af_57_6 dec_aO_at_50_6 dec_aO_at_51_6 dec_aO_at_52_6 dec_aO_at_53_6 dec_aO_at_54_6
+ dec_aO_at_55_6 dec_aO_at_56_6 dec_aO_at_57_6 dec_aO_af_50_6 dec_aO_af_51_6 dec_aO_af_52_6 dec_aO_af_53_6
+ dec_aO_af_54_6 dec_aO_af_55_6 dec_aO_af_56_6 dec_aO_af_57_6 CounterDec
.ends
*---- end of process: ChildServer<> -----
*
*---- act defproc: Merge<8,f> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.t[4] I0.t[5] I0.t[6] I0.t[7] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.f[4] I0.f[5] I0.f[6] I0.f[7] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.t[4] I1.t[5] I1.t[6] I1.t[7] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.f[4] I1.f[5] I1.f[6] I1.f[7] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.a
*
.subckt Merge_38_7f_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_at_54_6 I0_at_55_6 I0_at_56_6 I0_at_57_6
+ I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_af_54_6 I0_af_55_6 I0_af_56_6 I0_af_57_6 I0_aa I1_at_50_6
+ I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_at_54_6 I1_at_55_6 I1_at_56_6 I1_at_57_6 I1_af_50_6 I1_af_51_6
+ I1_af_52_6 I1_af_53_6 I1_af_54_6 I1_af_55_6 I1_af_56_6 I1_af_57_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6
+ O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6
+ O_af_55_6 O_af_56_6 O_af_57_6 O_aa
*.PININFO I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_at_54_6:I I0_at_55_6:I I0_at_56_6:I I0_at_57_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_af_54_6:I I0_af_55_6:I I0_af_56_6:I I0_af_57_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_at_54_6:I I1_at_55_6:I I1_at_56_6:I I1_at_57_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_af_54_6:I I1_af_55_6:I I1_af_56_6:I I1_af_57_6:I I1_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_at_54_6:O O_at_55_6:O O_at_56_6:O O_at_57_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_af_54_6:O O_af_55_6:O O_af_56_6:O O_af_57_6:O O_aa:I
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
M16_ Vdd I0_at_57_6 #68 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I0_af_57_6 #70 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd n__I0__a I0_aa Vdd pmos W=0.1625U L=0.065U
M19_ Vdd n__I1__a I1_aa Vdd pmos W=0.1625U L=0.065U
M20_ Vdd n__O__t_50_6 O_at_50_6 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd n__O__f_50_6 O_af_50_6 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd n__O__t_51_6 O_at_51_6 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd n__O__f_51_6 O_af_51_6 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd n__O__t_52_6 O_at_52_6 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd n__O__f_52_6 O_af_52_6 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd n__O__t_53_6 O_at_53_6 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd n__O__f_53_6 O_af_53_6 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd n__O__t_54_6 O_at_54_6 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd n__O__f_54_6 O_af_54_6 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd n__O__t_55_6 O_at_55_6 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd n__O__f_55_6 O_af_55_6 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd n__O__t_56_6 O_at_56_6 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd n__O__f_56_6 O_af_56_6 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd n__O__t_57_6 O_at_57_6 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd n__O__f_57_6 O_af_57_6 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd n__I0__a #fb89# Vdd pmos W=0.1625U L=0.13U
M37_ Vdd n__I1__a #fb92# Vdd pmos W=0.1625U L=0.13U
M38_keeper Vdd GND #90 Vdd pmos W=0.0975U L=0.585U
M39_keeper Vdd GND #93 Vdd pmos W=0.0975U L=0.585U
M40_ GND O_aa #3 GND nmos W=0.0975U L=0.065U
M41_ GND O_aa #8 GND nmos W=0.0975U L=0.065U
M42_ GND I0_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M43_ GND I1_at_50_6 n__O__t_50_6 GND nmos W=0.0975U L=0.065U
M44_ GND I0_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M45_ GND I1_af_50_6 n__O__f_50_6 GND nmos W=0.0975U L=0.065U
M46_ GND I0_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M47_ GND I1_at_51_6 n__O__t_51_6 GND nmos W=0.0975U L=0.065U
M48_ GND I0_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M49_ GND I1_af_51_6 n__O__f_51_6 GND nmos W=0.0975U L=0.065U
M50_ GND I0_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M51_ GND I1_at_52_6 n__O__t_52_6 GND nmos W=0.0975U L=0.065U
M52_ GND I0_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M53_ GND I1_af_52_6 n__O__f_52_6 GND nmos W=0.0975U L=0.065U
M54_ GND I0_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M55_ GND I1_at_53_6 n__O__t_53_6 GND nmos W=0.0975U L=0.065U
M56_ GND I0_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M57_ GND I1_af_53_6 n__O__f_53_6 GND nmos W=0.0975U L=0.065U
M58_ GND I0_at_54_6 n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M59_ GND I1_at_54_6 n__O__t_54_6 GND nmos W=0.0975U L=0.065U
M60_ GND I0_af_54_6 n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M61_ GND I1_af_54_6 n__O__f_54_6 GND nmos W=0.0975U L=0.065U
M62_ GND I0_at_55_6 n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M63_ GND I1_at_55_6 n__O__t_55_6 GND nmos W=0.0975U L=0.065U
M64_ GND I0_af_55_6 n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M65_ GND I1_af_55_6 n__O__f_55_6 GND nmos W=0.0975U L=0.065U
M66_ GND I0_at_56_6 n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M67_ GND I1_at_56_6 n__O__t_56_6 GND nmos W=0.0975U L=0.065U
M68_ GND I0_af_56_6 n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M69_ GND I1_af_56_6 n__O__f_56_6 GND nmos W=0.0975U L=0.065U
M70_ GND I0_at_57_6 n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M71_ GND I1_at_57_6 n__O__t_57_6 GND nmos W=0.0975U L=0.065U
M72_ GND I0_af_57_6 n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M73_ GND I1_af_57_6 n__O__f_57_6 GND nmos W=0.0975U L=0.065U
M74_ GND n__I0__a I0_aa GND nmos W=0.0975U L=0.065U
M75_ GND n__I1__a I1_aa GND nmos W=0.0975U L=0.065U
M76_ GND n__O__t_50_6 O_at_50_6 GND nmos W=0.0975U L=0.065U
M77_ GND n__O__f_50_6 O_af_50_6 GND nmos W=0.0975U L=0.065U
M78_ GND n__O__t_51_6 O_at_51_6 GND nmos W=0.0975U L=0.065U
M79_ GND n__O__f_51_6 O_af_51_6 GND nmos W=0.0975U L=0.065U
M80_ GND n__O__t_52_6 O_at_52_6 GND nmos W=0.0975U L=0.065U
M81_ GND n__O__f_52_6 O_af_52_6 GND nmos W=0.0975U L=0.065U
M82_ GND n__O__t_53_6 O_at_53_6 GND nmos W=0.0975U L=0.065U
M83_ GND n__O__f_53_6 O_af_53_6 GND nmos W=0.0975U L=0.065U
M84_ GND n__O__t_54_6 O_at_54_6 GND nmos W=0.0975U L=0.065U
M85_ GND n__O__f_54_6 O_af_54_6 GND nmos W=0.0975U L=0.065U
M86_ GND n__O__t_55_6 O_at_55_6 GND nmos W=0.0975U L=0.065U
M87_ GND n__O__f_55_6 O_af_55_6 GND nmos W=0.0975U L=0.065U
M88_ GND n__O__t_56_6 O_at_56_6 GND nmos W=0.0975U L=0.065U
M89_ GND n__O__f_56_6 O_af_56_6 GND nmos W=0.0975U L=0.065U
M90_ GND n__O__t_57_6 O_at_57_6 GND nmos W=0.0975U L=0.065U
M91_ GND n__O__f_57_6 O_af_57_6 GND nmos W=0.0975U L=0.065U
M92_ GND n__I0__a #fb89# GND nmos W=0.0975U L=0.13U
M93_ GND n__I1__a #fb92# GND nmos W=0.0975U L=0.13U
M94_keeper GND Vdd #91 GND nmos W=0.0975U L=0.715U
M95_keeper GND Vdd #94 GND nmos W=0.0975U L=0.715U
M96_ #3 I0_at_57_6 n__I0__a GND nmos W=0.0975U L=0.065U
M97_ #3 I0_af_57_6 n__I0__a GND nmos W=0.0975U L=0.065U
M98_keeper #90 #fb89# n__I0__a Vdd pmos W=0.0975U L=0.065U
M99_keeper #91 #fb89# n__I0__a GND nmos W=0.0975U L=0.065U
M100_ #8 I1_at_57_6 n__I1__a GND nmos W=0.0975U L=0.065U
M101_ #8 I1_af_57_6 n__I1__a GND nmos W=0.0975U L=0.065U
M102_keeper #93 #fb92# n__I1__a Vdd pmos W=0.0975U L=0.065U
M103_keeper #94 #fb92# n__I1__a GND nmos W=0.0975U L=0.065U
M104_ #14 I1_at_50_6 n__O__t_50_6 Vdd pmos W=0.1625U L=0.065U
M105_ #18 I1_af_50_6 n__O__f_50_6 Vdd pmos W=0.1625U L=0.065U
M106_ #22 I1_at_51_6 n__O__t_51_6 Vdd pmos W=0.1625U L=0.065U
M107_ #26 I1_af_51_6 n__O__f_51_6 Vdd pmos W=0.1625U L=0.065U
M108_ #30 I1_at_52_6 n__O__t_52_6 Vdd pmos W=0.1625U L=0.065U
M109_ #34 I1_af_52_6 n__O__f_52_6 Vdd pmos W=0.1625U L=0.065U
M110_ #38 I1_at_53_6 n__O__t_53_6 Vdd pmos W=0.1625U L=0.065U
M111_ #42 I1_af_53_6 n__O__f_53_6 Vdd pmos W=0.1625U L=0.065U
M112_ #46 I1_at_54_6 n__O__t_54_6 Vdd pmos W=0.1625U L=0.065U
M113_ #50 I1_af_54_6 n__O__f_54_6 Vdd pmos W=0.1625U L=0.065U
M114_ #54 I1_at_55_6 n__O__t_55_6 Vdd pmos W=0.1625U L=0.065U
M115_ #58 I1_af_55_6 n__O__f_55_6 Vdd pmos W=0.1625U L=0.065U
M116_ #62 I1_at_56_6 n__O__t_56_6 Vdd pmos W=0.1625U L=0.065U
M117_ #66 I1_af_56_6 n__O__f_56_6 Vdd pmos W=0.1625U L=0.065U
M118_ #68 I1_at_57_6 n__O__t_57_6 Vdd pmos W=0.1625U L=0.065U
M119_ #70 I1_af_57_6 n__O__f_57_6 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: Merge<8,f> -----
*
*---- act defproc: QVar<> -----
* raw ports:  reset W0.t[0] W0.t[1] W0.t[2] W0.t[3] W0.t[4] W0.t[5] W0.t[6] W0.t[7] W0.f[0] W0.f[1] W0.f[2] W0.f[3] W0.f[4] W0.f[5] W0.f[6] W0.f[7] W0.a W1.t[0] W1.t[1] W1.t[2] W1.t[3] W1.t[4] W1.t[5] W1.t[6] W1.t[7] W1.f[0] W1.f[1] W1.f[2] W1.f[3] W1.f[4] W1.f[5] W1.f[6] W1.f[7] W1.a R.req R.t[0] R.t[1] R.t[2] R.t[3] R.t[4] R.t[5] R.t[6] R.t[7] R.f[0] R.f[1] R.f[2] R.f[3] R.f[4] R.f[5] R.f[6] R.f[7]
*
.subckt QVar reset W0_at_50_6 W0_at_51_6 W0_at_52_6 W0_at_53_6 W0_at_54_6 W0_at_55_6 W0_at_56_6 W0_at_57_6
+ W0_af_50_6 W0_af_51_6 W0_af_52_6 W0_af_53_6 W0_af_54_6 W0_af_55_6 W0_af_56_6 W0_af_57_6 W0_aa W1_at_50_6
+ W1_at_51_6 W1_at_52_6 W1_at_53_6 W1_at_54_6 W1_at_55_6 W1_at_56_6 W1_at_57_6 W1_af_50_6 W1_af_51_6
+ W1_af_52_6 W1_af_53_6 W1_af_54_6 W1_af_55_6 W1_af_56_6 W1_af_57_6 W1_aa R_areq R_at_50_6 R_at_51_6
+ R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6
+ R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6
*.PININFO reset:I W0_at_50_6:I W0_at_51_6:I W0_at_52_6:I W0_at_53_6:I W0_at_54_6:I W0_at_55_6:I W0_at_56_6:I W0_at_57_6:I W0_af_50_6:I W0_af_51_6:I W0_af_52_6:I W0_af_53_6:I W0_af_54_6:I W0_af_55_6:I W0_af_56_6:I W0_af_57_6:I W0_aa:O W1_at_50_6:I W1_at_51_6:I W1_at_52_6:I W1_at_53_6:I W1_at_54_6:I W1_at_55_6:I W1_at_56_6:I W1_at_57_6:I W1_af_50_6:I W1_af_51_6:I W1_af_52_6:I W1_af_53_6:I W1_af_54_6:I W1_af_55_6:I W1_af_56_6:I W1_af_57_6:I W1_aa:O R_areq:I R_at_50_6:O R_at_51_6:O R_at_52_6:O R_at_53_6:O R_at_54_6:O R_at_55_6:O R_at_56_6:O R_at_57_6:O R_af_50_6:O R_af_51_6:O R_af_52_6:O R_af_53_6:O R_af_54_6:O R_af_55_6:O R_af_56_6:O R_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xreg reset reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6
+ reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6
+ reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6
+ R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6
+ R_af_56_6 R_af_57_6 Reg8
xmerge W0_at_50_6 W0_at_51_6 W0_at_52_6 W0_at_53_6 W0_at_54_6 W0_at_55_6 W0_at_56_6 W0_at_57_6 W0_af_50_6
+ W0_af_51_6 W0_af_52_6 W0_af_53_6 W0_af_54_6 W0_af_55_6 W0_af_56_6 W0_af_57_6 W0_aa W1_at_50_6 W1_at_51_6
+ W1_at_52_6 W1_at_53_6 W1_at_54_6 W1_at_55_6 W1_at_56_6 W1_at_57_6 W1_af_50_6 W1_af_51_6 W1_af_52_6
+ W1_af_53_6 W1_af_54_6 W1_af_55_6 W1_af_56_6 W1_af_57_6 W1_aa reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6
+ reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6 reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6
+ reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6 reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa
+ Merge_38_7f_4
.ends
*---- end of process: QVar<> -----
*
*---- act defproc: SUpdate<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Od0.t[0] Od0.t[1] Od0.t[2] Od0.t[3] Od0.f[0] Od0.f[1] Od0.f[2] Od0.f[3] Od0.a Od1.t[0] Od1.t[1] Od1.t[2] Od1.t[3] Od1.f[0] Od1.f[1] Od1.f[2] Od1.f[3] Od1.a Od2.t[0] Od2.t[1] Od2.t[2] Od2.t[3] Od2.f[0] Od2.f[1] Od2.f[2] Od2.f[3] Od2.a Od3.t[0] Od3.t[1] Od3.t[2] Od3.t[3] Od3.f[0] Od3.f[1] Od3.f[2] Od3.f[3] Od3.a W0.t[0] W0.t[1] W0.t[2] W0.t[3] W0.t[4] W0.t[5] W0.t[6] W0.t[7] W0.f[0] W0.f[1] W0.f[2] W0.f[3] W0.f[4] W0.f[5] W0.f[6] W0.f[7] W0.a W1.t[0] W1.t[1] W1.t[2] W1.t[3] W1.t[4] W1.t[5] W1.t[6] W1.t[7] W1.f[0] W1.f[1] W1.f[2] W1.f[3] W1.f[4] W1.f[5] W1.f[6] W1.f[7] W1.a W2.t[0] W2.t[1] W2.t[2] W2.t[3] W2.t[4] W2.t[5] W2.t[6] W2.t[7] W2.f[0] W2.f[1] W2.f[2] W2.f[3] W2.f[4] W2.f[5] W2.f[6] W2.f[7] W2.a W3.t[0] W3.t[1] W3.t[2] W3.t[3] W3.t[4] W3.t[5] W3.t[6] W3.t[7] W3.f[0] W3.f[1] W3.f[2] W3.f[3] W3.f[4] W3.f[5] W3.f[6] W3.f[7] W3.a Ch.t[0] Ch.t[1] Ch.t[2] Ch.t[3] Ch.f[0] Ch.f[1] Ch.f[2] Ch.f[3] Ch.a A.req A.a
*
.subckt SUpdate reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Od0_at_50_6 Od0_at_51_6 Od0_at_52_6 Od0_at_53_6 Od0_af_50_6 Od0_af_51_6 Od0_af_52_6 Od0_af_53_6 Od0_aa
+ Od1_at_50_6 Od1_at_51_6 Od1_at_52_6 Od1_at_53_6 Od1_af_50_6 Od1_af_51_6 Od1_af_52_6 Od1_af_53_6 Od1_aa
+ Od2_at_50_6 Od2_at_51_6 Od2_at_52_6 Od2_at_53_6 Od2_af_50_6 Od2_af_51_6 Od2_af_52_6 Od2_af_53_6 Od2_aa
+ Od3_at_50_6 Od3_at_51_6 Od3_at_52_6 Od3_at_53_6 Od3_af_50_6 Od3_af_51_6 Od3_af_52_6 Od3_af_53_6 Od3_aa
+ W0_at_50_6 W0_at_51_6 W0_at_52_6 W0_at_53_6 W0_at_54_6 W0_at_55_6 W0_at_56_6 W0_at_57_6 W0_af_50_6
+ W0_af_51_6 W0_af_52_6 W0_af_53_6 W0_af_54_6 W0_af_55_6 W0_af_56_6 W0_af_57_6 W0_aa W1_at_50_6 W1_at_51_6
+ W1_at_52_6 W1_at_53_6 W1_at_54_6 W1_at_55_6 W1_at_56_6 W1_at_57_6 W1_af_50_6 W1_af_51_6 W1_af_52_6
+ W1_af_53_6 W1_af_54_6 W1_af_55_6 W1_af_56_6 W1_af_57_6 W1_aa W2_at_50_6 W2_at_51_6 W2_at_52_6 W2_at_53_6
+ W2_at_54_6 W2_at_55_6 W2_at_56_6 W2_at_57_6 W2_af_50_6 W2_af_51_6 W2_af_52_6 W2_af_53_6 W2_af_54_6
+ W2_af_55_6 W2_af_56_6 W2_af_57_6 W2_aa W3_at_50_6 W3_at_51_6 W3_at_52_6 W3_at_53_6 W3_at_54_6 W3_at_55_6
+ W3_at_56_6 W3_at_57_6 W3_af_50_6 W3_af_51_6 W3_af_52_6 W3_af_53_6 W3_af_54_6 W3_af_55_6 W3_af_56_6
+ W3_af_57_6 W3_aa Ch_at_50_6 Ch_at_51_6 Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6
+ Ch_aa A_areq A_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O Od0_at_50_6:O Od0_at_51_6:O Od0_at_52_6:O Od0_at_53_6:O Od0_af_50_6:O Od0_af_51_6:O Od0_af_52_6:O Od0_af_53_6:O Od0_aa:I Od1_at_50_6:O Od1_at_51_6:O Od1_at_52_6:O Od1_at_53_6:O Od1_af_50_6:O Od1_af_51_6:O Od1_af_52_6:O Od1_af_53_6:O Od1_aa:I Od2_at_50_6:O Od2_at_51_6:O Od2_at_52_6:O Od2_at_53_6:O Od2_af_50_6:O Od2_af_51_6:O Od2_af_52_6:O Od2_af_53_6:O Od2_aa:I Od3_at_50_6:O Od3_at_51_6:O Od3_at_52_6:O Od3_at_53_6:O Od3_af_50_6:O Od3_af_51_6:O Od3_af_52_6:O Od3_af_53_6:O Od3_aa:I W0_at_50_6:O W0_at_51_6:O W0_at_52_6:O W0_at_53_6:O W0_at_54_6:O W0_at_55_6:O W0_at_56_6:O W0_at_57_6:O W0_af_50_6:O W0_af_51_6:O W0_af_52_6:O W0_af_53_6:O W0_af_54_6:O W0_af_55_6:O W0_af_56_6:O W0_af_57_6:O W0_aa:I W1_at_50_6:O W1_at_51_6:O W1_at_52_6:O W1_at_53_6:O W1_at_54_6:O W1_at_55_6:O W1_at_56_6:O W1_at_57_6:O W1_af_50_6:O W1_af_51_6:O W1_af_52_6:O W1_af_53_6:O W1_af_54_6:O W1_af_55_6:O W1_af_56_6:O W1_af_57_6:O W1_aa:I W2_at_50_6:O W2_at_51_6:O W2_at_52_6:O W2_at_53_6:O W2_at_54_6:O W2_at_55_6:O W2_at_56_6:O W2_at_57_6:O W2_af_50_6:O W2_af_51_6:O W2_af_52_6:O W2_af_53_6:O W2_af_54_6:O W2_af_55_6:O W2_af_56_6:O W2_af_57_6:O W2_aa:I W3_at_50_6:O W3_at_51_6:O W3_at_52_6:O W3_at_53_6:O W3_at_54_6:O W3_at_55_6:O W3_at_56_6:O W3_at_57_6:O W3_af_50_6:O W3_af_51_6:O W3_af_52_6:O W3_af_53_6:O W3_af_54_6:O W3_af_55_6:O W3_af_56_6:O W3_af_57_6:O W3_aa:I Ch_at_50_6:O Ch_at_51_6:O Ch_at_52_6:O Ch_at_53_6:O Ch_af_50_6:O Ch_af_51_6:O Ch_af_52_6:O Ch_af_53_6:O Ch_aa:I A_areq:I A_aa:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __x_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_50_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_50_6 (combinational)
* __x_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_51_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_51_6 (combinational)
* __x_52_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_52_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_52_6 (combinational)
* __x_53_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* b_53_6 (state-holding): pup_reff=1.2; pdn_reff=2
* __b_53_6 (combinational)
* y_50_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* y_51_6 (state-holding): pup_reff=0.8; pdn_reff=1.33333
* __z (state-holding): pup_reff=0.8; pdn_reff=1.33333
* k (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __p1 (combinational)
* __p0 (state-holding): pup_reff=2.4; pdn_reff=4
* __ia (state-holding): pup_reff=2.8; pdn_reff=2.66667
* __s (combinational)
* __r (combinational)
* p1 (state-holding): pup_reff=1.2; pdn_reff=4
* __ar (combinational)
* __it_53_6 (combinational)
* __it_52_6 (combinational)
* __it_51_6 (combinational)
* __it_50_6 (combinational)
* __wa_50_6 (combinational)
* __wa_51_6 (combinational)
* __wa_52_6 (combinational)
* __wa_53_6 (combinational)
* __cha (combinational)
* p0 (combinational)
* A_aa (state-holding): pup_reff=1.2; pdn_reff=1.33333
* s (state-holding): pup_reff=2.4; pdn_reff=3.33333
* Od0_at_50_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od0_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* I_aa (combinational)
* Od0_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od0_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od0_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od0_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od0_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od0_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od1_at_50_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od1_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od1_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od1_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od1_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od1_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od1_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od1_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od2_at_50_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od2_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od2_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od2_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od2_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od2_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od2_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od2_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od3_at_50_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od3_af_50_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od3_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od3_af_51_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od3_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od3_af_52_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* Od3_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* Od3_af_53_6 (state-holding): pup_reff=0.8; pdn_reff=0.666667
* __aa (combinational)
* W0_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_54_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_54_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_55_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_55_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_56_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_56_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_57_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W0_af_57_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W0_at_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W0_af_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W1_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_54_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_54_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_55_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_55_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_56_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_56_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_57_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W1_af_57_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W1_at_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W1_af_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W2_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_54_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_54_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_55_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_55_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_56_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_56_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_57_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W2_af_57_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W2_at_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W2_af_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W3_at_51_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_51_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_52_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_52_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_53_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_53_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_54_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_54_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_55_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_55_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_56_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_56_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_57_6 (state-holding): pup_reff=-1; pdn_reff=0.666667
* W3_af_57_6 (state-holding): pup_reff=1.6; pdn_reff=0.666667
* W3_at_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* W3_af_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_at_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_af_50_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_at_51_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_af_51_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_at_52_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_af_52_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_at_53_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* Ch_af_53_6 (state-holding): pup_reff=2; pdn_reff=0.666667
* __if_50_6 (combinational)
* __if_51_6 (combinational)
* __if_52_6 (combinational)
* __if_53_6 (combinational)
*
* --- end node flags ---
*
M0_ Vdd I_at_50_6 #9 Vdd pmos W=0.1625U L=0.065U
M1_ Vdd I_at_51_6 #17 Vdd pmos W=0.1625U L=0.065U
M2_ Vdd I_at_52_6 #25 Vdd pmos W=0.1625U L=0.065U
M3_ Vdd I_at_53_6 #33 Vdd pmos W=0.1625U L=0.065U
M4_ Vdd __x_51_6 #35 Vdd pmos W=0.1625U L=0.065U
M5_ Vdd __x_53_6 #38 Vdd pmos W=0.1625U L=0.065U
M6_ Vdd y_51_6 #42 Vdd pmos W=0.1625U L=0.065U
M7_ Vdd __p1 #44 Vdd pmos W=0.65U L=0.065U
M8_ Vdd __ia #55 Vdd pmos W=0.1625U L=0.065U
M9_ Vdd __r __p0 Vdd pmos W=0.1625U L=0.065U
M10_ Vdd __ar #67 Vdd pmos W=0.325U L=0.065U
M11_ Vdd p0 #92 Vdd pmos W=0.65U L=0.065U
M12_ Vdd __r __ia Vdd pmos W=0.65U L=0.065U
M13_ Vdd __p0 #100 Vdd pmos W=0.325U L=0.065U
M14_ Vdd __r s Vdd pmos W=0.325U L=0.065U
M15_ Vdd __ar #110 Vdd pmos W=0.1625U L=0.065U
M16_ Vdd I_aa #115 Vdd pmos W=0.1625U L=0.065U
M17_ Vdd I_aa #119 Vdd pmos W=0.1625U L=0.065U
M18_ Vdd I_aa #122 Vdd pmos W=0.1625U L=0.065U
M19_ Vdd I_aa #125 Vdd pmos W=0.1625U L=0.065U
M20_ Vdd I_aa #128 Vdd pmos W=0.1625U L=0.065U
M21_ Vdd I_aa #131 Vdd pmos W=0.1625U L=0.065U
M22_ Vdd I_aa #134 Vdd pmos W=0.1625U L=0.065U
M23_ Vdd I_aa #137 Vdd pmos W=0.1625U L=0.065U
M24_ Vdd I_aa #140 Vdd pmos W=0.1625U L=0.065U
M25_ Vdd I_aa #143 Vdd pmos W=0.1625U L=0.065U
M26_ Vdd I_aa #146 Vdd pmos W=0.1625U L=0.065U
M27_ Vdd I_aa #149 Vdd pmos W=0.1625U L=0.065U
M28_ Vdd I_aa #152 Vdd pmos W=0.1625U L=0.065U
M29_ Vdd I_aa #155 Vdd pmos W=0.1625U L=0.065U
M30_ Vdd I_aa #158 Vdd pmos W=0.1625U L=0.065U
M31_ Vdd I_aa #161 Vdd pmos W=0.1625U L=0.065U
M32_ Vdd __aa #163 Vdd pmos W=0.1625U L=0.065U
M33_ Vdd __aa #168 Vdd pmos W=0.1625U L=0.065U
M34_ Vdd __aa #172 Vdd pmos W=0.1625U L=0.065U
M35_ Vdd __aa #176 Vdd pmos W=0.1625U L=0.065U
M36_ Vdd __s #183 Vdd pmos W=0.1625U L=0.065U
M37_ Vdd __s #188 Vdd pmos W=0.1625U L=0.065U
M38_ Vdd __s #193 Vdd pmos W=0.1625U L=0.065U
M39_ Vdd __s #198 Vdd pmos W=0.1625U L=0.065U
M40_ Vdd __s #203 Vdd pmos W=0.1625U L=0.065U
M41_ Vdd __s #208 Vdd pmos W=0.1625U L=0.065U
M42_ Vdd __s #213 Vdd pmos W=0.1625U L=0.065U
M43_ Vdd __s #218 Vdd pmos W=0.1625U L=0.065U
M44_ Vdd __s #223 Vdd pmos W=0.1625U L=0.065U
M45_ Vdd __s #228 Vdd pmos W=0.1625U L=0.065U
M46_ Vdd __s #233 Vdd pmos W=0.1625U L=0.065U
M47_ Vdd __s #238 Vdd pmos W=0.1625U L=0.065U
M48_ Vdd __s #243 Vdd pmos W=0.1625U L=0.065U
M49_ Vdd __s #248 Vdd pmos W=0.1625U L=0.065U
M50_ Vdd __s #253 Vdd pmos W=0.1625U L=0.065U
M51_ Vdd __s #258 Vdd pmos W=0.1625U L=0.065U
M52_ Vdd __s #263 Vdd pmos W=0.1625U L=0.065U
M53_ Vdd __s #268 Vdd pmos W=0.1625U L=0.065U
M54_ Vdd __s #273 Vdd pmos W=0.1625U L=0.065U
M55_ Vdd __s #278 Vdd pmos W=0.1625U L=0.065U
M56_ Vdd __s #283 Vdd pmos W=0.1625U L=0.065U
M57_ Vdd __s #288 Vdd pmos W=0.1625U L=0.065U
M58_ Vdd __s #293 Vdd pmos W=0.1625U L=0.065U
M59_ Vdd __s #298 Vdd pmos W=0.1625U L=0.065U
M60_ Vdd __s #303 Vdd pmos W=0.1625U L=0.065U
M61_ Vdd __s #308 Vdd pmos W=0.1625U L=0.065U
M62_ Vdd __s #313 Vdd pmos W=0.1625U L=0.065U
M63_ Vdd __s #318 Vdd pmos W=0.1625U L=0.065U
M64_ Vdd __s #323 Vdd pmos W=0.1625U L=0.065U
M65_ Vdd __s #328 Vdd pmos W=0.1625U L=0.065U
M66_ Vdd __s #333 Vdd pmos W=0.1625U L=0.065U
M67_ Vdd __s #338 Vdd pmos W=0.1625U L=0.065U
M68_ Vdd __s #343 Vdd pmos W=0.1625U L=0.065U
M69_ Vdd __s #348 Vdd pmos W=0.1625U L=0.065U
M70_ Vdd __s #353 Vdd pmos W=0.1625U L=0.065U
M71_ Vdd __s #358 Vdd pmos W=0.1625U L=0.065U
M72_ Vdd __s #363 Vdd pmos W=0.1625U L=0.065U
M73_ Vdd __s #368 Vdd pmos W=0.1625U L=0.065U
M74_ Vdd __s #373 Vdd pmos W=0.1625U L=0.065U
M75_ Vdd __s #378 Vdd pmos W=0.1625U L=0.065U
M76_ Vdd __s #383 Vdd pmos W=0.1625U L=0.065U
M77_ Vdd __s #388 Vdd pmos W=0.1625U L=0.065U
M78_ Vdd __s #393 Vdd pmos W=0.1625U L=0.065U
M79_ Vdd __s #398 Vdd pmos W=0.1625U L=0.065U
M80_ Vdd s __s Vdd pmos W=1.3U L=0.065U
M81_ Vdd reset __r Vdd pmos W=0.1625U L=0.065U
M82_ Vdd A_areq __ar Vdd pmos W=0.1625U L=0.065U
M83_ Vdd p1 __p1 Vdd pmos W=0.65U L=0.065U
M84_ Vdd A_aa __aa Vdd pmos W=0.1625U L=0.065U
M85_ Vdd b_50_6 __b_50_6 Vdd pmos W=0.1625U L=0.065U
M86_ Vdd I_at_50_6 __it_50_6 Vdd pmos W=0.1625U L=0.065U
M87_ Vdd I_af_50_6 __if_50_6 Vdd pmos W=0.1625U L=0.065U
M88_ Vdd b_51_6 __b_51_6 Vdd pmos W=0.1625U L=0.065U
M89_ Vdd I_at_51_6 __it_51_6 Vdd pmos W=0.1625U L=0.065U
M90_ Vdd I_af_51_6 __if_51_6 Vdd pmos W=0.1625U L=0.065U
M91_ Vdd b_52_6 __b_52_6 Vdd pmos W=0.1625U L=0.065U
M92_ Vdd I_at_52_6 __it_52_6 Vdd pmos W=0.1625U L=0.065U
M93_ Vdd I_af_52_6 __if_52_6 Vdd pmos W=0.1625U L=0.065U
M94_ Vdd b_53_6 __b_53_6 Vdd pmos W=0.1625U L=0.065U
M95_ Vdd I_at_53_6 __it_53_6 Vdd pmos W=0.1625U L=0.065U
M96_ Vdd I_af_53_6 __if_53_6 Vdd pmos W=0.1625U L=0.065U
M97_ Vdd W0_aa __wa_50_6 Vdd pmos W=0.1625U L=0.065U
M98_ Vdd W1_aa __wa_51_6 Vdd pmos W=0.1625U L=0.065U
M99_ Vdd W2_aa __wa_52_6 Vdd pmos W=0.1625U L=0.065U
M100_ Vdd W3_aa __wa_53_6 Vdd pmos W=0.1625U L=0.065U
M101_ Vdd Ch_aa __cha Vdd pmos W=0.1625U L=0.065U
M102_ Vdd __p0 p0 Vdd pmos W=0.1625U L=0.065U
M103_ Vdd __ia I_aa Vdd pmos W=0.65U L=0.065U
M104_ Vdd __x_50_6 #fb403# Vdd pmos W=0.1625U L=0.13U
M105_ Vdd b_50_6 #fb406# Vdd pmos W=0.1625U L=0.13U
M106_keeper Vdd GND #404 Vdd pmos W=0.0975U L=0.585U
M107_ Vdd __x_51_6 #fb409# Vdd pmos W=0.1625U L=0.13U
M108_keeper Vdd GND #407 Vdd pmos W=0.0975U L=0.91U
M109_ Vdd b_51_6 #fb412# Vdd pmos W=0.1625U L=0.13U
M110_keeper Vdd GND #410 Vdd pmos W=0.0975U L=0.585U
M111_ Vdd __x_52_6 #fb415# Vdd pmos W=0.1625U L=0.13U
M112_keeper Vdd GND #413 Vdd pmos W=0.0975U L=0.91U
M113_ Vdd b_52_6 #fb418# Vdd pmos W=0.1625U L=0.13U
M114_keeper Vdd GND #416 Vdd pmos W=0.0975U L=0.585U
M115_ Vdd __x_53_6 #fb421# Vdd pmos W=0.1625U L=0.13U
M116_keeper Vdd GND #419 Vdd pmos W=0.0975U L=0.91U
M117_ Vdd b_53_6 #fb424# Vdd pmos W=0.1625U L=0.13U
M118_keeper Vdd GND #422 Vdd pmos W=0.0975U L=0.585U
M119_ Vdd y_50_6 #fb427# Vdd pmos W=0.1625U L=0.13U
M120_keeper Vdd GND #425 Vdd pmos W=0.0975U L=0.91U
M121_ Vdd y_51_6 #fb430# Vdd pmos W=0.1625U L=0.13U
M122_keeper Vdd GND #428 Vdd pmos W=0.0975U L=0.585U
M123_ Vdd __z #fb433# Vdd pmos W=0.1625U L=0.13U
M124_keeper Vdd GND #431 Vdd pmos W=0.0975U L=0.585U
M125_ Vdd k #fb436# Vdd pmos W=0.1625U L=0.13U
M126_keeper Vdd GND #434 Vdd pmos W=0.0975U L=0.585U
M127_ Vdd __p0 #fb439# Vdd pmos W=0.1625U L=0.13U
M128_keeper Vdd GND #437 Vdd pmos W=0.0975U L=0.26U
M129_ Vdd __ia #fb442# Vdd pmos W=0.1625U L=0.13U
M130_keeper Vdd GND #440 Vdd pmos W=0.0975U L=1.885U
M131_ Vdd p1 #fb445# Vdd pmos W=0.1625U L=0.13U
M132_keeper Vdd GND #443 Vdd pmos W=0.0975U L=1.235U
M133_ Vdd A_aa #fb448# Vdd pmos W=0.1625U L=0.13U
M134_keeper Vdd GND #446 Vdd pmos W=0.0975U L=1.885U
M135_ Vdd s #fb451# Vdd pmos W=0.1625U L=0.13U
M136_keeper Vdd GND #449 Vdd pmos W=0.0975U L=0.585U
M137_ Vdd Od0_at_50_6 #fb454# Vdd pmos W=0.1625U L=0.13U
M138_keeper Vdd GND #452 Vdd pmos W=0.0975U L=1.56U
M139_ Vdd Od0_af_50_6 #fb456# Vdd pmos W=0.1625U L=0.13U
M140_keeper Vdd GND #455 Vdd pmos W=0.0975U L=0.26U
M141_ Vdd Od0_at_51_6 #fb459# Vdd pmos W=0.1625U L=0.13U
M142_keeper Vdd GND #457 Vdd pmos W=0.0975U L=0.26U
M143_ Vdd Od0_af_51_6 #fb461# Vdd pmos W=0.1625U L=0.13U
M144_keeper Vdd GND #460 Vdd pmos W=0.0975U L=0.26U
M145_ Vdd Od0_at_52_6 #fb464# Vdd pmos W=0.1625U L=0.13U
M146_keeper Vdd GND #462 Vdd pmos W=0.0975U L=0.26U
M147_ Vdd Od0_af_52_6 #fb466# Vdd pmos W=0.1625U L=0.13U
M148_keeper Vdd GND #465 Vdd pmos W=0.0975U L=0.26U
M149_ Vdd Od0_at_53_6 #fb469# Vdd pmos W=0.1625U L=0.13U
M150_keeper Vdd GND #467 Vdd pmos W=0.0975U L=0.26U
M151_ Vdd Od0_af_53_6 #fb471# Vdd pmos W=0.1625U L=0.13U
M152_keeper Vdd GND #470 Vdd pmos W=0.0975U L=0.26U
M153_ Vdd Od1_at_50_6 #fb474# Vdd pmos W=0.1625U L=0.13U
M154_keeper Vdd GND #472 Vdd pmos W=0.0975U L=0.26U
M155_ Vdd Od1_af_50_6 #fb476# Vdd pmos W=0.1625U L=0.13U
M156_keeper Vdd GND #475 Vdd pmos W=0.0975U L=0.26U
M157_ Vdd Od1_at_51_6 #fb479# Vdd pmos W=0.1625U L=0.13U
M158_keeper Vdd GND #477 Vdd pmos W=0.0975U L=0.26U
M159_ Vdd Od1_af_51_6 #fb481# Vdd pmos W=0.1625U L=0.13U
M160_keeper Vdd GND #480 Vdd pmos W=0.0975U L=0.26U
M161_ Vdd Od1_at_52_6 #fb484# Vdd pmos W=0.1625U L=0.13U
M162_keeper Vdd GND #482 Vdd pmos W=0.0975U L=0.26U
M163_ Vdd Od1_af_52_6 #fb486# Vdd pmos W=0.1625U L=0.13U
M164_keeper Vdd GND #485 Vdd pmos W=0.0975U L=0.26U
M165_ Vdd Od1_at_53_6 #fb489# Vdd pmos W=0.1625U L=0.13U
M166_keeper Vdd GND #487 Vdd pmos W=0.0975U L=0.26U
M167_ Vdd Od1_af_53_6 #fb491# Vdd pmos W=0.1625U L=0.13U
M168_keeper Vdd GND #490 Vdd pmos W=0.0975U L=0.26U
M169_ Vdd Od2_at_50_6 #fb494# Vdd pmos W=0.1625U L=0.13U
M170_keeper Vdd GND #492 Vdd pmos W=0.0975U L=0.26U
M171_ Vdd Od2_af_50_6 #fb496# Vdd pmos W=0.1625U L=0.13U
M172_keeper Vdd GND #495 Vdd pmos W=0.0975U L=0.26U
M173_ Vdd Od2_at_51_6 #fb499# Vdd pmos W=0.1625U L=0.13U
M174_keeper Vdd GND #497 Vdd pmos W=0.0975U L=0.26U
M175_ Vdd Od2_af_51_6 #fb501# Vdd pmos W=0.1625U L=0.13U
M176_keeper Vdd GND #500 Vdd pmos W=0.0975U L=0.26U
M177_ Vdd Od2_at_52_6 #fb504# Vdd pmos W=0.1625U L=0.13U
M178_keeper Vdd GND #502 Vdd pmos W=0.0975U L=0.26U
M179_ Vdd Od2_af_52_6 #fb506# Vdd pmos W=0.1625U L=0.13U
M180_keeper Vdd GND #505 Vdd pmos W=0.0975U L=0.26U
M181_ Vdd Od2_at_53_6 #fb509# Vdd pmos W=0.1625U L=0.13U
M182_keeper Vdd GND #507 Vdd pmos W=0.0975U L=0.26U
M183_ Vdd Od2_af_53_6 #fb511# Vdd pmos W=0.1625U L=0.13U
M184_keeper Vdd GND #510 Vdd pmos W=0.0975U L=0.26U
M185_ Vdd Od3_at_50_6 #fb514# Vdd pmos W=0.1625U L=0.13U
M186_keeper Vdd GND #512 Vdd pmos W=0.0975U L=0.26U
M187_ Vdd Od3_af_50_6 #fb516# Vdd pmos W=0.1625U L=0.13U
M188_keeper Vdd GND #515 Vdd pmos W=0.0975U L=0.26U
M189_ Vdd Od3_at_51_6 #fb519# Vdd pmos W=0.1625U L=0.13U
M190_keeper Vdd GND #517 Vdd pmos W=0.0975U L=0.26U
M191_ Vdd Od3_af_51_6 #fb521# Vdd pmos W=0.1625U L=0.13U
M192_keeper Vdd GND #520 Vdd pmos W=0.0975U L=0.26U
M193_ Vdd Od3_at_52_6 #fb524# Vdd pmos W=0.1625U L=0.13U
M194_keeper Vdd GND #522 Vdd pmos W=0.0975U L=0.26U
M195_ Vdd Od3_af_52_6 #fb526# Vdd pmos W=0.1625U L=0.13U
M196_keeper Vdd GND #525 Vdd pmos W=0.0975U L=0.26U
M197_ Vdd Od3_at_53_6 #fb529# Vdd pmos W=0.1625U L=0.13U
M198_keeper Vdd GND #527 Vdd pmos W=0.0975U L=0.26U
M199_ Vdd Od3_af_53_6 #fb531# Vdd pmos W=0.1625U L=0.13U
M200_keeper Vdd GND #530 Vdd pmos W=0.0975U L=0.26U
M201_ Vdd W0_at_51_6 #fb534# Vdd pmos W=0.1625U L=0.13U
M202_keeper Vdd GND #532 Vdd pmos W=0.0975U L=0.26U
M203_ Vdd W0_af_51_6 #fb536# Vdd pmos W=0.1625U L=0.13U
M204_keeper Vdd GND #535 Vdd pmos W=0.0975U L=0.26U
M205_ Vdd W0_at_52_6 #fb539# Vdd pmos W=0.1625U L=0.13U
M206_keeper Vdd GND #537 Vdd pmos W=0.0975U L=0.26U
M207_ Vdd W0_af_52_6 #fb541# Vdd pmos W=0.1625U L=0.13U
M208_keeper Vdd GND #540 Vdd pmos W=0.0975U L=0.26U
M209_ Vdd W0_at_53_6 #fb544# Vdd pmos W=0.1625U L=0.13U
M210_keeper Vdd GND #542 Vdd pmos W=0.0975U L=0.26U
M211_ Vdd W0_af_53_6 #fb546# Vdd pmos W=0.1625U L=0.13U
M212_keeper Vdd GND #545 Vdd pmos W=0.0975U L=0.26U
M213_ Vdd W0_at_54_6 #fb549# Vdd pmos W=0.1625U L=0.13U
M214_keeper Vdd GND #547 Vdd pmos W=0.0975U L=0.26U
M215_ Vdd W0_af_54_6 #fb551# Vdd pmos W=0.1625U L=0.13U
M216_keeper Vdd GND #550 Vdd pmos W=0.0975U L=0.26U
M217_ Vdd W0_at_55_6 #fb554# Vdd pmos W=0.1625U L=0.13U
M218_keeper Vdd GND #552 Vdd pmos W=0.0975U L=0.26U
M219_ Vdd W0_af_55_6 #fb556# Vdd pmos W=0.1625U L=0.13U
M220_keeper Vdd GND #555 Vdd pmos W=0.0975U L=0.26U
M221_ Vdd W0_at_56_6 #fb559# Vdd pmos W=0.1625U L=0.13U
M222_keeper Vdd GND #557 Vdd pmos W=0.0975U L=0.26U
M223_ Vdd W0_af_56_6 #fb561# Vdd pmos W=0.1625U L=0.13U
M224_keeper Vdd GND #560 Vdd pmos W=0.0975U L=0.26U
M225_ Vdd W0_at_57_6 #fb564# Vdd pmos W=0.1625U L=0.13U
M226_keeper Vdd GND #562 Vdd pmos W=0.0975U L=0.26U
M227_ Vdd W0_af_57_6 #fb566# Vdd pmos W=0.1625U L=0.13U
M228_keeper Vdd GND #565 Vdd pmos W=0.0975U L=0.26U
M229_ Vdd W0_at_50_6 #fb569# Vdd pmos W=0.1625U L=0.13U
M230_keeper Vdd GND #567 Vdd pmos W=0.0975U L=0.26U
M231_ Vdd W0_af_50_6 #fb572# Vdd pmos W=0.1625U L=0.13U
M232_keeper Vdd GND #570 Vdd pmos W=0.0975U L=0.26U
M233_ Vdd W1_at_51_6 #fb575# Vdd pmos W=0.1625U L=0.13U
M234_keeper Vdd GND #573 Vdd pmos W=0.0975U L=0.26U
M235_ Vdd W1_af_51_6 #fb577# Vdd pmos W=0.1625U L=0.13U
M236_keeper Vdd GND #576 Vdd pmos W=0.0975U L=0.26U
M237_ Vdd W1_at_52_6 #fb580# Vdd pmos W=0.1625U L=0.13U
M238_keeper Vdd GND #578 Vdd pmos W=0.0975U L=0.26U
M239_ Vdd W1_af_52_6 #fb582# Vdd pmos W=0.1625U L=0.13U
M240_keeper Vdd GND #581 Vdd pmos W=0.0975U L=0.26U
M241_ Vdd W1_at_53_6 #fb585# Vdd pmos W=0.1625U L=0.13U
M242_keeper Vdd GND #583 Vdd pmos W=0.0975U L=0.26U
M243_ Vdd W1_af_53_6 #fb587# Vdd pmos W=0.1625U L=0.13U
M244_keeper Vdd GND #586 Vdd pmos W=0.0975U L=0.26U
M245_ Vdd W1_at_54_6 #fb590# Vdd pmos W=0.1625U L=0.13U
M246_keeper Vdd GND #588 Vdd pmos W=0.0975U L=0.26U
M247_ Vdd W1_af_54_6 #fb592# Vdd pmos W=0.1625U L=0.13U
M248_keeper Vdd GND #591 Vdd pmos W=0.0975U L=0.26U
M249_ Vdd W1_at_55_6 #fb595# Vdd pmos W=0.1625U L=0.13U
M250_keeper Vdd GND #593 Vdd pmos W=0.0975U L=0.26U
M251_ Vdd W1_af_55_6 #fb597# Vdd pmos W=0.1625U L=0.13U
M252_keeper Vdd GND #596 Vdd pmos W=0.0975U L=0.26U
M253_ Vdd W1_at_56_6 #fb600# Vdd pmos W=0.1625U L=0.13U
M254_keeper Vdd GND #598 Vdd pmos W=0.0975U L=0.26U
M255_ Vdd W1_af_56_6 #fb602# Vdd pmos W=0.1625U L=0.13U
M256_keeper Vdd GND #601 Vdd pmos W=0.0975U L=0.26U
M257_ Vdd W1_at_57_6 #fb605# Vdd pmos W=0.1625U L=0.13U
M258_keeper Vdd GND #603 Vdd pmos W=0.0975U L=0.26U
M259_ Vdd W1_af_57_6 #fb607# Vdd pmos W=0.1625U L=0.13U
M260_keeper Vdd GND #606 Vdd pmos W=0.0975U L=0.26U
M261_ Vdd W1_at_50_6 #fb610# Vdd pmos W=0.1625U L=0.13U
M262_keeper Vdd GND #608 Vdd pmos W=0.0975U L=0.26U
M263_ Vdd W1_af_50_6 #fb613# Vdd pmos W=0.1625U L=0.13U
M264_keeper Vdd GND #611 Vdd pmos W=0.0975U L=0.26U
M265_ Vdd W2_at_51_6 #fb616# Vdd pmos W=0.1625U L=0.13U
M266_keeper Vdd GND #614 Vdd pmos W=0.0975U L=0.26U
M267_ Vdd W2_af_51_6 #fb618# Vdd pmos W=0.1625U L=0.13U
M268_keeper Vdd GND #617 Vdd pmos W=0.0975U L=0.26U
M269_ Vdd W2_at_52_6 #fb621# Vdd pmos W=0.1625U L=0.13U
M270_keeper Vdd GND #619 Vdd pmos W=0.0975U L=0.26U
M271_ Vdd W2_af_52_6 #fb623# Vdd pmos W=0.1625U L=0.13U
M272_keeper Vdd GND #622 Vdd pmos W=0.0975U L=0.26U
M273_ Vdd W2_at_53_6 #fb626# Vdd pmos W=0.1625U L=0.13U
M274_keeper Vdd GND #624 Vdd pmos W=0.0975U L=0.26U
M275_ Vdd W2_af_53_6 #fb628# Vdd pmos W=0.1625U L=0.13U
M276_keeper Vdd GND #627 Vdd pmos W=0.0975U L=0.26U
M277_ Vdd W2_at_54_6 #fb631# Vdd pmos W=0.1625U L=0.13U
M278_keeper Vdd GND #629 Vdd pmos W=0.0975U L=0.26U
M279_ Vdd W2_af_54_6 #fb633# Vdd pmos W=0.1625U L=0.13U
M280_keeper Vdd GND #632 Vdd pmos W=0.0975U L=0.26U
M281_ Vdd W2_at_55_6 #fb636# Vdd pmos W=0.1625U L=0.13U
M282_keeper Vdd GND #634 Vdd pmos W=0.0975U L=0.26U
M283_ Vdd W2_af_55_6 #fb638# Vdd pmos W=0.1625U L=0.13U
M284_keeper Vdd GND #637 Vdd pmos W=0.0975U L=0.26U
M285_ Vdd W2_at_56_6 #fb641# Vdd pmos W=0.1625U L=0.13U
M286_keeper Vdd GND #639 Vdd pmos W=0.0975U L=0.26U
M287_ Vdd W2_af_56_6 #fb643# Vdd pmos W=0.1625U L=0.13U
M288_keeper Vdd GND #642 Vdd pmos W=0.0975U L=0.26U
M289_ Vdd W2_at_57_6 #fb646# Vdd pmos W=0.1625U L=0.13U
M290_keeper Vdd GND #644 Vdd pmos W=0.0975U L=0.26U
M291_ Vdd W2_af_57_6 #fb648# Vdd pmos W=0.1625U L=0.13U
M292_keeper Vdd GND #647 Vdd pmos W=0.0975U L=0.26U
M293_ Vdd W2_at_50_6 #fb651# Vdd pmos W=0.1625U L=0.13U
M294_keeper Vdd GND #649 Vdd pmos W=0.0975U L=0.26U
M295_ Vdd W2_af_50_6 #fb654# Vdd pmos W=0.1625U L=0.13U
M296_keeper Vdd GND #652 Vdd pmos W=0.0975U L=0.26U
M297_ Vdd W3_at_51_6 #fb657# Vdd pmos W=0.1625U L=0.13U
M298_keeper Vdd GND #655 Vdd pmos W=0.0975U L=0.26U
M299_ Vdd W3_af_51_6 #fb659# Vdd pmos W=0.1625U L=0.13U
M300_keeper Vdd GND #658 Vdd pmos W=0.0975U L=0.26U
M301_ Vdd W3_at_52_6 #fb662# Vdd pmos W=0.1625U L=0.13U
M302_keeper Vdd GND #660 Vdd pmos W=0.0975U L=0.26U
M303_ Vdd W3_af_52_6 #fb664# Vdd pmos W=0.1625U L=0.13U
M304_keeper Vdd GND #663 Vdd pmos W=0.0975U L=0.26U
M305_ Vdd W3_at_53_6 #fb667# Vdd pmos W=0.1625U L=0.13U
M306_keeper Vdd GND #665 Vdd pmos W=0.0975U L=0.26U
M307_ Vdd W3_af_53_6 #fb669# Vdd pmos W=0.1625U L=0.13U
M308_keeper Vdd GND #668 Vdd pmos W=0.0975U L=0.26U
M309_ Vdd W3_at_54_6 #fb672# Vdd pmos W=0.1625U L=0.13U
M310_keeper Vdd GND #670 Vdd pmos W=0.0975U L=0.26U
M311_ Vdd W3_af_54_6 #fb674# Vdd pmos W=0.1625U L=0.13U
M312_keeper Vdd GND #673 Vdd pmos W=0.0975U L=0.26U
M313_ Vdd W3_at_55_6 #fb677# Vdd pmos W=0.1625U L=0.13U
M314_keeper Vdd GND #675 Vdd pmos W=0.0975U L=0.26U
M315_ Vdd W3_af_55_6 #fb679# Vdd pmos W=0.1625U L=0.13U
M316_keeper Vdd GND #678 Vdd pmos W=0.0975U L=0.26U
M317_ Vdd W3_at_56_6 #fb682# Vdd pmos W=0.1625U L=0.13U
M318_keeper Vdd GND #680 Vdd pmos W=0.0975U L=0.26U
M319_ Vdd W3_af_56_6 #fb684# Vdd pmos W=0.1625U L=0.13U
M320_keeper Vdd GND #683 Vdd pmos W=0.0975U L=0.26U
M321_ Vdd W3_at_57_6 #fb687# Vdd pmos W=0.1625U L=0.13U
M322_keeper Vdd GND #685 Vdd pmos W=0.0975U L=0.26U
M323_ Vdd W3_af_57_6 #fb689# Vdd pmos W=0.1625U L=0.13U
M324_keeper Vdd GND #688 Vdd pmos W=0.0975U L=0.26U
M325_ Vdd W3_at_50_6 #fb692# Vdd pmos W=0.1625U L=0.13U
M326_keeper Vdd GND #690 Vdd pmos W=0.0975U L=0.26U
M327_ Vdd W3_af_50_6 #fb695# Vdd pmos W=0.1625U L=0.13U
M328_keeper Vdd GND #693 Vdd pmos W=0.0975U L=0.26U
M329_ Vdd Ch_at_50_6 #fb698# Vdd pmos W=0.1625U L=0.13U
M330_keeper Vdd GND #696 Vdd pmos W=0.0975U L=0.26U
M331_ Vdd Ch_af_50_6 #fb701# Vdd pmos W=0.1625U L=0.13U
M332_keeper Vdd GND #699 Vdd pmos W=0.0975U L=0.26U
M333_ Vdd Ch_at_51_6 #fb704# Vdd pmos W=0.1625U L=0.13U
M334_keeper Vdd GND #702 Vdd pmos W=0.0975U L=0.26U
M335_ Vdd Ch_af_51_6 #fb707# Vdd pmos W=0.1625U L=0.13U
M336_keeper Vdd GND #705 Vdd pmos W=0.0975U L=0.26U
M337_ Vdd Ch_at_52_6 #fb710# Vdd pmos W=0.1625U L=0.13U
M338_keeper Vdd GND #708 Vdd pmos W=0.0975U L=0.26U
M339_ Vdd Ch_af_52_6 #fb713# Vdd pmos W=0.1625U L=0.13U
M340_keeper Vdd GND #711 Vdd pmos W=0.0975U L=0.26U
M341_ Vdd Ch_at_53_6 #fb716# Vdd pmos W=0.1625U L=0.13U
M342_keeper Vdd GND #714 Vdd pmos W=0.0975U L=0.26U
M343_ Vdd Ch_af_53_6 #fb719# Vdd pmos W=0.1625U L=0.13U
M344_keeper Vdd GND #717 Vdd pmos W=0.0975U L=0.26U
M345_keeper Vdd GND #720 Vdd pmos W=0.0975U L=0.26U
M346_ GND I_at_50_6 #3 GND nmos W=0.0975U L=0.065U
M347_ GND I_af_50_6 #6 GND nmos W=0.0975U L=0.065U
M348_ GND I_at_51_6 #11 GND nmos W=0.0975U L=0.065U
M349_ GND I_af_51_6 #14 GND nmos W=0.0975U L=0.065U
M350_ GND I_at_52_6 #19 GND nmos W=0.0975U L=0.065U
M351_ GND I_af_52_6 #22 GND nmos W=0.0975U L=0.065U
M352_ GND I_at_53_6 #27 GND nmos W=0.0975U L=0.065U
M353_ GND I_af_53_6 #30 GND nmos W=0.0975U L=0.065U
M354_ GND __x_51_6 #36 GND nmos W=0.0975U L=0.065U
M355_ GND __x_53_6 #39 GND nmos W=0.0975U L=0.065U
M356_ GND y_51_6 #41 GND nmos W=0.0975U L=0.065U
M357_ GND __z k GND nmos W=0.39U L=0.065U
M358_ GND A_areq #51 GND nmos W=0.0975U L=0.065U
M359_ GND __s #77 GND nmos W=0.195U L=0.065U
M360_ GND reset p1 GND nmos W=0.195U L=0.065U
M361_ GND k __ia GND nmos W=0.39U L=0.065U
M362_ GND Od0_aa #86 GND nmos W=0.39U L=0.065U
M363_ GND W0_aa #104 GND nmos W=0.195U L=0.065U
M364_ GND __p1 #112 GND nmos W=0.0975U L=0.065U
M365_ GND reset A_aa GND nmos W=0.0975U L=0.065U
M366_ GND reset Od0_at_50_6 GND nmos W=0.0975U L=0.065U
M367_ GND I_aa Od0_af_50_6 GND nmos W=0.0975U L=0.065U
M368_ GND reset Od0_af_50_6 GND nmos W=0.0975U L=0.065U
M369_ GND reset Od0_at_51_6 GND nmos W=0.0975U L=0.065U
M370_ GND I_aa Od0_af_51_6 GND nmos W=0.0975U L=0.065U
M371_ GND reset Od0_af_51_6 GND nmos W=0.0975U L=0.065U
M372_ GND reset Od0_at_52_6 GND nmos W=0.0975U L=0.065U
M373_ GND I_aa Od0_af_52_6 GND nmos W=0.0975U L=0.065U
M374_ GND reset Od0_af_52_6 GND nmos W=0.0975U L=0.065U
M375_ GND reset Od0_at_53_6 GND nmos W=0.0975U L=0.065U
M376_ GND I_aa Od0_af_53_6 GND nmos W=0.0975U L=0.065U
M377_ GND reset Od0_af_53_6 GND nmos W=0.0975U L=0.065U
M378_ GND reset Od1_at_50_6 GND nmos W=0.0975U L=0.065U
M379_ GND I_aa Od1_af_50_6 GND nmos W=0.0975U L=0.065U
M380_ GND reset Od1_af_50_6 GND nmos W=0.0975U L=0.065U
M381_ GND reset Od1_at_51_6 GND nmos W=0.0975U L=0.065U
M382_ GND I_aa Od1_af_51_6 GND nmos W=0.0975U L=0.065U
M383_ GND reset Od1_af_51_6 GND nmos W=0.0975U L=0.065U
M384_ GND reset Od1_at_52_6 GND nmos W=0.0975U L=0.065U
M385_ GND I_aa Od1_af_52_6 GND nmos W=0.0975U L=0.065U
M386_ GND reset Od1_af_52_6 GND nmos W=0.0975U L=0.065U
M387_ GND reset Od1_at_53_6 GND nmos W=0.0975U L=0.065U
M388_ GND I_aa Od1_af_53_6 GND nmos W=0.0975U L=0.065U
M389_ GND reset Od1_af_53_6 GND nmos W=0.0975U L=0.065U
M390_ GND reset Od2_at_50_6 GND nmos W=0.0975U L=0.065U
M391_ GND I_aa Od2_af_50_6 GND nmos W=0.0975U L=0.065U
M392_ GND reset Od2_af_50_6 GND nmos W=0.0975U L=0.065U
M393_ GND reset Od2_at_51_6 GND nmos W=0.0975U L=0.065U
M394_ GND I_aa Od2_af_51_6 GND nmos W=0.0975U L=0.065U
M395_ GND reset Od2_af_51_6 GND nmos W=0.0975U L=0.065U
M396_ GND reset Od2_at_52_6 GND nmos W=0.0975U L=0.065U
M397_ GND I_aa Od2_af_52_6 GND nmos W=0.0975U L=0.065U
M398_ GND reset Od2_af_52_6 GND nmos W=0.0975U L=0.065U
M399_ GND reset Od2_at_53_6 GND nmos W=0.0975U L=0.065U
M400_ GND I_aa Od2_af_53_6 GND nmos W=0.0975U L=0.065U
M401_ GND reset Od2_af_53_6 GND nmos W=0.0975U L=0.065U
M402_ GND reset Od3_at_50_6 GND nmos W=0.0975U L=0.065U
M403_ GND I_aa Od3_af_50_6 GND nmos W=0.0975U L=0.065U
M404_ GND reset Od3_af_50_6 GND nmos W=0.0975U L=0.065U
M405_ GND reset Od3_at_51_6 GND nmos W=0.0975U L=0.065U
M406_ GND I_aa Od3_af_51_6 GND nmos W=0.0975U L=0.065U
M407_ GND reset Od3_af_51_6 GND nmos W=0.0975U L=0.065U
M408_ GND reset Od3_at_52_6 GND nmos W=0.0975U L=0.065U
M409_ GND I_aa Od3_af_52_6 GND nmos W=0.0975U L=0.065U
M410_ GND reset Od3_af_52_6 GND nmos W=0.0975U L=0.065U
M411_ GND reset Od3_at_53_6 GND nmos W=0.0975U L=0.065U
M412_ GND I_aa Od3_af_53_6 GND nmos W=0.0975U L=0.065U
M413_ GND reset Od3_af_53_6 GND nmos W=0.0975U L=0.065U
M414_ GND A_aa #166 GND nmos W=0.0975U L=0.065U
M415_ GND reset b_50_6 GND nmos W=0.0975U L=0.065U
M416_ GND A_aa #170 GND nmos W=0.0975U L=0.065U
M417_ GND reset b_51_6 GND nmos W=0.0975U L=0.065U
M418_ GND A_aa #174 GND nmos W=0.0975U L=0.065U
M419_ GND reset b_52_6 GND nmos W=0.0975U L=0.065U
M420_ GND A_aa #178 GND nmos W=0.0975U L=0.065U
M421_ GND reset b_53_6 GND nmos W=0.0975U L=0.065U
M422_ GND reset W0_at_51_6 GND nmos W=0.0975U L=0.065U
M423_ GND __s W0_af_51_6 GND nmos W=0.0975U L=0.065U
M424_ GND reset W0_af_51_6 GND nmos W=0.0975U L=0.065U
M425_ GND reset W0_at_52_6 GND nmos W=0.0975U L=0.065U
M426_ GND __s W0_af_52_6 GND nmos W=0.0975U L=0.065U
M427_ GND reset W0_af_52_6 GND nmos W=0.0975U L=0.065U
M428_ GND reset W0_at_53_6 GND nmos W=0.0975U L=0.065U
M429_ GND __s W0_af_53_6 GND nmos W=0.0975U L=0.065U
M430_ GND reset W0_af_53_6 GND nmos W=0.0975U L=0.065U
M431_ GND reset W0_at_54_6 GND nmos W=0.0975U L=0.065U
M432_ GND __s W0_af_54_6 GND nmos W=0.0975U L=0.065U
M433_ GND reset W0_af_54_6 GND nmos W=0.0975U L=0.065U
M434_ GND reset W0_at_55_6 GND nmos W=0.0975U L=0.065U
M435_ GND __s W0_af_55_6 GND nmos W=0.0975U L=0.065U
M436_ GND reset W0_af_55_6 GND nmos W=0.0975U L=0.065U
M437_ GND reset W0_at_56_6 GND nmos W=0.0975U L=0.065U
M438_ GND __s W0_af_56_6 GND nmos W=0.0975U L=0.065U
M439_ GND reset W0_af_56_6 GND nmos W=0.0975U L=0.065U
M440_ GND reset W0_at_57_6 GND nmos W=0.0975U L=0.065U
M441_ GND __s W0_af_57_6 GND nmos W=0.0975U L=0.065U
M442_ GND reset W0_af_57_6 GND nmos W=0.0975U L=0.065U
M443_ GND __s W0_at_50_6 GND nmos W=0.0975U L=0.065U
M444_ GND reset W0_at_50_6 GND nmos W=0.0975U L=0.065U
M445_ GND __s W0_af_50_6 GND nmos W=0.0975U L=0.065U
M446_ GND reset W0_af_50_6 GND nmos W=0.0975U L=0.065U
M447_ GND reset W1_at_51_6 GND nmos W=0.0975U L=0.065U
M448_ GND __s W1_af_51_6 GND nmos W=0.0975U L=0.065U
M449_ GND reset W1_af_51_6 GND nmos W=0.0975U L=0.065U
M450_ GND reset W1_at_52_6 GND nmos W=0.0975U L=0.065U
M451_ GND __s W1_af_52_6 GND nmos W=0.0975U L=0.065U
M452_ GND reset W1_af_52_6 GND nmos W=0.0975U L=0.065U
M453_ GND reset W1_at_53_6 GND nmos W=0.0975U L=0.065U
M454_ GND __s W1_af_53_6 GND nmos W=0.0975U L=0.065U
M455_ GND reset W1_af_53_6 GND nmos W=0.0975U L=0.065U
M456_ GND reset W1_at_54_6 GND nmos W=0.0975U L=0.065U
M457_ GND __s W1_af_54_6 GND nmos W=0.0975U L=0.065U
M458_ GND reset W1_af_54_6 GND nmos W=0.0975U L=0.065U
M459_ GND reset W1_at_55_6 GND nmos W=0.0975U L=0.065U
M460_ GND __s W1_af_55_6 GND nmos W=0.0975U L=0.065U
M461_ GND reset W1_af_55_6 GND nmos W=0.0975U L=0.065U
M462_ GND reset W1_at_56_6 GND nmos W=0.0975U L=0.065U
M463_ GND __s W1_af_56_6 GND nmos W=0.0975U L=0.065U
M464_ GND reset W1_af_56_6 GND nmos W=0.0975U L=0.065U
M465_ GND reset W1_at_57_6 GND nmos W=0.0975U L=0.065U
M466_ GND __s W1_af_57_6 GND nmos W=0.0975U L=0.065U
M467_ GND reset W1_af_57_6 GND nmos W=0.0975U L=0.065U
M468_ GND __s W1_at_50_6 GND nmos W=0.0975U L=0.065U
M469_ GND reset W1_at_50_6 GND nmos W=0.0975U L=0.065U
M470_ GND __s W1_af_50_6 GND nmos W=0.0975U L=0.065U
M471_ GND reset W1_af_50_6 GND nmos W=0.0975U L=0.065U
M472_ GND reset W2_at_51_6 GND nmos W=0.0975U L=0.065U
M473_ GND __s W2_af_51_6 GND nmos W=0.0975U L=0.065U
M474_ GND reset W2_af_51_6 GND nmos W=0.0975U L=0.065U
M475_ GND reset W2_at_52_6 GND nmos W=0.0975U L=0.065U
M476_ GND __s W2_af_52_6 GND nmos W=0.0975U L=0.065U
M477_ GND reset W2_af_52_6 GND nmos W=0.0975U L=0.065U
M478_ GND reset W2_at_53_6 GND nmos W=0.0975U L=0.065U
M479_ GND __s W2_af_53_6 GND nmos W=0.0975U L=0.065U
M480_ GND reset W2_af_53_6 GND nmos W=0.0975U L=0.065U
M481_ GND reset W2_at_54_6 GND nmos W=0.0975U L=0.065U
M482_ GND __s W2_af_54_6 GND nmos W=0.0975U L=0.065U
M483_ GND reset W2_af_54_6 GND nmos W=0.0975U L=0.065U
M484_ GND reset W2_at_55_6 GND nmos W=0.0975U L=0.065U
M485_ GND __s W2_af_55_6 GND nmos W=0.0975U L=0.065U
M486_ GND reset W2_af_55_6 GND nmos W=0.0975U L=0.065U
M487_ GND reset W2_at_56_6 GND nmos W=0.0975U L=0.065U
M488_ GND __s W2_af_56_6 GND nmos W=0.0975U L=0.065U
M489_ GND reset W2_af_56_6 GND nmos W=0.0975U L=0.065U
M490_ GND reset W2_at_57_6 GND nmos W=0.0975U L=0.065U
M491_ GND __s W2_af_57_6 GND nmos W=0.0975U L=0.065U
M492_ GND reset W2_af_57_6 GND nmos W=0.0975U L=0.065U
M493_ GND __s W2_at_50_6 GND nmos W=0.0975U L=0.065U
M494_ GND reset W2_at_50_6 GND nmos W=0.0975U L=0.065U
M495_ GND __s W2_af_50_6 GND nmos W=0.0975U L=0.065U
M496_ GND reset W2_af_50_6 GND nmos W=0.0975U L=0.065U
M497_ GND reset W3_at_51_6 GND nmos W=0.0975U L=0.065U
M498_ GND __s W3_af_51_6 GND nmos W=0.0975U L=0.065U
M499_ GND reset W3_af_51_6 GND nmos W=0.0975U L=0.065U
M500_ GND reset W3_at_52_6 GND nmos W=0.0975U L=0.065U
M501_ GND __s W3_af_52_6 GND nmos W=0.0975U L=0.065U
M502_ GND reset W3_af_52_6 GND nmos W=0.0975U L=0.065U
M503_ GND reset W3_at_53_6 GND nmos W=0.0975U L=0.065U
M504_ GND __s W3_af_53_6 GND nmos W=0.0975U L=0.065U
M505_ GND reset W3_af_53_6 GND nmos W=0.0975U L=0.065U
M506_ GND reset W3_at_54_6 GND nmos W=0.0975U L=0.065U
M507_ GND __s W3_af_54_6 GND nmos W=0.0975U L=0.065U
M508_ GND reset W3_af_54_6 GND nmos W=0.0975U L=0.065U
M509_ GND reset W3_at_55_6 GND nmos W=0.0975U L=0.065U
M510_ GND __s W3_af_55_6 GND nmos W=0.0975U L=0.065U
M511_ GND reset W3_af_55_6 GND nmos W=0.0975U L=0.065U
M512_ GND reset W3_at_56_6 GND nmos W=0.0975U L=0.065U
M513_ GND __s W3_af_56_6 GND nmos W=0.0975U L=0.065U
M514_ GND reset W3_af_56_6 GND nmos W=0.0975U L=0.065U
M515_ GND reset W3_at_57_6 GND nmos W=0.0975U L=0.065U
M516_ GND __s W3_af_57_6 GND nmos W=0.0975U L=0.065U
M517_ GND reset W3_af_57_6 GND nmos W=0.0975U L=0.065U
M518_ GND __s W3_at_50_6 GND nmos W=0.0975U L=0.065U
M519_ GND reset W3_at_50_6 GND nmos W=0.0975U L=0.065U
M520_ GND __s W3_af_50_6 GND nmos W=0.0975U L=0.065U
M521_ GND reset W3_af_50_6 GND nmos W=0.0975U L=0.065U
M522_ GND __s Ch_at_50_6 GND nmos W=0.0975U L=0.065U
M523_ GND reset Ch_at_50_6 GND nmos W=0.0975U L=0.065U
M524_ GND __s Ch_af_50_6 GND nmos W=0.0975U L=0.065U
M525_ GND reset Ch_af_50_6 GND nmos W=0.0975U L=0.065U
M526_ GND __s Ch_at_51_6 GND nmos W=0.0975U L=0.065U
M527_ GND reset Ch_at_51_6 GND nmos W=0.0975U L=0.065U
M528_ GND __s Ch_af_51_6 GND nmos W=0.0975U L=0.065U
M529_ GND reset Ch_af_51_6 GND nmos W=0.0975U L=0.065U
M530_ GND __s Ch_at_52_6 GND nmos W=0.0975U L=0.065U
M531_ GND reset Ch_at_52_6 GND nmos W=0.0975U L=0.065U
M532_ GND __s Ch_af_52_6 GND nmos W=0.0975U L=0.065U
M533_ GND reset Ch_af_52_6 GND nmos W=0.0975U L=0.065U
M534_ GND __s Ch_at_53_6 GND nmos W=0.0975U L=0.065U
M535_ GND reset Ch_at_53_6 GND nmos W=0.0975U L=0.065U
M536_ GND __s Ch_af_53_6 GND nmos W=0.0975U L=0.065U
M537_ GND reset Ch_af_53_6 GND nmos W=0.0975U L=0.065U
M538_ GND s __s GND nmos W=0.78U L=0.065U
M539_ GND reset __r GND nmos W=0.0975U L=0.065U
M540_ GND A_areq __ar GND nmos W=0.0975U L=0.065U
M541_ GND p1 __p1 GND nmos W=0.39U L=0.065U
M542_ GND A_aa __aa GND nmos W=0.0975U L=0.065U
M543_ GND b_50_6 __b_50_6 GND nmos W=0.0975U L=0.065U
M544_ GND I_at_50_6 __it_50_6 GND nmos W=0.0975U L=0.065U
M545_ GND I_af_50_6 __if_50_6 GND nmos W=0.0975U L=0.065U
M546_ GND b_51_6 __b_51_6 GND nmos W=0.0975U L=0.065U
M547_ GND I_at_51_6 __it_51_6 GND nmos W=0.0975U L=0.065U
M548_ GND I_af_51_6 __if_51_6 GND nmos W=0.0975U L=0.065U
M549_ GND b_52_6 __b_52_6 GND nmos W=0.0975U L=0.065U
M550_ GND I_at_52_6 __it_52_6 GND nmos W=0.0975U L=0.065U
M551_ GND I_af_52_6 __if_52_6 GND nmos W=0.0975U L=0.065U
M552_ GND b_53_6 __b_53_6 GND nmos W=0.0975U L=0.065U
M553_ GND I_at_53_6 __it_53_6 GND nmos W=0.0975U L=0.065U
M554_ GND I_af_53_6 __if_53_6 GND nmos W=0.0975U L=0.065U
M555_ GND W0_aa __wa_50_6 GND nmos W=0.0975U L=0.065U
M556_ GND W1_aa __wa_51_6 GND nmos W=0.0975U L=0.065U
M557_ GND W2_aa __wa_52_6 GND nmos W=0.0975U L=0.065U
M558_ GND W3_aa __wa_53_6 GND nmos W=0.0975U L=0.065U
M559_ GND Ch_aa __cha GND nmos W=0.0975U L=0.065U
M560_ GND __p0 p0 GND nmos W=0.0975U L=0.065U
M561_ GND __ia I_aa GND nmos W=0.39U L=0.065U
M562_ GND __x_50_6 #fb403# GND nmos W=0.0975U L=0.13U
M563_ GND b_50_6 #fb406# GND nmos W=0.0975U L=0.13U
M564_keeper GND Vdd #405 GND nmos W=0.0975U L=1.495U
M565_ GND __x_51_6 #fb409# GND nmos W=0.0975U L=0.13U
M566_keeper GND Vdd #408 GND nmos W=0.0975U L=2.275U
M567_ GND b_51_6 #fb412# GND nmos W=0.0975U L=0.13U
M568_keeper GND Vdd #411 GND nmos W=0.0975U L=1.495U
M569_ GND __x_52_6 #fb415# GND nmos W=0.0975U L=0.13U
M570_keeper GND Vdd #414 GND nmos W=0.0975U L=2.275U
M571_ GND b_52_6 #fb418# GND nmos W=0.0975U L=0.13U
M572_keeper GND Vdd #417 GND nmos W=0.0975U L=1.495U
M573_ GND __x_53_6 #fb421# GND nmos W=0.0975U L=0.13U
M574_keeper GND Vdd #420 GND nmos W=0.0975U L=2.275U
M575_ GND b_53_6 #fb424# GND nmos W=0.0975U L=0.13U
M576_keeper GND Vdd #423 GND nmos W=0.0975U L=1.495U
M577_ GND y_50_6 #fb427# GND nmos W=0.0975U L=0.13U
M578_keeper GND Vdd #426 GND nmos W=0.0975U L=2.275U
M579_ GND y_51_6 #fb430# GND nmos W=0.0975U L=0.13U
M580_keeper GND Vdd #429 GND nmos W=0.0975U L=1.495U
M581_ GND __z #fb433# GND nmos W=0.0975U L=0.13U
M582_keeper GND Vdd #432 GND nmos W=0.0975U L=1.495U
M583_ GND k #fb436# GND nmos W=0.0975U L=0.13U
M584_keeper GND Vdd #435 GND nmos W=0.0975U L=1.495U
M585_ GND __p0 #fb439# GND nmos W=0.0975U L=0.13U
M586_keeper GND Vdd #438 GND nmos W=0.0975U L=1.495U
M587_ GND __ia #fb442# GND nmos W=0.0975U L=0.13U
M588_keeper GND Vdd #441 GND nmos W=0.0975U L=4.615U
M589_ GND p1 #fb445# GND nmos W=0.0975U L=0.13U
M590_keeper GND Vdd #444 GND nmos W=0.0975U L=5.395U
M591_ GND A_aa #fb448# GND nmos W=0.0975U L=0.13U
M592_keeper GND Vdd #447 GND nmos W=0.0975U L=2.275U
M593_ GND s #fb451# GND nmos W=0.0975U L=0.13U
M594_keeper GND Vdd #450 GND nmos W=0.0975U L=2.275U
M595_ GND Od0_at_50_6 #fb454# GND nmos W=0.0975U L=0.13U
M596_keeper GND #fb454# Od0_at_50_6 GND nmos W=0.0975U L=0.065U
M597_ GND Od0_af_50_6 #fb456# GND nmos W=0.0975U L=0.13U
M598_keeper GND Vdd #453 GND nmos W=0.0975U L=4.615U
M599_ GND Od0_at_51_6 #fb459# GND nmos W=0.0975U L=0.13U
M600_keeper GND #fb459# Od0_at_51_6 GND nmos W=0.0975U L=0.065U
M601_ GND Od0_af_51_6 #fb461# GND nmos W=0.0975U L=0.13U
M602_keeper GND Vdd #458 GND nmos W=0.0975U L=1.495U
M603_ GND Od0_at_52_6 #fb464# GND nmos W=0.0975U L=0.13U
M604_keeper GND #fb464# Od0_at_52_6 GND nmos W=0.0975U L=0.065U
M605_ GND Od0_af_52_6 #fb466# GND nmos W=0.0975U L=0.13U
M606_keeper GND Vdd #463 GND nmos W=0.0975U L=1.495U
M607_ GND Od0_at_53_6 #fb469# GND nmos W=0.0975U L=0.13U
M608_keeper GND #fb469# Od0_at_53_6 GND nmos W=0.0975U L=0.065U
M609_ GND Od0_af_53_6 #fb471# GND nmos W=0.0975U L=0.13U
M610_keeper GND Vdd #468 GND nmos W=0.0975U L=1.495U
M611_ GND Od1_at_50_6 #fb474# GND nmos W=0.0975U L=0.13U
M612_keeper GND #fb474# Od1_at_50_6 GND nmos W=0.0975U L=0.065U
M613_ GND Od1_af_50_6 #fb476# GND nmos W=0.0975U L=0.13U
M614_keeper GND Vdd #473 GND nmos W=0.0975U L=1.495U
M615_ GND Od1_at_51_6 #fb479# GND nmos W=0.0975U L=0.13U
M616_keeper GND #fb479# Od1_at_51_6 GND nmos W=0.0975U L=0.065U
M617_ GND Od1_af_51_6 #fb481# GND nmos W=0.0975U L=0.13U
M618_keeper GND Vdd #478 GND nmos W=0.0975U L=1.495U
M619_ GND Od1_at_52_6 #fb484# GND nmos W=0.0975U L=0.13U
M620_keeper GND #fb484# Od1_at_52_6 GND nmos W=0.0975U L=0.065U
M621_ GND Od1_af_52_6 #fb486# GND nmos W=0.0975U L=0.13U
M622_keeper GND Vdd #483 GND nmos W=0.0975U L=1.495U
M623_ GND Od1_at_53_6 #fb489# GND nmos W=0.0975U L=0.13U
M624_keeper GND #fb489# Od1_at_53_6 GND nmos W=0.0975U L=0.065U
M625_ GND Od1_af_53_6 #fb491# GND nmos W=0.0975U L=0.13U
M626_keeper GND Vdd #488 GND nmos W=0.0975U L=1.495U
M627_ GND Od2_at_50_6 #fb494# GND nmos W=0.0975U L=0.13U
M628_keeper GND #fb494# Od2_at_50_6 GND nmos W=0.0975U L=0.065U
M629_ GND Od2_af_50_6 #fb496# GND nmos W=0.0975U L=0.13U
M630_keeper GND Vdd #493 GND nmos W=0.0975U L=1.495U
M631_ GND Od2_at_51_6 #fb499# GND nmos W=0.0975U L=0.13U
M632_keeper GND #fb499# Od2_at_51_6 GND nmos W=0.0975U L=0.065U
M633_ GND Od2_af_51_6 #fb501# GND nmos W=0.0975U L=0.13U
M634_keeper GND Vdd #498 GND nmos W=0.0975U L=1.495U
M635_ GND Od2_at_52_6 #fb504# GND nmos W=0.0975U L=0.13U
M636_keeper GND #fb504# Od2_at_52_6 GND nmos W=0.0975U L=0.065U
M637_ GND Od2_af_52_6 #fb506# GND nmos W=0.0975U L=0.13U
M638_keeper GND Vdd #503 GND nmos W=0.0975U L=1.495U
M639_ GND Od2_at_53_6 #fb509# GND nmos W=0.0975U L=0.13U
M640_keeper GND #fb509# Od2_at_53_6 GND nmos W=0.0975U L=0.065U
M641_ GND Od2_af_53_6 #fb511# GND nmos W=0.0975U L=0.13U
M642_keeper GND Vdd #508 GND nmos W=0.0975U L=1.495U
M643_ GND Od3_at_50_6 #fb514# GND nmos W=0.0975U L=0.13U
M644_keeper GND #fb514# Od3_at_50_6 GND nmos W=0.0975U L=0.065U
M645_ GND Od3_af_50_6 #fb516# GND nmos W=0.0975U L=0.13U
M646_keeper GND Vdd #513 GND nmos W=0.0975U L=1.495U
M647_ GND Od3_at_51_6 #fb519# GND nmos W=0.0975U L=0.13U
M648_keeper GND #fb519# Od3_at_51_6 GND nmos W=0.0975U L=0.065U
M649_ GND Od3_af_51_6 #fb521# GND nmos W=0.0975U L=0.13U
M650_keeper GND Vdd #518 GND nmos W=0.0975U L=1.495U
M651_ GND Od3_at_52_6 #fb524# GND nmos W=0.0975U L=0.13U
M652_keeper GND #fb524# Od3_at_52_6 GND nmos W=0.0975U L=0.065U
M653_ GND Od3_af_52_6 #fb526# GND nmos W=0.0975U L=0.13U
M654_keeper GND Vdd #523 GND nmos W=0.0975U L=1.495U
M655_ GND Od3_at_53_6 #fb529# GND nmos W=0.0975U L=0.13U
M656_keeper GND #fb529# Od3_at_53_6 GND nmos W=0.0975U L=0.065U
M657_ GND Od3_af_53_6 #fb531# GND nmos W=0.0975U L=0.13U
M658_keeper GND Vdd #528 GND nmos W=0.0975U L=1.495U
M659_ GND W0_at_51_6 #fb534# GND nmos W=0.0975U L=0.13U
M660_keeper GND #fb534# W0_at_51_6 GND nmos W=0.0975U L=0.065U
M661_ GND W0_af_51_6 #fb536# GND nmos W=0.0975U L=0.13U
M662_keeper GND Vdd #533 GND nmos W=0.0975U L=1.495U
M663_ GND W0_at_52_6 #fb539# GND nmos W=0.0975U L=0.13U
M664_keeper GND #fb539# W0_at_52_6 GND nmos W=0.0975U L=0.065U
M665_ GND W0_af_52_6 #fb541# GND nmos W=0.0975U L=0.13U
M666_keeper GND Vdd #538 GND nmos W=0.0975U L=3.055U
M667_ GND W0_at_53_6 #fb544# GND nmos W=0.0975U L=0.13U
M668_keeper GND #fb544# W0_at_53_6 GND nmos W=0.0975U L=0.065U
M669_ GND W0_af_53_6 #fb546# GND nmos W=0.0975U L=0.13U
M670_keeper GND Vdd #543 GND nmos W=0.0975U L=3.055U
M671_ GND W0_at_54_6 #fb549# GND nmos W=0.0975U L=0.13U
M672_keeper GND #fb549# W0_at_54_6 GND nmos W=0.0975U L=0.065U
M673_ GND W0_af_54_6 #fb551# GND nmos W=0.0975U L=0.13U
M674_keeper GND Vdd #548 GND nmos W=0.0975U L=3.055U
M675_ GND W0_at_55_6 #fb554# GND nmos W=0.0975U L=0.13U
M676_keeper GND #fb554# W0_at_55_6 GND nmos W=0.0975U L=0.065U
M677_ GND W0_af_55_6 #fb556# GND nmos W=0.0975U L=0.13U
M678_keeper GND Vdd #553 GND nmos W=0.0975U L=3.055U
M679_ GND W0_at_56_6 #fb559# GND nmos W=0.0975U L=0.13U
M680_keeper GND #fb559# W0_at_56_6 GND nmos W=0.0975U L=0.065U
M681_ GND W0_af_56_6 #fb561# GND nmos W=0.0975U L=0.13U
M682_keeper GND Vdd #558 GND nmos W=0.0975U L=3.055U
M683_ GND W0_at_57_6 #fb564# GND nmos W=0.0975U L=0.13U
M684_keeper GND #fb564# W0_at_57_6 GND nmos W=0.0975U L=0.065U
M685_ GND W0_af_57_6 #fb566# GND nmos W=0.0975U L=0.13U
M686_keeper GND Vdd #563 GND nmos W=0.0975U L=3.055U
M687_ GND W0_at_50_6 #fb569# GND nmos W=0.0975U L=0.13U
M688_keeper GND Vdd #568 GND nmos W=0.0975U L=3.055U
M689_ GND W0_af_50_6 #fb572# GND nmos W=0.0975U L=0.13U
M690_keeper GND Vdd #571 GND nmos W=0.0975U L=3.835U
M691_ GND W1_at_51_6 #fb575# GND nmos W=0.0975U L=0.13U
M692_keeper GND #fb575# W1_at_51_6 GND nmos W=0.0975U L=0.065U
M693_ GND W1_af_51_6 #fb577# GND nmos W=0.0975U L=0.13U
M694_keeper GND Vdd #574 GND nmos W=0.0975U L=3.835U
M695_ GND W1_at_52_6 #fb580# GND nmos W=0.0975U L=0.13U
M696_keeper GND #fb580# W1_at_52_6 GND nmos W=0.0975U L=0.065U
M697_ GND W1_af_52_6 #fb582# GND nmos W=0.0975U L=0.13U
M698_keeper GND Vdd #579 GND nmos W=0.0975U L=3.055U
M699_ GND W1_at_53_6 #fb585# GND nmos W=0.0975U L=0.13U
M700_keeper GND #fb585# W1_at_53_6 GND nmos W=0.0975U L=0.065U
M701_ GND W1_af_53_6 #fb587# GND nmos W=0.0975U L=0.13U
M702_keeper GND Vdd #584 GND nmos W=0.0975U L=3.055U
M703_ GND W1_at_54_6 #fb590# GND nmos W=0.0975U L=0.13U
M704_keeper GND #fb590# W1_at_54_6 GND nmos W=0.0975U L=0.065U
M705_ GND W1_af_54_6 #fb592# GND nmos W=0.0975U L=0.13U
M706_keeper GND Vdd #589 GND nmos W=0.0975U L=3.055U
M707_ GND W1_at_55_6 #fb595# GND nmos W=0.0975U L=0.13U
M708_keeper GND #fb595# W1_at_55_6 GND nmos W=0.0975U L=0.065U
M709_ GND W1_af_55_6 #fb597# GND nmos W=0.0975U L=0.13U
M710_keeper GND Vdd #594 GND nmos W=0.0975U L=3.055U
M711_ GND W1_at_56_6 #fb600# GND nmos W=0.0975U L=0.13U
M712_keeper GND #fb600# W1_at_56_6 GND nmos W=0.0975U L=0.065U
M713_ GND W1_af_56_6 #fb602# GND nmos W=0.0975U L=0.13U
M714_keeper GND Vdd #599 GND nmos W=0.0975U L=3.055U
M715_ GND W1_at_57_6 #fb605# GND nmos W=0.0975U L=0.13U
M716_keeper GND #fb605# W1_at_57_6 GND nmos W=0.0975U L=0.065U
M717_ GND W1_af_57_6 #fb607# GND nmos W=0.0975U L=0.13U
M718_keeper GND Vdd #604 GND nmos W=0.0975U L=3.055U
M719_ GND W1_at_50_6 #fb610# GND nmos W=0.0975U L=0.13U
M720_keeper GND Vdd #609 GND nmos W=0.0975U L=3.055U
M721_ GND W1_af_50_6 #fb613# GND nmos W=0.0975U L=0.13U
M722_keeper GND Vdd #612 GND nmos W=0.0975U L=3.835U
M723_ GND W2_at_51_6 #fb616# GND nmos W=0.0975U L=0.13U
M724_keeper GND #fb616# W2_at_51_6 GND nmos W=0.0975U L=0.065U
M725_ GND W2_af_51_6 #fb618# GND nmos W=0.0975U L=0.13U
M726_keeper GND Vdd #615 GND nmos W=0.0975U L=3.835U
M727_ GND W2_at_52_6 #fb621# GND nmos W=0.0975U L=0.13U
M728_keeper GND #fb621# W2_at_52_6 GND nmos W=0.0975U L=0.065U
M729_ GND W2_af_52_6 #fb623# GND nmos W=0.0975U L=0.13U
M730_keeper GND Vdd #620 GND nmos W=0.0975U L=3.055U
M731_ GND W2_at_53_6 #fb626# GND nmos W=0.0975U L=0.13U
M732_keeper GND #fb626# W2_at_53_6 GND nmos W=0.0975U L=0.065U
M733_ GND W2_af_53_6 #fb628# GND nmos W=0.0975U L=0.13U
M734_keeper GND Vdd #625 GND nmos W=0.0975U L=3.055U
M735_ GND W2_at_54_6 #fb631# GND nmos W=0.0975U L=0.13U
M736_keeper GND #fb631# W2_at_54_6 GND nmos W=0.0975U L=0.065U
M737_ GND W2_af_54_6 #fb633# GND nmos W=0.0975U L=0.13U
M738_keeper GND Vdd #630 GND nmos W=0.0975U L=3.055U
M739_ GND W2_at_55_6 #fb636# GND nmos W=0.0975U L=0.13U
M740_keeper GND #fb636# W2_at_55_6 GND nmos W=0.0975U L=0.065U
M741_ GND W2_af_55_6 #fb638# GND nmos W=0.0975U L=0.13U
M742_keeper GND Vdd #635 GND nmos W=0.0975U L=3.055U
M743_ GND W2_at_56_6 #fb641# GND nmos W=0.0975U L=0.13U
M744_keeper GND #fb641# W2_at_56_6 GND nmos W=0.0975U L=0.065U
M745_ GND W2_af_56_6 #fb643# GND nmos W=0.0975U L=0.13U
M746_keeper GND Vdd #640 GND nmos W=0.0975U L=3.055U
M747_ GND W2_at_57_6 #fb646# GND nmos W=0.0975U L=0.13U
M748_keeper GND #fb646# W2_at_57_6 GND nmos W=0.0975U L=0.065U
M749_ GND W2_af_57_6 #fb648# GND nmos W=0.0975U L=0.13U
M750_keeper GND Vdd #645 GND nmos W=0.0975U L=3.055U
M751_ GND W2_at_50_6 #fb651# GND nmos W=0.0975U L=0.13U
M752_keeper GND Vdd #650 GND nmos W=0.0975U L=3.055U
M753_ GND W2_af_50_6 #fb654# GND nmos W=0.0975U L=0.13U
M754_keeper GND Vdd #653 GND nmos W=0.0975U L=3.835U
M755_ GND W3_at_51_6 #fb657# GND nmos W=0.0975U L=0.13U
M756_keeper GND #fb657# W3_at_51_6 GND nmos W=0.0975U L=0.065U
M757_ GND W3_af_51_6 #fb659# GND nmos W=0.0975U L=0.13U
M758_keeper GND Vdd #656 GND nmos W=0.0975U L=3.835U
M759_ GND W3_at_52_6 #fb662# GND nmos W=0.0975U L=0.13U
M760_keeper GND #fb662# W3_at_52_6 GND nmos W=0.0975U L=0.065U
M761_ GND W3_af_52_6 #fb664# GND nmos W=0.0975U L=0.13U
M762_keeper GND Vdd #661 GND nmos W=0.0975U L=3.055U
M763_ GND W3_at_53_6 #fb667# GND nmos W=0.0975U L=0.13U
M764_keeper GND #fb667# W3_at_53_6 GND nmos W=0.0975U L=0.065U
M765_ GND W3_af_53_6 #fb669# GND nmos W=0.0975U L=0.13U
M766_keeper GND Vdd #666 GND nmos W=0.0975U L=3.055U
M767_ GND W3_at_54_6 #fb672# GND nmos W=0.0975U L=0.13U
M768_keeper GND #fb672# W3_at_54_6 GND nmos W=0.0975U L=0.065U
M769_ GND W3_af_54_6 #fb674# GND nmos W=0.0975U L=0.13U
M770_keeper GND Vdd #671 GND nmos W=0.0975U L=3.055U
M771_ GND W3_at_55_6 #fb677# GND nmos W=0.0975U L=0.13U
M772_keeper GND #fb677# W3_at_55_6 GND nmos W=0.0975U L=0.065U
M773_ GND W3_af_55_6 #fb679# GND nmos W=0.0975U L=0.13U
M774_keeper GND Vdd #676 GND nmos W=0.0975U L=3.055U
M775_ GND W3_at_56_6 #fb682# GND nmos W=0.0975U L=0.13U
M776_keeper GND #fb682# W3_at_56_6 GND nmos W=0.0975U L=0.065U
M777_ GND W3_af_56_6 #fb684# GND nmos W=0.0975U L=0.13U
M778_keeper GND Vdd #681 GND nmos W=0.0975U L=3.055U
M779_ GND W3_at_57_6 #fb687# GND nmos W=0.0975U L=0.13U
M780_keeper GND #fb687# W3_at_57_6 GND nmos W=0.0975U L=0.065U
M781_ GND W3_af_57_6 #fb689# GND nmos W=0.0975U L=0.13U
M782_keeper GND Vdd #686 GND nmos W=0.0975U L=3.055U
M783_ GND W3_at_50_6 #fb692# GND nmos W=0.0975U L=0.13U
M784_keeper GND Vdd #691 GND nmos W=0.0975U L=3.055U
M785_ GND W3_af_50_6 #fb695# GND nmos W=0.0975U L=0.13U
M786_keeper GND Vdd #694 GND nmos W=0.0975U L=3.835U
M787_ GND Ch_at_50_6 #fb698# GND nmos W=0.0975U L=0.13U
M788_keeper GND Vdd #697 GND nmos W=0.0975U L=3.835U
M789_ GND Ch_af_50_6 #fb701# GND nmos W=0.0975U L=0.13U
M790_keeper GND Vdd #700 GND nmos W=0.0975U L=3.835U
M791_ GND Ch_at_51_6 #fb704# GND nmos W=0.0975U L=0.13U
M792_keeper GND Vdd #703 GND nmos W=0.0975U L=3.835U
M793_ GND Ch_af_51_6 #fb707# GND nmos W=0.0975U L=0.13U
M794_keeper GND Vdd #706 GND nmos W=0.0975U L=3.835U
M795_ GND Ch_at_52_6 #fb710# GND nmos W=0.0975U L=0.13U
M796_keeper GND Vdd #709 GND nmos W=0.0975U L=3.835U
M797_ GND Ch_af_52_6 #fb713# GND nmos W=0.0975U L=0.13U
M798_keeper GND Vdd #712 GND nmos W=0.0975U L=3.835U
M799_ GND Ch_at_53_6 #fb716# GND nmos W=0.0975U L=0.13U
M800_keeper GND Vdd #715 GND nmos W=0.0975U L=3.835U
M801_ GND Ch_af_53_6 #fb719# GND nmos W=0.0975U L=0.13U
M802_keeper GND Vdd #718 GND nmos W=0.0975U L=3.835U
M803_keeper GND Vdd #721 GND nmos W=0.0975U L=3.835U
M804_ #3 b_50_6 __x_50_6 GND nmos W=0.0975U L=0.065U
M805_ #6 __b_50_6 __x_50_6 GND nmos W=0.0975U L=0.065U
M806_ #9 I_af_50_6 __x_50_6 Vdd pmos W=0.1625U L=0.065U
M807_keeper #404 #fb403# __x_50_6 Vdd pmos W=0.0975U L=0.065U
M808_keeper #405 #fb403# __x_50_6 GND nmos W=0.0975U L=0.065U
M809_ #162 __it_50_6 b_50_6 Vdd pmos W=0.1625U L=0.065U
M810_ #165 I_af_50_6 b_50_6 GND nmos W=0.0975U L=0.065U
M811_keeper #407 #fb406# b_50_6 Vdd pmos W=0.0975U L=0.065U
M812_keeper #408 #fb406# b_50_6 GND nmos W=0.0975U L=0.065U
M813_ #11 b_51_6 __x_51_6 GND nmos W=0.0975U L=0.065U
M814_ #14 __b_51_6 __x_51_6 GND nmos W=0.0975U L=0.065U
M815_ #17 I_af_51_6 __x_51_6 Vdd pmos W=0.1625U L=0.065U
M816_keeper #410 #fb409# __x_51_6 Vdd pmos W=0.0975U L=0.065U
M817_keeper #411 #fb409# __x_51_6 GND nmos W=0.0975U L=0.065U
M818_ #167 __it_51_6 b_51_6 Vdd pmos W=0.1625U L=0.065U
M819_ #169 I_af_51_6 b_51_6 GND nmos W=0.0975U L=0.065U
M820_keeper #413 #fb412# b_51_6 Vdd pmos W=0.0975U L=0.065U
M821_keeper #414 #fb412# b_51_6 GND nmos W=0.0975U L=0.065U
M822_ #19 b_52_6 __x_52_6 GND nmos W=0.0975U L=0.065U
M823_ #22 __b_52_6 __x_52_6 GND nmos W=0.0975U L=0.065U
M824_ #25 I_af_52_6 __x_52_6 Vdd pmos W=0.1625U L=0.065U
M825_keeper #416 #fb415# __x_52_6 Vdd pmos W=0.0975U L=0.065U
M826_keeper #417 #fb415# __x_52_6 GND nmos W=0.0975U L=0.065U
M827_ #171 __it_52_6 b_52_6 Vdd pmos W=0.1625U L=0.065U
M828_ #173 I_af_52_6 b_52_6 GND nmos W=0.0975U L=0.065U
M829_keeper #419 #fb418# b_52_6 Vdd pmos W=0.0975U L=0.065U
M830_keeper #420 #fb418# b_52_6 GND nmos W=0.0975U L=0.065U
M831_ #27 b_53_6 __x_53_6 GND nmos W=0.0975U L=0.065U
M832_ #30 __b_53_6 __x_53_6 GND nmos W=0.0975U L=0.065U
M833_ #33 I_af_53_6 __x_53_6 Vdd pmos W=0.1625U L=0.065U
M834_keeper #422 #fb421# __x_53_6 Vdd pmos W=0.0975U L=0.065U
M835_keeper #423 #fb421# __x_53_6 GND nmos W=0.0975U L=0.065U
M836_ #175 __it_53_6 b_53_6 Vdd pmos W=0.1625U L=0.065U
M837_ #177 I_af_53_6 b_53_6 GND nmos W=0.0975U L=0.065U
M838_keeper #425 #fb424# b_53_6 Vdd pmos W=0.0975U L=0.065U
M839_keeper #426 #fb424# b_53_6 GND nmos W=0.0975U L=0.065U
M840_ #35 __x_50_6 y_50_6 Vdd pmos W=0.1625U L=0.065U
M841_ #36 __x_50_6 y_50_6 GND nmos W=0.0975U L=0.065U
M842_keeper #428 #fb427# y_50_6 Vdd pmos W=0.0975U L=0.065U
M843_keeper #429 #fb427# y_50_6 GND nmos W=0.0975U L=0.065U
M844_ #38 __x_52_6 y_51_6 Vdd pmos W=0.1625U L=0.065U
M845_ #39 __x_52_6 y_51_6 GND nmos W=0.0975U L=0.065U
M846_keeper #431 #fb430# y_51_6 Vdd pmos W=0.0975U L=0.065U
M847_keeper #432 #fb430# y_51_6 GND nmos W=0.0975U L=0.065U
M848_ #41 y_50_6 __z GND nmos W=0.0975U L=0.065U
M849_ #42 y_50_6 __z Vdd pmos W=0.1625U L=0.065U
M850_keeper #434 #fb433# __z Vdd pmos W=0.0975U L=0.065U
M851_keeper #435 #fb433# __z GND nmos W=0.0975U L=0.065U
M852_ #44 __z k Vdd pmos W=0.65U L=0.065U
M853_keeper #437 #fb436# k Vdd pmos W=0.0975U L=0.065U
M854_keeper #438 #fb436# k GND nmos W=0.0975U L=0.065U
M855_ #47 __ia __p0 GND nmos W=0.0975U L=0.065U
M856_ #57 Od3_aa __p0 Vdd pmos W=0.1625U L=0.065U
M857_keeper #440 #fb439# __p0 Vdd pmos W=0.0975U L=0.065U
M858_keeper #441 #fb439# __p0 GND nmos W=0.0975U L=0.065U
M859_ #48 I_af_50_6 #47 GND nmos W=0.0975U L=0.065U
M860_ #49 I_af_51_6 #48 GND nmos W=0.0975U L=0.065U
M861_ #50 I_af_52_6 #49 GND nmos W=0.0975U L=0.065U
M862_ #51 I_af_53_6 #50 GND nmos W=0.0975U L=0.065U
M863_ #84 Od3_aa __ia GND nmos W=0.39U L=0.065U
M864_ #87 I_af_50_6 __ia Vdd pmos W=0.65U L=0.065U
M865_keeper #443 #fb442# __ia Vdd pmos W=0.0975U L=0.065U
M866_keeper #444 #fb442# __ia GND nmos W=0.0975U L=0.065U
M867_ #55 __s #54 Vdd pmos W=0.1625U L=0.065U
M868_ #54 Od0_aa #59 Vdd pmos W=0.1625U L=0.065U
M869_ #58 Od2_aa #57 Vdd pmos W=0.1625U L=0.065U
M870_ #59 Od1_aa #58 Vdd pmos W=0.1625U L=0.065U
M871_ #66 __it_53_6 p1 Vdd pmos W=0.325U L=0.065U
M872_ #66 __it_52_6 p1 Vdd pmos W=0.325U L=0.065U
M873_ #66 __it_51_6 p1 Vdd pmos W=0.325U L=0.065U
M874_ #66 __it_50_6 p1 Vdd pmos W=0.325U L=0.065U
M875_ #73 __cha p1 GND nmos W=0.195U L=0.065U
M876_keeper #446 #fb445# p1 Vdd pmos W=0.0975U L=0.065U
M877_keeper #447 #fb445# p1 GND nmos W=0.0975U L=0.065U
M878_ #67 __s #66 Vdd pmos W=0.325U L=0.065U
M879_ #74 __wa_53_6 #73 GND nmos W=0.195U L=0.065U
M880_ #75 __wa_52_6 #74 GND nmos W=0.195U L=0.065U
M881_ #76 __wa_51_6 #75 GND nmos W=0.195U L=0.065U
M882_ #77 __wa_50_6 #76 GND nmos W=0.195U L=0.065U
M883_ #85 Od2_aa #84 GND nmos W=0.39U L=0.065U
M884_ #86 Od1_aa #85 GND nmos W=0.39U L=0.065U
M885_ #88 I_af_51_6 #87 Vdd pmos W=0.65U L=0.065U
M886_ #89 I_af_52_6 #88 Vdd pmos W=0.65U L=0.065U
M887_ #90 I_af_53_6 #89 Vdd pmos W=0.65U L=0.065U
M888_ #91 A_aa #90 Vdd pmos W=0.65U L=0.065U
M889_ #92 p1 #91 Vdd pmos W=0.65U L=0.065U
M890_ #110 __p1 A_aa Vdd pmos W=0.1625U L=0.065U
M891_ #111 __it_53_6 A_aa Vdd pmos W=0.1625U L=0.065U
M892_ #111 __it_52_6 A_aa Vdd pmos W=0.1625U L=0.065U
M893_ #111 __it_51_6 A_aa Vdd pmos W=0.1625U L=0.065U
M894_ #111 __it_50_6 A_aa Vdd pmos W=0.1625U L=0.065U
M895_ #112 __ar A_aa GND nmos W=0.0975U L=0.065U
M896_keeper #449 #fb448# A_aa Vdd pmos W=0.0975U L=0.065U
M897_keeper #450 #fb448# A_aa GND nmos W=0.0975U L=0.065U
M898_ #96 Od3_aa s Vdd pmos W=0.325U L=0.065U
M899_ #101 Ch_aa s GND nmos W=0.195U L=0.065U
M900_keeper #452 #fb451# s Vdd pmos W=0.0975U L=0.065U
M901_keeper #453 #fb451# s GND nmos W=0.0975U L=0.065U
M902_ #97 Od2_aa #96 Vdd pmos W=0.325U L=0.065U
M903_ #98 Od1_aa #97 Vdd pmos W=0.325U L=0.065U
M904_ #99 Od0_aa #98 Vdd pmos W=0.325U L=0.065U
M905_ #100 __ia #99 Vdd pmos W=0.325U L=0.065U
M906_ #102 W3_aa #101 GND nmos W=0.195U L=0.065U
M907_ #103 W2_aa #102 GND nmos W=0.195U L=0.065U
M908_ #104 W1_aa #103 GND nmos W=0.195U L=0.065U
M909_ #110 s #111 Vdd pmos W=0.1625U L=0.065U
M910_keeper #455 #fb454# Od0_at_50_6 Vdd pmos W=0.0975U L=0.065U
M911_ #115 __p0 Od0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M912_keeper #457 #fb456# Od0_af_50_6 Vdd pmos W=0.0975U L=0.065U
M913_keeper #458 #fb456# Od0_af_50_6 GND nmos W=0.0975U L=0.065U
M914_keeper #460 #fb459# Od0_at_51_6 Vdd pmos W=0.0975U L=0.065U
M915_ #119 __p0 Od0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M916_keeper #462 #fb461# Od0_af_51_6 Vdd pmos W=0.0975U L=0.065U
M917_keeper #463 #fb461# Od0_af_51_6 GND nmos W=0.0975U L=0.065U
M918_keeper #465 #fb464# Od0_at_52_6 Vdd pmos W=0.0975U L=0.065U
M919_ #122 __p0 Od0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M920_keeper #467 #fb466# Od0_af_52_6 Vdd pmos W=0.0975U L=0.065U
M921_keeper #468 #fb466# Od0_af_52_6 GND nmos W=0.0975U L=0.065U
M922_keeper #470 #fb469# Od0_at_53_6 Vdd pmos W=0.0975U L=0.065U
M923_ #125 __p0 Od0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M924_keeper #472 #fb471# Od0_af_53_6 Vdd pmos W=0.0975U L=0.065U
M925_keeper #473 #fb471# Od0_af_53_6 GND nmos W=0.0975U L=0.065U
M926_keeper #475 #fb474# Od1_at_50_6 Vdd pmos W=0.0975U L=0.065U
M927_ #128 __p0 Od1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M928_keeper #477 #fb476# Od1_af_50_6 Vdd pmos W=0.0975U L=0.065U
M929_keeper #478 #fb476# Od1_af_50_6 GND nmos W=0.0975U L=0.065U
M930_keeper #480 #fb479# Od1_at_51_6 Vdd pmos W=0.0975U L=0.065U
M931_ #131 __p0 Od1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M932_keeper #482 #fb481# Od1_af_51_6 Vdd pmos W=0.0975U L=0.065U
M933_keeper #483 #fb481# Od1_af_51_6 GND nmos W=0.0975U L=0.065U
M934_keeper #485 #fb484# Od1_at_52_6 Vdd pmos W=0.0975U L=0.065U
M935_ #134 __p0 Od1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M936_keeper #487 #fb486# Od1_af_52_6 Vdd pmos W=0.0975U L=0.065U
M937_keeper #488 #fb486# Od1_af_52_6 GND nmos W=0.0975U L=0.065U
M938_keeper #490 #fb489# Od1_at_53_6 Vdd pmos W=0.0975U L=0.065U
M939_ #137 __p0 Od1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M940_keeper #492 #fb491# Od1_af_53_6 Vdd pmos W=0.0975U L=0.065U
M941_keeper #493 #fb491# Od1_af_53_6 GND nmos W=0.0975U L=0.065U
M942_keeper #495 #fb494# Od2_at_50_6 Vdd pmos W=0.0975U L=0.065U
M943_ #140 __p0 Od2_af_50_6 Vdd pmos W=0.1625U L=0.065U
M944_keeper #497 #fb496# Od2_af_50_6 Vdd pmos W=0.0975U L=0.065U
M945_keeper #498 #fb496# Od2_af_50_6 GND nmos W=0.0975U L=0.065U
M946_keeper #500 #fb499# Od2_at_51_6 Vdd pmos W=0.0975U L=0.065U
M947_ #143 __p0 Od2_af_51_6 Vdd pmos W=0.1625U L=0.065U
M948_keeper #502 #fb501# Od2_af_51_6 Vdd pmos W=0.0975U L=0.065U
M949_keeper #503 #fb501# Od2_af_51_6 GND nmos W=0.0975U L=0.065U
M950_keeper #505 #fb504# Od2_at_52_6 Vdd pmos W=0.0975U L=0.065U
M951_ #146 __p0 Od2_af_52_6 Vdd pmos W=0.1625U L=0.065U
M952_keeper #507 #fb506# Od2_af_52_6 Vdd pmos W=0.0975U L=0.065U
M953_keeper #508 #fb506# Od2_af_52_6 GND nmos W=0.0975U L=0.065U
M954_keeper #510 #fb509# Od2_at_53_6 Vdd pmos W=0.0975U L=0.065U
M955_ #149 __p0 Od2_af_53_6 Vdd pmos W=0.1625U L=0.065U
M956_keeper #512 #fb511# Od2_af_53_6 Vdd pmos W=0.0975U L=0.065U
M957_keeper #513 #fb511# Od2_af_53_6 GND nmos W=0.0975U L=0.065U
M958_keeper #515 #fb514# Od3_at_50_6 Vdd pmos W=0.0975U L=0.065U
M959_ #152 __p0 Od3_af_50_6 Vdd pmos W=0.1625U L=0.065U
M960_keeper #517 #fb516# Od3_af_50_6 Vdd pmos W=0.0975U L=0.065U
M961_keeper #518 #fb516# Od3_af_50_6 GND nmos W=0.0975U L=0.065U
M962_keeper #520 #fb519# Od3_at_51_6 Vdd pmos W=0.0975U L=0.065U
M963_ #155 __p0 Od3_af_51_6 Vdd pmos W=0.1625U L=0.065U
M964_keeper #522 #fb521# Od3_af_51_6 Vdd pmos W=0.0975U L=0.065U
M965_keeper #523 #fb521# Od3_af_51_6 GND nmos W=0.0975U L=0.065U
M966_keeper #525 #fb524# Od3_at_52_6 Vdd pmos W=0.0975U L=0.065U
M967_ #158 __p0 Od3_af_52_6 Vdd pmos W=0.1625U L=0.065U
M968_keeper #527 #fb526# Od3_af_52_6 Vdd pmos W=0.0975U L=0.065U
M969_keeper #528 #fb526# Od3_af_52_6 GND nmos W=0.0975U L=0.065U
M970_keeper #530 #fb529# Od3_at_53_6 Vdd pmos W=0.0975U L=0.065U
M971_ #161 __p0 Od3_af_53_6 Vdd pmos W=0.1625U L=0.065U
M972_keeper #532 #fb531# Od3_af_53_6 Vdd pmos W=0.0975U L=0.065U
M973_keeper #533 #fb531# Od3_af_53_6 GND nmos W=0.0975U L=0.065U
M974_ #163 __s #162 Vdd pmos W=0.1625U L=0.065U
M975_ #166 s #165 GND nmos W=0.0975U L=0.065U
M976_ #168 __s #167 Vdd pmos W=0.1625U L=0.065U
M977_ #170 s #169 GND nmos W=0.0975U L=0.065U
M978_ #172 __s #171 Vdd pmos W=0.1625U L=0.065U
M979_ #174 s #173 GND nmos W=0.0975U L=0.065U
M980_ #176 __s #175 Vdd pmos W=0.1625U L=0.065U
M981_ #178 s #177 GND nmos W=0.0975U L=0.065U
M982_keeper #535 #fb534# W0_at_51_6 Vdd pmos W=0.0975U L=0.065U
M983_ #181 __p1 W0_af_51_6 Vdd pmos W=0.1625U L=0.065U
M984_keeper #537 #fb536# W0_af_51_6 Vdd pmos W=0.0975U L=0.065U
M985_keeper #538 #fb536# W0_af_51_6 GND nmos W=0.0975U L=0.065U
M986_ #182 __ia #181 Vdd pmos W=0.1625U L=0.065U
M987_ #183 k #182 Vdd pmos W=0.1625U L=0.065U
M988_keeper #540 #fb539# W0_at_52_6 Vdd pmos W=0.0975U L=0.065U
M989_ #186 __p1 W0_af_52_6 Vdd pmos W=0.1625U L=0.065U
M990_keeper #542 #fb541# W0_af_52_6 Vdd pmos W=0.0975U L=0.065U
M991_keeper #543 #fb541# W0_af_52_6 GND nmos W=0.0975U L=0.065U
M992_ #187 __ia #186 Vdd pmos W=0.1625U L=0.065U
M993_ #188 k #187 Vdd pmos W=0.1625U L=0.065U
M994_keeper #545 #fb544# W0_at_53_6 Vdd pmos W=0.0975U L=0.065U
M995_ #191 __p1 W0_af_53_6 Vdd pmos W=0.1625U L=0.065U
M996_keeper #547 #fb546# W0_af_53_6 Vdd pmos W=0.0975U L=0.065U
M997_keeper #548 #fb546# W0_af_53_6 GND nmos W=0.0975U L=0.065U
M998_ #192 __ia #191 Vdd pmos W=0.1625U L=0.065U
M999_ #193 k #192 Vdd pmos W=0.1625U L=0.065U
M1000_keeper #550 #fb549# W0_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1001_ #196 __p1 W0_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1002_keeper #552 #fb551# W0_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1003_keeper #553 #fb551# W0_af_54_6 GND nmos W=0.0975U L=0.065U
M1004_ #197 __ia #196 Vdd pmos W=0.1625U L=0.065U
M1005_ #198 k #197 Vdd pmos W=0.1625U L=0.065U
M1006_keeper #555 #fb554# W0_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1007_ #201 __p1 W0_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1008_keeper #557 #fb556# W0_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1009_keeper #558 #fb556# W0_af_55_6 GND nmos W=0.0975U L=0.065U
M1010_ #202 __ia #201 Vdd pmos W=0.1625U L=0.065U
M1011_ #203 k #202 Vdd pmos W=0.1625U L=0.065U
M1012_keeper #560 #fb559# W0_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1013_ #206 __p1 W0_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1014_keeper #562 #fb561# W0_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1015_keeper #563 #fb561# W0_af_56_6 GND nmos W=0.0975U L=0.065U
M1016_ #207 __ia #206 Vdd pmos W=0.1625U L=0.065U
M1017_ #208 k #207 Vdd pmos W=0.1625U L=0.065U
M1018_keeper #565 #fb564# W0_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1019_ #211 __p1 W0_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1020_keeper #567 #fb566# W0_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1021_keeper #568 #fb566# W0_af_57_6 GND nmos W=0.0975U L=0.065U
M1022_ #212 __ia #211 Vdd pmos W=0.1625U L=0.065U
M1023_ #213 k #212 Vdd pmos W=0.1625U L=0.065U
M1024_ #215 __b_53_6 W0_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1025_keeper #570 #fb569# W0_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1026_keeper #571 #fb569# W0_at_50_6 GND nmos W=0.0975U L=0.065U
M1027_ #216 __p1 #215 Vdd pmos W=0.1625U L=0.065U
M1028_ #217 __ia #216 Vdd pmos W=0.1625U L=0.065U
M1029_ #218 k #217 Vdd pmos W=0.1625U L=0.065U
M1030_ #220 b_53_6 W0_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1031_keeper #573 #fb572# W0_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1032_keeper #574 #fb572# W0_af_50_6 GND nmos W=0.0975U L=0.065U
M1033_ #221 __p1 #220 Vdd pmos W=0.1625U L=0.065U
M1034_ #222 __ia #221 Vdd pmos W=0.1625U L=0.065U
M1035_ #223 k #222 Vdd pmos W=0.1625U L=0.065U
M1036_keeper #576 #fb575# W1_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1037_ #226 __p1 W1_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1038_keeper #578 #fb577# W1_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1039_keeper #579 #fb577# W1_af_51_6 GND nmos W=0.0975U L=0.065U
M1040_ #227 __ia #226 Vdd pmos W=0.1625U L=0.065U
M1041_ #228 k #227 Vdd pmos W=0.1625U L=0.065U
M1042_keeper #581 #fb580# W1_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1043_ #231 __p1 W1_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1044_keeper #583 #fb582# W1_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1045_keeper #584 #fb582# W1_af_52_6 GND nmos W=0.0975U L=0.065U
M1046_ #232 __ia #231 Vdd pmos W=0.1625U L=0.065U
M1047_ #233 k #232 Vdd pmos W=0.1625U L=0.065U
M1048_keeper #586 #fb585# W1_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1049_ #236 __p1 W1_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1050_keeper #588 #fb587# W1_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1051_keeper #589 #fb587# W1_af_53_6 GND nmos W=0.0975U L=0.065U
M1052_ #237 __ia #236 Vdd pmos W=0.1625U L=0.065U
M1053_ #238 k #237 Vdd pmos W=0.1625U L=0.065U
M1054_keeper #591 #fb590# W1_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1055_ #241 __p1 W1_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1056_keeper #593 #fb592# W1_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1057_keeper #594 #fb592# W1_af_54_6 GND nmos W=0.0975U L=0.065U
M1058_ #242 __ia #241 Vdd pmos W=0.1625U L=0.065U
M1059_ #243 k #242 Vdd pmos W=0.1625U L=0.065U
M1060_keeper #596 #fb595# W1_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1061_ #246 __p1 W1_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1062_keeper #598 #fb597# W1_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1063_keeper #599 #fb597# W1_af_55_6 GND nmos W=0.0975U L=0.065U
M1064_ #247 __ia #246 Vdd pmos W=0.1625U L=0.065U
M1065_ #248 k #247 Vdd pmos W=0.1625U L=0.065U
M1066_keeper #601 #fb600# W1_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1067_ #251 __p1 W1_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1068_keeper #603 #fb602# W1_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1069_keeper #604 #fb602# W1_af_56_6 GND nmos W=0.0975U L=0.065U
M1070_ #252 __ia #251 Vdd pmos W=0.1625U L=0.065U
M1071_ #253 k #252 Vdd pmos W=0.1625U L=0.065U
M1072_keeper #606 #fb605# W1_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1073_ #256 __p1 W1_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1074_keeper #608 #fb607# W1_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1075_keeper #609 #fb607# W1_af_57_6 GND nmos W=0.0975U L=0.065U
M1076_ #257 __ia #256 Vdd pmos W=0.1625U L=0.065U
M1077_ #258 k #257 Vdd pmos W=0.1625U L=0.065U
M1078_ #260 __b_52_6 W1_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1079_keeper #611 #fb610# W1_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1080_keeper #612 #fb610# W1_at_50_6 GND nmos W=0.0975U L=0.065U
M1081_ #261 __p1 #260 Vdd pmos W=0.1625U L=0.065U
M1082_ #262 __ia #261 Vdd pmos W=0.1625U L=0.065U
M1083_ #263 k #262 Vdd pmos W=0.1625U L=0.065U
M1084_ #265 b_52_6 W1_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1085_keeper #614 #fb613# W1_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1086_keeper #615 #fb613# W1_af_50_6 GND nmos W=0.0975U L=0.065U
M1087_ #266 __p1 #265 Vdd pmos W=0.1625U L=0.065U
M1088_ #267 __ia #266 Vdd pmos W=0.1625U L=0.065U
M1089_ #268 k #267 Vdd pmos W=0.1625U L=0.065U
M1090_keeper #617 #fb616# W2_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1091_ #271 __p1 W2_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1092_keeper #619 #fb618# W2_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1093_keeper #620 #fb618# W2_af_51_6 GND nmos W=0.0975U L=0.065U
M1094_ #272 __ia #271 Vdd pmos W=0.1625U L=0.065U
M1095_ #273 k #272 Vdd pmos W=0.1625U L=0.065U
M1096_keeper #622 #fb621# W2_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1097_ #276 __p1 W2_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1098_keeper #624 #fb623# W2_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1099_keeper #625 #fb623# W2_af_52_6 GND nmos W=0.0975U L=0.065U
M1100_ #277 __ia #276 Vdd pmos W=0.1625U L=0.065U
M1101_ #278 k #277 Vdd pmos W=0.1625U L=0.065U
M1102_keeper #627 #fb626# W2_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1103_ #281 __p1 W2_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1104_keeper #629 #fb628# W2_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1105_keeper #630 #fb628# W2_af_53_6 GND nmos W=0.0975U L=0.065U
M1106_ #282 __ia #281 Vdd pmos W=0.1625U L=0.065U
M1107_ #283 k #282 Vdd pmos W=0.1625U L=0.065U
M1108_keeper #632 #fb631# W2_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1109_ #286 __p1 W2_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1110_keeper #634 #fb633# W2_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1111_keeper #635 #fb633# W2_af_54_6 GND nmos W=0.0975U L=0.065U
M1112_ #287 __ia #286 Vdd pmos W=0.1625U L=0.065U
M1113_ #288 k #287 Vdd pmos W=0.1625U L=0.065U
M1114_keeper #637 #fb636# W2_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1115_ #291 __p1 W2_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1116_keeper #639 #fb638# W2_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1117_keeper #640 #fb638# W2_af_55_6 GND nmos W=0.0975U L=0.065U
M1118_ #292 __ia #291 Vdd pmos W=0.1625U L=0.065U
M1119_ #293 k #292 Vdd pmos W=0.1625U L=0.065U
M1120_keeper #642 #fb641# W2_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1121_ #296 __p1 W2_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1122_keeper #644 #fb643# W2_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1123_keeper #645 #fb643# W2_af_56_6 GND nmos W=0.0975U L=0.065U
M1124_ #297 __ia #296 Vdd pmos W=0.1625U L=0.065U
M1125_ #298 k #297 Vdd pmos W=0.1625U L=0.065U
M1126_keeper #647 #fb646# W2_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1127_ #301 __p1 W2_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1128_keeper #649 #fb648# W2_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1129_keeper #650 #fb648# W2_af_57_6 GND nmos W=0.0975U L=0.065U
M1130_ #302 __ia #301 Vdd pmos W=0.1625U L=0.065U
M1131_ #303 k #302 Vdd pmos W=0.1625U L=0.065U
M1132_ #305 __b_51_6 W2_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1133_keeper #652 #fb651# W2_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1134_keeper #653 #fb651# W2_at_50_6 GND nmos W=0.0975U L=0.065U
M1135_ #306 __p1 #305 Vdd pmos W=0.1625U L=0.065U
M1136_ #307 __ia #306 Vdd pmos W=0.1625U L=0.065U
M1137_ #308 k #307 Vdd pmos W=0.1625U L=0.065U
M1138_ #310 b_51_6 W2_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1139_keeper #655 #fb654# W2_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1140_keeper #656 #fb654# W2_af_50_6 GND nmos W=0.0975U L=0.065U
M1141_ #311 __p1 #310 Vdd pmos W=0.1625U L=0.065U
M1142_ #312 __ia #311 Vdd pmos W=0.1625U L=0.065U
M1143_ #313 k #312 Vdd pmos W=0.1625U L=0.065U
M1144_keeper #658 #fb657# W3_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1145_ #316 __p1 W3_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1146_keeper #660 #fb659# W3_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1147_keeper #661 #fb659# W3_af_51_6 GND nmos W=0.0975U L=0.065U
M1148_ #317 __ia #316 Vdd pmos W=0.1625U L=0.065U
M1149_ #318 k #317 Vdd pmos W=0.1625U L=0.065U
M1150_keeper #663 #fb662# W3_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1151_ #321 __p1 W3_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1152_keeper #665 #fb664# W3_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1153_keeper #666 #fb664# W3_af_52_6 GND nmos W=0.0975U L=0.065U
M1154_ #322 __ia #321 Vdd pmos W=0.1625U L=0.065U
M1155_ #323 k #322 Vdd pmos W=0.1625U L=0.065U
M1156_keeper #668 #fb667# W3_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1157_ #326 __p1 W3_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1158_keeper #670 #fb669# W3_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1159_keeper #671 #fb669# W3_af_53_6 GND nmos W=0.0975U L=0.065U
M1160_ #327 __ia #326 Vdd pmos W=0.1625U L=0.065U
M1161_ #328 k #327 Vdd pmos W=0.1625U L=0.065U
M1162_keeper #673 #fb672# W3_at_54_6 Vdd pmos W=0.0975U L=0.065U
M1163_ #331 __p1 W3_af_54_6 Vdd pmos W=0.1625U L=0.065U
M1164_keeper #675 #fb674# W3_af_54_6 Vdd pmos W=0.0975U L=0.065U
M1165_keeper #676 #fb674# W3_af_54_6 GND nmos W=0.0975U L=0.065U
M1166_ #332 __ia #331 Vdd pmos W=0.1625U L=0.065U
M1167_ #333 k #332 Vdd pmos W=0.1625U L=0.065U
M1168_keeper #678 #fb677# W3_at_55_6 Vdd pmos W=0.0975U L=0.065U
M1169_ #336 __p1 W3_af_55_6 Vdd pmos W=0.1625U L=0.065U
M1170_keeper #680 #fb679# W3_af_55_6 Vdd pmos W=0.0975U L=0.065U
M1171_keeper #681 #fb679# W3_af_55_6 GND nmos W=0.0975U L=0.065U
M1172_ #337 __ia #336 Vdd pmos W=0.1625U L=0.065U
M1173_ #338 k #337 Vdd pmos W=0.1625U L=0.065U
M1174_keeper #683 #fb682# W3_at_56_6 Vdd pmos W=0.0975U L=0.065U
M1175_ #341 __p1 W3_af_56_6 Vdd pmos W=0.1625U L=0.065U
M1176_keeper #685 #fb684# W3_af_56_6 Vdd pmos W=0.0975U L=0.065U
M1177_keeper #686 #fb684# W3_af_56_6 GND nmos W=0.0975U L=0.065U
M1178_ #342 __ia #341 Vdd pmos W=0.1625U L=0.065U
M1179_ #343 k #342 Vdd pmos W=0.1625U L=0.065U
M1180_keeper #688 #fb687# W3_at_57_6 Vdd pmos W=0.0975U L=0.065U
M1181_ #346 __p1 W3_af_57_6 Vdd pmos W=0.1625U L=0.065U
M1182_keeper #690 #fb689# W3_af_57_6 Vdd pmos W=0.0975U L=0.065U
M1183_keeper #691 #fb689# W3_af_57_6 GND nmos W=0.0975U L=0.065U
M1184_ #347 __ia #346 Vdd pmos W=0.1625U L=0.065U
M1185_ #348 k #347 Vdd pmos W=0.1625U L=0.065U
M1186_ #350 __b_50_6 W3_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1187_keeper #693 #fb692# W3_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1188_keeper #694 #fb692# W3_at_50_6 GND nmos W=0.0975U L=0.065U
M1189_ #351 __p1 #350 Vdd pmos W=0.1625U L=0.065U
M1190_ #352 __ia #351 Vdd pmos W=0.1625U L=0.065U
M1191_ #353 k #352 Vdd pmos W=0.1625U L=0.065U
M1192_ #355 b_50_6 W3_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1193_keeper #696 #fb695# W3_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1194_keeper #697 #fb695# W3_af_50_6 GND nmos W=0.0975U L=0.065U
M1195_ #356 __p1 #355 Vdd pmos W=0.1625U L=0.065U
M1196_ #357 __ia #356 Vdd pmos W=0.1625U L=0.065U
M1197_ #358 k #357 Vdd pmos W=0.1625U L=0.065U
M1198_ #360 __b_50_6 Ch_at_50_6 Vdd pmos W=0.1625U L=0.065U
M1199_keeper #699 #fb698# Ch_at_50_6 Vdd pmos W=0.0975U L=0.065U
M1200_keeper #700 #fb698# Ch_at_50_6 GND nmos W=0.0975U L=0.065U
M1201_ #361 __p1 #360 Vdd pmos W=0.1625U L=0.065U
M1202_ #362 __ia #361 Vdd pmos W=0.1625U L=0.065U
M1203_ #363 k #362 Vdd pmos W=0.1625U L=0.065U
M1204_ #365 b_50_6 Ch_af_50_6 Vdd pmos W=0.1625U L=0.065U
M1205_keeper #702 #fb701# Ch_af_50_6 Vdd pmos W=0.0975U L=0.065U
M1206_keeper #703 #fb701# Ch_af_50_6 GND nmos W=0.0975U L=0.065U
M1207_ #366 __p1 #365 Vdd pmos W=0.1625U L=0.065U
M1208_ #367 __ia #366 Vdd pmos W=0.1625U L=0.065U
M1209_ #368 k #367 Vdd pmos W=0.1625U L=0.065U
M1210_ #370 __b_51_6 Ch_at_51_6 Vdd pmos W=0.1625U L=0.065U
M1211_keeper #705 #fb704# Ch_at_51_6 Vdd pmos W=0.0975U L=0.065U
M1212_keeper #706 #fb704# Ch_at_51_6 GND nmos W=0.0975U L=0.065U
M1213_ #371 __p1 #370 Vdd pmos W=0.1625U L=0.065U
M1214_ #372 __ia #371 Vdd pmos W=0.1625U L=0.065U
M1215_ #373 k #372 Vdd pmos W=0.1625U L=0.065U
M1216_ #375 b_51_6 Ch_af_51_6 Vdd pmos W=0.1625U L=0.065U
M1217_keeper #708 #fb707# Ch_af_51_6 Vdd pmos W=0.0975U L=0.065U
M1218_keeper #709 #fb707# Ch_af_51_6 GND nmos W=0.0975U L=0.065U
M1219_ #376 __p1 #375 Vdd pmos W=0.1625U L=0.065U
M1220_ #377 __ia #376 Vdd pmos W=0.1625U L=0.065U
M1221_ #378 k #377 Vdd pmos W=0.1625U L=0.065U
M1222_ #380 __b_52_6 Ch_at_52_6 Vdd pmos W=0.1625U L=0.065U
M1223_keeper #711 #fb710# Ch_at_52_6 Vdd pmos W=0.0975U L=0.065U
M1224_keeper #712 #fb710# Ch_at_52_6 GND nmos W=0.0975U L=0.065U
M1225_ #381 __p1 #380 Vdd pmos W=0.1625U L=0.065U
M1226_ #382 __ia #381 Vdd pmos W=0.1625U L=0.065U
M1227_ #383 k #382 Vdd pmos W=0.1625U L=0.065U
M1228_ #385 b_52_6 Ch_af_52_6 Vdd pmos W=0.1625U L=0.065U
M1229_keeper #714 #fb713# Ch_af_52_6 Vdd pmos W=0.0975U L=0.065U
M1230_keeper #715 #fb713# Ch_af_52_6 GND nmos W=0.0975U L=0.065U
M1231_ #386 __p1 #385 Vdd pmos W=0.1625U L=0.065U
M1232_ #387 __ia #386 Vdd pmos W=0.1625U L=0.065U
M1233_ #388 k #387 Vdd pmos W=0.1625U L=0.065U
M1234_ #390 __b_53_6 Ch_at_53_6 Vdd pmos W=0.1625U L=0.065U
M1235_keeper #717 #fb716# Ch_at_53_6 Vdd pmos W=0.0975U L=0.065U
M1236_keeper #718 #fb716# Ch_at_53_6 GND nmos W=0.0975U L=0.065U
M1237_ #391 __p1 #390 Vdd pmos W=0.1625U L=0.065U
M1238_ #392 __ia #391 Vdd pmos W=0.1625U L=0.065U
M1239_ #393 k #392 Vdd pmos W=0.1625U L=0.065U
M1240_ #395 b_53_6 Ch_af_53_6 Vdd pmos W=0.1625U L=0.065U
M1241_keeper #720 #fb719# Ch_af_53_6 Vdd pmos W=0.0975U L=0.065U
M1242_keeper #721 #fb719# Ch_af_53_6 GND nmos W=0.0975U L=0.065U
M1243_ #396 __p1 #395 Vdd pmos W=0.1625U L=0.065U
M1244_ #397 __ia #396 Vdd pmos W=0.1625U L=0.065U
M1245_ #398 k #397 Vdd pmos W=0.1625U L=0.065U
.ends
*---- end of process: SUpdate<> -----
*
*---- act defproc: QuadRouter<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Cnt0.req Cnt0.t[0] Cnt0.t[1] Cnt0.t[2] Cnt0.t[3] Cnt0.t[4] Cnt0.t[5] Cnt0.t[6] Cnt0.t[7] Cnt0.f[0] Cnt0.f[1] Cnt0.f[2] Cnt0.f[3] Cnt0.f[4] Cnt0.f[5] Cnt0.f[6] Cnt0.f[7] Cnt1.req Cnt1.t[0] Cnt1.t[1] Cnt1.t[2] Cnt1.t[3] Cnt1.t[4] Cnt1.t[5] Cnt1.t[6] Cnt1.t[7] Cnt1.f[0] Cnt1.f[1] Cnt1.f[2] Cnt1.f[3] Cnt1.f[4] Cnt1.f[5] Cnt1.f[6] Cnt1.f[7] Cnt2.req Cnt2.t[0] Cnt2.t[1] Cnt2.t[2] Cnt2.t[3] Cnt2.t[4] Cnt2.t[5] Cnt2.t[6] Cnt2.t[7] Cnt2.f[0] Cnt2.f[1] Cnt2.f[2] Cnt2.f[3] Cnt2.f[4] Cnt2.f[5] Cnt2.f[6] Cnt2.f[7] Cnt3.req Cnt3.t[0] Cnt3.t[1] Cnt3.t[2] Cnt3.t[3] Cnt3.t[4] Cnt3.t[5] Cnt3.t[6] Cnt3.t[7] Cnt3.f[0] Cnt3.f[1] Cnt3.f[2] Cnt3.f[3] Cnt3.f[4] Cnt3.f[5] Cnt3.f[6] Cnt3.f[7] OC0.t[0] OC0.t[1] OC0.t[2] OC0.t[3] OC0.f[0] OC0.f[1] OC0.f[2] OC0.f[3] OC0.a OC1.t[0] OC1.t[1] OC1.t[2] OC1.t[3] OC1.f[0] OC1.f[1] OC1.f[2] OC1.f[3] OC1.a OC2.t[0] OC2.t[1] OC2.t[2] OC2.t[3] OC2.f[0] OC2.f[1] OC2.f[2] OC2.f[3] OC2.a OC3.t[0] OC3.t[1] OC3.t[2] OC3.t[3] OC3.f[0] OC3.f[1] OC3.f[2] OC3.f[3] OC3.a OD0.t[0] OD0.t[1] OD0.t[2] OD0.t[3] OD0.f[0] OD0.f[1] OD0.f[2] OD0.f[3] OD0.a OD1.t[0] OD1.t[1] OD1.t[2] OD1.t[3] OD1.f[0] OD1.f[1] OD1.f[2] OD1.f[3] OD1.a OD2.t[0] OD2.t[1] OD2.t[2] OD2.t[3] OD2.f[0] OD2.f[1] OD2.f[2] OD2.f[3] OD2.a OD3.t[0] OD3.t[1] OD3.t[2] OD3.t[3] OD3.f[0] OD3.f[1] OD3.f[2] OD3.f[3] OD3.a Ch.t[0] Ch.t[1] Ch.t[2] Ch.t[3] Ch.f[0] Ch.f[1] Ch.f[2] Ch.f[3] Ch.a
*
.subckt QuadRouter reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Cnt0_areq Cnt0_at_50_6 Cnt0_at_51_6 Cnt0_at_52_6 Cnt0_at_53_6 Cnt0_at_54_6 Cnt0_at_55_6 Cnt0_at_56_6
+ Cnt0_at_57_6 Cnt0_af_50_6 Cnt0_af_51_6 Cnt0_af_52_6 Cnt0_af_53_6 Cnt0_af_54_6 Cnt0_af_55_6 Cnt0_af_56_6
+ Cnt0_af_57_6 Cnt1_areq Cnt1_at_50_6 Cnt1_at_51_6 Cnt1_at_52_6 Cnt1_at_53_6 Cnt1_at_54_6 Cnt1_at_55_6
+ Cnt1_at_56_6 Cnt1_at_57_6 Cnt1_af_50_6 Cnt1_af_51_6 Cnt1_af_52_6 Cnt1_af_53_6 Cnt1_af_54_6 Cnt1_af_55_6
+ Cnt1_af_56_6 Cnt1_af_57_6 Cnt2_areq Cnt2_at_50_6 Cnt2_at_51_6 Cnt2_at_52_6 Cnt2_at_53_6 Cnt2_at_54_6
+ Cnt2_at_55_6 Cnt2_at_56_6 Cnt2_at_57_6 Cnt2_af_50_6 Cnt2_af_51_6 Cnt2_af_52_6 Cnt2_af_53_6 Cnt2_af_54_6
+ Cnt2_af_55_6 Cnt2_af_56_6 Cnt2_af_57_6 Cnt3_areq Cnt3_at_50_6 Cnt3_at_51_6 Cnt3_at_52_6 Cnt3_at_53_6
+ Cnt3_at_54_6 Cnt3_at_55_6 Cnt3_at_56_6 Cnt3_at_57_6 Cnt3_af_50_6 Cnt3_af_51_6 Cnt3_af_52_6 Cnt3_af_53_6
+ Cnt3_af_54_6 Cnt3_af_55_6 Cnt3_af_56_6 Cnt3_af_57_6 OC0_at_50_6 OC0_at_51_6 OC0_at_52_6 OC0_at_53_6
+ OC0_af_50_6 OC0_af_51_6 OC0_af_52_6 OC0_af_53_6 OC0_aa OC1_at_50_6 OC1_at_51_6 OC1_at_52_6 OC1_at_53_6
+ OC1_af_50_6 OC1_af_51_6 OC1_af_52_6 OC1_af_53_6 OC1_aa OC2_at_50_6 OC2_at_51_6 OC2_at_52_6 OC2_at_53_6
+ OC2_af_50_6 OC2_af_51_6 OC2_af_52_6 OC2_af_53_6 OC2_aa OC3_at_50_6 OC3_at_51_6 OC3_at_52_6 OC3_at_53_6
+ OC3_af_50_6 OC3_af_51_6 OC3_af_52_6 OC3_af_53_6 OC3_aa OD0_at_50_6 OD0_at_51_6 OD0_at_52_6 OD0_at_53_6
+ OD0_af_50_6 OD0_af_51_6 OD0_af_52_6 OD0_af_53_6 OD0_aa OD1_at_50_6 OD1_at_51_6 OD1_at_52_6 OD1_at_53_6
+ OD1_af_50_6 OD1_af_51_6 OD1_af_52_6 OD1_af_53_6 OD1_aa OD2_at_50_6 OD2_at_51_6 OD2_at_52_6 OD2_at_53_6
+ OD2_af_50_6 OD2_af_51_6 OD2_af_52_6 OD2_af_53_6 OD2_aa OD3_at_50_6 OD3_at_51_6 OD3_at_52_6 OD3_at_53_6
+ OD3_af_50_6 OD3_af_51_6 OD3_af_52_6 OD3_af_53_6 OD3_aa Ch_at_50_6 Ch_at_51_6 Ch_at_52_6 Ch_at_53_6
+ Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O Cnt0_areq:O Cnt0_at_50_6:I Cnt0_at_51_6:I Cnt0_at_52_6:I Cnt0_at_53_6:I Cnt0_at_54_6:I Cnt0_at_55_6:I Cnt0_at_56_6:I Cnt0_at_57_6:I Cnt0_af_50_6:I Cnt0_af_51_6:I Cnt0_af_52_6:I Cnt0_af_53_6:I Cnt0_af_54_6:I Cnt0_af_55_6:I Cnt0_af_56_6:I Cnt0_af_57_6:I Cnt1_areq:O Cnt1_at_50_6:I Cnt1_at_51_6:I Cnt1_at_52_6:I Cnt1_at_53_6:I Cnt1_at_54_6:I Cnt1_at_55_6:I Cnt1_at_56_6:I Cnt1_at_57_6:I Cnt1_af_50_6:I Cnt1_af_51_6:I Cnt1_af_52_6:I Cnt1_af_53_6:I Cnt1_af_54_6:I Cnt1_af_55_6:I Cnt1_af_56_6:I Cnt1_af_57_6:I Cnt2_areq:O Cnt2_at_50_6:I Cnt2_at_51_6:I Cnt2_at_52_6:I Cnt2_at_53_6:I Cnt2_at_54_6:I Cnt2_at_55_6:I Cnt2_at_56_6:I Cnt2_at_57_6:I Cnt2_af_50_6:I Cnt2_af_51_6:I Cnt2_af_52_6:I Cnt2_af_53_6:I Cnt2_af_54_6:I Cnt2_af_55_6:I Cnt2_af_56_6:I Cnt2_af_57_6:I Cnt3_areq:O Cnt3_at_50_6:I Cnt3_at_51_6:I Cnt3_at_52_6:I Cnt3_at_53_6:I Cnt3_at_54_6:I Cnt3_at_55_6:I Cnt3_at_56_6:I Cnt3_at_57_6:I Cnt3_af_50_6:I Cnt3_af_51_6:I Cnt3_af_52_6:I Cnt3_af_53_6:I Cnt3_af_54_6:I Cnt3_af_55_6:I Cnt3_af_56_6:I Cnt3_af_57_6:I OC0_at_50_6:O OC0_at_51_6:O OC0_at_52_6:O OC0_at_53_6:O OC0_af_50_6:O OC0_af_51_6:O OC0_af_52_6:O OC0_af_53_6:O OC0_aa:I OC1_at_50_6:O OC1_at_51_6:O OC1_at_52_6:O OC1_at_53_6:O OC1_af_50_6:O OC1_af_51_6:O OC1_af_52_6:O OC1_af_53_6:O OC1_aa:I OC2_at_50_6:O OC2_at_51_6:O OC2_at_52_6:O OC2_at_53_6:O OC2_af_50_6:O OC2_af_51_6:O OC2_af_52_6:O OC2_af_53_6:O OC2_aa:I OC3_at_50_6:O OC3_at_51_6:O OC3_at_52_6:O OC3_at_53_6:O OC3_af_50_6:O OC3_af_51_6:O OC3_af_52_6:O OC3_af_53_6:O OC3_aa:I OD0_at_50_6:O OD0_at_51_6:O OD0_at_52_6:O OD0_at_53_6:O OD0_af_50_6:O OD0_af_51_6:O OD0_af_52_6:O OD0_af_53_6:O OD0_aa:I OD1_at_50_6:O OD1_at_51_6:O OD1_at_52_6:O OD1_at_53_6:O OD1_af_50_6:O OD1_af_51_6:O OD1_af_52_6:O OD1_af_53_6:O OD1_aa:I OD2_at_50_6:O OD2_at_51_6:O OD2_at_52_6:O OD2_at_53_6:O OD2_af_50_6:O OD2_af_51_6:O OD2_af_52_6:O OD2_af_53_6:O OD2_aa:I OD3_at_50_6:O OD3_at_51_6:O OD3_at_52_6:O OD3_at_53_6:O OD3_af_50_6:O OD3_af_51_6:O OD3_af_52_6:O OD3_af_53_6:O OD3_aa:I Ch_at_50_6:O Ch_at_51_6:O Ch_at_52_6:O Ch_at_53_6:O Ch_af_50_6:O Ch_af_51_6:O Ch_af_52_6:O Ch_af_53_6:O Ch_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* __ia (combinational)
* update_aI_aa (combinational)
* child0_aI_aa (combinational)
* child1_aI_aa (combinational)
* child2_aI_aa (combinational)
* child3_aI_aa (combinational)
* I_aa (combinational)
*
* --- end node flags ---
*
M0_ Vdd update_aI_aa #6 Vdd pmos W=0.4875U L=0.065U
M1_ Vdd __ia I_aa Vdd pmos W=0.1625U L=0.065U
M2_ GND update_aI_aa __ia GND nmos W=0.0975U L=0.065U
M3_ GND child0_aI_aa __ia GND nmos W=0.0975U L=0.065U
M4_ GND child1_aI_aa __ia GND nmos W=0.0975U L=0.065U
M5_ GND child2_aI_aa __ia GND nmos W=0.0975U L=0.065U
M6_ GND child3_aI_aa __ia GND nmos W=0.0975U L=0.065U
M7_ GND __ia I_aa GND nmos W=0.0975U L=0.065U
M8_ #3 child3_aI_aa __ia Vdd pmos W=0.4875U L=0.065U
M9_ #4 child2_aI_aa #3 Vdd pmos W=0.4875U L=0.065U
M10_ #5 child1_aI_aa #4 Vdd pmos W=0.4875U L=0.065U
M11_ #6 child0_aI_aa #5 Vdd pmos W=0.4875U L=0.065U
xod3 od3_aI0_at_50_6 od3_aI0_at_51_6 od3_aI0_at_52_6 od3_aI0_at_53_6 od3_aI0_af_50_6 od3_aI0_af_51_6
+ od3_aI0_af_52_6 od3_aI0_af_53_6 od3_aI0_aa od3_aI1_at_50_6 od3_aI1_at_51_6 od3_aI1_at_52_6 od3_aI1_at_53_6
+ od3_aI1_af_50_6 od3_aI1_af_51_6 od3_aI1_af_52_6 od3_aI1_af_53_6 od3_aI1_aa OD3_at_50_6 OD3_at_51_6
+ OD3_at_52_6 OD3_at_53_6 OD3_af_50_6 OD3_af_51_6 OD3_af_52_6 OD3_af_53_6 OD3_aa Merge_34_7f_4
xchild2 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child2_aI_aa
+ Cnt2_areq Cnt2_at_50_6 Cnt2_at_51_6 Cnt2_at_52_6 Cnt2_at_53_6 Cnt2_at_54_6 Cnt2_at_55_6 Cnt2_at_56_6
+ Cnt2_at_57_6 Cnt2_af_50_6 Cnt2_af_51_6 Cnt2_af_52_6 Cnt2_af_53_6 Cnt2_af_54_6 Cnt2_af_55_6 Cnt2_af_56_6
+ Cnt2_af_57_6 q2_aR_areq q2_aR_at_50_6 q2_aR_at_51_6 q2_aR_at_52_6 q2_aR_at_53_6 q2_aR_at_54_6 q2_aR_at_55_6
+ q2_aR_at_56_6 q2_aR_at_57_6 q2_aR_af_50_6 q2_aR_af_51_6 q2_aR_af_52_6 q2_aR_af_53_6 q2_aR_af_54_6
+ q2_aR_af_55_6 q2_aR_af_56_6 q2_aR_af_57_6 od2_aI1_at_50_6 od2_aI1_at_51_6 od2_aI1_at_52_6 od2_aI1_at_53_6
+ od2_aI1_af_50_6 od2_aI1_af_51_6 od2_aI1_af_52_6 od2_aI1_af_53_6 od2_aI1_aa OC2_at_50_6 OC2_at_51_6
+ OC2_at_52_6 OC2_at_53_6 OC2_af_50_6 OC2_af_51_6 OC2_af_52_6 OC2_af_53_6 OC2_aa q2_aW1_at_50_6
+ q2_aW1_at_51_6 q2_aW1_at_52_6 q2_aW1_at_53_6 q2_aW1_at_54_6 q2_aW1_at_55_6 q2_aW1_at_56_6 q2_aW1_at_57_6
+ q2_aW1_af_50_6 q2_aW1_af_51_6 q2_aW1_af_52_6 q2_aW1_af_53_6 q2_aW1_af_54_6 q2_aW1_af_55_6 q2_aW1_af_56_6
+ q2_aW1_af_57_6 q2_aW1_aa seq_aA3_areq seq_aA3_aa ChildServer
xchild1 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child1_aI_aa
+ Cnt1_areq Cnt1_at_50_6 Cnt1_at_51_6 Cnt1_at_52_6 Cnt1_at_53_6 Cnt1_at_54_6 Cnt1_at_55_6 Cnt1_at_56_6
+ Cnt1_at_57_6 Cnt1_af_50_6 Cnt1_af_51_6 Cnt1_af_52_6 Cnt1_af_53_6 Cnt1_af_54_6 Cnt1_af_55_6 Cnt1_af_56_6
+ Cnt1_af_57_6 q1_aR_areq q1_aR_at_50_6 q1_aR_at_51_6 q1_aR_at_52_6 q1_aR_at_53_6 q1_aR_at_54_6 q1_aR_at_55_6
+ q1_aR_at_56_6 q1_aR_at_57_6 q1_aR_af_50_6 q1_aR_af_51_6 q1_aR_af_52_6 q1_aR_af_53_6 q1_aR_af_54_6
+ q1_aR_af_55_6 q1_aR_af_56_6 q1_aR_af_57_6 od1_aI1_at_50_6 od1_aI1_at_51_6 od1_aI1_at_52_6 od1_aI1_at_53_6
+ od1_aI1_af_50_6 od1_aI1_af_51_6 od1_aI1_af_52_6 od1_aI1_af_53_6 od1_aI1_aa OC1_at_50_6 OC1_at_51_6
+ OC1_at_52_6 OC1_at_53_6 OC1_af_50_6 OC1_af_51_6 OC1_af_52_6 OC1_af_53_6 OC1_aa q1_aW1_at_50_6
+ q1_aW1_at_51_6 q1_aW1_at_52_6 q1_aW1_at_53_6 q1_aW1_at_54_6 q1_aW1_at_55_6 q1_aW1_at_56_6 q1_aW1_at_57_6
+ q1_aW1_af_50_6 q1_aW1_af_51_6 q1_aW1_af_52_6 q1_aW1_af_53_6 q1_aW1_af_54_6 q1_aW1_af_55_6 q1_aW1_af_56_6
+ q1_aW1_af_57_6 q1_aW1_aa seq_aA2_areq seq_aA2_aa ChildServer
xseq reset seq_aA0_areq seq_aA0_aa seq_aA1_areq seq_aA1_aa seq_aA2_areq seq_aA2_aa seq_aA3_areq seq_aA3_aa
+ seq_aA4_areq seq_aA4_aa seq_aA5_aa seq_aA5_aa seq_aA6_aa seq_aA6_aa Seq7
xq0 reset q0_aW0_at_50_6 q0_aW0_at_51_6 q0_aW0_at_52_6 q0_aW0_at_53_6 q0_aW0_at_54_6 q0_aW0_at_55_6
+ q0_aW0_at_56_6 q0_aW0_at_57_6 q0_aW0_af_50_6 q0_aW0_af_51_6 q0_aW0_af_52_6 q0_aW0_af_53_6 q0_aW0_af_54_6
+ q0_aW0_af_55_6 q0_aW0_af_56_6 q0_aW0_af_57_6 q0_aW0_aa q0_aW1_at_50_6 q0_aW1_at_51_6 q0_aW1_at_52_6
+ q0_aW1_at_53_6 q0_aW1_at_54_6 q0_aW1_at_55_6 q0_aW1_at_56_6 q0_aW1_at_57_6 q0_aW1_af_50_6 q0_aW1_af_51_6
+ q0_aW1_af_52_6 q0_aW1_af_53_6 q0_aW1_af_54_6 q0_aW1_af_55_6 q0_aW1_af_56_6 q0_aW1_af_57_6 q0_aW1_aa
+ q0_aR_areq q0_aR_at_50_6 q0_aR_at_51_6 q0_aR_at_52_6 q0_aR_at_53_6 q0_aR_at_54_6 q0_aR_at_55_6
+ q0_aR_at_56_6 q0_aR_at_57_6 q0_aR_af_50_6 q0_aR_af_51_6 q0_aR_af_52_6 q0_aR_af_53_6 q0_aR_af_54_6
+ q0_aR_af_55_6 q0_aR_af_56_6 q0_aR_af_57_6 QVar
xod0 od0_aI0_at_50_6 od0_aI0_at_51_6 od0_aI0_at_52_6 od0_aI0_at_53_6 od0_aI0_af_50_6 od0_aI0_af_51_6
+ od0_aI0_af_52_6 od0_aI0_af_53_6 od0_aI0_aa od0_aI1_at_50_6 od0_aI1_at_51_6 od0_aI1_at_52_6 od0_aI1_at_53_6
+ od0_aI1_af_50_6 od0_aI1_af_51_6 od0_aI1_af_52_6 od0_aI1_af_53_6 od0_aI1_aa OD0_at_50_6 OD0_at_51_6
+ OD0_at_52_6 OD0_at_53_6 OD0_af_50_6 OD0_af_51_6 OD0_af_52_6 OD0_af_53_6 OD0_aa Merge_34_7f_4
xod2 od2_aI0_at_50_6 od2_aI0_at_51_6 od2_aI0_at_52_6 od2_aI0_at_53_6 od2_aI0_af_50_6 od2_aI0_af_51_6
+ od2_aI0_af_52_6 od2_aI0_af_53_6 od2_aI0_aa od2_aI1_at_50_6 od2_aI1_at_51_6 od2_aI1_at_52_6 od2_aI1_at_53_6
+ od2_aI1_af_50_6 od2_aI1_af_51_6 od2_aI1_af_52_6 od2_aI1_af_53_6 od2_aI1_aa OD2_at_50_6 OD2_at_51_6
+ OD2_at_52_6 OD2_at_53_6 OD2_af_50_6 OD2_af_51_6 OD2_af_52_6 OD2_af_53_6 OD2_aa Merge_34_7f_4
xod1 od1_aI0_at_50_6 od1_aI0_at_51_6 od1_aI0_at_52_6 od1_aI0_at_53_6 od1_aI0_af_50_6 od1_aI0_af_51_6
+ od1_aI0_af_52_6 od1_aI0_af_53_6 od1_aI0_aa od1_aI1_at_50_6 od1_aI1_at_51_6 od1_aI1_at_52_6 od1_aI1_at_53_6
+ od1_aI1_af_50_6 od1_aI1_af_51_6 od1_aI1_af_52_6 od1_aI1_af_53_6 od1_aI1_aa OD1_at_50_6 OD1_at_51_6
+ OD1_at_52_6 OD1_at_53_6 OD1_af_50_6 OD1_af_51_6 OD1_af_52_6 OD1_af_53_6 OD1_aa Merge_34_7f_4
xq1 reset q1_aW0_at_50_6 q1_aW0_at_51_6 q1_aW0_at_52_6 q1_aW0_at_53_6 q1_aW0_at_54_6 q1_aW0_at_55_6
+ q1_aW0_at_56_6 q1_aW0_at_57_6 q1_aW0_af_50_6 q1_aW0_af_51_6 q1_aW0_af_52_6 q1_aW0_af_53_6 q1_aW0_af_54_6
+ q1_aW0_af_55_6 q1_aW0_af_56_6 q1_aW0_af_57_6 q1_aW0_aa q1_aW1_at_50_6 q1_aW1_at_51_6 q1_aW1_at_52_6
+ q1_aW1_at_53_6 q1_aW1_at_54_6 q1_aW1_at_55_6 q1_aW1_at_56_6 q1_aW1_at_57_6 q1_aW1_af_50_6 q1_aW1_af_51_6
+ q1_aW1_af_52_6 q1_aW1_af_53_6 q1_aW1_af_54_6 q1_aW1_af_55_6 q1_aW1_af_56_6 q1_aW1_af_57_6 q1_aW1_aa
+ q1_aR_areq q1_aR_at_50_6 q1_aR_at_51_6 q1_aR_at_52_6 q1_aR_at_53_6 q1_aR_at_54_6 q1_aR_at_55_6
+ q1_aR_at_56_6 q1_aR_at_57_6 q1_aR_af_50_6 q1_aR_af_51_6 q1_aR_af_52_6 q1_aR_af_53_6 q1_aR_af_54_6
+ q1_aR_af_55_6 q1_aR_af_56_6 q1_aR_af_57_6 QVar
xupdate reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 update_aI_aa
+ od0_aI0_at_50_6 od0_aI0_at_51_6 od0_aI0_at_52_6 od0_aI0_at_53_6 od0_aI0_af_50_6 od0_aI0_af_51_6
+ od0_aI0_af_52_6 od0_aI0_af_53_6 od0_aI0_aa od1_aI0_at_50_6 od1_aI0_at_51_6 od1_aI0_at_52_6 od1_aI0_at_53_6
+ od1_aI0_af_50_6 od1_aI0_af_51_6 od1_aI0_af_52_6 od1_aI0_af_53_6 od1_aI0_aa od2_aI0_at_50_6 od2_aI0_at_51_6
+ od2_aI0_at_52_6 od2_aI0_at_53_6 od2_aI0_af_50_6 od2_aI0_af_51_6 od2_aI0_af_52_6 od2_aI0_af_53_6 od2_aI0_aa
+ od3_aI0_at_50_6 od3_aI0_at_51_6 od3_aI0_at_52_6 od3_aI0_at_53_6 od3_aI0_af_50_6 od3_aI0_af_51_6
+ od3_aI0_af_52_6 od3_aI0_af_53_6 od3_aI0_aa q0_aW0_at_50_6 q0_aW0_at_51_6 q0_aW0_at_52_6 q0_aW0_at_53_6
+ q0_aW0_at_54_6 q0_aW0_at_55_6 q0_aW0_at_56_6 q0_aW0_at_57_6 q0_aW0_af_50_6 q0_aW0_af_51_6 q0_aW0_af_52_6
+ q0_aW0_af_53_6 q0_aW0_af_54_6 q0_aW0_af_55_6 q0_aW0_af_56_6 q0_aW0_af_57_6 q0_aW0_aa q1_aW0_at_50_6
+ q1_aW0_at_51_6 q1_aW0_at_52_6 q1_aW0_at_53_6 q1_aW0_at_54_6 q1_aW0_at_55_6 q1_aW0_at_56_6 q1_aW0_at_57_6
+ q1_aW0_af_50_6 q1_aW0_af_51_6 q1_aW0_af_52_6 q1_aW0_af_53_6 q1_aW0_af_54_6 q1_aW0_af_55_6 q1_aW0_af_56_6
+ q1_aW0_af_57_6 q1_aW0_aa q2_aW0_at_50_6 q2_aW0_at_51_6 q2_aW0_at_52_6 q2_aW0_at_53_6 q2_aW0_at_54_6
+ q2_aW0_at_55_6 q2_aW0_at_56_6 q2_aW0_at_57_6 q2_aW0_af_50_6 q2_aW0_af_51_6 q2_aW0_af_52_6 q2_aW0_af_53_6
+ q2_aW0_af_54_6 q2_aW0_af_55_6 q2_aW0_af_56_6 q2_aW0_af_57_6 q2_aW0_aa q3_aW0_at_50_6 q3_aW0_at_51_6
+ q3_aW0_at_52_6 q3_aW0_at_53_6 q3_aW0_at_54_6 q3_aW0_at_55_6 q3_aW0_at_56_6 q3_aW0_at_57_6 q3_aW0_af_50_6
+ q3_aW0_af_51_6 q3_aW0_af_52_6 q3_aW0_af_53_6 q3_aW0_af_54_6 q3_aW0_af_55_6 q3_aW0_af_56_6 q3_aW0_af_57_6
+ q3_aW0_aa Ch_at_50_6 Ch_at_51_6 Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa
+ seq_aA0_areq seq_aA0_aa SUpdate
xq3 reset q3_aW0_at_50_6 q3_aW0_at_51_6 q3_aW0_at_52_6 q3_aW0_at_53_6 q3_aW0_at_54_6 q3_aW0_at_55_6
+ q3_aW0_at_56_6 q3_aW0_at_57_6 q3_aW0_af_50_6 q3_aW0_af_51_6 q3_aW0_af_52_6 q3_aW0_af_53_6 q3_aW0_af_54_6
+ q3_aW0_af_55_6 q3_aW0_af_56_6 q3_aW0_af_57_6 q3_aW0_aa q3_aW1_at_50_6 q3_aW1_at_51_6 q3_aW1_at_52_6
+ q3_aW1_at_53_6 q3_aW1_at_54_6 q3_aW1_at_55_6 q3_aW1_at_56_6 q3_aW1_at_57_6 q3_aW1_af_50_6 q3_aW1_af_51_6
+ q3_aW1_af_52_6 q3_aW1_af_53_6 q3_aW1_af_54_6 q3_aW1_af_55_6 q3_aW1_af_56_6 q3_aW1_af_57_6 q3_aW1_aa
+ q3_aR_areq q3_aR_at_50_6 q3_aR_at_51_6 q3_aR_at_52_6 q3_aR_at_53_6 q3_aR_at_54_6 q3_aR_at_55_6
+ q3_aR_at_56_6 q3_aR_at_57_6 q3_aR_af_50_6 q3_aR_af_51_6 q3_aR_af_52_6 q3_aR_af_53_6 q3_aR_af_54_6
+ q3_aR_af_55_6 q3_aR_af_56_6 q3_aR_af_57_6 QVar
xq2 reset q2_aW0_at_50_6 q2_aW0_at_51_6 q2_aW0_at_52_6 q2_aW0_at_53_6 q2_aW0_at_54_6 q2_aW0_at_55_6
+ q2_aW0_at_56_6 q2_aW0_at_57_6 q2_aW0_af_50_6 q2_aW0_af_51_6 q2_aW0_af_52_6 q2_aW0_af_53_6 q2_aW0_af_54_6
+ q2_aW0_af_55_6 q2_aW0_af_56_6 q2_aW0_af_57_6 q2_aW0_aa q2_aW1_at_50_6 q2_aW1_at_51_6 q2_aW1_at_52_6
+ q2_aW1_at_53_6 q2_aW1_at_54_6 q2_aW1_at_55_6 q2_aW1_at_56_6 q2_aW1_at_57_6 q2_aW1_af_50_6 q2_aW1_af_51_6
+ q2_aW1_af_52_6 q2_aW1_af_53_6 q2_aW1_af_54_6 q2_aW1_af_55_6 q2_aW1_af_56_6 q2_aW1_af_57_6 q2_aW1_aa
+ q2_aR_areq q2_aR_at_50_6 q2_aR_at_51_6 q2_aR_at_52_6 q2_aR_at_53_6 q2_aR_at_54_6 q2_aR_at_55_6
+ q2_aR_at_56_6 q2_aR_at_57_6 q2_aR_af_50_6 q2_aR_af_51_6 q2_aR_af_52_6 q2_aR_af_53_6 q2_aR_af_54_6
+ q2_aR_af_55_6 q2_aR_af_56_6 q2_aR_af_57_6 QVar
xchild0 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child0_aI_aa
+ Cnt0_areq Cnt0_at_50_6 Cnt0_at_51_6 Cnt0_at_52_6 Cnt0_at_53_6 Cnt0_at_54_6 Cnt0_at_55_6 Cnt0_at_56_6
+ Cnt0_at_57_6 Cnt0_af_50_6 Cnt0_af_51_6 Cnt0_af_52_6 Cnt0_af_53_6 Cnt0_af_54_6 Cnt0_af_55_6 Cnt0_af_56_6
+ Cnt0_af_57_6 q0_aR_areq q0_aR_at_50_6 q0_aR_at_51_6 q0_aR_at_52_6 q0_aR_at_53_6 q0_aR_at_54_6 q0_aR_at_55_6
+ q0_aR_at_56_6 q0_aR_at_57_6 q0_aR_af_50_6 q0_aR_af_51_6 q0_aR_af_52_6 q0_aR_af_53_6 q0_aR_af_54_6
+ q0_aR_af_55_6 q0_aR_af_56_6 q0_aR_af_57_6 od0_aI1_at_50_6 od0_aI1_at_51_6 od0_aI1_at_52_6 od0_aI1_at_53_6
+ od0_aI1_af_50_6 od0_aI1_af_51_6 od0_aI1_af_52_6 od0_aI1_af_53_6 od0_aI1_aa OC0_at_50_6 OC0_at_51_6
+ OC0_at_52_6 OC0_at_53_6 OC0_af_50_6 OC0_af_51_6 OC0_af_52_6 OC0_af_53_6 OC0_aa q0_aW1_at_50_6
+ q0_aW1_at_51_6 q0_aW1_at_52_6 q0_aW1_at_53_6 q0_aW1_at_54_6 q0_aW1_at_55_6 q0_aW1_at_56_6 q0_aW1_at_57_6
+ q0_aW1_af_50_6 q0_aW1_af_51_6 q0_aW1_af_52_6 q0_aW1_af_53_6 q0_aW1_af_54_6 q0_aW1_af_55_6 q0_aW1_af_56_6
+ q0_aW1_af_57_6 q0_aW1_aa seq_aA1_areq seq_aA1_aa ChildServer
xchild3 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child3_aI_aa
+ Cnt3_areq Cnt3_at_50_6 Cnt3_at_51_6 Cnt3_at_52_6 Cnt3_at_53_6 Cnt3_at_54_6 Cnt3_at_55_6 Cnt3_at_56_6
+ Cnt3_at_57_6 Cnt3_af_50_6 Cnt3_af_51_6 Cnt3_af_52_6 Cnt3_af_53_6 Cnt3_af_54_6 Cnt3_af_55_6 Cnt3_af_56_6
+ Cnt3_af_57_6 q3_aR_areq q3_aR_at_50_6 q3_aR_at_51_6 q3_aR_at_52_6 q3_aR_at_53_6 q3_aR_at_54_6 q3_aR_at_55_6
+ q3_aR_at_56_6 q3_aR_at_57_6 q3_aR_af_50_6 q3_aR_af_51_6 q3_aR_af_52_6 q3_aR_af_53_6 q3_aR_af_54_6
+ q3_aR_af_55_6 q3_aR_af_56_6 q3_aR_af_57_6 od3_aI1_at_50_6 od3_aI1_at_51_6 od3_aI1_at_52_6 od3_aI1_at_53_6
+ od3_aI1_af_50_6 od3_aI1_af_51_6 od3_aI1_af_52_6 od3_aI1_af_53_6 od3_aI1_aa OC3_at_50_6 OC3_at_51_6
+ OC3_at_52_6 OC3_at_53_6 OC3_af_50_6 OC3_af_51_6 OC3_af_52_6 OC3_af_53_6 OC3_aa q3_aW1_at_50_6
+ q3_aW1_at_51_6 q3_aW1_at_52_6 q3_aW1_at_53_6 q3_aW1_at_54_6 q3_aW1_at_55_6 q3_aW1_at_56_6 q3_aW1_at_57_6
+ q3_aW1_af_50_6 q3_aW1_af_51_6 q3_aW1_af_52_6 q3_aW1_af_53_6 q3_aW1_af_54_6 q3_aW1_af_55_6 q3_aW1_af_56_6
+ q3_aW1_af_57_6 q3_aW1_aa seq_aA4_areq seq_aA4_aa ChildServer
.ends
*---- end of process: QuadRouter<> -----
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
*
*---- act defproc: MltcUnit<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a C0.t[0] C0.t[1] C0.t[2] C0.t[3] C0.t[4] C0.t[5] C0.t[6] C0.t[7] C0.t[8] C0.t[9] C0.t[10] C0.t[11] C0.t[12] C0.t[13] C0.t[14] C0.t[15] C0.t[16] C0.t[17] C0.t[18] C0.t[19] C0.t[20] C0.t[21] C0.t[22] C0.t[23] C0.t[24] C0.t[25] C0.t[26] C0.t[27] C0.t[28] C0.t[29] C0.t[30] C0.t[31] C0.f[0] C0.f[1] C0.f[2] C0.f[3] C0.f[4] C0.f[5] C0.f[6] C0.f[7] C0.f[8] C0.f[9] C0.f[10] C0.f[11] C0.f[12] C0.f[13] C0.f[14] C0.f[15] C0.f[16] C0.f[17] C0.f[18] C0.f[19] C0.f[20] C0.f[21] C0.f[22] C0.f[23] C0.f[24] C0.f[25] C0.f[26] C0.f[27] C0.f[28] C0.f[29] C0.f[30] C0.f[31] C0.a C1.t[0] C1.t[1] C1.t[2] C1.t[3] C1.t[4] C1.t[5] C1.t[6] C1.t[7] C1.t[8] C1.t[9] C1.t[10] C1.t[11] C1.t[12] C1.t[13] C1.t[14] C1.t[15] C1.t[16] C1.t[17] C1.t[18] C1.t[19] C1.t[20] C1.t[21] C1.t[22] C1.t[23] C1.t[24] C1.t[25] C1.t[26] C1.t[27] C1.t[28] C1.t[29] C1.t[30] C1.t[31] C1.f[0] C1.f[1] C1.f[2] C1.f[3] C1.f[4] C1.f[5] C1.f[6] C1.f[7] C1.f[8] C1.f[9] C1.f[10] C1.f[11] C1.f[12] C1.f[13] C1.f[14] C1.f[15] C1.f[16] C1.f[17] C1.f[18] C1.f[19] C1.f[20] C1.f[21] C1.f[22] C1.f[23] C1.f[24] C1.f[25] C1.f[26] C1.f[27] C1.f[28] C1.f[29] C1.f[30] C1.f[31] C1.a C2.t[0] C2.t[1] C2.t[2] C2.t[3] C2.t[4] C2.t[5] C2.t[6] C2.t[7] C2.t[8] C2.t[9] C2.t[10] C2.t[11] C2.t[12] C2.t[13] C2.t[14] C2.t[15] C2.t[16] C2.t[17] C2.t[18] C2.t[19] C2.t[20] C2.t[21] C2.t[22] C2.t[23] C2.t[24] C2.t[25] C2.t[26] C2.t[27] C2.t[28] C2.t[29] C2.t[30] C2.t[31] C2.f[0] C2.f[1] C2.f[2] C2.f[3] C2.f[4] C2.f[5] C2.f[6] C2.f[7] C2.f[8] C2.f[9] C2.f[10] C2.f[11] C2.f[12] C2.f[13] C2.f[14] C2.f[15] C2.f[16] C2.f[17] C2.f[18] C2.f[19] C2.f[20] C2.f[21] C2.f[22] C2.f[23] C2.f[24] C2.f[25] C2.f[26] C2.f[27] C2.f[28] C2.f[29] C2.f[30] C2.f[31] C2.a C3.t[0] C3.t[1] C3.t[2] C3.t[3] C3.t[4] C3.t[5] C3.t[6] C3.t[7] C3.t[8] C3.t[9] C3.t[10] C3.t[11] C3.t[12] C3.t[13] C3.t[14] C3.t[15] C3.t[16] C3.t[17] C3.t[18] C3.t[19] C3.t[20] C3.t[21] C3.t[22] C3.t[23] C3.t[24] C3.t[25] C3.t[26] C3.t[27] C3.t[28] C3.t[29] C3.t[30] C3.t[31] C3.f[0] C3.f[1] C3.f[2] C3.f[3] C3.f[4] C3.f[5] C3.f[6] C3.f[7] C3.f[8] C3.f[9] C3.f[10] C3.f[11] C3.f[12] C3.f[13] C3.f[14] C3.f[15] C3.f[16] C3.f[17] C3.f[18] C3.f[19] C3.f[20] C3.f[21] C3.f[22] C3.f[23] C3.f[24] C3.f[25] C3.f[26] C3.f[27] C3.f[28] C3.f[29] C3.f[30] C3.f[31] C3.a
*
.subckt MltcUnit reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6
+ I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6
+ I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6
+ I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6
+ I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6
+ I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6
+ I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa C0_at_50_6
+ C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6 C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6
+ C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6 C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6
+ C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6 C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6
+ C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6 C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6
+ C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6 C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6
+ C0_af_514_6 C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6 C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6
+ C0_af_523_6 C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6 C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6
+ C0_aa C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6 C1_at_56_6 C1_at_57_6 C1_at_58_6
+ C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6 C1_at_515_6 C1_at_516_6 C1_at_517_6
+ C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6 C1_at_524_6 C1_at_525_6 C1_at_526_6
+ C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6 C1_af_51_6 C1_af_52_6 C1_af_53_6
+ C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6 C1_af_510_6 C1_af_511_6 C1_af_512_6
+ C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6 C1_af_519_6 C1_af_520_6 C1_af_521_6
+ C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6 C1_af_528_6 C1_af_529_6 C1_af_530_6
+ C1_af_531_6 C1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6 C2_at_56_6 C2_at_57_6
+ C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6 C2_at_515_6 C2_at_516_6
+ C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6 C2_at_524_6 C2_at_525_6
+ C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6 C2_af_51_6 C2_af_52_6
+ C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6 C2_af_510_6 C2_af_511_6
+ C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6 C2_af_519_6 C2_af_520_6
+ C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6 C2_af_528_6 C2_af_529_6
+ C2_af_530_6 C2_af_531_6 C2_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6 C3_at_56_6
+ C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6 C3_at_515_6
+ C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6 C3_at_524_6
+ C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6 C3_af_51_6
+ C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6 C3_af_510_6
+ C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6 C3_af_519_6
+ C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6 C3_af_528_6
+ C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O C0_at_50_6:O C0_at_51_6:O C0_at_52_6:O C0_at_53_6:O C0_at_54_6:O C0_at_55_6:O C0_at_56_6:O C0_at_57_6:O C0_at_58_6:O C0_at_59_6:O C0_at_510_6:O C0_at_511_6:O C0_at_512_6:O C0_at_513_6:O C0_at_514_6:O C0_at_515_6:O C0_at_516_6:O C0_at_517_6:O C0_at_518_6:O C0_at_519_6:O C0_at_520_6:O C0_at_521_6:O C0_at_522_6:O C0_at_523_6:O C0_at_524_6:O C0_at_525_6:O C0_at_526_6:O C0_at_527_6:O C0_at_528_6:O C0_at_529_6:O C0_at_530_6:O C0_at_531_6:O C0_af_50_6:O C0_af_51_6:O C0_af_52_6:O C0_af_53_6:O C0_af_54_6:O C0_af_55_6:O C0_af_56_6:O C0_af_57_6:O C0_af_58_6:O C0_af_59_6:O C0_af_510_6:O C0_af_511_6:O C0_af_512_6:O C0_af_513_6:O C0_af_514_6:O C0_af_515_6:O C0_af_516_6:O C0_af_517_6:O C0_af_518_6:O C0_af_519_6:O C0_af_520_6:O C0_af_521_6:O C0_af_522_6:O C0_af_523_6:O C0_af_524_6:O C0_af_525_6:O C0_af_526_6:O C0_af_527_6:O C0_af_528_6:O C0_af_529_6:O C0_af_530_6:O C0_af_531_6:O C0_aa:I C1_at_50_6:O C1_at_51_6:O C1_at_52_6:O C1_at_53_6:O C1_at_54_6:O C1_at_55_6:O C1_at_56_6:O C1_at_57_6:O C1_at_58_6:O C1_at_59_6:O C1_at_510_6:O C1_at_511_6:O C1_at_512_6:O C1_at_513_6:O C1_at_514_6:O C1_at_515_6:O C1_at_516_6:O C1_at_517_6:O C1_at_518_6:O C1_at_519_6:O C1_at_520_6:O C1_at_521_6:O C1_at_522_6:O C1_at_523_6:O C1_at_524_6:O C1_at_525_6:O C1_at_526_6:O C1_at_527_6:O C1_at_528_6:O C1_at_529_6:O C1_at_530_6:O C1_at_531_6:O C1_af_50_6:O C1_af_51_6:O C1_af_52_6:O C1_af_53_6:O C1_af_54_6:O C1_af_55_6:O C1_af_56_6:O C1_af_57_6:O C1_af_58_6:O C1_af_59_6:O C1_af_510_6:O C1_af_511_6:O C1_af_512_6:O C1_af_513_6:O C1_af_514_6:O C1_af_515_6:O C1_af_516_6:O C1_af_517_6:O C1_af_518_6:O C1_af_519_6:O C1_af_520_6:O C1_af_521_6:O C1_af_522_6:O C1_af_523_6:O C1_af_524_6:O C1_af_525_6:O C1_af_526_6:O C1_af_527_6:O C1_af_528_6:O C1_af_529_6:O C1_af_530_6:O C1_af_531_6:O C1_aa:I C2_at_50_6:O C2_at_51_6:O C2_at_52_6:O C2_at_53_6:O C2_at_54_6:O C2_at_55_6:O C2_at_56_6:O C2_at_57_6:O C2_at_58_6:O C2_at_59_6:O C2_at_510_6:O C2_at_511_6:O C2_at_512_6:O C2_at_513_6:O C2_at_514_6:O C2_at_515_6:O C2_at_516_6:O C2_at_517_6:O C2_at_518_6:O C2_at_519_6:O C2_at_520_6:O C2_at_521_6:O C2_at_522_6:O C2_at_523_6:O C2_at_524_6:O C2_at_525_6:O C2_at_526_6:O C2_at_527_6:O C2_at_528_6:O C2_at_529_6:O C2_at_530_6:O C2_at_531_6:O C2_af_50_6:O C2_af_51_6:O C2_af_52_6:O C2_af_53_6:O C2_af_54_6:O C2_af_55_6:O C2_af_56_6:O C2_af_57_6:O C2_af_58_6:O C2_af_59_6:O C2_af_510_6:O C2_af_511_6:O C2_af_512_6:O C2_af_513_6:O C2_af_514_6:O C2_af_515_6:O C2_af_516_6:O C2_af_517_6:O C2_af_518_6:O C2_af_519_6:O C2_af_520_6:O C2_af_521_6:O C2_af_522_6:O C2_af_523_6:O C2_af_524_6:O C2_af_525_6:O C2_af_526_6:O C2_af_527_6:O C2_af_528_6:O C2_af_529_6:O C2_af_530_6:O C2_af_531_6:O C2_aa:I C3_at_50_6:O C3_at_51_6:O C3_at_52_6:O C3_at_53_6:O C3_at_54_6:O C3_at_55_6:O C3_at_56_6:O C3_at_57_6:O C3_at_58_6:O C3_at_59_6:O C3_at_510_6:O C3_at_511_6:O C3_at_512_6:O C3_at_513_6:O C3_at_514_6:O C3_at_515_6:O C3_at_516_6:O C3_at_517_6:O C3_at_518_6:O C3_at_519_6:O C3_at_520_6:O C3_at_521_6:O C3_at_522_6:O C3_at_523_6:O C3_at_524_6:O C3_at_525_6:O C3_at_526_6:O C3_at_527_6:O C3_at_528_6:O C3_at_529_6:O C3_at_530_6:O C3_at_531_6:O C3_af_50_6:O C3_af_51_6:O C3_af_52_6:O C3_af_53_6:O C3_af_54_6:O C3_af_55_6:O C3_af_56_6:O C3_af_57_6:O C3_af_58_6:O C3_af_59_6:O C3_af_510_6:O C3_af_511_6:O C3_af_512_6:O C3_af_513_6:O C3_af_514_6:O C3_af_515_6:O C3_af_516_6:O C3_af_517_6:O C3_af_518_6:O C3_af_519_6:O C3_af_520_6:O C3_af_521_6:O C3_af_522_6:O C3_af_523_6:O C3_af_524_6:O C3_af_525_6:O C3_af_526_6:O C3_af_527_6:O C3_af_528_6:O C3_af_529_6:O C3_af_530_6:O C3_af_531_6:O C3_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xDS1 reset QR_aOD1_at_50_6 QR_aOD1_at_51_6 QR_aOD1_at_52_6 QR_aOD1_at_53_6 QR_aOD1_af_50_6 QR_aOD1_af_51_6
+ QR_aOD1_af_52_6 QR_aOD1_af_53_6 QR_aOD1_aa M1_aI0_at_50_6 M1_aI0_at_51_6 M1_aI0_at_52_6 M1_aI0_at_53_6
+ M1_aI0_at_54_6 M1_aI0_at_55_6 M1_aI0_at_56_6 M1_aI0_at_57_6 M1_aI0_at_58_6 M1_aI0_at_59_6 M1_aI0_at_510_6
+ M1_aI0_at_511_6 M1_aI0_at_512_6 M1_aI0_at_513_6 M1_aI0_at_514_6 M1_aI0_at_515_6 M1_aI0_at_516_6
+ M1_aI0_at_517_6 M1_aI0_at_518_6 M1_aI0_at_519_6 M1_aI0_at_520_6 M1_aI0_at_521_6 M1_aI0_at_522_6
+ M1_aI0_at_523_6 M1_aI0_at_524_6 M1_aI0_at_525_6 M1_aI0_at_526_6 M1_aI0_at_527_6 M1_aI0_at_528_6
+ M1_aI0_at_529_6 M1_aI0_at_530_6 M1_aI0_at_531_6 M1_aI0_af_50_6 M1_aI0_af_51_6 M1_aI0_af_52_6 M1_aI0_af_53_6
+ M1_aI0_af_54_6 M1_aI0_af_55_6 M1_aI0_af_56_6 M1_aI0_af_57_6 M1_aI0_af_58_6 M1_aI0_af_59_6 M1_aI0_af_510_6
+ M1_aI0_af_511_6 M1_aI0_af_512_6 M1_aI0_af_513_6 M1_aI0_af_514_6 M1_aI0_af_515_6 M1_aI0_af_516_6
+ M1_aI0_af_517_6 M1_aI0_af_518_6 M1_aI0_af_519_6 M1_aI0_af_520_6 M1_aI0_af_521_6 M1_aI0_af_522_6
+ M1_aI0_af_523_6 M1_aI0_af_524_6 M1_aI0_af_525_6 M1_aI0_af_526_6 M1_aI0_af_527_6 M1_aI0_af_528_6
+ M1_aI0_af_529_6 M1_aI0_af_530_6 M1_aI0_af_531_6 M1_aI0_aa Deserializer
xBO0 reset PD_aC0_at_50_6 PD_aC0_at_51_6 PD_aC0_at_52_6 PD_aC0_at_53_6 PD_aC0_at_54_6 PD_aC0_at_55_6
+ PD_aC0_at_56_6 PD_aC0_at_57_6 PD_aC0_at_58_6 PD_aC0_at_59_6 PD_aC0_at_510_6 PD_aC0_at_511_6 PD_aC0_at_512_6
+ PD_aC0_at_513_6 PD_aC0_at_514_6 PD_aC0_at_515_6 PD_aC0_at_516_6 PD_aC0_at_517_6 PD_aC0_at_518_6
+ PD_aC0_at_519_6 PD_aC0_at_520_6 PD_aC0_at_521_6 PD_aC0_at_522_6 PD_aC0_at_523_6 PD_aC0_at_524_6
+ PD_aC0_at_525_6 PD_aC0_at_526_6 PD_aC0_at_527_6 PD_aC0_at_528_6 PD_aC0_at_529_6 PD_aC0_at_530_6
+ PD_aC0_at_531_6 PD_aC0_af_50_6 PD_aC0_af_51_6 PD_aC0_af_52_6 PD_aC0_af_53_6 PD_aC0_af_54_6 PD_aC0_af_55_6
+ PD_aC0_af_56_6 PD_aC0_af_57_6 PD_aC0_af_58_6 PD_aC0_af_59_6 PD_aC0_af_510_6 PD_aC0_af_511_6 PD_aC0_af_512_6
+ PD_aC0_af_513_6 PD_aC0_af_514_6 PD_aC0_af_515_6 PD_aC0_af_516_6 PD_aC0_af_517_6 PD_aC0_af_518_6
+ PD_aC0_af_519_6 PD_aC0_af_520_6 PD_aC0_af_521_6 PD_aC0_af_522_6 PD_aC0_af_523_6 PD_aC0_af_524_6
+ PD_aC0_af_525_6 PD_aC0_af_526_6 PD_aC0_af_527_6 PD_aC0_af_528_6 PD_aC0_af_529_6 PD_aC0_af_530_6
+ PD_aC0_af_531_6 PD_aC0_aa M0_aI1_at_50_6 M0_aI1_at_51_6 M0_aI1_at_52_6 M0_aI1_at_53_6 M0_aI1_at_54_6
+ M0_aI1_at_55_6 M0_aI1_at_56_6 M0_aI1_at_57_6 M0_aI1_at_58_6 M0_aI1_at_59_6 M0_aI1_at_510_6 M0_aI1_at_511_6
+ M0_aI1_at_512_6 M0_aI1_at_513_6 M0_aI1_at_514_6 M0_aI1_at_515_6 M0_aI1_at_516_6 M0_aI1_at_517_6
+ M0_aI1_at_518_6 M0_aI1_at_519_6 M0_aI1_at_520_6 M0_aI1_at_521_6 M0_aI1_at_522_6 M0_aI1_at_523_6
+ M0_aI1_at_524_6 M0_aI1_at_525_6 M0_aI1_at_526_6 M0_aI1_at_527_6 M0_aI1_at_528_6 M0_aI1_at_529_6
+ M0_aI1_at_530_6 M0_aI1_at_531_6 M0_aI1_af_50_6 M0_aI1_af_51_6 M0_aI1_af_52_6 M0_aI1_af_53_6 M0_aI1_af_54_6
+ M0_aI1_af_55_6 M0_aI1_af_56_6 M0_aI1_af_57_6 M0_aI1_af_58_6 M0_aI1_af_59_6 M0_aI1_af_510_6 M0_aI1_af_511_6
+ M0_aI1_af_512_6 M0_aI1_af_513_6 M0_aI1_af_514_6 M0_aI1_af_515_6 M0_aI1_af_516_6 M0_aI1_af_517_6
+ M0_aI1_af_518_6 M0_aI1_af_519_6 M0_aI1_af_520_6 M0_aI1_af_521_6 M0_aI1_af_522_6 M0_aI1_af_523_6
+ M0_aI1_af_524_6 M0_aI1_af_525_6 M0_aI1_af_526_6 M0_aI1_af_527_6 M0_aI1_af_528_6 M0_aI1_af_529_6
+ M0_aI1_af_530_6 M0_aI1_af_531_6 M0_aI1_aa PCFB32
xDS3 reset QR_aOD3_at_50_6 QR_aOD3_at_51_6 QR_aOD3_at_52_6 QR_aOD3_at_53_6 QR_aOD3_af_50_6 QR_aOD3_af_51_6
+ QR_aOD3_af_52_6 QR_aOD3_af_53_6 QR_aOD3_aa M3_aI0_at_50_6 M3_aI0_at_51_6 M3_aI0_at_52_6 M3_aI0_at_53_6
+ M3_aI0_at_54_6 M3_aI0_at_55_6 M3_aI0_at_56_6 M3_aI0_at_57_6 M3_aI0_at_58_6 M3_aI0_at_59_6 M3_aI0_at_510_6
+ M3_aI0_at_511_6 M3_aI0_at_512_6 M3_aI0_at_513_6 M3_aI0_at_514_6 M3_aI0_at_515_6 M3_aI0_at_516_6
+ M3_aI0_at_517_6 M3_aI0_at_518_6 M3_aI0_at_519_6 M3_aI0_at_520_6 M3_aI0_at_521_6 M3_aI0_at_522_6
+ M3_aI0_at_523_6 M3_aI0_at_524_6 M3_aI0_at_525_6 M3_aI0_at_526_6 M3_aI0_at_527_6 M3_aI0_at_528_6
+ M3_aI0_at_529_6 M3_aI0_at_530_6 M3_aI0_at_531_6 M3_aI0_af_50_6 M3_aI0_af_51_6 M3_aI0_af_52_6 M3_aI0_af_53_6
+ M3_aI0_af_54_6 M3_aI0_af_55_6 M3_aI0_af_56_6 M3_aI0_af_57_6 M3_aI0_af_58_6 M3_aI0_af_59_6 M3_aI0_af_510_6
+ M3_aI0_af_511_6 M3_aI0_af_512_6 M3_aI0_af_513_6 M3_aI0_af_514_6 M3_aI0_af_515_6 M3_aI0_af_516_6
+ M3_aI0_af_517_6 M3_aI0_af_518_6 M3_aI0_af_519_6 M3_aI0_af_520_6 M3_aI0_af_521_6 M3_aI0_af_522_6
+ M3_aI0_af_523_6 M3_aI0_af_524_6 M3_aI0_af_525_6 M3_aI0_af_526_6 M3_aI0_af_527_6 M3_aI0_af_528_6
+ M3_aI0_af_529_6 M3_aI0_af_530_6 M3_aI0_af_531_6 M3_aI0_aa Deserializer
xDS2 reset QR_aOD2_at_50_6 QR_aOD2_at_51_6 QR_aOD2_at_52_6 QR_aOD2_at_53_6 QR_aOD2_af_50_6 QR_aOD2_af_51_6
+ QR_aOD2_af_52_6 QR_aOD2_af_53_6 QR_aOD2_aa M2_aI0_at_50_6 M2_aI0_at_51_6 M2_aI0_at_52_6 M2_aI0_at_53_6
+ M2_aI0_at_54_6 M2_aI0_at_55_6 M2_aI0_at_56_6 M2_aI0_at_57_6 M2_aI0_at_58_6 M2_aI0_at_59_6 M2_aI0_at_510_6
+ M2_aI0_at_511_6 M2_aI0_at_512_6 M2_aI0_at_513_6 M2_aI0_at_514_6 M2_aI0_at_515_6 M2_aI0_at_516_6
+ M2_aI0_at_517_6 M2_aI0_at_518_6 M2_aI0_at_519_6 M2_aI0_at_520_6 M2_aI0_at_521_6 M2_aI0_at_522_6
+ M2_aI0_at_523_6 M2_aI0_at_524_6 M2_aI0_at_525_6 M2_aI0_at_526_6 M2_aI0_at_527_6 M2_aI0_at_528_6
+ M2_aI0_at_529_6 M2_aI0_at_530_6 M2_aI0_at_531_6 M2_aI0_af_50_6 M2_aI0_af_51_6 M2_aI0_af_52_6 M2_aI0_af_53_6
+ M2_aI0_af_54_6 M2_aI0_af_55_6 M2_aI0_af_56_6 M2_aI0_af_57_6 M2_aI0_af_58_6 M2_aI0_af_59_6 M2_aI0_af_510_6
+ M2_aI0_af_511_6 M2_aI0_af_512_6 M2_aI0_af_513_6 M2_aI0_af_514_6 M2_aI0_af_515_6 M2_aI0_af_516_6
+ M2_aI0_af_517_6 M2_aI0_af_518_6 M2_aI0_af_519_6 M2_aI0_af_520_6 M2_aI0_af_521_6 M2_aI0_af_522_6
+ M2_aI0_af_523_6 M2_aI0_af_524_6 M2_aI0_af_525_6 M2_aI0_af_526_6 M2_aI0_af_527_6 M2_aI0_af_528_6
+ M2_aI0_af_529_6 M2_aI0_af_530_6 M2_aI0_af_531_6 M2_aI0_aa Deserializer
xBO3 reset PD_aC3_at_50_6 PD_aC3_at_51_6 PD_aC3_at_52_6 PD_aC3_at_53_6 PD_aC3_at_54_6 PD_aC3_at_55_6
+ PD_aC3_at_56_6 PD_aC3_at_57_6 PD_aC3_at_58_6 PD_aC3_at_59_6 PD_aC3_at_510_6 PD_aC3_at_511_6 PD_aC3_at_512_6
+ PD_aC3_at_513_6 PD_aC3_at_514_6 PD_aC3_at_515_6 PD_aC3_at_516_6 PD_aC3_at_517_6 PD_aC3_at_518_6
+ PD_aC3_at_519_6 PD_aC3_at_520_6 PD_aC3_at_521_6 PD_aC3_at_522_6 PD_aC3_at_523_6 PD_aC3_at_524_6
+ PD_aC3_at_525_6 PD_aC3_at_526_6 PD_aC3_at_527_6 PD_aC3_at_528_6 PD_aC3_at_529_6 PD_aC3_at_530_6
+ PD_aC3_at_531_6 PD_aC3_af_50_6 PD_aC3_af_51_6 PD_aC3_af_52_6 PD_aC3_af_53_6 PD_aC3_af_54_6 PD_aC3_af_55_6
+ PD_aC3_af_56_6 PD_aC3_af_57_6 PD_aC3_af_58_6 PD_aC3_af_59_6 PD_aC3_af_510_6 PD_aC3_af_511_6 PD_aC3_af_512_6
+ PD_aC3_af_513_6 PD_aC3_af_514_6 PD_aC3_af_515_6 PD_aC3_af_516_6 PD_aC3_af_517_6 PD_aC3_af_518_6
+ PD_aC3_af_519_6 PD_aC3_af_520_6 PD_aC3_af_521_6 PD_aC3_af_522_6 PD_aC3_af_523_6 PD_aC3_af_524_6
+ PD_aC3_af_525_6 PD_aC3_af_526_6 PD_aC3_af_527_6 PD_aC3_af_528_6 PD_aC3_af_529_6 PD_aC3_af_530_6
+ PD_aC3_af_531_6 PD_aC3_aa M3_aI1_at_50_6 M3_aI1_at_51_6 M3_aI1_at_52_6 M3_aI1_at_53_6 M3_aI1_at_54_6
+ M3_aI1_at_55_6 M3_aI1_at_56_6 M3_aI1_at_57_6 M3_aI1_at_58_6 M3_aI1_at_59_6 M3_aI1_at_510_6 M3_aI1_at_511_6
+ M3_aI1_at_512_6 M3_aI1_at_513_6 M3_aI1_at_514_6 M3_aI1_at_515_6 M3_aI1_at_516_6 M3_aI1_at_517_6
+ M3_aI1_at_518_6 M3_aI1_at_519_6 M3_aI1_at_520_6 M3_aI1_at_521_6 M3_aI1_at_522_6 M3_aI1_at_523_6
+ M3_aI1_at_524_6 M3_aI1_at_525_6 M3_aI1_at_526_6 M3_aI1_at_527_6 M3_aI1_at_528_6 M3_aI1_at_529_6
+ M3_aI1_at_530_6 M3_aI1_at_531_6 M3_aI1_af_50_6 M3_aI1_af_51_6 M3_aI1_af_52_6 M3_aI1_af_53_6 M3_aI1_af_54_6
+ M3_aI1_af_55_6 M3_aI1_af_56_6 M3_aI1_af_57_6 M3_aI1_af_58_6 M3_aI1_af_59_6 M3_aI1_af_510_6 M3_aI1_af_511_6
+ M3_aI1_af_512_6 M3_aI1_af_513_6 M3_aI1_af_514_6 M3_aI1_af_515_6 M3_aI1_af_516_6 M3_aI1_af_517_6
+ M3_aI1_af_518_6 M3_aI1_af_519_6 M3_aI1_af_520_6 M3_aI1_af_521_6 M3_aI1_af_522_6 M3_aI1_af_523_6
+ M3_aI1_af_524_6 M3_aI1_af_525_6 M3_aI1_af_526_6 M3_aI1_af_527_6 M3_aI1_af_528_6 M3_aI1_af_529_6
+ M3_aI1_af_530_6 M3_aI1_af_531_6 M3_aI1_aa PCFB32
xCT2 reset QR_aOC2_at_50_6 QR_aOC2_at_51_6 QR_aOC2_at_52_6 QR_aOC2_at_53_6 QR_aOC2_af_50_6 QR_aOC2_af_51_6
+ QR_aOC2_af_52_6 QR_aOC2_af_53_6 QR_aOC2_aa QR_aCnt2_areq QR_aCnt2_at_50_6 QR_aCnt2_at_51_6 QR_aCnt2_at_52_6
+ QR_aCnt2_at_53_6 QR_aCnt2_at_54_6 QR_aCnt2_at_55_6 QR_aCnt2_at_56_6 QR_aCnt2_at_57_6 QR_aCnt2_af_50_6
+ QR_aCnt2_af_51_6 QR_aCnt2_af_52_6 QR_aCnt2_af_53_6 QR_aCnt2_af_54_6 QR_aCnt2_af_55_6 QR_aCnt2_af_56_6
+ QR_aCnt2_af_57_6 Counter
xCT3 reset QR_aOC3_at_50_6 QR_aOC3_at_51_6 QR_aOC3_at_52_6 QR_aOC3_at_53_6 QR_aOC3_af_50_6 QR_aOC3_af_51_6
+ QR_aOC3_af_52_6 QR_aOC3_af_53_6 QR_aOC3_aa QR_aCnt3_areq QR_aCnt3_at_50_6 QR_aCnt3_at_51_6 QR_aCnt3_at_52_6
+ QR_aCnt3_at_53_6 QR_aCnt3_at_54_6 QR_aCnt3_at_55_6 QR_aCnt3_at_56_6 QR_aCnt3_at_57_6 QR_aCnt3_af_50_6
+ QR_aCnt3_af_51_6 QR_aCnt3_af_52_6 QR_aCnt3_af_53_6 QR_aCnt3_af_54_6 QR_aCnt3_af_55_6 QR_aCnt3_af_56_6
+ QR_aCnt3_af_57_6 Counter
xSE reset IR_aO0_at_50_6 IR_aO0_at_51_6 IR_aO0_at_52_6 IR_aO0_at_53_6 IR_aO0_at_54_6 IR_aO0_at_55_6
+ IR_aO0_at_56_6 IR_aO0_at_57_6 IR_aO0_at_58_6 IR_aO0_at_59_6 IR_aO0_at_510_6 IR_aO0_at_511_6 IR_aO0_at_512_6
+ IR_aO0_at_513_6 IR_aO0_at_514_6 IR_aO0_at_515_6 IR_aO0_at_516_6 IR_aO0_at_517_6 IR_aO0_at_518_6
+ IR_aO0_at_519_6 IR_aO0_at_520_6 IR_aO0_at_521_6 IR_aO0_at_522_6 IR_aO0_at_523_6 IR_aO0_at_524_6
+ IR_aO0_at_525_6 IR_aO0_at_526_6 IR_aO0_at_527_6 IR_aO0_at_528_6 IR_aO0_at_529_6 IR_aO0_at_530_6
+ IR_aO0_at_531_6 IR_aO0_af_50_6 IR_aO0_af_51_6 IR_aO0_af_52_6 IR_aO0_af_53_6 IR_aO0_af_54_6 IR_aO0_af_55_6
+ IR_aO0_af_56_6 IR_aO0_af_57_6 IR_aO0_af_58_6 IR_aO0_af_59_6 IR_aO0_af_510_6 IR_aO0_af_511_6 IR_aO0_af_512_6
+ IR_aO0_af_513_6 IR_aO0_af_514_6 IR_aO0_af_515_6 IR_aO0_af_516_6 IR_aO0_af_517_6 IR_aO0_af_518_6
+ IR_aO0_af_519_6 IR_aO0_af_520_6 IR_aO0_af_521_6 IR_aO0_af_522_6 IR_aO0_af_523_6 IR_aO0_af_524_6
+ IR_aO0_af_525_6 IR_aO0_af_526_6 IR_aO0_af_527_6 IR_aO0_af_528_6 IR_aO0_af_529_6 IR_aO0_af_530_6
+ IR_aO0_af_531_6 IR_aO0_aa QR_aI_at_50_6 QR_aI_at_51_6 QR_aI_at_52_6 QR_aI_at_53_6 QR_aI_af_50_6
+ QR_aI_af_51_6 QR_aI_af_52_6 QR_aI_af_53_6 QR_aI_aa Serializer
xCT1 reset QR_aOC1_at_50_6 QR_aOC1_at_51_6 QR_aOC1_at_52_6 QR_aOC1_at_53_6 QR_aOC1_af_50_6 QR_aOC1_af_51_6
+ QR_aOC1_af_52_6 QR_aOC1_af_53_6 QR_aOC1_aa QR_aCnt1_areq QR_aCnt1_at_50_6 QR_aCnt1_at_51_6 QR_aCnt1_at_52_6
+ QR_aCnt1_at_53_6 QR_aCnt1_at_54_6 QR_aCnt1_at_55_6 QR_aCnt1_at_56_6 QR_aCnt1_at_57_6 QR_aCnt1_af_50_6
+ QR_aCnt1_af_51_6 QR_aCnt1_af_52_6 QR_aCnt1_af_53_6 QR_aCnt1_af_54_6 QR_aCnt1_af_55_6 QR_aCnt1_af_56_6
+ QR_aCnt1_af_57_6 Counter
xM3 M3_aI0_at_50_6 M3_aI0_at_51_6 M3_aI0_at_52_6 M3_aI0_at_53_6 M3_aI0_at_54_6 M3_aI0_at_55_6 M3_aI0_at_56_6
+ M3_aI0_at_57_6 M3_aI0_at_58_6 M3_aI0_at_59_6 M3_aI0_at_510_6 M3_aI0_at_511_6 M3_aI0_at_512_6
+ M3_aI0_at_513_6 M3_aI0_at_514_6 M3_aI0_at_515_6 M3_aI0_at_516_6 M3_aI0_at_517_6 M3_aI0_at_518_6
+ M3_aI0_at_519_6 M3_aI0_at_520_6 M3_aI0_at_521_6 M3_aI0_at_522_6 M3_aI0_at_523_6 M3_aI0_at_524_6
+ M3_aI0_at_525_6 M3_aI0_at_526_6 M3_aI0_at_527_6 M3_aI0_at_528_6 M3_aI0_at_529_6 M3_aI0_at_530_6
+ M3_aI0_at_531_6 M3_aI0_af_50_6 M3_aI0_af_51_6 M3_aI0_af_52_6 M3_aI0_af_53_6 M3_aI0_af_54_6 M3_aI0_af_55_6
+ M3_aI0_af_56_6 M3_aI0_af_57_6 M3_aI0_af_58_6 M3_aI0_af_59_6 M3_aI0_af_510_6 M3_aI0_af_511_6 M3_aI0_af_512_6
+ M3_aI0_af_513_6 M3_aI0_af_514_6 M3_aI0_af_515_6 M3_aI0_af_516_6 M3_aI0_af_517_6 M3_aI0_af_518_6
+ M3_aI0_af_519_6 M3_aI0_af_520_6 M3_aI0_af_521_6 M3_aI0_af_522_6 M3_aI0_af_523_6 M3_aI0_af_524_6
+ M3_aI0_af_525_6 M3_aI0_af_526_6 M3_aI0_af_527_6 M3_aI0_af_528_6 M3_aI0_af_529_6 M3_aI0_af_530_6
+ M3_aI0_af_531_6 M3_aI0_aa M3_aI1_at_50_6 M3_aI1_at_51_6 M3_aI1_at_52_6 M3_aI1_at_53_6 M3_aI1_at_54_6
+ M3_aI1_at_55_6 M3_aI1_at_56_6 M3_aI1_at_57_6 M3_aI1_at_58_6 M3_aI1_at_59_6 M3_aI1_at_510_6 M3_aI1_at_511_6
+ M3_aI1_at_512_6 M3_aI1_at_513_6 M3_aI1_at_514_6 M3_aI1_at_515_6 M3_aI1_at_516_6 M3_aI1_at_517_6
+ M3_aI1_at_518_6 M3_aI1_at_519_6 M3_aI1_at_520_6 M3_aI1_at_521_6 M3_aI1_at_522_6 M3_aI1_at_523_6
+ M3_aI1_at_524_6 M3_aI1_at_525_6 M3_aI1_at_526_6 M3_aI1_at_527_6 M3_aI1_at_528_6 M3_aI1_at_529_6
+ M3_aI1_at_530_6 M3_aI1_at_531_6 M3_aI1_af_50_6 M3_aI1_af_51_6 M3_aI1_af_52_6 M3_aI1_af_53_6 M3_aI1_af_54_6
+ M3_aI1_af_55_6 M3_aI1_af_56_6 M3_aI1_af_57_6 M3_aI1_af_58_6 M3_aI1_af_59_6 M3_aI1_af_510_6 M3_aI1_af_511_6
+ M3_aI1_af_512_6 M3_aI1_af_513_6 M3_aI1_af_514_6 M3_aI1_af_515_6 M3_aI1_af_516_6 M3_aI1_af_517_6
+ M3_aI1_af_518_6 M3_aI1_af_519_6 M3_aI1_af_520_6 M3_aI1_af_521_6 M3_aI1_af_522_6 M3_aI1_af_523_6
+ M3_aI1_af_524_6 M3_aI1_af_525_6 M3_aI1_af_526_6 M3_aI1_af_527_6 M3_aI1_af_528_6 M3_aI1_af_529_6
+ M3_aI1_af_530_6 M3_aI1_af_531_6 M3_aI1_aa C3_at_50_6 C3_at_51_6 C3_at_52_6 C3_at_53_6 C3_at_54_6 C3_at_55_6
+ C3_at_56_6 C3_at_57_6 C3_at_58_6 C3_at_59_6 C3_at_510_6 C3_at_511_6 C3_at_512_6 C3_at_513_6 C3_at_514_6
+ C3_at_515_6 C3_at_516_6 C3_at_517_6 C3_at_518_6 C3_at_519_6 C3_at_520_6 C3_at_521_6 C3_at_522_6 C3_at_523_6
+ C3_at_524_6 C3_at_525_6 C3_at_526_6 C3_at_527_6 C3_at_528_6 C3_at_529_6 C3_at_530_6 C3_at_531_6 C3_af_50_6
+ C3_af_51_6 C3_af_52_6 C3_af_53_6 C3_af_54_6 C3_af_55_6 C3_af_56_6 C3_af_57_6 C3_af_58_6 C3_af_59_6
+ C3_af_510_6 C3_af_511_6 C3_af_512_6 C3_af_513_6 C3_af_514_6 C3_af_515_6 C3_af_516_6 C3_af_517_6 C3_af_518_6
+ C3_af_519_6 C3_af_520_6 C3_af_521_6 C3_af_522_6 C3_af_523_6 C3_af_524_6 C3_af_525_6 C3_af_526_6 C3_af_527_6
+ C3_af_528_6 C3_af_529_6 C3_af_530_6 C3_af_531_6 C3_aa Merge_332_7t_4
xPD reset BP_aR_at_50_6 BP_aR_at_51_6 BP_aR_at_52_6 BP_aR_at_53_6 BP_aR_at_54_6 BP_aR_at_55_6 BP_aR_at_56_6
+ BP_aR_at_57_6 BP_aR_at_58_6 BP_aR_at_59_6 BP_aR_at_510_6 BP_aR_at_511_6 BP_aR_at_512_6 BP_aR_at_513_6
+ BP_aR_at_514_6 BP_aR_at_515_6 BP_aR_at_516_6 BP_aR_at_517_6 BP_aR_at_518_6 BP_aR_at_519_6 BP_aR_at_520_6
+ BP_aR_at_521_6 BP_aR_at_522_6 BP_aR_at_523_6 BP_aR_at_524_6 BP_aR_at_525_6 BP_aR_at_526_6 BP_aR_at_527_6
+ BP_aR_at_528_6 BP_aR_at_529_6 BP_aR_at_530_6 BP_aR_at_531_6 BP_aR_af_50_6 BP_aR_af_51_6 BP_aR_af_52_6
+ BP_aR_af_53_6 BP_aR_af_54_6 BP_aR_af_55_6 BP_aR_af_56_6 BP_aR_af_57_6 BP_aR_af_58_6 BP_aR_af_59_6
+ BP_aR_af_510_6 BP_aR_af_511_6 BP_aR_af_512_6 BP_aR_af_513_6 BP_aR_af_514_6 BP_aR_af_515_6 BP_aR_af_516_6
+ BP_aR_af_517_6 BP_aR_af_518_6 BP_aR_af_519_6 BP_aR_af_520_6 BP_aR_af_521_6 BP_aR_af_522_6 BP_aR_af_523_6
+ BP_aR_af_524_6 BP_aR_af_525_6 BP_aR_af_526_6 BP_aR_af_527_6 BP_aR_af_528_6 BP_aR_af_529_6 BP_aR_af_530_6
+ BP_aR_af_531_6 BP_aR_aa PD_aCh_at_50_6 PD_aCh_at_51_6 PD_aCh_at_52_6 PD_aCh_at_53_6 PD_aCh_af_50_6
+ PD_aCh_af_51_6 PD_aCh_af_52_6 PD_aCh_af_53_6 PD_aCh_aa PD_aC0_at_50_6 PD_aC0_at_51_6 PD_aC0_at_52_6
+ PD_aC0_at_53_6 PD_aC0_at_54_6 PD_aC0_at_55_6 PD_aC0_at_56_6 PD_aC0_at_57_6 PD_aC0_at_58_6 PD_aC0_at_59_6
+ PD_aC0_at_510_6 PD_aC0_at_511_6 PD_aC0_at_512_6 PD_aC0_at_513_6 PD_aC0_at_514_6 PD_aC0_at_515_6
+ PD_aC0_at_516_6 PD_aC0_at_517_6 PD_aC0_at_518_6 PD_aC0_at_519_6 PD_aC0_at_520_6 PD_aC0_at_521_6
+ PD_aC0_at_522_6 PD_aC0_at_523_6 PD_aC0_at_524_6 PD_aC0_at_525_6 PD_aC0_at_526_6 PD_aC0_at_527_6
+ PD_aC0_at_528_6 PD_aC0_at_529_6 PD_aC0_at_530_6 PD_aC0_at_531_6 PD_aC0_af_50_6 PD_aC0_af_51_6
+ PD_aC0_af_52_6 PD_aC0_af_53_6 PD_aC0_af_54_6 PD_aC0_af_55_6 PD_aC0_af_56_6 PD_aC0_af_57_6 PD_aC0_af_58_6
+ PD_aC0_af_59_6 PD_aC0_af_510_6 PD_aC0_af_511_6 PD_aC0_af_512_6 PD_aC0_af_513_6 PD_aC0_af_514_6
+ PD_aC0_af_515_6 PD_aC0_af_516_6 PD_aC0_af_517_6 PD_aC0_af_518_6 PD_aC0_af_519_6 PD_aC0_af_520_6
+ PD_aC0_af_521_6 PD_aC0_af_522_6 PD_aC0_af_523_6 PD_aC0_af_524_6 PD_aC0_af_525_6 PD_aC0_af_526_6
+ PD_aC0_af_527_6 PD_aC0_af_528_6 PD_aC0_af_529_6 PD_aC0_af_530_6 PD_aC0_af_531_6 PD_aC0_aa PD_aC1_at_50_6
+ PD_aC1_at_51_6 PD_aC1_at_52_6 PD_aC1_at_53_6 PD_aC1_at_54_6 PD_aC1_at_55_6 PD_aC1_at_56_6 PD_aC1_at_57_6
+ PD_aC1_at_58_6 PD_aC1_at_59_6 PD_aC1_at_510_6 PD_aC1_at_511_6 PD_aC1_at_512_6 PD_aC1_at_513_6
+ PD_aC1_at_514_6 PD_aC1_at_515_6 PD_aC1_at_516_6 PD_aC1_at_517_6 PD_aC1_at_518_6 PD_aC1_at_519_6
+ PD_aC1_at_520_6 PD_aC1_at_521_6 PD_aC1_at_522_6 PD_aC1_at_523_6 PD_aC1_at_524_6 PD_aC1_at_525_6
+ PD_aC1_at_526_6 PD_aC1_at_527_6 PD_aC1_at_528_6 PD_aC1_at_529_6 PD_aC1_at_530_6 PD_aC1_at_531_6
+ PD_aC1_af_50_6 PD_aC1_af_51_6 PD_aC1_af_52_6 PD_aC1_af_53_6 PD_aC1_af_54_6 PD_aC1_af_55_6 PD_aC1_af_56_6
+ PD_aC1_af_57_6 PD_aC1_af_58_6 PD_aC1_af_59_6 PD_aC1_af_510_6 PD_aC1_af_511_6 PD_aC1_af_512_6
+ PD_aC1_af_513_6 PD_aC1_af_514_6 PD_aC1_af_515_6 PD_aC1_af_516_6 PD_aC1_af_517_6 PD_aC1_af_518_6
+ PD_aC1_af_519_6 PD_aC1_af_520_6 PD_aC1_af_521_6 PD_aC1_af_522_6 PD_aC1_af_523_6 PD_aC1_af_524_6
+ PD_aC1_af_525_6 PD_aC1_af_526_6 PD_aC1_af_527_6 PD_aC1_af_528_6 PD_aC1_af_529_6 PD_aC1_af_530_6
+ PD_aC1_af_531_6 PD_aC1_aa PD_aC2_at_50_6 PD_aC2_at_51_6 PD_aC2_at_52_6 PD_aC2_at_53_6 PD_aC2_at_54_6
+ PD_aC2_at_55_6 PD_aC2_at_56_6 PD_aC2_at_57_6 PD_aC2_at_58_6 PD_aC2_at_59_6 PD_aC2_at_510_6 PD_aC2_at_511_6
+ PD_aC2_at_512_6 PD_aC2_at_513_6 PD_aC2_at_514_6 PD_aC2_at_515_6 PD_aC2_at_516_6 PD_aC2_at_517_6
+ PD_aC2_at_518_6 PD_aC2_at_519_6 PD_aC2_at_520_6 PD_aC2_at_521_6 PD_aC2_at_522_6 PD_aC2_at_523_6
+ PD_aC2_at_524_6 PD_aC2_at_525_6 PD_aC2_at_526_6 PD_aC2_at_527_6 PD_aC2_at_528_6 PD_aC2_at_529_6
+ PD_aC2_at_530_6 PD_aC2_at_531_6 PD_aC2_af_50_6 PD_aC2_af_51_6 PD_aC2_af_52_6 PD_aC2_af_53_6 PD_aC2_af_54_6
+ PD_aC2_af_55_6 PD_aC2_af_56_6 PD_aC2_af_57_6 PD_aC2_af_58_6 PD_aC2_af_59_6 PD_aC2_af_510_6 PD_aC2_af_511_6
+ PD_aC2_af_512_6 PD_aC2_af_513_6 PD_aC2_af_514_6 PD_aC2_af_515_6 PD_aC2_af_516_6 PD_aC2_af_517_6
+ PD_aC2_af_518_6 PD_aC2_af_519_6 PD_aC2_af_520_6 PD_aC2_af_521_6 PD_aC2_af_522_6 PD_aC2_af_523_6
+ PD_aC2_af_524_6 PD_aC2_af_525_6 PD_aC2_af_526_6 PD_aC2_af_527_6 PD_aC2_af_528_6 PD_aC2_af_529_6
+ PD_aC2_af_530_6 PD_aC2_af_531_6 PD_aC2_aa PD_aC3_at_50_6 PD_aC3_at_51_6 PD_aC3_at_52_6 PD_aC3_at_53_6
+ PD_aC3_at_54_6 PD_aC3_at_55_6 PD_aC3_at_56_6 PD_aC3_at_57_6 PD_aC3_at_58_6 PD_aC3_at_59_6 PD_aC3_at_510_6
+ PD_aC3_at_511_6 PD_aC3_at_512_6 PD_aC3_at_513_6 PD_aC3_at_514_6 PD_aC3_at_515_6 PD_aC3_at_516_6
+ PD_aC3_at_517_6 PD_aC3_at_518_6 PD_aC3_at_519_6 PD_aC3_at_520_6 PD_aC3_at_521_6 PD_aC3_at_522_6
+ PD_aC3_at_523_6 PD_aC3_at_524_6 PD_aC3_at_525_6 PD_aC3_at_526_6 PD_aC3_at_527_6 PD_aC3_at_528_6
+ PD_aC3_at_529_6 PD_aC3_at_530_6 PD_aC3_at_531_6 PD_aC3_af_50_6 PD_aC3_af_51_6 PD_aC3_af_52_6 PD_aC3_af_53_6
+ PD_aC3_af_54_6 PD_aC3_af_55_6 PD_aC3_af_56_6 PD_aC3_af_57_6 PD_aC3_af_58_6 PD_aC3_af_59_6 PD_aC3_af_510_6
+ PD_aC3_af_511_6 PD_aC3_af_512_6 PD_aC3_af_513_6 PD_aC3_af_514_6 PD_aC3_af_515_6 PD_aC3_af_516_6
+ PD_aC3_af_517_6 PD_aC3_af_518_6 PD_aC3_af_519_6 PD_aC3_af_520_6 PD_aC3_af_521_6 PD_aC3_af_522_6
+ PD_aC3_af_523_6 PD_aC3_af_524_6 PD_aC3_af_525_6 PD_aC3_af_526_6 PD_aC3_af_527_6 PD_aC3_af_528_6
+ PD_aC3_af_529_6 PD_aC3_af_530_6 PD_aC3_af_531_6 PD_aC3_aa PayloadDispatch
xBO2 reset PD_aC2_at_50_6 PD_aC2_at_51_6 PD_aC2_at_52_6 PD_aC2_at_53_6 PD_aC2_at_54_6 PD_aC2_at_55_6
+ PD_aC2_at_56_6 PD_aC2_at_57_6 PD_aC2_at_58_6 PD_aC2_at_59_6 PD_aC2_at_510_6 PD_aC2_at_511_6 PD_aC2_at_512_6
+ PD_aC2_at_513_6 PD_aC2_at_514_6 PD_aC2_at_515_6 PD_aC2_at_516_6 PD_aC2_at_517_6 PD_aC2_at_518_6
+ PD_aC2_at_519_6 PD_aC2_at_520_6 PD_aC2_at_521_6 PD_aC2_at_522_6 PD_aC2_at_523_6 PD_aC2_at_524_6
+ PD_aC2_at_525_6 PD_aC2_at_526_6 PD_aC2_at_527_6 PD_aC2_at_528_6 PD_aC2_at_529_6 PD_aC2_at_530_6
+ PD_aC2_at_531_6 PD_aC2_af_50_6 PD_aC2_af_51_6 PD_aC2_af_52_6 PD_aC2_af_53_6 PD_aC2_af_54_6 PD_aC2_af_55_6
+ PD_aC2_af_56_6 PD_aC2_af_57_6 PD_aC2_af_58_6 PD_aC2_af_59_6 PD_aC2_af_510_6 PD_aC2_af_511_6 PD_aC2_af_512_6
+ PD_aC2_af_513_6 PD_aC2_af_514_6 PD_aC2_af_515_6 PD_aC2_af_516_6 PD_aC2_af_517_6 PD_aC2_af_518_6
+ PD_aC2_af_519_6 PD_aC2_af_520_6 PD_aC2_af_521_6 PD_aC2_af_522_6 PD_aC2_af_523_6 PD_aC2_af_524_6
+ PD_aC2_af_525_6 PD_aC2_af_526_6 PD_aC2_af_527_6 PD_aC2_af_528_6 PD_aC2_af_529_6 PD_aC2_af_530_6
+ PD_aC2_af_531_6 PD_aC2_aa M2_aI1_at_50_6 M2_aI1_at_51_6 M2_aI1_at_52_6 M2_aI1_at_53_6 M2_aI1_at_54_6
+ M2_aI1_at_55_6 M2_aI1_at_56_6 M2_aI1_at_57_6 M2_aI1_at_58_6 M2_aI1_at_59_6 M2_aI1_at_510_6 M2_aI1_at_511_6
+ M2_aI1_at_512_6 M2_aI1_at_513_6 M2_aI1_at_514_6 M2_aI1_at_515_6 M2_aI1_at_516_6 M2_aI1_at_517_6
+ M2_aI1_at_518_6 M2_aI1_at_519_6 M2_aI1_at_520_6 M2_aI1_at_521_6 M2_aI1_at_522_6 M2_aI1_at_523_6
+ M2_aI1_at_524_6 M2_aI1_at_525_6 M2_aI1_at_526_6 M2_aI1_at_527_6 M2_aI1_at_528_6 M2_aI1_at_529_6
+ M2_aI1_at_530_6 M2_aI1_at_531_6 M2_aI1_af_50_6 M2_aI1_af_51_6 M2_aI1_af_52_6 M2_aI1_af_53_6 M2_aI1_af_54_6
+ M2_aI1_af_55_6 M2_aI1_af_56_6 M2_aI1_af_57_6 M2_aI1_af_58_6 M2_aI1_af_59_6 M2_aI1_af_510_6 M2_aI1_af_511_6
+ M2_aI1_af_512_6 M2_aI1_af_513_6 M2_aI1_af_514_6 M2_aI1_af_515_6 M2_aI1_af_516_6 M2_aI1_af_517_6
+ M2_aI1_af_518_6 M2_aI1_af_519_6 M2_aI1_af_520_6 M2_aI1_af_521_6 M2_aI1_af_522_6 M2_aI1_af_523_6
+ M2_aI1_af_524_6 M2_aI1_af_525_6 M2_aI1_af_526_6 M2_aI1_af_527_6 M2_aI1_af_528_6 M2_aI1_af_529_6
+ M2_aI1_af_530_6 M2_aI1_af_531_6 M2_aI1_aa PCFB32
xQR reset QR_aI_at_50_6 QR_aI_at_51_6 QR_aI_at_52_6 QR_aI_at_53_6 QR_aI_af_50_6 QR_aI_af_51_6 QR_aI_af_52_6
+ QR_aI_af_53_6 QR_aI_aa QR_aCnt0_areq QR_aCnt0_at_50_6 QR_aCnt0_at_51_6 QR_aCnt0_at_52_6 QR_aCnt0_at_53_6
+ QR_aCnt0_at_54_6 QR_aCnt0_at_55_6 QR_aCnt0_at_56_6 QR_aCnt0_at_57_6 QR_aCnt0_af_50_6 QR_aCnt0_af_51_6
+ QR_aCnt0_af_52_6 QR_aCnt0_af_53_6 QR_aCnt0_af_54_6 QR_aCnt0_af_55_6 QR_aCnt0_af_56_6 QR_aCnt0_af_57_6
+ QR_aCnt1_areq QR_aCnt1_at_50_6 QR_aCnt1_at_51_6 QR_aCnt1_at_52_6 QR_aCnt1_at_53_6 QR_aCnt1_at_54_6
+ QR_aCnt1_at_55_6 QR_aCnt1_at_56_6 QR_aCnt1_at_57_6 QR_aCnt1_af_50_6 QR_aCnt1_af_51_6 QR_aCnt1_af_52_6
+ QR_aCnt1_af_53_6 QR_aCnt1_af_54_6 QR_aCnt1_af_55_6 QR_aCnt1_af_56_6 QR_aCnt1_af_57_6 QR_aCnt2_areq
+ QR_aCnt2_at_50_6 QR_aCnt2_at_51_6 QR_aCnt2_at_52_6 QR_aCnt2_at_53_6 QR_aCnt2_at_54_6 QR_aCnt2_at_55_6
+ QR_aCnt2_at_56_6 QR_aCnt2_at_57_6 QR_aCnt2_af_50_6 QR_aCnt2_af_51_6 QR_aCnt2_af_52_6 QR_aCnt2_af_53_6
+ QR_aCnt2_af_54_6 QR_aCnt2_af_55_6 QR_aCnt2_af_56_6 QR_aCnt2_af_57_6 QR_aCnt3_areq QR_aCnt3_at_50_6
+ QR_aCnt3_at_51_6 QR_aCnt3_at_52_6 QR_aCnt3_at_53_6 QR_aCnt3_at_54_6 QR_aCnt3_at_55_6 QR_aCnt3_at_56_6
+ QR_aCnt3_at_57_6 QR_aCnt3_af_50_6 QR_aCnt3_af_51_6 QR_aCnt3_af_52_6 QR_aCnt3_af_53_6 QR_aCnt3_af_54_6
+ QR_aCnt3_af_55_6 QR_aCnt3_af_56_6 QR_aCnt3_af_57_6 QR_aOC0_at_50_6 QR_aOC0_at_51_6 QR_aOC0_at_52_6
+ QR_aOC0_at_53_6 QR_aOC0_af_50_6 QR_aOC0_af_51_6 QR_aOC0_af_52_6 QR_aOC0_af_53_6 QR_aOC0_aa QR_aOC1_at_50_6
+ QR_aOC1_at_51_6 QR_aOC1_at_52_6 QR_aOC1_at_53_6 QR_aOC1_af_50_6 QR_aOC1_af_51_6 QR_aOC1_af_52_6
+ QR_aOC1_af_53_6 QR_aOC1_aa QR_aOC2_at_50_6 QR_aOC2_at_51_6 QR_aOC2_at_52_6 QR_aOC2_at_53_6 QR_aOC2_af_50_6
+ QR_aOC2_af_51_6 QR_aOC2_af_52_6 QR_aOC2_af_53_6 QR_aOC2_aa QR_aOC3_at_50_6 QR_aOC3_at_51_6 QR_aOC3_at_52_6
+ QR_aOC3_at_53_6 QR_aOC3_af_50_6 QR_aOC3_af_51_6 QR_aOC3_af_52_6 QR_aOC3_af_53_6 QR_aOC3_aa QR_aOD0_at_50_6
+ QR_aOD0_at_51_6 QR_aOD0_at_52_6 QR_aOD0_at_53_6 QR_aOD0_af_50_6 QR_aOD0_af_51_6 QR_aOD0_af_52_6
+ QR_aOD0_af_53_6 QR_aOD0_aa QR_aOD1_at_50_6 QR_aOD1_at_51_6 QR_aOD1_at_52_6 QR_aOD1_at_53_6 QR_aOD1_af_50_6
+ QR_aOD1_af_51_6 QR_aOD1_af_52_6 QR_aOD1_af_53_6 QR_aOD1_aa QR_aOD2_at_50_6 QR_aOD2_at_51_6 QR_aOD2_at_52_6
+ QR_aOD2_at_53_6 QR_aOD2_af_50_6 QR_aOD2_af_51_6 QR_aOD2_af_52_6 QR_aOD2_af_53_6 QR_aOD2_aa QR_aOD3_at_50_6
+ QR_aOD3_at_51_6 QR_aOD3_at_52_6 QR_aOD3_at_53_6 QR_aOD3_af_50_6 QR_aOD3_af_51_6 QR_aOD3_af_52_6
+ QR_aOD3_af_53_6 QR_aOD3_aa PD_aCh_at_50_6 PD_aCh_at_51_6 PD_aCh_at_52_6 PD_aCh_at_53_6 PD_aCh_af_50_6
+ PD_aCh_af_51_6 PD_aCh_af_52_6 PD_aCh_af_53_6 PD_aCh_aa QuadRouter
xM1 M1_aI0_at_50_6 M1_aI0_at_51_6 M1_aI0_at_52_6 M1_aI0_at_53_6 M1_aI0_at_54_6 M1_aI0_at_55_6 M1_aI0_at_56_6
+ M1_aI0_at_57_6 M1_aI0_at_58_6 M1_aI0_at_59_6 M1_aI0_at_510_6 M1_aI0_at_511_6 M1_aI0_at_512_6
+ M1_aI0_at_513_6 M1_aI0_at_514_6 M1_aI0_at_515_6 M1_aI0_at_516_6 M1_aI0_at_517_6 M1_aI0_at_518_6
+ M1_aI0_at_519_6 M1_aI0_at_520_6 M1_aI0_at_521_6 M1_aI0_at_522_6 M1_aI0_at_523_6 M1_aI0_at_524_6
+ M1_aI0_at_525_6 M1_aI0_at_526_6 M1_aI0_at_527_6 M1_aI0_at_528_6 M1_aI0_at_529_6 M1_aI0_at_530_6
+ M1_aI0_at_531_6 M1_aI0_af_50_6 M1_aI0_af_51_6 M1_aI0_af_52_6 M1_aI0_af_53_6 M1_aI0_af_54_6 M1_aI0_af_55_6
+ M1_aI0_af_56_6 M1_aI0_af_57_6 M1_aI0_af_58_6 M1_aI0_af_59_6 M1_aI0_af_510_6 M1_aI0_af_511_6 M1_aI0_af_512_6
+ M1_aI0_af_513_6 M1_aI0_af_514_6 M1_aI0_af_515_6 M1_aI0_af_516_6 M1_aI0_af_517_6 M1_aI0_af_518_6
+ M1_aI0_af_519_6 M1_aI0_af_520_6 M1_aI0_af_521_6 M1_aI0_af_522_6 M1_aI0_af_523_6 M1_aI0_af_524_6
+ M1_aI0_af_525_6 M1_aI0_af_526_6 M1_aI0_af_527_6 M1_aI0_af_528_6 M1_aI0_af_529_6 M1_aI0_af_530_6
+ M1_aI0_af_531_6 M1_aI0_aa M1_aI1_at_50_6 M1_aI1_at_51_6 M1_aI1_at_52_6 M1_aI1_at_53_6 M1_aI1_at_54_6
+ M1_aI1_at_55_6 M1_aI1_at_56_6 M1_aI1_at_57_6 M1_aI1_at_58_6 M1_aI1_at_59_6 M1_aI1_at_510_6 M1_aI1_at_511_6
+ M1_aI1_at_512_6 M1_aI1_at_513_6 M1_aI1_at_514_6 M1_aI1_at_515_6 M1_aI1_at_516_6 M1_aI1_at_517_6
+ M1_aI1_at_518_6 M1_aI1_at_519_6 M1_aI1_at_520_6 M1_aI1_at_521_6 M1_aI1_at_522_6 M1_aI1_at_523_6
+ M1_aI1_at_524_6 M1_aI1_at_525_6 M1_aI1_at_526_6 M1_aI1_at_527_6 M1_aI1_at_528_6 M1_aI1_at_529_6
+ M1_aI1_at_530_6 M1_aI1_at_531_6 M1_aI1_af_50_6 M1_aI1_af_51_6 M1_aI1_af_52_6 M1_aI1_af_53_6 M1_aI1_af_54_6
+ M1_aI1_af_55_6 M1_aI1_af_56_6 M1_aI1_af_57_6 M1_aI1_af_58_6 M1_aI1_af_59_6 M1_aI1_af_510_6 M1_aI1_af_511_6
+ M1_aI1_af_512_6 M1_aI1_af_513_6 M1_aI1_af_514_6 M1_aI1_af_515_6 M1_aI1_af_516_6 M1_aI1_af_517_6
+ M1_aI1_af_518_6 M1_aI1_af_519_6 M1_aI1_af_520_6 M1_aI1_af_521_6 M1_aI1_af_522_6 M1_aI1_af_523_6
+ M1_aI1_af_524_6 M1_aI1_af_525_6 M1_aI1_af_526_6 M1_aI1_af_527_6 M1_aI1_af_528_6 M1_aI1_af_529_6
+ M1_aI1_af_530_6 M1_aI1_af_531_6 M1_aI1_aa C1_at_50_6 C1_at_51_6 C1_at_52_6 C1_at_53_6 C1_at_54_6 C1_at_55_6
+ C1_at_56_6 C1_at_57_6 C1_at_58_6 C1_at_59_6 C1_at_510_6 C1_at_511_6 C1_at_512_6 C1_at_513_6 C1_at_514_6
+ C1_at_515_6 C1_at_516_6 C1_at_517_6 C1_at_518_6 C1_at_519_6 C1_at_520_6 C1_at_521_6 C1_at_522_6 C1_at_523_6
+ C1_at_524_6 C1_at_525_6 C1_at_526_6 C1_at_527_6 C1_at_528_6 C1_at_529_6 C1_at_530_6 C1_at_531_6 C1_af_50_6
+ C1_af_51_6 C1_af_52_6 C1_af_53_6 C1_af_54_6 C1_af_55_6 C1_af_56_6 C1_af_57_6 C1_af_58_6 C1_af_59_6
+ C1_af_510_6 C1_af_511_6 C1_af_512_6 C1_af_513_6 C1_af_514_6 C1_af_515_6 C1_af_516_6 C1_af_517_6 C1_af_518_6
+ C1_af_519_6 C1_af_520_6 C1_af_521_6 C1_af_522_6 C1_af_523_6 C1_af_524_6 C1_af_525_6 C1_af_526_6 C1_af_527_6
+ C1_af_528_6 C1_af_529_6 C1_af_530_6 C1_af_531_6 C1_aa Merge_332_7t_4
xBO1 reset PD_aC1_at_50_6 PD_aC1_at_51_6 PD_aC1_at_52_6 PD_aC1_at_53_6 PD_aC1_at_54_6 PD_aC1_at_55_6
+ PD_aC1_at_56_6 PD_aC1_at_57_6 PD_aC1_at_58_6 PD_aC1_at_59_6 PD_aC1_at_510_6 PD_aC1_at_511_6 PD_aC1_at_512_6
+ PD_aC1_at_513_6 PD_aC1_at_514_6 PD_aC1_at_515_6 PD_aC1_at_516_6 PD_aC1_at_517_6 PD_aC1_at_518_6
+ PD_aC1_at_519_6 PD_aC1_at_520_6 PD_aC1_at_521_6 PD_aC1_at_522_6 PD_aC1_at_523_6 PD_aC1_at_524_6
+ PD_aC1_at_525_6 PD_aC1_at_526_6 PD_aC1_at_527_6 PD_aC1_at_528_6 PD_aC1_at_529_6 PD_aC1_at_530_6
+ PD_aC1_at_531_6 PD_aC1_af_50_6 PD_aC1_af_51_6 PD_aC1_af_52_6 PD_aC1_af_53_6 PD_aC1_af_54_6 PD_aC1_af_55_6
+ PD_aC1_af_56_6 PD_aC1_af_57_6 PD_aC1_af_58_6 PD_aC1_af_59_6 PD_aC1_af_510_6 PD_aC1_af_511_6 PD_aC1_af_512_6
+ PD_aC1_af_513_6 PD_aC1_af_514_6 PD_aC1_af_515_6 PD_aC1_af_516_6 PD_aC1_af_517_6 PD_aC1_af_518_6
+ PD_aC1_af_519_6 PD_aC1_af_520_6 PD_aC1_af_521_6 PD_aC1_af_522_6 PD_aC1_af_523_6 PD_aC1_af_524_6
+ PD_aC1_af_525_6 PD_aC1_af_526_6 PD_aC1_af_527_6 PD_aC1_af_528_6 PD_aC1_af_529_6 PD_aC1_af_530_6
+ PD_aC1_af_531_6 PD_aC1_aa M1_aI1_at_50_6 M1_aI1_at_51_6 M1_aI1_at_52_6 M1_aI1_at_53_6 M1_aI1_at_54_6
+ M1_aI1_at_55_6 M1_aI1_at_56_6 M1_aI1_at_57_6 M1_aI1_at_58_6 M1_aI1_at_59_6 M1_aI1_at_510_6 M1_aI1_at_511_6
+ M1_aI1_at_512_6 M1_aI1_at_513_6 M1_aI1_at_514_6 M1_aI1_at_515_6 M1_aI1_at_516_6 M1_aI1_at_517_6
+ M1_aI1_at_518_6 M1_aI1_at_519_6 M1_aI1_at_520_6 M1_aI1_at_521_6 M1_aI1_at_522_6 M1_aI1_at_523_6
+ M1_aI1_at_524_6 M1_aI1_at_525_6 M1_aI1_at_526_6 M1_aI1_at_527_6 M1_aI1_at_528_6 M1_aI1_at_529_6
+ M1_aI1_at_530_6 M1_aI1_at_531_6 M1_aI1_af_50_6 M1_aI1_af_51_6 M1_aI1_af_52_6 M1_aI1_af_53_6 M1_aI1_af_54_6
+ M1_aI1_af_55_6 M1_aI1_af_56_6 M1_aI1_af_57_6 M1_aI1_af_58_6 M1_aI1_af_59_6 M1_aI1_af_510_6 M1_aI1_af_511_6
+ M1_aI1_af_512_6 M1_aI1_af_513_6 M1_aI1_af_514_6 M1_aI1_af_515_6 M1_aI1_af_516_6 M1_aI1_af_517_6
+ M1_aI1_af_518_6 M1_aI1_af_519_6 M1_aI1_af_520_6 M1_aI1_af_521_6 M1_aI1_af_522_6 M1_aI1_af_523_6
+ M1_aI1_af_524_6 M1_aI1_af_525_6 M1_aI1_af_526_6 M1_aI1_af_527_6 M1_aI1_af_528_6 M1_aI1_af_529_6
+ M1_aI1_af_530_6 M1_aI1_af_531_6 M1_aI1_aa PCFB32
xBP reset BP_aL_at_50_6 BP_aL_at_51_6 BP_aL_at_52_6 BP_aL_at_53_6 BP_aL_at_54_6 BP_aL_at_55_6 BP_aL_at_56_6
+ BP_aL_at_57_6 BP_aL_at_58_6 BP_aL_at_59_6 BP_aL_at_510_6 BP_aL_at_511_6 BP_aL_at_512_6 BP_aL_at_513_6
+ BP_aL_at_514_6 BP_aL_at_515_6 BP_aL_at_516_6 BP_aL_at_517_6 BP_aL_at_518_6 BP_aL_at_519_6 BP_aL_at_520_6
+ BP_aL_at_521_6 BP_aL_at_522_6 BP_aL_at_523_6 BP_aL_at_524_6 BP_aL_at_525_6 BP_aL_at_526_6 BP_aL_at_527_6
+ BP_aL_at_528_6 BP_aL_at_529_6 BP_aL_at_530_6 BP_aL_at_531_6 BP_aL_af_50_6 BP_aL_af_51_6 BP_aL_af_52_6
+ BP_aL_af_53_6 BP_aL_af_54_6 BP_aL_af_55_6 BP_aL_af_56_6 BP_aL_af_57_6 BP_aL_af_58_6 BP_aL_af_59_6
+ BP_aL_af_510_6 BP_aL_af_511_6 BP_aL_af_512_6 BP_aL_af_513_6 BP_aL_af_514_6 BP_aL_af_515_6 BP_aL_af_516_6
+ BP_aL_af_517_6 BP_aL_af_518_6 BP_aL_af_519_6 BP_aL_af_520_6 BP_aL_af_521_6 BP_aL_af_522_6 BP_aL_af_523_6
+ BP_aL_af_524_6 BP_aL_af_525_6 BP_aL_af_526_6 BP_aL_af_527_6 BP_aL_af_528_6 BP_aL_af_529_6 BP_aL_af_530_6
+ BP_aL_af_531_6 BP_aL_aa BP_aR_at_50_6 BP_aR_at_51_6 BP_aR_at_52_6 BP_aR_at_53_6 BP_aR_at_54_6 BP_aR_at_55_6
+ BP_aR_at_56_6 BP_aR_at_57_6 BP_aR_at_58_6 BP_aR_at_59_6 BP_aR_at_510_6 BP_aR_at_511_6 BP_aR_at_512_6
+ BP_aR_at_513_6 BP_aR_at_514_6 BP_aR_at_515_6 BP_aR_at_516_6 BP_aR_at_517_6 BP_aR_at_518_6 BP_aR_at_519_6
+ BP_aR_at_520_6 BP_aR_at_521_6 BP_aR_at_522_6 BP_aR_at_523_6 BP_aR_at_524_6 BP_aR_at_525_6 BP_aR_at_526_6
+ BP_aR_at_527_6 BP_aR_at_528_6 BP_aR_at_529_6 BP_aR_at_530_6 BP_aR_at_531_6 BP_aR_af_50_6 BP_aR_af_51_6
+ BP_aR_af_52_6 BP_aR_af_53_6 BP_aR_af_54_6 BP_aR_af_55_6 BP_aR_af_56_6 BP_aR_af_57_6 BP_aR_af_58_6
+ BP_aR_af_59_6 BP_aR_af_510_6 BP_aR_af_511_6 BP_aR_af_512_6 BP_aR_af_513_6 BP_aR_af_514_6 BP_aR_af_515_6
+ BP_aR_af_516_6 BP_aR_af_517_6 BP_aR_af_518_6 BP_aR_af_519_6 BP_aR_af_520_6 BP_aR_af_521_6 BP_aR_af_522_6
+ BP_aR_af_523_6 BP_aR_af_524_6 BP_aR_af_525_6 BP_aR_af_526_6 BP_aR_af_527_6 BP_aR_af_528_6 BP_aR_af_529_6
+ BP_aR_af_530_6 BP_aR_af_531_6 BP_aR_aa PCFB32
xM0 M0_aI0_at_50_6 M0_aI0_at_51_6 M0_aI0_at_52_6 M0_aI0_at_53_6 M0_aI0_at_54_6 M0_aI0_at_55_6 M0_aI0_at_56_6
+ M0_aI0_at_57_6 M0_aI0_at_58_6 M0_aI0_at_59_6 M0_aI0_at_510_6 M0_aI0_at_511_6 M0_aI0_at_512_6
+ M0_aI0_at_513_6 M0_aI0_at_514_6 M0_aI0_at_515_6 M0_aI0_at_516_6 M0_aI0_at_517_6 M0_aI0_at_518_6
+ M0_aI0_at_519_6 M0_aI0_at_520_6 M0_aI0_at_521_6 M0_aI0_at_522_6 M0_aI0_at_523_6 M0_aI0_at_524_6
+ M0_aI0_at_525_6 M0_aI0_at_526_6 M0_aI0_at_527_6 M0_aI0_at_528_6 M0_aI0_at_529_6 M0_aI0_at_530_6
+ M0_aI0_at_531_6 M0_aI0_af_50_6 M0_aI0_af_51_6 M0_aI0_af_52_6 M0_aI0_af_53_6 M0_aI0_af_54_6 M0_aI0_af_55_6
+ M0_aI0_af_56_6 M0_aI0_af_57_6 M0_aI0_af_58_6 M0_aI0_af_59_6 M0_aI0_af_510_6 M0_aI0_af_511_6 M0_aI0_af_512_6
+ M0_aI0_af_513_6 M0_aI0_af_514_6 M0_aI0_af_515_6 M0_aI0_af_516_6 M0_aI0_af_517_6 M0_aI0_af_518_6
+ M0_aI0_af_519_6 M0_aI0_af_520_6 M0_aI0_af_521_6 M0_aI0_af_522_6 M0_aI0_af_523_6 M0_aI0_af_524_6
+ M0_aI0_af_525_6 M0_aI0_af_526_6 M0_aI0_af_527_6 M0_aI0_af_528_6 M0_aI0_af_529_6 M0_aI0_af_530_6
+ M0_aI0_af_531_6 M0_aI0_aa M0_aI1_at_50_6 M0_aI1_at_51_6 M0_aI1_at_52_6 M0_aI1_at_53_6 M0_aI1_at_54_6
+ M0_aI1_at_55_6 M0_aI1_at_56_6 M0_aI1_at_57_6 M0_aI1_at_58_6 M0_aI1_at_59_6 M0_aI1_at_510_6 M0_aI1_at_511_6
+ M0_aI1_at_512_6 M0_aI1_at_513_6 M0_aI1_at_514_6 M0_aI1_at_515_6 M0_aI1_at_516_6 M0_aI1_at_517_6
+ M0_aI1_at_518_6 M0_aI1_at_519_6 M0_aI1_at_520_6 M0_aI1_at_521_6 M0_aI1_at_522_6 M0_aI1_at_523_6
+ M0_aI1_at_524_6 M0_aI1_at_525_6 M0_aI1_at_526_6 M0_aI1_at_527_6 M0_aI1_at_528_6 M0_aI1_at_529_6
+ M0_aI1_at_530_6 M0_aI1_at_531_6 M0_aI1_af_50_6 M0_aI1_af_51_6 M0_aI1_af_52_6 M0_aI1_af_53_6 M0_aI1_af_54_6
+ M0_aI1_af_55_6 M0_aI1_af_56_6 M0_aI1_af_57_6 M0_aI1_af_58_6 M0_aI1_af_59_6 M0_aI1_af_510_6 M0_aI1_af_511_6
+ M0_aI1_af_512_6 M0_aI1_af_513_6 M0_aI1_af_514_6 M0_aI1_af_515_6 M0_aI1_af_516_6 M0_aI1_af_517_6
+ M0_aI1_af_518_6 M0_aI1_af_519_6 M0_aI1_af_520_6 M0_aI1_af_521_6 M0_aI1_af_522_6 M0_aI1_af_523_6
+ M0_aI1_af_524_6 M0_aI1_af_525_6 M0_aI1_af_526_6 M0_aI1_af_527_6 M0_aI1_af_528_6 M0_aI1_af_529_6
+ M0_aI1_af_530_6 M0_aI1_af_531_6 M0_aI1_aa C0_at_50_6 C0_at_51_6 C0_at_52_6 C0_at_53_6 C0_at_54_6 C0_at_55_6
+ C0_at_56_6 C0_at_57_6 C0_at_58_6 C0_at_59_6 C0_at_510_6 C0_at_511_6 C0_at_512_6 C0_at_513_6 C0_at_514_6
+ C0_at_515_6 C0_at_516_6 C0_at_517_6 C0_at_518_6 C0_at_519_6 C0_at_520_6 C0_at_521_6 C0_at_522_6 C0_at_523_6
+ C0_at_524_6 C0_at_525_6 C0_at_526_6 C0_at_527_6 C0_at_528_6 C0_at_529_6 C0_at_530_6 C0_at_531_6 C0_af_50_6
+ C0_af_51_6 C0_af_52_6 C0_af_53_6 C0_af_54_6 C0_af_55_6 C0_af_56_6 C0_af_57_6 C0_af_58_6 C0_af_59_6
+ C0_af_510_6 C0_af_511_6 C0_af_512_6 C0_af_513_6 C0_af_514_6 C0_af_515_6 C0_af_516_6 C0_af_517_6 C0_af_518_6
+ C0_af_519_6 C0_af_520_6 C0_af_521_6 C0_af_522_6 C0_af_523_6 C0_af_524_6 C0_af_525_6 C0_af_526_6 C0_af_527_6
+ C0_af_528_6 C0_af_529_6 C0_af_530_6 C0_af_531_6 C0_aa Merge_332_7t_4
xDS0 reset QR_aOD0_at_50_6 QR_aOD0_at_51_6 QR_aOD0_at_52_6 QR_aOD0_at_53_6 QR_aOD0_af_50_6 QR_aOD0_af_51_6
+ QR_aOD0_af_52_6 QR_aOD0_af_53_6 QR_aOD0_aa M0_aI0_at_50_6 M0_aI0_at_51_6 M0_aI0_at_52_6 M0_aI0_at_53_6
+ M0_aI0_at_54_6 M0_aI0_at_55_6 M0_aI0_at_56_6 M0_aI0_at_57_6 M0_aI0_at_58_6 M0_aI0_at_59_6 M0_aI0_at_510_6
+ M0_aI0_at_511_6 M0_aI0_at_512_6 M0_aI0_at_513_6 M0_aI0_at_514_6 M0_aI0_at_515_6 M0_aI0_at_516_6
+ M0_aI0_at_517_6 M0_aI0_at_518_6 M0_aI0_at_519_6 M0_aI0_at_520_6 M0_aI0_at_521_6 M0_aI0_at_522_6
+ M0_aI0_at_523_6 M0_aI0_at_524_6 M0_aI0_at_525_6 M0_aI0_at_526_6 M0_aI0_at_527_6 M0_aI0_at_528_6
+ M0_aI0_at_529_6 M0_aI0_at_530_6 M0_aI0_at_531_6 M0_aI0_af_50_6 M0_aI0_af_51_6 M0_aI0_af_52_6 M0_aI0_af_53_6
+ M0_aI0_af_54_6 M0_aI0_af_55_6 M0_aI0_af_56_6 M0_aI0_af_57_6 M0_aI0_af_58_6 M0_aI0_af_59_6 M0_aI0_af_510_6
+ M0_aI0_af_511_6 M0_aI0_af_512_6 M0_aI0_af_513_6 M0_aI0_af_514_6 M0_aI0_af_515_6 M0_aI0_af_516_6
+ M0_aI0_af_517_6 M0_aI0_af_518_6 M0_aI0_af_519_6 M0_aI0_af_520_6 M0_aI0_af_521_6 M0_aI0_af_522_6
+ M0_aI0_af_523_6 M0_aI0_af_524_6 M0_aI0_af_525_6 M0_aI0_af_526_6 M0_aI0_af_527_6 M0_aI0_af_528_6
+ M0_aI0_af_529_6 M0_aI0_af_530_6 M0_aI0_af_531_6 M0_aI0_aa Deserializer
xIR reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6
+ I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6
+ I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6
+ I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6
+ I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6
+ I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6
+ I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa IR_aO0_at_50_6
+ IR_aO0_at_51_6 IR_aO0_at_52_6 IR_aO0_at_53_6 IR_aO0_at_54_6 IR_aO0_at_55_6 IR_aO0_at_56_6 IR_aO0_at_57_6
+ IR_aO0_at_58_6 IR_aO0_at_59_6 IR_aO0_at_510_6 IR_aO0_at_511_6 IR_aO0_at_512_6 IR_aO0_at_513_6
+ IR_aO0_at_514_6 IR_aO0_at_515_6 IR_aO0_at_516_6 IR_aO0_at_517_6 IR_aO0_at_518_6 IR_aO0_at_519_6
+ IR_aO0_at_520_6 IR_aO0_at_521_6 IR_aO0_at_522_6 IR_aO0_at_523_6 IR_aO0_at_524_6 IR_aO0_at_525_6
+ IR_aO0_at_526_6 IR_aO0_at_527_6 IR_aO0_at_528_6 IR_aO0_at_529_6 IR_aO0_at_530_6 IR_aO0_at_531_6
+ IR_aO0_af_50_6 IR_aO0_af_51_6 IR_aO0_af_52_6 IR_aO0_af_53_6 IR_aO0_af_54_6 IR_aO0_af_55_6 IR_aO0_af_56_6
+ IR_aO0_af_57_6 IR_aO0_af_58_6 IR_aO0_af_59_6 IR_aO0_af_510_6 IR_aO0_af_511_6 IR_aO0_af_512_6
+ IR_aO0_af_513_6 IR_aO0_af_514_6 IR_aO0_af_515_6 IR_aO0_af_516_6 IR_aO0_af_517_6 IR_aO0_af_518_6
+ IR_aO0_af_519_6 IR_aO0_af_520_6 IR_aO0_af_521_6 IR_aO0_af_522_6 IR_aO0_af_523_6 IR_aO0_af_524_6
+ IR_aO0_af_525_6 IR_aO0_af_526_6 IR_aO0_af_527_6 IR_aO0_af_528_6 IR_aO0_af_529_6 IR_aO0_af_530_6
+ IR_aO0_af_531_6 IR_aO0_aa BP_aL_at_50_6 BP_aL_at_51_6 BP_aL_at_52_6 BP_aL_at_53_6 BP_aL_at_54_6
+ BP_aL_at_55_6 BP_aL_at_56_6 BP_aL_at_57_6 BP_aL_at_58_6 BP_aL_at_59_6 BP_aL_at_510_6 BP_aL_at_511_6
+ BP_aL_at_512_6 BP_aL_at_513_6 BP_aL_at_514_6 BP_aL_at_515_6 BP_aL_at_516_6 BP_aL_at_517_6 BP_aL_at_518_6
+ BP_aL_at_519_6 BP_aL_at_520_6 BP_aL_at_521_6 BP_aL_at_522_6 BP_aL_at_523_6 BP_aL_at_524_6 BP_aL_at_525_6
+ BP_aL_at_526_6 BP_aL_at_527_6 BP_aL_at_528_6 BP_aL_at_529_6 BP_aL_at_530_6 BP_aL_at_531_6 BP_aL_af_50_6
+ BP_aL_af_51_6 BP_aL_af_52_6 BP_aL_af_53_6 BP_aL_af_54_6 BP_aL_af_55_6 BP_aL_af_56_6 BP_aL_af_57_6
+ BP_aL_af_58_6 BP_aL_af_59_6 BP_aL_af_510_6 BP_aL_af_511_6 BP_aL_af_512_6 BP_aL_af_513_6 BP_aL_af_514_6
+ BP_aL_af_515_6 BP_aL_af_516_6 BP_aL_af_517_6 BP_aL_af_518_6 BP_aL_af_519_6 BP_aL_af_520_6 BP_aL_af_521_6
+ BP_aL_af_522_6 BP_aL_af_523_6 BP_aL_af_524_6 BP_aL_af_525_6 BP_aL_af_526_6 BP_aL_af_527_6 BP_aL_af_528_6
+ BP_aL_af_529_6 BP_aL_af_530_6 BP_aL_af_531_6 BP_aL_aa InputRouter
xM2 M2_aI0_at_50_6 M2_aI0_at_51_6 M2_aI0_at_52_6 M2_aI0_at_53_6 M2_aI0_at_54_6 M2_aI0_at_55_6 M2_aI0_at_56_6
+ M2_aI0_at_57_6 M2_aI0_at_58_6 M2_aI0_at_59_6 M2_aI0_at_510_6 M2_aI0_at_511_6 M2_aI0_at_512_6
+ M2_aI0_at_513_6 M2_aI0_at_514_6 M2_aI0_at_515_6 M2_aI0_at_516_6 M2_aI0_at_517_6 M2_aI0_at_518_6
+ M2_aI0_at_519_6 M2_aI0_at_520_6 M2_aI0_at_521_6 M2_aI0_at_522_6 M2_aI0_at_523_6 M2_aI0_at_524_6
+ M2_aI0_at_525_6 M2_aI0_at_526_6 M2_aI0_at_527_6 M2_aI0_at_528_6 M2_aI0_at_529_6 M2_aI0_at_530_6
+ M2_aI0_at_531_6 M2_aI0_af_50_6 M2_aI0_af_51_6 M2_aI0_af_52_6 M2_aI0_af_53_6 M2_aI0_af_54_6 M2_aI0_af_55_6
+ M2_aI0_af_56_6 M2_aI0_af_57_6 M2_aI0_af_58_6 M2_aI0_af_59_6 M2_aI0_af_510_6 M2_aI0_af_511_6 M2_aI0_af_512_6
+ M2_aI0_af_513_6 M2_aI0_af_514_6 M2_aI0_af_515_6 M2_aI0_af_516_6 M2_aI0_af_517_6 M2_aI0_af_518_6
+ M2_aI0_af_519_6 M2_aI0_af_520_6 M2_aI0_af_521_6 M2_aI0_af_522_6 M2_aI0_af_523_6 M2_aI0_af_524_6
+ M2_aI0_af_525_6 M2_aI0_af_526_6 M2_aI0_af_527_6 M2_aI0_af_528_6 M2_aI0_af_529_6 M2_aI0_af_530_6
+ M2_aI0_af_531_6 M2_aI0_aa M2_aI1_at_50_6 M2_aI1_at_51_6 M2_aI1_at_52_6 M2_aI1_at_53_6 M2_aI1_at_54_6
+ M2_aI1_at_55_6 M2_aI1_at_56_6 M2_aI1_at_57_6 M2_aI1_at_58_6 M2_aI1_at_59_6 M2_aI1_at_510_6 M2_aI1_at_511_6
+ M2_aI1_at_512_6 M2_aI1_at_513_6 M2_aI1_at_514_6 M2_aI1_at_515_6 M2_aI1_at_516_6 M2_aI1_at_517_6
+ M2_aI1_at_518_6 M2_aI1_at_519_6 M2_aI1_at_520_6 M2_aI1_at_521_6 M2_aI1_at_522_6 M2_aI1_at_523_6
+ M2_aI1_at_524_6 M2_aI1_at_525_6 M2_aI1_at_526_6 M2_aI1_at_527_6 M2_aI1_at_528_6 M2_aI1_at_529_6
+ M2_aI1_at_530_6 M2_aI1_at_531_6 M2_aI1_af_50_6 M2_aI1_af_51_6 M2_aI1_af_52_6 M2_aI1_af_53_6 M2_aI1_af_54_6
+ M2_aI1_af_55_6 M2_aI1_af_56_6 M2_aI1_af_57_6 M2_aI1_af_58_6 M2_aI1_af_59_6 M2_aI1_af_510_6 M2_aI1_af_511_6
+ M2_aI1_af_512_6 M2_aI1_af_513_6 M2_aI1_af_514_6 M2_aI1_af_515_6 M2_aI1_af_516_6 M2_aI1_af_517_6
+ M2_aI1_af_518_6 M2_aI1_af_519_6 M2_aI1_af_520_6 M2_aI1_af_521_6 M2_aI1_af_522_6 M2_aI1_af_523_6
+ M2_aI1_af_524_6 M2_aI1_af_525_6 M2_aI1_af_526_6 M2_aI1_af_527_6 M2_aI1_af_528_6 M2_aI1_af_529_6
+ M2_aI1_af_530_6 M2_aI1_af_531_6 M2_aI1_aa C2_at_50_6 C2_at_51_6 C2_at_52_6 C2_at_53_6 C2_at_54_6 C2_at_55_6
+ C2_at_56_6 C2_at_57_6 C2_at_58_6 C2_at_59_6 C2_at_510_6 C2_at_511_6 C2_at_512_6 C2_at_513_6 C2_at_514_6
+ C2_at_515_6 C2_at_516_6 C2_at_517_6 C2_at_518_6 C2_at_519_6 C2_at_520_6 C2_at_521_6 C2_at_522_6 C2_at_523_6
+ C2_at_524_6 C2_at_525_6 C2_at_526_6 C2_at_527_6 C2_at_528_6 C2_at_529_6 C2_at_530_6 C2_at_531_6 C2_af_50_6
+ C2_af_51_6 C2_af_52_6 C2_af_53_6 C2_af_54_6 C2_af_55_6 C2_af_56_6 C2_af_57_6 C2_af_58_6 C2_af_59_6
+ C2_af_510_6 C2_af_511_6 C2_af_512_6 C2_af_513_6 C2_af_514_6 C2_af_515_6 C2_af_516_6 C2_af_517_6 C2_af_518_6
+ C2_af_519_6 C2_af_520_6 C2_af_521_6 C2_af_522_6 C2_af_523_6 C2_af_524_6 C2_af_525_6 C2_af_526_6 C2_af_527_6
+ C2_af_528_6 C2_af_529_6 C2_af_530_6 C2_af_531_6 C2_aa Merge_332_7t_4
xCT0 reset QR_aOC0_at_50_6 QR_aOC0_at_51_6 QR_aOC0_at_52_6 QR_aOC0_at_53_6 QR_aOC0_af_50_6 QR_aOC0_af_51_6
+ QR_aOC0_af_52_6 QR_aOC0_af_53_6 QR_aOC0_aa QR_aCnt0_areq QR_aCnt0_at_50_6 QR_aCnt0_at_51_6 QR_aCnt0_at_52_6
+ QR_aCnt0_at_53_6 QR_aCnt0_at_54_6 QR_aCnt0_at_55_6 QR_aCnt0_at_56_6 QR_aCnt0_at_57_6 QR_aCnt0_af_50_6
+ QR_aCnt0_af_51_6 QR_aCnt0_af_52_6 QR_aCnt0_af_53_6 QR_aCnt0_af_54_6 QR_aCnt0_af_55_6 QR_aCnt0_af_56_6
+ QR_aCnt0_af_57_6 Counter
.ends
*---- end of process: MltcUnit<> -----
