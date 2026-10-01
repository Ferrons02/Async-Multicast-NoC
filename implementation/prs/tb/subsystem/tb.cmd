random_seed 12345
random 1 100
# Keep the extra randomized arbitration disabled (actsim event bookkeeping bug).
random_choice off
echo TB_RANDOM_CHOICE off

# Observe recovery; the runner checks data, progress, drain, and final PRS X state.
resume-on-warn
echo TB_WARNING_POLICY resume-on-warn

mode reset
set reset 1
# Allow the longest explicit fork/reset paths to settle at random delays 1..100.
advance 10000

mode run
set reset 0

# stress test
echo TB_STRESS_BEGIN (get_sim_itime)
advance 500000000
echo TB_STRESS_END (get_sim_itime)

set stop 1

advance 1000000

# Completion flags are essential: actsim can exit zero after a deadlock/warning.
echo TB_FINAL
get done
get fail
get rounds

# Transaction diagnostics. Channel IDs: C0,C1,C2,C3,M,P (unused slots are zero).
echo TB_PROGRESS_BEGIN
get issued
get tx_count
get tx_last
get tx_next
get rx_count[0]
get rx_last[0]
get rx_next[0]
get rx_count[1]
get rx_last[1]
get rx_next[1]
get rx_count[2]
get rx_last[2]
get rx_next[2]
get rx_count[3]
get rx_last[3]
get rx_next[3]
get rx_count[4]
get rx_last[4]
get rx_next[4]
get rx_count[5]
get rx_last[5]
get rx_next[5]
echo TB_PROGRESS_END

echo TB_X_BEGIN
status X
echo TB_X_END

# Also make the exact standalone invocation exit nonzero on missing/failed work.
# Switch policy only after the randomized run, drain and diagnostics are saved.
echo TB_COMPLETION_ASSERTIONS
exit-on-warn
assert done 1
assert fail 0
