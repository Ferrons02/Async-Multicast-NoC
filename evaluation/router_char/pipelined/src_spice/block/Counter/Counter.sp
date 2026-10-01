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
.subckt CounterInc reset Sa_at_50_6 Sa_at_51_6 Sa_at_52_6 Sa_at_53_6 Sa_af_50_6 Sa_af_51_6 Sa_af_52_6 Sa_af_53_6 Sb_at_50_6 Sb_at_51_6 Sb_at_52_6 Sb_at_53_6 Sb_at_54_6 Sb_at_55_6 Sb_at_56_6 Sb_at_57_6 Sb_af_50_6 Sb_af_51_6 Sb_af_52_6 Sb_af_53_6 Sb_af_54_6 Sb_af_55_6 Sb_af_56_6 Sb_af_57_6 So_at_50_6 So_at_51_6 So_at_52_6 So_at_53_6 So_at_54_6 So_at_55_6 So_at_56_6 So_at_57_6 So_af_50_6 So_af_51_6 So_af_52_6 So_af_53_6 So_af_54_6 So_af_55_6 So_af_56_6 So_af_57_6
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
xacc1 acc1_aa_at acc1_aa_af Sb_at_51_6 Sb_af_51_6 acc0_ad_at acc0_ad_af acc1_ad_at acc1_ad_af So_at_51_6 So_af_51_6 FullAdder
xacc7 acc7_aa_at acc7_aa_af Sb_at_57_6 Sb_af_57_6 acc6_ad_at acc6_ad_af acc7_ad_at acc7_ad_af So_at_57_6 So_af_57_6 FullAdder
xha23 Sa_at_52_6 Sa_af_52_6 Sa_at_53_6 Sa_af_53_6 ha23_ad_at ha23_ad_af ha23_as_at ha23_as_af HalfAdder
xha01 Sa_at_50_6 Sa_af_50_6 Sa_at_51_6 Sa_af_51_6 ha01_ad_at ha01_ad_af ha01_as_at ha01_as_af HalfAdder
xacc2 acc2_aa_at acc2_aa_af Sb_at_52_6 Sb_af_52_6 acc1_ad_at acc1_ad_af acc2_ad_at acc2_ad_af So_at_52_6 So_af_52_6 FullAdder
xacc3 acc3_aa_at acc3_aa_af Sb_at_53_6 Sb_af_53_6 acc2_ad_at acc2_ad_af acc3_ad_at acc3_ad_af So_at_53_6 So_af_53_6 FullAdder
xacc4 acc4_aa_at acc4_aa_af Sb_at_54_6 Sb_af_54_6 acc3_ad_at acc3_ad_af acc4_ad_at acc4_ad_af So_at_54_6 So_af_54_6 FullAdder
xacc6 acc6_aa_at acc6_aa_af Sb_at_56_6 Sb_af_56_6 acc5_ad_at acc5_ad_af acc6_ad_at acc6_ad_af So_at_56_6 So_af_56_6 FullAdder
xfa__high ha01_ad_at ha01_ad_af ha23_ad_at ha23_ad_af ha__sum_ad_at ha__sum_ad_af acc2_aa_at acc2_aa_af acc1_aa_at acc1_aa_af FullAdder
xha__sum ha01_as_at ha01_as_af ha23_as_at ha23_as_af ha__sum_ad_at ha__sum_ad_af acc0_aa_at acc0_aa_af HalfAdder
xacc5 acc5_aa_at acc5_aa_af Sb_at_55_6 Sb_af_55_6 acc4_ad_at acc4_ad_af acc5_ad_at acc5_ad_af So_at_55_6 So_af_55_6 FullAdder
xacc0 acc0_aa_at acc0_aa_af Sb_at_50_6 Sb_af_50_6 acc0_ac_at acc0_ac_af acc0_ad_at acc0_ad_af So_at_50_6 So_af_50_6 FullAdder
.ends
*---- end of process: CounterInc<> -----
*
*---- act defproc: CounterLogic<> -----
* raw ports:  reset I.t[0] I.t[1] I.t[2] I.t[3] I.f[0] I.f[1] I.f[2] I.f[3] I.a Cnt.req Cnt.t[0] Cnt.t[1] Cnt.t[2] Cnt.t[3] Cnt.t[4] Cnt.t[5] Cnt.t[6] Cnt.t[7] Cnt.f[0] Cnt.f[1] Cnt.f[2] Cnt.f[3] Cnt.f[4] Cnt.f[5] Cnt.f[6] Cnt.f[7] P.t[0] P.t[1] P.t[2] P.t[3] P.t[4] P.t[5] P.t[6] P.t[7] P.f[0] P.f[1] P.f[2] P.f[3] P.f[4] P.f[5] P.f[6] P.f[7] P.a Q.req Q.t[0] Q.t[1] Q.t[2] Q.t[3] Q.t[4] Q.t[5] Q.t[6] Q.t[7] Q.f[0] Q.f[1] Q.f[2] Q.f[3] Q.f[4] Q.f[5] Q.f[6] Q.f[7] Sa.t[0] Sa.t[1] Sa.t[2] Sa.t[3] Sa.f[0] Sa.f[1] Sa.f[2] Sa.f[3] Sb.t[0] Sb.t[1] Sb.t[2] Sb.t[3] Sb.t[4] Sb.t[5] Sb.t[6] Sb.t[7] Sb.f[0] Sb.f[1] Sb.f[2] Sb.f[3] Sb.f[4] Sb.f[5] Sb.f[6] Sb.f[7] So.t[0] So.t[1] So.t[2] So.t[3] So.t[4] So.t[5] So.t[6] So.t[7] So.f[0] So.f[1] So.f[2] So.f[3] So.f[4] So.f[5] So.f[6] So.f[7]
*
.subckt CounterLogic reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6 P_at_50_6 P_at_51_6 P_at_52_6 P_at_53_6 P_at_54_6 P_at_55_6 P_at_56_6 P_at_57_6 P_af_50_6 P_af_51_6 P_af_52_6 P_af_53_6 P_af_54_6 P_af_55_6 P_af_56_6 P_af_57_6 P_aa Q_areq Q_at_50_6 Q_at_51_6 Q_at_52_6 Q_at_53_6 Q_at_54_6 Q_at_55_6 Q_at_56_6 Q_at_57_6 Q_af_50_6 Q_af_51_6 Q_af_52_6 Q_af_53_6 Q_af_54_6 Q_af_55_6 Q_af_56_6 Q_af_57_6 Sa_at_50_6 Sa_at_51_6 Sa_at_52_6 Sa_at_53_6 Sa_af_50_6 Sa_af_51_6 Sa_af_52_6 Sa_af_53_6 Sb_at_50_6 Sb_at_51_6 Sb_at_52_6 Sb_at_53_6 Sb_at_54_6 Sb_at_55_6 Sb_at_56_6 Sb_at_57_6 Sb_af_50_6 Sb_af_51_6 Sb_af_52_6 Sb_af_53_6 Sb_af_54_6 Sb_af_55_6 Sb_af_56_6 Sb_af_57_6 So_at_50_6 So_at_51_6 So_at_52_6 So_at_53_6 So_at_54_6 So_at_55_6 So_at_56_6 So_at_57_6 So_af_50_6 So_af_51_6 So_af_52_6 So_af_53_6 So_af_54_6 So_af_55_6 So_af_56_6 So_af_57_6
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
.subckt Counter reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6
*.PININFO reset:I I_at_50_6:I I_at_51_6:I I_at_52_6:I I_at_53_6:I I_af_50_6:I I_af_51_6:I I_af_52_6:I I_af_53_6:I I_aa:O Cnt_areq:I Cnt_at_50_6:O Cnt_at_51_6:O Cnt_at_52_6:O Cnt_at_53_6:O Cnt_at_54_6:O Cnt_at_55_6:O Cnt_at_56_6:O Cnt_at_57_6:O Cnt_af_50_6:O Cnt_af_51_6:O Cnt_af_52_6:O Cnt_af_53_6:O Cnt_af_54_6:O Cnt_af_55_6:O Cnt_af_56_6:O Cnt_af_57_6:O
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xreg reset reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6 reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6 reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa reg_aR_areq reg_aR_at_50_6 reg_aR_at_51_6 reg_aR_at_52_6 reg_aR_at_53_6 reg_aR_at_54_6 reg_aR_at_55_6 reg_aR_at_56_6 reg_aR_at_57_6 reg_aR_af_50_6 reg_aR_af_51_6 reg_aR_af_52_6 reg_aR_af_53_6 reg_aR_af_54_6 reg_aR_af_55_6 reg_aR_af_56_6 reg_aR_af_57_6 Reg8
xinc reset inc_aSa_at_50_6 inc_aSa_at_51_6 inc_aSa_at_52_6 inc_aSa_at_53_6 inc_aSa_af_50_6 inc_aSa_af_51_6 inc_aSa_af_52_6 inc_aSa_af_53_6 inc_aSb_at_50_6 inc_aSb_at_51_6 inc_aSb_at_52_6 inc_aSb_at_53_6 inc_aSb_at_54_6 inc_aSb_at_55_6 inc_aSb_at_56_6 inc_aSb_at_57_6 inc_aSb_af_50_6 inc_aSb_af_51_6 inc_aSb_af_52_6 inc_aSb_af_53_6 inc_aSb_af_54_6 inc_aSb_af_55_6 inc_aSb_af_56_6 inc_aSb_af_57_6 inc_aSo_at_50_6 inc_aSo_at_51_6 inc_aSo_at_52_6 inc_aSo_at_53_6 inc_aSo_at_54_6 inc_aSo_at_55_6 inc_aSo_at_56_6 inc_aSo_at_57_6 inc_aSo_af_50_6 inc_aSo_af_51_6 inc_aSo_af_52_6 inc_aSo_af_53_6 inc_aSo_af_54_6 inc_aSo_af_55_6 inc_aSo_af_56_6 inc_aSo_af_57_6 CounterInc
xlogic reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6 reg_aW_at_50_6 reg_aW_at_51_6 reg_aW_at_52_6 reg_aW_at_53_6 reg_aW_at_54_6 reg_aW_at_55_6 reg_aW_at_56_6 reg_aW_at_57_6 reg_aW_af_50_6 reg_aW_af_51_6 reg_aW_af_52_6 reg_aW_af_53_6 reg_aW_af_54_6 reg_aW_af_55_6 reg_aW_af_56_6 reg_aW_af_57_6 reg_aW_aa reg_aR_areq reg_aR_at_50_6 reg_aR_at_51_6 reg_aR_at_52_6 reg_aR_at_53_6 reg_aR_at_54_6 reg_aR_at_55_6 reg_aR_at_56_6 reg_aR_at_57_6 reg_aR_af_50_6 reg_aR_af_51_6 reg_aR_af_52_6 reg_aR_af_53_6 reg_aR_af_54_6 reg_aR_af_55_6 reg_aR_af_56_6 reg_aR_af_57_6 inc_aSa_at_50_6 inc_aSa_at_51_6 inc_aSa_at_52_6 inc_aSa_at_53_6 inc_aSa_af_50_6 inc_aSa_af_51_6 inc_aSa_af_52_6 inc_aSa_af_53_6 inc_aSb_at_50_6 inc_aSb_at_51_6 inc_aSb_at_52_6 inc_aSb_at_53_6 inc_aSb_at_54_6 inc_aSb_at_55_6 inc_aSb_at_56_6 inc_aSb_at_57_6 inc_aSb_af_50_6 inc_aSb_af_51_6 inc_aSb_af_52_6 inc_aSb_af_53_6 inc_aSb_af_54_6 inc_aSb_af_55_6 inc_aSb_af_56_6 inc_aSb_af_57_6 inc_aSo_at_50_6 inc_aSo_at_51_6 inc_aSo_at_52_6 inc_aSo_at_53_6 inc_aSo_at_54_6 inc_aSo_at_55_6 inc_aSo_at_56_6 inc_aSo_at_57_6 inc_aSo_af_50_6 inc_aSo_af_51_6 inc_aSo_af_52_6 inc_aSo_af_53_6 inc_aSo_af_54_6 inc_aSo_af_55_6 inc_aSo_af_56_6 inc_aSo_af_57_6 CounterLogic
.ends
*---- end of process: Counter<> -----
