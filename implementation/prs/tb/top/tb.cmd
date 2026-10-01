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

echo TB_X_BEGIN
status X
echo TB_X_END

echo TB_PROGRESS_BEGIN
get matched_count
get tx_count[0]
get tx_next[0]
get tx_case[0]
get rx_count[0]
get rx_last[0]
get buffered[0]
get stopped[0]
get tx_count[1]
get tx_next[1]
get tx_case[1]
get rx_count[1]
get rx_last[1]
get buffered[1]
get stopped[1]
get tx_count[2]
get tx_next[2]
get tx_case[2]
get rx_count[2]
get rx_last[2]
get buffered[2]
get stopped[2]
get tx_count[3]
get tx_next[3]
get tx_case[3]
get rx_count[3]
get rx_last[3]
get buffered[3]
get stopped[3]
get tx_count[4]
get tx_next[4]
get tx_case[4]
get rx_count[4]
get rx_last[4]
get buffered[4]
get stopped[4]
echo TB_PROGRESS_END
echo TB_COMPLETION_ASSERTIONS
exit-on-warn
assert done 1
assert fail 0
