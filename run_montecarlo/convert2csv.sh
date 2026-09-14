for d in ../MONTE_run_montecarlo/RUN_*/; do
    /Users/bethwei/trick/bin/trick-trk2ascii -csv "${d}log_RelState.csv" "${d}log_RelState.trk"
done