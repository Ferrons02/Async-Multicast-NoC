*
*---- act defproc: QSlicer<> -----
* raw ports:  I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] A.req O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3]
*
.subckt QSlicer I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 A_areq O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6
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
*---- act defproc: WordBuffer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O1.t[0] O1.t[1] O1.t[2] O1.t[3] O1.f[0] O1.f[1] O1.f[2] O1.f[3] O1.a O2.t[0] O2.t[1] O2.t[2] O2.t[3] O2.f[0] O2.f[1] O2.f[2] O2.f[3] O2.a O3.t[0] O3.t[1] O3.t[2] O3.t[3] O3.f[0] O3.f[1] O3.f[2] O3.f[3] O3.a O4.t[0] O4.t[1] O4.t[2] O4.t[3] O4.f[0] O4.f[1] O4.f[2] O4.f[3] O4.a O5.t[0] O5.t[1] O5.t[2] O5.t[3] O5.f[0] O5.f[1] O5.f[2] O5.f[3] O5.a O6.t[0] O6.t[1] O6.t[2] O6.t[3] O6.f[0] O6.f[1] O6.f[2] O6.f[3] O6.a O7.t[0] O7.t[1] O7.t[2] O7.t[3] O7.f[0] O7.f[1] O7.f[2] O7.f[3] O7.a
*
.subckt WordBuffer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O1_at_50_6 O1_at_51_6 O1_at_52_6 O1_at_53_6 O1_af_50_6 O1_af_51_6 O1_af_52_6 O1_af_53_6 O1_aa O2_at_50_6 O2_at_51_6 O2_at_52_6 O2_at_53_6 O2_af_50_6 O2_af_51_6 O2_af_52_6 O2_af_53_6 O2_aa O3_at_50_6 O3_at_51_6 O3_at_52_6 O3_at_53_6 O3_af_50_6 O3_af_51_6 O3_af_52_6 O3_af_53_6 O3_aa O4_at_50_6 O4_at_51_6 O4_at_52_6 O4_at_53_6 O4_af_50_6 O4_af_51_6 O4_af_52_6 O4_af_53_6 O4_aa O5_at_50_6 O5_at_51_6 O5_at_52_6 O5_at_53_6 O5_af_50_6 O5_af_51_6 O5_af_52_6 O5_af_53_6 O5_aa O6_at_50_6 O6_at_51_6 O6_at_52_6 O6_at_53_6 O6_af_50_6 O6_af_51_6 O6_af_52_6 O6_af_53_6 O6_aa O7_at_50_6 O7_at_51_6 O7_at_52_6 O7_at_53_6 O7_af_50_6 O7_af_51_6 O7_af_52_6 O7_af_53_6 O7_aa
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
.subckt Merge_34_7t_4 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
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
.subckt MergeTree7 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa I2_at_50_6 I2_at_51_6 I2_at_52_6 I2_at_53_6 I2_af_50_6 I2_af_51_6 I2_af_52_6 I2_af_53_6 I2_aa I3_at_50_6 I3_at_51_6 I3_at_52_6 I3_at_53_6 I3_af_50_6 I3_af_51_6 I3_af_52_6 I3_af_53_6 I3_aa I4_at_50_6 I4_at_51_6 I4_at_52_6 I4_at_53_6 I4_af_50_6 I4_af_51_6 I4_af_52_6 I4_af_53_6 I4_aa I5_at_50_6 I5_at_51_6 I5_at_52_6 I5_at_53_6 I5_af_50_6 I5_af_51_6 I5_af_52_6 I5_af_53_6 I5_aa I6_at_50_6 I6_at_51_6 I6_at_52_6 I6_at_53_6 I6_af_50_6 I6_af_51_6 I6_af_52_6 I6_af_53_6 I6_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
*.PININFO I0_at_50_6:I I0_at_51_6:I I0_at_52_6:I I0_at_53_6:I I0_af_50_6:I I0_af_51_6:I I0_af_52_6:I I0_af_53_6:I I0_aa:O I1_at_50_6:I I1_at_51_6:I I1_at_52_6:I I1_at_53_6:I I1_af_50_6:I I1_af_51_6:I I1_af_52_6:I I1_af_53_6:I I1_aa:O I2_at_50_6:I I2_at_51_6:I I2_at_52_6:I I2_at_53_6:I I2_af_50_6:I I2_af_51_6:I I2_af_52_6:I I2_af_53_6:I I2_aa:O I3_at_50_6:I I3_at_51_6:I I3_at_52_6:I I3_at_53_6:I I3_af_50_6:I I3_af_51_6:I I3_af_52_6:I I3_af_53_6:I I3_aa:O I4_at_50_6:I I4_at_51_6:I I4_at_52_6:I I4_at_53_6:I I4_af_50_6:I I4_af_51_6:I I4_af_52_6:I I4_af_53_6:I I4_aa:O I5_at_50_6:I I5_at_51_6:I I5_at_52_6:I I5_at_53_6:I I5_af_50_6:I I5_af_51_6:I I5_af_52_6:I I5_af_53_6:I I5_aa:O I6_at_50_6:I I6_at_51_6:I I6_at_52_6:I I6_at_53_6:I I6_af_50_6:I I6_af_51_6:I I6_af_52_6:I I6_af_53_6:I I6_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xmerge56 I4_at_50_6 I4_at_51_6 I4_at_52_6 I4_at_53_6 I4_af_50_6 I4_af_51_6 I4_af_52_6 I4_af_53_6 I4_aa I5_at_50_6 I5_at_51_6 I5_at_52_6 I5_at_53_6 I5_af_50_6 I5_af_51_6 I5_af_52_6 I5_af_53_6 I5_aa merge56_aO_at_50_6 merge56_aO_at_51_6 merge56_aO_at_52_6 merge56_aO_at_53_6 merge56_aO_af_50_6 merge56_aO_af_51_6 merge56_aO_af_52_6 merge56_aO_af_53_6 merge56_aO_aa Merge_34_7t_4
xmerge34 I2_at_50_6 I2_at_51_6 I2_at_52_6 I2_at_53_6 I2_af_50_6 I2_af_51_6 I2_af_52_6 I2_af_53_6 I2_aa I3_at_50_6 I3_at_51_6 I3_at_52_6 I3_at_53_6 I3_af_50_6 I3_af_51_6 I3_af_52_6 I3_af_53_6 I3_aa merge34_aO_at_50_6 merge34_aO_at_51_6 merge34_aO_at_52_6 merge34_aO_at_53_6 merge34_aO_af_50_6 merge34_aO_af_51_6 merge34_aO_af_52_6 merge34_aO_af_53_6 merge34_aO_aa Merge_34_7t_4
xroot root_aI0_at_50_6 root_aI0_at_51_6 root_aI0_at_52_6 root_aI0_at_53_6 root_aI0_af_50_6 root_aI0_af_51_6 root_aI0_af_52_6 root_aI0_af_53_6 root_aI0_aa root_aI1_at_50_6 root_aI1_at_51_6 root_aI1_at_52_6 root_aI1_at_53_6 root_aI1_af_50_6 root_aI1_af_51_6 root_aI1_af_52_6 root_aI1_af_53_6 root_aI1_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa Merge_34_7t_4
xmerge567 merge56_aO_at_50_6 merge56_aO_at_51_6 merge56_aO_at_52_6 merge56_aO_at_53_6 merge56_aO_af_50_6 merge56_aO_af_51_6 merge56_aO_af_52_6 merge56_aO_af_53_6 merge56_aO_aa I6_at_50_6 I6_at_51_6 I6_at_52_6 I6_at_53_6 I6_af_50_6 I6_af_51_6 I6_af_52_6 I6_af_53_6 I6_aa root_aI1_at_50_6 root_aI1_at_51_6 root_aI1_at_52_6 root_aI1_at_53_6 root_aI1_af_50_6 root_aI1_af_51_6 root_aI1_af_52_6 root_aI1_af_53_6 root_aI1_aa Merge_34_7t_4
xmerge1234 merge12_aO_at_50_6 merge12_aO_at_51_6 merge12_aO_at_52_6 merge12_aO_at_53_6 merge12_aO_af_50_6 merge12_aO_af_51_6 merge12_aO_af_52_6 merge12_aO_af_53_6 merge12_aO_aa merge34_aO_at_50_6 merge34_aO_at_51_6 merge34_aO_at_52_6 merge34_aO_at_53_6 merge34_aO_af_50_6 merge34_aO_af_51_6 merge34_aO_af_52_6 merge34_aO_af_53_6 merge34_aO_aa root_aI0_at_50_6 root_aI0_at_51_6 root_aI0_at_52_6 root_aI0_at_53_6 root_aI0_af_50_6 root_aI0_af_51_6 root_aI0_af_52_6 root_aI0_af_53_6 root_aI0_aa Merge_34_7t_4
xmerge12 I0_at_50_6 I0_at_51_6 I0_at_52_6 I0_at_53_6 I0_af_50_6 I0_af_51_6 I0_af_52_6 I0_af_53_6 I0_aa I1_at_50_6 I1_at_51_6 I1_at_52_6 I1_at_53_6 I1_af_50_6 I1_af_51_6 I1_af_52_6 I1_af_53_6 I1_aa merge12_aO_at_50_6 merge12_aO_at_51_6 merge12_aO_at_52_6 merge12_aO_at_53_6 merge12_aO_af_50_6 merge12_aO_af_51_6 merge12_aO_af_52_6 merge12_aO_af_53_6 merge12_aO_aa Merge_34_7t_4
.ends
*---- end of process: MergeTree7<> -----
*
*---- act defproc: Serializer<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.t[4] I.t[5] I.t[6] I.t[7] I.t[8] I.t[9] I.t[10] I.t[11] I.t[12] I.t[13] I.t[14] I.t[15] I.t[16] I.t[17] I.t[18] I.t[19] I.t[20] I.t[21] I.t[22] I.t[23] I.t[24] I.t[25] I.t[26] I.t[27] I.t[28] I.t[29] I.t[30] I.t[31] I.f[0] I.f[1] I.f[2] I.f[3] I.f[4] I.f[5] I.f[6] I.f[7] I.f[8] I.f[9] I.f[10] I.f[11] I.f[12] I.f[13] I.f[14] I.f[15] I.f[16] I.f[17] I.f[18] I.f[19] I.f[20] I.f[21] I.f[22] I.f[23] I.f[24] I.f[25] I.f[26] I.f[27] I.f[28] I.f[29] I.f[30] I.f[31] I.a O.t[0] O.t[1] O.t[2] O.t[3] O.f[0] O.f[1] O.f[2] O.f[3] O.a
*
.subckt Serializer reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_at_54_6:I I_at_55_6:I I_at_56_6:I I_at_57_6:I I_at_58_6:I I_at_59_6:I I_at_510_6:I I_at_511_6:I I_at_512_6:I I_at_513_6:I I_at_514_6:I I_at_515_6:I I_at_516_6:I I_at_517_6:I I_at_518_6:I I_at_519_6:I I_at_520_6:I I_at_521_6:I I_at_522_6:I I_at_523_6:I I_at_524_6:I I_at_525_6:I I_at_526_6:I I_at_527_6:I I_at_528_6:I I_at_529_6:I I_at_530_6:I I_at_531_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_af_54_6:I I_af_55_6:I I_af_56_6:I I_af_57_6:I I_af_58_6:I I_af_59_6:I I_af_510_6:I I_af_511_6:I I_af_512_6:I I_af_513_6:I I_af_514_6:I I_af_515_6:I I_af_516_6:I I_af_517_6:I I_af_518_6:I I_af_519_6:I I_af_520_6:I I_af_521_6:I I_af_522_6:I I_af_523_6:I I_af_524_6:I I_af_525_6:I I_af_526_6:I I_af_527_6:I I_af_528_6:I I_af_529_6:I I_af_530_6:I I_af_531_6:I I_aa:O O_at_50_6:O O_at_51_6:O O_at_52_6:O O_at_53_6:O O_af_50_6:O O_af_51_6:O O_af_52_6:O O_af_53_6:O O_aa:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xqs6 wb_aO6_at_50_6 wb_aO6_at_51_6 wb_aO6_at_52_6 wb_aO6_at_53_6 wb_aO6_af_50_6 wb_aO6_af_51_6 wb_aO6_af_52_6 wb_aO6_af_53_6 qs6_aA_areq qs6_aO_at_50_6 qs6_aO_at_51_6 qs6_aO_at_52_6 qs6_aO_at_53_6 qs6_aO_af_50_6 qs6_aO_af_51_6 qs6_aO_af_52_6 qs6_aO_af_53_6 QSlicer
xqs2 wb_aO2_at_50_6 wb_aO2_at_51_6 wb_aO2_at_52_6 wb_aO2_at_53_6 wb_aO2_af_50_6 wb_aO2_af_51_6 wb_aO2_af_52_6 wb_aO2_af_53_6 qs2_aA_areq qs2_aO_at_50_6 qs2_aO_at_51_6 qs2_aO_at_52_6 qs2_aO_at_53_6 qs2_aO_af_50_6 qs2_aO_af_51_6 qs2_aO_af_52_6 qs2_aO_af_53_6 QSlicer
xqs4 wb_aO4_at_50_6 wb_aO4_at_51_6 wb_aO4_at_52_6 wb_aO4_at_53_6 wb_aO4_af_50_6 wb_aO4_af_51_6 wb_aO4_af_52_6 wb_aO4_af_53_6 qs4_aA_areq qs4_aO_at_50_6 qs4_aO_at_51_6 qs4_aO_at_52_6 qs4_aO_at_53_6 qs4_aO_af_50_6 qs4_aO_af_51_6 qs4_aO_af_52_6 qs4_aO_af_53_6 QSlicer
xseq reset qs7_aA_areq wb_aO7_aa qs6_aA_areq wb_aO6_aa qs5_aA_areq wb_aO5_aa qs4_aA_areq wb_aO4_aa qs3_aA_areq wb_aO3_aa qs2_aA_areq wb_aO2_aa qs1_aA_areq wb_aO1_aa Seq7
xqs7 wb_aO7_at_50_6 wb_aO7_at_51_6 wb_aO7_at_52_6 wb_aO7_at_53_6 wb_aO7_af_50_6 wb_aO7_af_51_6 wb_aO7_af_52_6 wb_aO7_af_53_6 qs7_aA_areq qs7_aO_at_50_6 qs7_aO_at_51_6 qs7_aO_at_52_6 qs7_aO_at_53_6 qs7_aO_af_50_6 qs7_aO_af_51_6 qs7_aO_af_52_6 qs7_aO_af_53_6 QSlicer
xqs1 wb_aO1_at_50_6 wb_aO1_at_51_6 wb_aO1_at_52_6 wb_aO1_at_53_6 wb_aO1_af_50_6 wb_aO1_af_51_6 wb_aO1_af_52_6 wb_aO1_af_53_6 qs1_aA_areq qs1_aO_at_50_6 qs1_aO_at_51_6 qs1_aO_at_52_6 qs1_aO_at_53_6 qs1_aO_af_50_6 qs1_aO_af_51_6 qs1_aO_af_52_6 qs1_aO_af_53_6 QSlicer
xqs3 wb_aO3_at_50_6 wb_aO3_at_51_6 wb_aO3_at_52_6 wb_aO3_at_53_6 wb_aO3_af_50_6 wb_aO3_af_51_6 wb_aO3_af_52_6 wb_aO3_af_53_6 qs3_aA_areq qs3_aO_at_50_6 qs3_aO_at_51_6 qs3_aO_at_52_6 qs3_aO_at_53_6 qs3_aO_af_50_6 qs3_aO_af_51_6 qs3_aO_af_52_6 qs3_aO_af_53_6 QSlicer
xqs5 wb_aO5_at_50_6 wb_aO5_at_51_6 wb_aO5_at_52_6 wb_aO5_at_53_6 wb_aO5_af_50_6 wb_aO5_af_51_6 wb_aO5_af_52_6 wb_aO5_af_53_6 qs5_aA_areq qs5_aO_at_50_6 qs5_aO_at_51_6 qs5_aO_at_52_6 qs5_aO_at_53_6 qs5_aO_af_50_6 qs5_aO_af_51_6 qs5_aO_af_52_6 qs5_aO_af_53_6 QSlicer
xwb reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_at_54_6 I_at_55_6 I_at_56_6 I_at_57_6 I_at_58_6 I_at_59_6 I_at_510_6 I_at_511_6 I_at_512_6 I_at_513_6 I_at_514_6 I_at_515_6 I_at_516_6 I_at_517_6 I_at_518_6 I_at_519_6 I_at_520_6 I_at_521_6 I_at_522_6 I_at_523_6 I_at_524_6 I_at_525_6 I_at_526_6 I_at_527_6 I_at_528_6 I_at_529_6 I_at_530_6 I_at_531_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_af_54_6 I_af_55_6 I_af_56_6 I_af_57_6 I_af_58_6 I_af_59_6 I_af_510_6 I_af_511_6 I_af_512_6 I_af_513_6 I_af_514_6 I_af_515_6 I_af_516_6 I_af_517_6 I_af_518_6 I_af_519_6 I_af_520_6 I_af_521_6 I_af_522_6 I_af_523_6 I_af_524_6 I_af_525_6 I_af_526_6 I_af_527_6 I_af_528_6 I_af_529_6 I_af_530_6 I_af_531_6 I_aa wb_aO1_at_50_6 wb_aO1_at_51_6 wb_aO1_at_52_6 wb_aO1_at_53_6 wb_aO1_af_50_6 wb_aO1_af_51_6 wb_aO1_af_52_6 wb_aO1_af_53_6 wb_aO1_aa wb_aO2_at_50_6 wb_aO2_at_51_6 wb_aO2_at_52_6 wb_aO2_at_53_6 wb_aO2_af_50_6 wb_aO2_af_51_6 wb_aO2_af_52_6 wb_aO2_af_53_6 wb_aO2_aa wb_aO3_at_50_6 wb_aO3_at_51_6 wb_aO3_at_52_6 wb_aO3_at_53_6 wb_aO3_af_50_6 wb_aO3_af_51_6 wb_aO3_af_52_6 wb_aO3_af_53_6 wb_aO3_aa wb_aO4_at_50_6 wb_aO4_at_51_6 wb_aO4_at_52_6 wb_aO4_at_53_6 wb_aO4_af_50_6 wb_aO4_af_51_6 wb_aO4_af_52_6 wb_aO4_af_53_6 wb_aO4_aa wb_aO5_at_50_6 wb_aO5_at_51_6 wb_aO5_at_52_6 wb_aO5_at_53_6 wb_aO5_af_50_6 wb_aO5_af_51_6 wb_aO5_af_52_6 wb_aO5_af_53_6 wb_aO5_aa wb_aO6_at_50_6 wb_aO6_at_51_6 wb_aO6_at_52_6 wb_aO6_at_53_6 wb_aO6_af_50_6 wb_aO6_af_51_6 wb_aO6_af_52_6 wb_aO6_af_53_6 wb_aO6_aa wb_aO7_at_50_6 wb_aO7_at_51_6 wb_aO7_at_52_6 wb_aO7_at_53_6 wb_aO7_af_50_6 wb_aO7_af_51_6 wb_aO7_af_52_6 wb_aO7_af_53_6 wb_aO7_aa WordBuffer
xmerge qs1_aO_at_50_6 qs1_aO_at_51_6 qs1_aO_at_52_6 qs1_aO_at_53_6 qs1_aO_af_50_6 qs1_aO_af_51_6 qs1_aO_af_52_6 qs1_aO_af_53_6 wb_aO1_aa qs2_aO_at_50_6 qs2_aO_at_51_6 qs2_aO_at_52_6 qs2_aO_at_53_6 qs2_aO_af_50_6 qs2_aO_af_51_6 qs2_aO_af_52_6 qs2_aO_af_53_6 wb_aO2_aa qs3_aO_at_50_6 qs3_aO_at_51_6 qs3_aO_at_52_6 qs3_aO_at_53_6 qs3_aO_af_50_6 qs3_aO_af_51_6 qs3_aO_af_52_6 qs3_aO_af_53_6 wb_aO3_aa qs4_aO_at_50_6 qs4_aO_at_51_6 qs4_aO_at_52_6 qs4_aO_at_53_6 qs4_aO_af_50_6 qs4_aO_af_51_6 qs4_aO_af_52_6 qs4_aO_af_53_6 wb_aO4_aa qs5_aO_at_50_6 qs5_aO_at_51_6 qs5_aO_at_52_6 qs5_aO_at_53_6 qs5_aO_af_50_6 qs5_aO_af_51_6 qs5_aO_af_52_6 qs5_aO_af_53_6 wb_aO5_aa qs6_aO_at_50_6 qs6_aO_at_51_6 qs6_aO_at_52_6 qs6_aO_at_53_6 qs6_aO_af_50_6 qs6_aO_af_51_6 qs6_aO_af_52_6 qs6_aO_af_53_6 wb_aO6_aa qs7_aO_at_50_6 qs7_aO_at_51_6 qs7_aO_at_52_6 qs7_aO_at_53_6 qs7_aO_af_50_6 qs7_aO_af_51_6 qs7_aO_af_52_6 qs7_aO_af_53_6 wb_aO7_aa O_at_50_6 O_at_51_6 O_at_52_6 O_at_53_6 O_af_50_6 O_af_51_6 O_af_52_6 O_af_53_6 O_aa MergeTree7
.ends
*---- end of process: Serializer<> -----
