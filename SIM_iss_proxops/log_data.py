################TRICK HEADER###################################
#PURPOSE:
# Tells Trick which variables to write to disk each timestep
# Needs: a Trick DR_GROUP (data recording group), listing the 
# truth and measured pos/vel, guidance state, setpoint,
# cmd force, and current hold-point index, etc
###############################################################

# following trick/models/dynamics/derived_state/verif/SIM_LvlhRelative/Log_data/log_data.py

def log_3_vec(drg, var):
    for ii in range(3):
        drg.add_variable(var+"["+str(ii)+"]")

drg1 = trick.sim_services.DRBinary("RelState")
drg1.set_cycle(1)
drg1.freq = trick.sim_services.DR_Always   # instead of DR_Changes or DR_Changes_Step

# Add truth and measured state variables 
log_3_vec(drg1, "chaser.lvlh_rel_state.rel_state.trans.position")
log_3_vec(drg1, "chaser.lvlh_rel_state.rel_state.trans.velocity")

log_3_vec(drg1, "gnc.meas_rel_pos")
log_3_vec(drg1, "gnc.meas_rel_vel")

# guidance variables
log_3_vec(drg1, "gnc.setpoint_pos")
log_3_vec(drg1, "gnc.setpoint_vel")
drg1.add_variable("gnc.guidance.state_")
drg1.add_variable("gnc.guidance.current_leg_")

# control/actuation variables
log_3_vec(drg1, "gnc.cmd_force")
log_3_vec(drg1, "gnc.control.saturated_")

# register the group with trick
trick.add_data_record_group(drg1)


