Counter: one complete ACTSIM reference round, PTM65 TT raw prs2net baseline
* I!F; I!F; I!F; Cnt?12; I!0; I!0; I!0; Cnt?0.
* VDD=1.1 V, T=27 C, lambda=32.5 nm; no additional fork RC.
* Reset PRS initializes the circuit: no .ic, .nodeset or UIC.
.include "/cad/cktbook/tech/ptm065/spice/65nm_NMOS_bulk_tt.pm"
.include "/cad/cktbook/tech/ptm065/spice/65nm_PMOS_bulk_tt.pm"
.temp 27
.param VDD_VALUE=1.1 TB_TICK=10p TB_DELAY=100p TB_EDGE=10p
.param RESET_HOLD=100n TB_STOP=2u
.param TB_IDLE_SETTLE=20n TB_IDLE_WINDOW=20n TB_IDLE_MARGIN=1n
.include "src_spice/block/Counter/Counter.sp"
.hdl "tb/block/Counter/Counter_environment.va"
.global Vdd GND
VPOWER Vdd 0 DC 'VDD_VALUE'
VRESET reset 0 PWL(0 'VDD_VALUE' 'RESET_HOLD' 'VDD_VALUE'
+ 'RESET_HOLD+TB_EDGE' 0)
XDUT reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Cnt_areq Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6
+ Cnt_at_57_6 Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6
+ Cnt_af_57_6 Counter
XENV reset I_at_50_6 I_at_51_6 I_at_52_6 I_at_53_6 I_af_50_6 I_af_51_6 I_af_52_6 I_af_53_6 I_aa
+ Cnt_at_50_6 Cnt_at_51_6 Cnt_at_52_6 Cnt_at_53_6 Cnt_at_54_6 Cnt_at_55_6 Cnt_at_56_6 Cnt_at_57_6
+ Cnt_af_50_6 Cnt_af_51_6 Cnt_af_52_6 Cnt_af_53_6 Cnt_af_54_6 Cnt_af_55_6 Cnt_af_56_6 Cnt_af_57_6
+ Cnt_areq tb_done tb_failed counter_environment
+ SUPPLY='VDD_VALUE' TICK='TB_TICK' TD='TB_DELAY' EDGE='TB_EDGE' STOP_TIME='TB_STOP'
+ IDLE_SETTLE='TB_IDLE_SETTLE' IDLE_WINDOW='TB_IDLE_WINDOW' IDLE_MARGIN='TB_IDLE_MARGIN'
.option post=2 probe
.probe tran v(reset) v(I_at_50_6) v(I_at_51_6) v(I_at_52_6) v(I_at_53_6) v(I_af_50_6) v(I_af_51_6)
+ v(I_af_52_6) v(I_af_53_6) v(I_aa) v(Cnt_areq) v(Cnt_at_50_6) v(Cnt_at_51_6) v(Cnt_at_52_6)
+ v(Cnt_at_53_6) v(Cnt_at_54_6) v(Cnt_at_55_6) v(Cnt_at_56_6) v(Cnt_at_57_6) v(Cnt_af_50_6)
+ v(Cnt_af_51_6) v(Cnt_af_52_6) v(Cnt_af_53_6) v(Cnt_af_54_6) v(Cnt_af_55_6) v(Cnt_af_56_6)
+ v(Cnt_af_57_6) v(tb_done) v(tb_failed)
+ v(Vdd) i(VPOWER)
.tran 'TB_TICK' 'TB_STOP'
.end
