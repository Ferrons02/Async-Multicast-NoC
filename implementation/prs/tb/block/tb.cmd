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
