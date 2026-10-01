*
*---- act defproc: Merge<4,f> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a
*
.subckt Merge_34_7f_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
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
.subckt CounterDec I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6
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
.subckt ChildServer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6 R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6 Od_at_50_6 Od_at_51_6 Od_at_52_6 Od_at_53_6 Od_af_50_6 Od_af_51_6 Od_af_52_6 Od_af_53_6 Od_aa Oc_at_50_6 Oc_at_51_6 Oc_at_52_6 Oc_at_53_6 Oc_af_50_6 Oc_af_51_6 Oc_af_52_6 Oc_af_53_6 Oc_aa W_at_50_6 W_at_51_6 W_at_52_6 W_at_53_6 W_at_54_6 W_at_55_6 W_at_56_6 W_at_57_6 W_af_50_6 W_af_51_6 W_af_52_6 W_af_53_6 W_af_54_6 W_af_55_6 W_af_56_6 W_af_57_6 W_aa A_areq A_aa
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
xdec dec_aI_at_50_6 dec_aI_at_51_6 dec_aI_at_52_6 dec_aI_at_53_6 dec_aI_at_54_6 dec_aI_at_55_6 dec_aI_at_56_6 dec_aI_at_57_6 dec_aI_af_50_6 dec_aI_af_51_6 dec_aI_af_52_6 dec_aI_af_53_6 dec_aI_af_54_6 dec_aI_af_55_6 dec_aI_af_56_6 dec_aI_af_57_6 dec_aO_at_50_6 dec_aO_at_51_6 dec_aO_at_52_6 dec_aO_at_53_6 dec_aO_at_54_6 dec_aO_at_55_6 dec_aO_at_56_6 dec_aO_at_57_6 dec_aO_af_50_6 dec_aO_af_51_6 dec_aO_af_52_6 dec_aO_af_53_6 dec_aO_af_54_6 dec_aO_af_55_6 dec_aO_af_56_6 dec_aO_af_57_6 CounterDec
.ends
*---- end of process: ChildServer<> -----
*
*---- act defproc: Seq7<> -----
* raw ports:  reset A0.req A0.a A1.req A1.a A2.req A2.a A3.req A3.a A4.req A4.a A5.req A5.a A6.req A6.a
*
.subckt Seq7 reset A0_areq A0_aa A1_areq A1_aa A2_areq A2_aa A3_areq A3_aa A4_areq A4_aa A5_areq A5_aa A6_areq A6_aa
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
*---- act defproc: Reg8<> -----
* raw ports:  reset W.t[0] W.t[1] W.t[2] W.t[3] W.t[4] W.t[5] W.t[6] W.t[7] W.f[0] W.f[1] W.f[2] W.f[3] W.f[4] W.f[5] W.f[6] W.f[7] W.a R.req R.t[0] R.t[1] R.t[2] R.t[3] R.t[4] R.t[5] R.t[6] R.t[7] R.f[0] R.f[1] R.f[2] R.f[3] R.f[4] R.f[5] R.f[6] R.f[7]
*
.subckt Reg8 reset W_at_50_6 W_at_51_6 W_at_52_6 W_at_53_6 W_at_54_6 W_at_55_6 W_at_56_6 W_at_57_6 W_af_50_6 W_af_51_6 W_af_52_6 W_af_53_6 W_af_54_6 W_af_55_6 W_af_56_6 W_af_57_6 W_aa R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6
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
*---- act defproc: Merge<8,f> -----
* raw ports:  I0.t[0] I0.t[1] I0.t[2] I0.t[3] I0.t[4] I0.t[5] I0.t[6] I0.t[7] I0.f[0] I0.f[1] I0.f[2] I0.f[3] I0.f[4] I0.f[5] I0.f[6] I0.f[7] I0.a I1.t[0] I1.t[1] I1.t[2] I1.t[3] I1.t[4] I1.t[5] I1.t[6] I1.t[7] I1.f[0] I1.f[1] I1.f[2] I1.f[3] I1.f[4] I1.f[5] I1.f[6] I1.f[7] I1.a O.t[0] O.t[1] O.t[2] O.t[3] O.t[4] O.t[5] O.t[6] O.t[7] O.f[0] O.f[1] O.f[2] O.f[3] O.f[4] O.f[5] O.f[6] O.f[7] O.a
*
.subckt Merge_38_7f_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_at_54_6 I0_at_55_6 I0_at_56_6 I0_at_57_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_af_54_6 I0_af_55_6 I0_af_56_6 I0_af_57_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_at_54_6 I1_at_55_6 I1_at_56_6 I1_at_57_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_af_54_6 I1_af_55_6 I1_af_56_6 I1_af_57_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_at_54_6 O_at_55_6 O_at_56_6 O_at_57_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_af_54_6 O_af_55_6 O_af_56_6 O_af_57_6 O_aa
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
.subckt QVar reset W0_at_50_6 W0_at_51_6 W0_at_52_6 W0_at_53_6 W0_at_54_6 W0_at_55_6 W0_at_56_6 W0_at_57_6 W0_af_50_6 W0_af_51_6 W0_af_52_6 W0_af_53_6 W0_af_54_6 W0_af_55_6 W0_af_56_6 W0_af_57_6 W0_aa W1_at_50_6 W1_at_51_6 W1_at_52_6 W1_at_53_6 W1_at_54_6 W1_at_55_6 W1_at_56_6 W1_at_57_6 W1_af_50_6 W1_af_51_6 W1_af_52_6 W1_af_53_6 W1_af_54_6 W1_af_55_6 W1_af_56_6 W1_af_57_6 W1_aa R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6
*.PININFO reset:I W0_at_50_6:I W0_at_51_6:I W0_at_52_6:I W0_at_53_6:I W0_at_54_6:I W0_at_55_6:I W0_at_56_6:I W0_at_57_6:I W0_af_50_6:I W0_af_51_6:I W0_af_52_6:I W0_af_53_6:I W0_af_54_6:I W0_af_55_6:I W0_af_56_6:I W0_af_57_6:I W0_aa:O W1_at_50_6:I W1_at_51_6:I W1_at_52_6:I W1_at_53_6:I W1_at_54_6:I W1_at_55_6:I W1_at_56_6:I W1_at_57_6:I W1_af_50_6:I W1_af_51_6:I W1_af_52_6:I W1_af_53_6:I W1_af_54_6:I W1_af_55_6:I W1_af_56_6:I W1_af_57_6:I W1_aa:O R_areq:I R_at_50_6:O R_at_51_6:O R_at_52_6:O R_at_53_6:O R_at_54_6:O R_at_55_6:O R_at_56_6:O R_at_57_6:O R_af_50_6:O R_af_51_6:O R_af_52_6:O R_af_53_6:O R_af_54_6:O R_af_55_6:O R_af_56_6:O R_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xreg reset reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6 reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6 reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa R_areq R_at_50_6 R_at_51_6 R_at_52_6 R_at_53_6 R_at_54_6 R_at_55_6 R_at_56_6 R_at_57_6 R_af_50_6 R_af_51_6 R_af_52_6 R_af_53_6 R_af_54_6 R_af_55_6 R_af_56_6 R_af_57_6 Reg8
xmerge W0_at_50_6 W0_at_51_6 W0_at_52_6 W0_at_53_6 W0_at_54_6 W0_at_55_6 W0_at_56_6 W0_at_57_6 W0_af_50_6 W0_af_51_6 W0_af_52_6 W0_af_53_6 W0_af_54_6 W0_af_55_6 W0_af_56_6 W0_af_57_6 W0_aa W1_at_50_6 W1_at_51_6 W1_at_52_6 W1_at_53_6 W1_at_54_6 W1_at_55_6 W1_at_56_6 W1_at_57_6 W1_af_50_6 W1_af_51_6 W1_af_52_6 W1_af_53_6 W1_af_54_6 W1_af_55_6 W1_af_56_6 W1_af_57_6 W1_aa reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6 reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6 reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa Merge_38_7f_4
.ends
*---- end of process: QVar<> -----
*
*---- act defproc: SUpdate<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Od0.t[0] Od0.t[1] Od0.t[2] Od0.t[3] Od0.f[0] Od0.f[1] Od0.f[2] Od0.f[3] Od0.a Od1.t[0] Od1.t[1] Od1.t[2] Od1.t[3] Od1.f[0] Od1.f[1] Od1.f[2] Od1.f[3] Od1.a Od2.t[0] Od2.t[1] Od2.t[2] Od2.t[3] Od2.f[0] Od2.f[1] Od2.f[2] Od2.f[3] Od2.a Od3.t[0] Od3.t[1] Od3.t[2] Od3.t[3] Od3.f[0] Od3.f[1] Od3.f[2] Od3.f[3] Od3.a W0.t[0] W0.t[1] W0.t[2] W0.t[3] W0.t[4] W0.t[5] W0.t[6] W0.t[7] W0.f[0] W0.f[1] W0.f[2] W0.f[3] W0.f[4] W0.f[5] W0.f[6] W0.f[7] W0.a W1.t[0] W1.t[1] W1.t[2] W1.t[3] W1.t[4] W1.t[5] W1.t[6] W1.t[7] W1.f[0] W1.f[1] W1.f[2] W1.f[3] W1.f[4] W1.f[5] W1.f[6] W1.f[7] W1.a W2.t[0] W2.t[1] W2.t[2] W2.t[3] W2.t[4] W2.t[5] W2.t[6] W2.t[7] W2.f[0] W2.f[1] W2.f[2] W2.f[3] W2.f[4] W2.f[5] W2.f[6] W2.f[7] W2.a W3.t[0] W3.t[1] W3.t[2] W3.t[3] W3.t[4] W3.t[5] W3.t[6] W3.t[7] W3.f[0] W3.f[1] W3.f[2] W3.f[3] W3.f[4] W3.f[5] W3.f[6] W3.f[7] W3.a Ch.t[0] Ch.t[1] Ch.t[2] Ch.t[3] Ch.f[0] Ch.f[1] Ch.f[2] Ch.f[3] Ch.a A.req A.a
*
.subckt SUpdate reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Od0_at_50_6 Od0_at_51_6 Od0_at_52_6 Od0_at_53_6 Od0_af_50_6 Od0_af_51_6 Od0_af_52_6 Od0_af_53_6 Od0_aa Od1_at_50_6 Od1_at_51_6 Od1_at_52_6 Od1_at_53_6 Od1_af_50_6 Od1_af_51_6 Od1_af_52_6 Od1_af_53_6 Od1_aa Od2_at_50_6 Od2_at_51_6 Od2_at_52_6 Od2_at_53_6 Od2_af_50_6 Od2_af_51_6 Od2_af_52_6 Od2_af_53_6 Od2_aa Od3_at_50_6 Od3_at_51_6 Od3_at_52_6 Od3_at_53_6 Od3_af_50_6 Od3_af_51_6 Od3_af_52_6 Od3_af_53_6 Od3_aa W0_at_50_6 W0_at_51_6 W0_at_52_6 W0_at_53_6 W0_at_54_6 W0_at_55_6 W0_at_56_6 W0_at_57_6 W0_af_50_6 W0_af_51_6 W0_af_52_6 W0_af_53_6 W0_af_54_6 W0_af_55_6 W0_af_56_6 W0_af_57_6 W0_aa W1_at_50_6 W1_at_51_6 W1_at_52_6 W1_at_53_6 W1_at_54_6 W1_at_55_6 W1_at_56_6 W1_at_57_6 W1_af_50_6 W1_af_51_6 W1_af_52_6 W1_af_53_6 W1_af_54_6 W1_af_55_6 W1_af_56_6 W1_af_57_6 W1_aa W2_at_50_6 W2_at_51_6 W2_at_52_6 W2_at_53_6 W2_at_54_6 W2_at_55_6 W2_at_56_6 W2_at_57_6 W2_af_50_6 W2_af_51_6 W2_af_52_6 W2_af_53_6 W2_af_54_6 W2_af_55_6 W2_af_56_6 W2_af_57_6 W2_aa W3_at_50_6 W3_at_51_6 W3_at_52_6 W3_at_53_6 W3_at_54_6 W3_at_55_6 W3_at_56_6 W3_at_57_6 W3_af_50_6 W3_af_51_6 W3_af_52_6 W3_af_53_6 W3_af_54_6 W3_af_55_6 W3_af_56_6 W3_af_57_6 W3_aa Ch_at_50_6 Ch_at_51_6 Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa A_areq A_aa
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
.subckt QuadRouter reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Cnt0_areq Cnt0_at_50_6 Cnt0_at_51_6 Cnt0_at_52_6 Cnt0_at_53_6 Cnt0_at_54_6 Cnt0_at_55_6 Cnt0_at_56_6 Cnt0_at_57_6 Cnt0_af_50_6 Cnt0_af_51_6 Cnt0_af_52_6 Cnt0_af_53_6 Cnt0_af_54_6 Cnt0_af_55_6 Cnt0_af_56_6 Cnt0_af_57_6 Cnt1_areq Cnt1_at_50_6 Cnt1_at_51_6 Cnt1_at_52_6 Cnt1_at_53_6 Cnt1_at_54_6 Cnt1_at_55_6 Cnt1_at_56_6 Cnt1_at_57_6 Cnt1_af_50_6 Cnt1_af_51_6 Cnt1_af_52_6 Cnt1_af_53_6 Cnt1_af_54_6 Cnt1_af_55_6 Cnt1_af_56_6 Cnt1_af_57_6 Cnt2_areq Cnt2_at_50_6 Cnt2_at_51_6 Cnt2_at_52_6 Cnt2_at_53_6 Cnt2_at_54_6 Cnt2_at_55_6 Cnt2_at_56_6 Cnt2_at_57_6 Cnt2_af_50_6 Cnt2_af_51_6 Cnt2_af_52_6 Cnt2_af_53_6 Cnt2_af_54_6 Cnt2_af_55_6 Cnt2_af_56_6 Cnt2_af_57_6 Cnt3_areq Cnt3_at_50_6 Cnt3_at_51_6 Cnt3_at_52_6 Cnt3_at_53_6 Cnt3_at_54_6 Cnt3_at_55_6 Cnt3_at_56_6 Cnt3_at_57_6 Cnt3_af_50_6 Cnt3_af_51_6 Cnt3_af_52_6 Cnt3_af_53_6 Cnt3_af_54_6 Cnt3_af_55_6 Cnt3_af_56_6 Cnt3_af_57_6 OC0_at_50_6 OC0_at_51_6 OC0_at_52_6 OC0_at_53_6 OC0_af_50_6 OC0_af_51_6 OC0_af_52_6 OC0_af_53_6 OC0_aa OC1_at_50_6 OC1_at_51_6 OC1_at_52_6 OC1_at_53_6 OC1_af_50_6 OC1_af_51_6 OC1_af_52_6 OC1_af_53_6 OC1_aa OC2_at_50_6 OC2_at_51_6 OC2_at_52_6 OC2_at_53_6 OC2_af_50_6 OC2_af_51_6 OC2_af_52_6 OC2_af_53_6 OC2_aa OC3_at_50_6 OC3_at_51_6 OC3_at_52_6 OC3_at_53_6 OC3_af_50_6 OC3_af_51_6 OC3_af_52_6 OC3_af_53_6 OC3_aa OD0_at_50_6 OD0_at_51_6 OD0_at_52_6 OD0_at_53_6 OD0_af_50_6 OD0_af_51_6 OD0_af_52_6 OD0_af_53_6 OD0_aa OD1_at_50_6 OD1_at_51_6 OD1_at_52_6 OD1_at_53_6 OD1_af_50_6 OD1_af_51_6 OD1_af_52_6 OD1_af_53_6 OD1_aa OD2_at_50_6 OD2_at_51_6 OD2_at_52_6 OD2_at_53_6 OD2_af_50_6 OD2_af_51_6 OD2_af_52_6 OD2_af_53_6 OD2_aa OD3_at_50_6 OD3_at_51_6 OD3_at_52_6 OD3_at_53_6 OD3_af_50_6 OD3_af_51_6 OD3_af_52_6 OD3_af_53_6 OD3_aa Ch_at_50_6 Ch_at_51_6 Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa
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
xod3 od3_aI0_at_50_6 od3_aI0_at_51_6 od3_aI0_at_52_6 od3_aI0_at_53_6 od3_aI0_af_50_6 od3_aI0_af_51_6 od3_aI0_af_52_6 od3_aI0_af_53_6 od3_aI0_aa od3_aI1_at_50_6 od3_aI1_at_51_6 od3_aI1_at_52_6 od3_aI1_at_53_6 od3_aI1_af_50_6 od3_aI1_af_51_6 od3_aI1_af_52_6 od3_aI1_af_53_6 od3_aI1_aa OD3_at_50_6 OD3_at_51_6 OD3_at_52_6 OD3_at_53_6 OD3_af_50_6 OD3_af_51_6 OD3_af_52_6 OD3_af_53_6 OD3_aa Merge_34_7f_4
xchild2 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child2_aI_aa Cnt2_areq Cnt2_at_50_6 Cnt2_at_51_6 Cnt2_at_52_6 Cnt2_at_53_6 Cnt2_at_54_6 Cnt2_at_55_6 Cnt2_at_56_6 Cnt2_at_57_6 Cnt2_af_50_6 Cnt2_af_51_6 Cnt2_af_52_6 Cnt2_af_53_6 Cnt2_af_54_6 Cnt2_af_55_6 Cnt2_af_56_6 Cnt2_af_57_6 q2_aR_areq q2_aR_at_50_6 q2_aR_at_51_6 q2_aR_at_52_6 q2_aR_at_53_6 q2_aR_at_54_6 q2_aR_at_55_6 q2_aR_at_56_6 q2_aR_at_57_6 q2_aR_af_50_6 q2_aR_af_51_6 q2_aR_af_52_6 q2_aR_af_53_6 q2_aR_af_54_6 q2_aR_af_55_6 q2_aR_af_56_6 q2_aR_af_57_6 od2_aI1_at_50_6 od2_aI1_at_51_6 od2_aI1_at_52_6 od2_aI1_at_53_6 od2_aI1_af_50_6 od2_aI1_af_51_6 od2_aI1_af_52_6 od2_aI1_af_53_6 od2_aI1_aa OC2_at_50_6 OC2_at_51_6 OC2_at_52_6 OC2_at_53_6 OC2_af_50_6 OC2_af_51_6 OC2_af_52_6 OC2_af_53_6 OC2_aa q2_aW1_at_50_6 q2_aW1_at_51_6 q2_aW1_at_52_6 q2_aW1_at_53_6 q2_aW1_at_54_6 q2_aW1_at_55_6 q2_aW1_at_56_6 q2_aW1_at_57_6 q2_aW1_af_50_6 q2_aW1_af_51_6 q2_aW1_af_52_6 q2_aW1_af_53_6 q2_aW1_af_54_6 q2_aW1_af_55_6 q2_aW1_af_56_6 q2_aW1_af_57_6 q2_aW1_aa seq_aA3_areq seq_aA3_aa ChildServer
xchild1 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child1_aI_aa Cnt1_areq Cnt1_at_50_6 Cnt1_at_51_6 Cnt1_at_52_6 Cnt1_at_53_6 Cnt1_at_54_6 Cnt1_at_55_6 Cnt1_at_56_6 Cnt1_at_57_6 Cnt1_af_50_6 Cnt1_af_51_6 Cnt1_af_52_6 Cnt1_af_53_6 Cnt1_af_54_6 Cnt1_af_55_6 Cnt1_af_56_6 Cnt1_af_57_6 q1_aR_areq q1_aR_at_50_6 q1_aR_at_51_6 q1_aR_at_52_6 q1_aR_at_53_6 q1_aR_at_54_6 q1_aR_at_55_6 q1_aR_at_56_6 q1_aR_at_57_6 q1_aR_af_50_6 q1_aR_af_51_6 q1_aR_af_52_6 q1_aR_af_53_6 q1_aR_af_54_6 q1_aR_af_55_6 q1_aR_af_56_6 q1_aR_af_57_6 od1_aI1_at_50_6 od1_aI1_at_51_6 od1_aI1_at_52_6 od1_aI1_at_53_6 od1_aI1_af_50_6 od1_aI1_af_51_6 od1_aI1_af_52_6 od1_aI1_af_53_6 od1_aI1_aa OC1_at_50_6 OC1_at_51_6 OC1_at_52_6 OC1_at_53_6 OC1_af_50_6 OC1_af_51_6 OC1_af_52_6 OC1_af_53_6 OC1_aa q1_aW1_at_50_6 q1_aW1_at_51_6 q1_aW1_at_52_6 q1_aW1_at_53_6 q1_aW1_at_54_6 q1_aW1_at_55_6 q1_aW1_at_56_6 q1_aW1_at_57_6 q1_aW1_af_50_6 q1_aW1_af_51_6 q1_aW1_af_52_6 q1_aW1_af_53_6 q1_aW1_af_54_6 q1_aW1_af_55_6 q1_aW1_af_56_6 q1_aW1_af_57_6 q1_aW1_aa seq_aA2_areq seq_aA2_aa ChildServer
xseq reset seq_aA0_areq seq_aA0_aa seq_aA1_areq seq_aA1_aa seq_aA2_areq seq_aA2_aa seq_aA3_areq seq_aA3_aa seq_aA4_areq seq_aA4_aa seq_aA5_aa seq_aA5_aa seq_aA6_aa seq_aA6_aa Seq7
xq0 reset q0_aW0_at_50_6 q0_aW0_at_51_6 q0_aW0_at_52_6 q0_aW0_at_53_6 q0_aW0_at_54_6 q0_aW0_at_55_6 q0_aW0_at_56_6 q0_aW0_at_57_6 q0_aW0_af_50_6 q0_aW0_af_51_6 q0_aW0_af_52_6 q0_aW0_af_53_6 q0_aW0_af_54_6 q0_aW0_af_55_6 q0_aW0_af_56_6 q0_aW0_af_57_6 q0_aW0_aa q0_aW1_at_50_6 q0_aW1_at_51_6 q0_aW1_at_52_6 q0_aW1_at_53_6 q0_aW1_at_54_6 q0_aW1_at_55_6 q0_aW1_at_56_6 q0_aW1_at_57_6 q0_aW1_af_50_6 q0_aW1_af_51_6 q0_aW1_af_52_6 q0_aW1_af_53_6 q0_aW1_af_54_6 q0_aW1_af_55_6 q0_aW1_af_56_6 q0_aW1_af_57_6 q0_aW1_aa q0_aR_areq q0_aR_at_50_6 q0_aR_at_51_6 q0_aR_at_52_6 q0_aR_at_53_6 q0_aR_at_54_6 q0_aR_at_55_6 q0_aR_at_56_6 q0_aR_at_57_6 q0_aR_af_50_6 q0_aR_af_51_6 q0_aR_af_52_6 q0_aR_af_53_6 q0_aR_af_54_6 q0_aR_af_55_6 q0_aR_af_56_6 q0_aR_af_57_6 QVar
xod0 od0_aI0_at_50_6 od0_aI0_at_51_6 od0_aI0_at_52_6 od0_aI0_at_53_6 od0_aI0_af_50_6 od0_aI0_af_51_6 od0_aI0_af_52_6 od0_aI0_af_53_6 od0_aI0_aa od0_aI1_at_50_6 od0_aI1_at_51_6 od0_aI1_at_52_6 od0_aI1_at_53_6 od0_aI1_af_50_6 od0_aI1_af_51_6 od0_aI1_af_52_6 od0_aI1_af_53_6 od0_aI1_aa OD0_at_50_6 OD0_at_51_6 OD0_at_52_6 OD0_at_53_6 OD0_af_50_6 OD0_af_51_6 OD0_af_52_6 OD0_af_53_6 OD0_aa Merge_34_7f_4
xod2 od2_aI0_at_50_6 od2_aI0_at_51_6 od2_aI0_at_52_6 od2_aI0_at_53_6 od2_aI0_af_50_6 od2_aI0_af_51_6 od2_aI0_af_52_6 od2_aI0_af_53_6 od2_aI0_aa od2_aI1_at_50_6 od2_aI1_at_51_6 od2_aI1_at_52_6 od2_aI1_at_53_6 od2_aI1_af_50_6 od2_aI1_af_51_6 od2_aI1_af_52_6 od2_aI1_af_53_6 od2_aI1_aa OD2_at_50_6 OD2_at_51_6 OD2_at_52_6 OD2_at_53_6 OD2_af_50_6 OD2_af_51_6 OD2_af_52_6 OD2_af_53_6 OD2_aa Merge_34_7f_4
xod1 od1_aI0_at_50_6 od1_aI0_at_51_6 od1_aI0_at_52_6 od1_aI0_at_53_6 od1_aI0_af_50_6 od1_aI0_af_51_6 od1_aI0_af_52_6 od1_aI0_af_53_6 od1_aI0_aa od1_aI1_at_50_6 od1_aI1_at_51_6 od1_aI1_at_52_6 od1_aI1_at_53_6 od1_aI1_af_50_6 od1_aI1_af_51_6 od1_aI1_af_52_6 od1_aI1_af_53_6 od1_aI1_aa OD1_at_50_6 OD1_at_51_6 OD1_at_52_6 OD1_at_53_6 OD1_af_50_6 OD1_af_51_6 OD1_af_52_6 OD1_af_53_6 OD1_aa Merge_34_7f_4
xq1 reset q1_aW0_at_50_6 q1_aW0_at_51_6 q1_aW0_at_52_6 q1_aW0_at_53_6 q1_aW0_at_54_6 q1_aW0_at_55_6 q1_aW0_at_56_6 q1_aW0_at_57_6 q1_aW0_af_50_6 q1_aW0_af_51_6 q1_aW0_af_52_6 q1_aW0_af_53_6 q1_aW0_af_54_6 q1_aW0_af_55_6 q1_aW0_af_56_6 q1_aW0_af_57_6 q1_aW0_aa q1_aW1_at_50_6 q1_aW1_at_51_6 q1_aW1_at_52_6 q1_aW1_at_53_6 q1_aW1_at_54_6 q1_aW1_at_55_6 q1_aW1_at_56_6 q1_aW1_at_57_6 q1_aW1_af_50_6 q1_aW1_af_51_6 q1_aW1_af_52_6 q1_aW1_af_53_6 q1_aW1_af_54_6 q1_aW1_af_55_6 q1_aW1_af_56_6 q1_aW1_af_57_6 q1_aW1_aa q1_aR_areq q1_aR_at_50_6 q1_aR_at_51_6 q1_aR_at_52_6 q1_aR_at_53_6 q1_aR_at_54_6 q1_aR_at_55_6 q1_aR_at_56_6 q1_aR_at_57_6 q1_aR_af_50_6 q1_aR_af_51_6 q1_aR_af_52_6 q1_aR_af_53_6 q1_aR_af_54_6 q1_aR_af_55_6 q1_aR_af_56_6 q1_aR_af_57_6 QVar
xupdate reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 update_aI_aa od0_aI0_at_50_6 od0_aI0_at_51_6 od0_aI0_at_52_6 od0_aI0_at_53_6 od0_aI0_af_50_6 od0_aI0_af_51_6 od0_aI0_af_52_6 od0_aI0_af_53_6 od0_aI0_aa od1_aI0_at_50_6 od1_aI0_at_51_6 od1_aI0_at_52_6 od1_aI0_at_53_6 od1_aI0_af_50_6 od1_aI0_af_51_6 od1_aI0_af_52_6 od1_aI0_af_53_6 od1_aI0_aa od2_aI0_at_50_6 od2_aI0_at_51_6 od2_aI0_at_52_6 od2_aI0_at_53_6 od2_aI0_af_50_6 od2_aI0_af_51_6 od2_aI0_af_52_6 od2_aI0_af_53_6 od2_aI0_aa od3_aI0_at_50_6 od3_aI0_at_51_6 od3_aI0_at_52_6 od3_aI0_at_53_6 od3_aI0_af_50_6 od3_aI0_af_51_6 od3_aI0_af_52_6 od3_aI0_af_53_6 od3_aI0_aa q0_aW0_at_50_6 q0_aW0_at_51_6 q0_aW0_at_52_6 q0_aW0_at_53_6 q0_aW0_at_54_6 q0_aW0_at_55_6 q0_aW0_at_56_6 q0_aW0_at_57_6 q0_aW0_af_50_6 q0_aW0_af_51_6 q0_aW0_af_52_6 q0_aW0_af_53_6 q0_aW0_af_54_6 q0_aW0_af_55_6 q0_aW0_af_56_6 q0_aW0_af_57_6 q0_aW0_aa q1_aW0_at_50_6 q1_aW0_at_51_6 q1_aW0_at_52_6 q1_aW0_at_53_6 q1_aW0_at_54_6 q1_aW0_at_55_6 q1_aW0_at_56_6 q1_aW0_at_57_6 q1_aW0_af_50_6 q1_aW0_af_51_6 q1_aW0_af_52_6 q1_aW0_af_53_6 q1_aW0_af_54_6 q1_aW0_af_55_6 q1_aW0_af_56_6 q1_aW0_af_57_6 q1_aW0_aa q2_aW0_at_50_6 q2_aW0_at_51_6 q2_aW0_at_52_6 q2_aW0_at_53_6 q2_aW0_at_54_6 q2_aW0_at_55_6 q2_aW0_at_56_6 q2_aW0_at_57_6 q2_aW0_af_50_6 q2_aW0_af_51_6 q2_aW0_af_52_6 q2_aW0_af_53_6 q2_aW0_af_54_6 q2_aW0_af_55_6 q2_aW0_af_56_6 q2_aW0_af_57_6 q2_aW0_aa q3_aW0_at_50_6 q3_aW0_at_51_6 q3_aW0_at_52_6 q3_aW0_at_53_6 q3_aW0_at_54_6 q3_aW0_at_55_6 q3_aW0_at_56_6 q3_aW0_at_57_6 q3_aW0_af_50_6 q3_aW0_af_51_6 q3_aW0_af_52_6 q3_aW0_af_53_6 q3_aW0_af_54_6 q3_aW0_af_55_6 q3_aW0_af_56_6 q3_aW0_af_57_6 q3_aW0_aa Ch_at_50_6 Ch_at_51_6 Ch_at_52_6 Ch_at_53_6 Ch_af_50_6 Ch_af_51_6 Ch_af_52_6 Ch_af_53_6 Ch_aa seq_aA0_areq seq_aA0_aa SUpdate
xq3 reset q3_aW0_at_50_6 q3_aW0_at_51_6 q3_aW0_at_52_6 q3_aW0_at_53_6 q3_aW0_at_54_6 q3_aW0_at_55_6 q3_aW0_at_56_6 q3_aW0_at_57_6 q3_aW0_af_50_6 q3_aW0_af_51_6 q3_aW0_af_52_6 q3_aW0_af_53_6 q3_aW0_af_54_6 q3_aW0_af_55_6 q3_aW0_af_56_6 q3_aW0_af_57_6 q3_aW0_aa q3_aW1_at_50_6 q3_aW1_at_51_6 q3_aW1_at_52_6 q3_aW1_at_53_6 q3_aW1_at_54_6 q3_aW1_at_55_6 q3_aW1_at_56_6 q3_aW1_at_57_6 q3_aW1_af_50_6 q3_aW1_af_51_6 q3_aW1_af_52_6 q3_aW1_af_53_6 q3_aW1_af_54_6 q3_aW1_af_55_6 q3_aW1_af_56_6 q3_aW1_af_57_6 q3_aW1_aa q3_aR_areq q3_aR_at_50_6 q3_aR_at_51_6 q3_aR_at_52_6 q3_aR_at_53_6 q3_aR_at_54_6 q3_aR_at_55_6 q3_aR_at_56_6 q3_aR_at_57_6 q3_aR_af_50_6 q3_aR_af_51_6 q3_aR_af_52_6 q3_aR_af_53_6 q3_aR_af_54_6 q3_aR_af_55_6 q3_aR_af_56_6 q3_aR_af_57_6 QVar
xq2 reset q2_aW0_at_50_6 q2_aW0_at_51_6 q2_aW0_at_52_6 q2_aW0_at_53_6 q2_aW0_at_54_6 q2_aW0_at_55_6 q2_aW0_at_56_6 q2_aW0_at_57_6 q2_aW0_af_50_6 q2_aW0_af_51_6 q2_aW0_af_52_6 q2_aW0_af_53_6 q2_aW0_af_54_6 q2_aW0_af_55_6 q2_aW0_af_56_6 q2_aW0_af_57_6 q2_aW0_aa q2_aW1_at_50_6 q2_aW1_at_51_6 q2_aW1_at_52_6 q2_aW1_at_53_6 q2_aW1_at_54_6 q2_aW1_at_55_6 q2_aW1_at_56_6 q2_aW1_at_57_6 q2_aW1_af_50_6 q2_aW1_af_51_6 q2_aW1_af_52_6 q2_aW1_af_53_6 q2_aW1_af_54_6 q2_aW1_af_55_6 q2_aW1_af_56_6 q2_aW1_af_57_6 q2_aW1_aa q2_aR_areq q2_aR_at_50_6 q2_aR_at_51_6 q2_aR_at_52_6 q2_aR_at_53_6 q2_aR_at_54_6 q2_aR_at_55_6 q2_aR_at_56_6 q2_aR_at_57_6 q2_aR_af_50_6 q2_aR_af_51_6 q2_aR_af_52_6 q2_aR_af_53_6 q2_aR_af_54_6 q2_aR_af_55_6 q2_aR_af_56_6 q2_aR_af_57_6 QVar
xchild0 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child0_aI_aa Cnt0_areq Cnt0_at_50_6 Cnt0_at_51_6 Cnt0_at_52_6 Cnt0_at_53_6 Cnt0_at_54_6 Cnt0_at_55_6 Cnt0_at_56_6 Cnt0_at_57_6 Cnt0_af_50_6 Cnt0_af_51_6 Cnt0_af_52_6 Cnt0_af_53_6 Cnt0_af_54_6 Cnt0_af_55_6 Cnt0_af_56_6 Cnt0_af_57_6 q0_aR_areq q0_aR_at_50_6 q0_aR_at_51_6 q0_aR_at_52_6 q0_aR_at_53_6 q0_aR_at_54_6 q0_aR_at_55_6 q0_aR_at_56_6 q0_aR_at_57_6 q0_aR_af_50_6 q0_aR_af_51_6 q0_aR_af_52_6 q0_aR_af_53_6 q0_aR_af_54_6 q0_aR_af_55_6 q0_aR_af_56_6 q0_aR_af_57_6 od0_aI1_at_50_6 od0_aI1_at_51_6 od0_aI1_at_52_6 od0_aI1_at_53_6 od0_aI1_af_50_6 od0_aI1_af_51_6 od0_aI1_af_52_6 od0_aI1_af_53_6 od0_aI1_aa OC0_at_50_6 OC0_at_51_6 OC0_at_52_6 OC0_at_53_6 OC0_af_50_6 OC0_af_51_6 OC0_af_52_6 OC0_af_53_6 OC0_aa q0_aW1_at_50_6 q0_aW1_at_51_6 q0_aW1_at_52_6 q0_aW1_at_53_6 q0_aW1_at_54_6 q0_aW1_at_55_6 q0_aW1_at_56_6 q0_aW1_at_57_6 q0_aW1_af_50_6 q0_aW1_af_51_6 q0_aW1_af_52_6 q0_aW1_af_53_6 q0_aW1_af_54_6 q0_aW1_af_55_6 q0_aW1_af_56_6 q0_aW1_af_57_6 q0_aW1_aa seq_aA1_areq seq_aA1_aa ChildServer
xchild3 reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 child3_aI_aa Cnt3_areq Cnt3_at_50_6 Cnt3_at_51_6 Cnt3_at_52_6 Cnt3_at_53_6 Cnt3_at_54_6 Cnt3_at_55_6 Cnt3_at_56_6 Cnt3_at_57_6 Cnt3_af_50_6 Cnt3_af_51_6 Cnt3_af_52_6 Cnt3_af_53_6 Cnt3_af_54_6 Cnt3_af_55_6 Cnt3_af_56_6 Cnt3_af_57_6 q3_aR_areq q3_aR_at_50_6 q3_aR_at_51_6 q3_aR_at_52_6 q3_aR_at_53_6 q3_aR_at_54_6 q3_aR_at_55_6 q3_aR_at_56_6 q3_aR_at_57_6 q3_aR_af_50_6 q3_aR_af_51_6 q3_aR_af_52_6 q3_aR_af_53_6 q3_aR_af_54_6 q3_aR_af_55_6 q3_aR_af_56_6 q3_aR_af_57_6 od3_aI1_at_50_6 od3_aI1_at_51_6 od3_aI1_at_52_6 od3_aI1_at_53_6 od3_aI1_af_50_6 od3_aI1_af_51_6 od3_aI1_af_52_6 od3_aI1_af_53_6 od3_aI1_aa OC3_at_50_6 OC3_at_51_6 OC3_at_52_6 OC3_at_53_6 OC3_af_50_6 OC3_af_51_6 OC3_af_52_6 OC3_af_53_6 OC3_aa q3_aW1_at_50_6 q3_aW1_at_51_6 q3_aW1_at_52_6 q3_aW1_at_53_6 q3_aW1_at_54_6 q3_aW1_at_55_6 q3_aW1_at_56_6 q3_aW1_at_57_6 q3_aW1_af_50_6 q3_aW1_af_51_6 q3_aW1_af_52_6 q3_aW1_af_53_6 q3_aW1_af_54_6 q3_aW1_af_55_6 q3_aW1_af_56_6 q3_aW1_af_57_6 q3_aW1_aa seq_aA4_areq seq_aA4_aa ChildServer
.ends
*---- end of process: QuadRouter<> -----
