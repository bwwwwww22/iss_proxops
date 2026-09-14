################TRICK HEADER#######################################
#PURPOSE:
#   To define the input data for simulation /RUN_montecarlo/
#   shares almost everything with RUN_nominal/input.py, 
#   but adds MC dispersion declarations
####################################################################################

# adapted from https://nasa.github.io/trick/tutorial/ATutMonteCarlo
exec(open("../run_nominal/input.py").read())
trick.mc_set_enabled(1)
trick.mc_set_num_runs(50)

# Create and add a new Monte Carlo File variable to the simulation.
mcvar_pos0 = trick.MonteVarRandom("chaser.trans_init.position[0]",
    trick.MonteVarRandom.GAUSSIAN, "m")
mcvar_pos0.set_seed(1)
mcvar_pos0.set_mu(6778137)      # current run_nominal value
mcvar_pos0.set_sigma(50) # arbitrary, much smaller than mu
trick.mc_add_variable(mcvar_pos0)

mcvar_pos1 = trick.MonteVarRandom("chaser.trans_init.position[1]",
    trick.MonteVarRandom.GAUSSIAN, "m")
mcvar_pos1.set_seed(2)  
mcvar_pos1.set_mu(-621.1)
mcvar_pos1.set_sigma(50) 
trick.mc_add_variable(mcvar_pos1)

mcvar_pos2 = trick.MonteVarRandom("chaser.trans_init.position[2]",
    trick.MonteVarRandom.GAUSSIAN, "m")
mcvar_pos2.set_seed(3)
mcvar_pos2.set_mu(-783.7)          
mcvar_pos2.set_sigma(50) 
trick.mc_add_variable(mcvar_pos2)

mcvar_vel0 = trick.MonteVarRandom("chaser.trans_init.velocity[0]",
    trick.MonteVarRandom.GAUSSIAN, "m/s")
mcvar_vel0.set_seed(4)
mcvar_vel0.set_mu(0)            
mcvar_vel0.set_sigma(0.5) 
trick.mc_add_variable(mcvar_vel0)

mcvar_vel1 = trick.MonteVarRandom("chaser.trans_init.velocity[1]",
    trick.MonteVarRandom.GAUSSIAN, "m/s")
mcvar_vel1.set_seed(5)
mcvar_vel1.set_mu(4763.0)           
mcvar_vel1.set_sigma(0.5) 
trick.mc_add_variable(mcvar_vel1)

mcvar_vel2 = trick.MonteVarRandom("chaser.trans_init.velocity[2]",
    trick.MonteVarRandom.GAUSSIAN, "m/s")
mcvar_vel2.set_seed(6)
mcvar_vel2.set_mu(6009.9)           
mcvar_vel2.set_sigma(0.5) 
trick.mc_add_variable(mcvar_vel2)


trick.stop(1200)
# Stop Monte Carlo runs if they take longer than ? second of real time
trick.mc_set_timeout(10)