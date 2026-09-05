################TRICK HEADER#######################################
#PURPOSE:
#  (To define the input data for simulation /RUN_nominal/
#    - chaser's initial state
#    - target's initial state
#    - hold point definitions (pos, vel, dwell times) that get passed into guidance.set_hold_points()
#    - corridor parameters (passed into guidance.set_corridor_params())
#    - abort retreat point
#    - sensor noise stdev
#    - controller gains (Kp, Kd)
#    - sim duration and integration rate
####################################################################################

#/*****************************************************************************
# Run nominal: ?
#******************************************************************************
#
#Description:
#
#Run Scenario:
#
#
#*****************************************************************************/

# Earth's gravitational parameter: μ ≈ 398,600.4 km^3/s^2
# Earth's mean equatorial radius: r~6,378.1 km
# orbital radius: r = 6,378.1 + 400 (ISS altitude) = 6,778.1 km
# assume circular orbit: v = sqrt(μ/r) ≈ 7.669 km/s 
# assume inclination (i) = 51.6 deg
# assume target is at the ascending node (orbit crosses the equatorial plane heading north)
# position vector points straight along the inertial x-axis
# pos = [r,0,0]; vel = [0,v*cos(i),v*sin(i)]

# following jeod/sims/SIM_Apollo/Modified_data/date_n_time/UTC_init.py
# initialize the time system, otherwise would get a time-type error
jeod_time.time_manager_init.initializer = "UTC"
jeod_time.time_manager_init.sim_start_format = trick.TimeEnum.calendar

jeod_time.time_tai.initialize_from_name = "UTC"
jeod_time.time_ut1.initialize_from_name = "TAI"
jeod_time.time_tt.initialize_from_name  = "TAI"
jeod_time.time_gmst.initialize_from_name = "UT1"

jeod_time.time_tai.update_from_name = "Dyn"
jeod_time.time_ut1.update_from_name = "TAI"
jeod_time.time_utc.update_from_name = "TAI"
jeod_time.time_tt.update_from_name  = "TAI"
jeod_time.time_gmst.update_from_name = "UT1"

# date doesn't matter (no ephemeris/sun/moon dependency)
jeod_time.time_utc.set_date_and_time(2026, 1, 1, 0, 0, 0.0)


# S_define's IntegLoop only wires which bodies integrate at what rate, not the algorithm itself
# copied from sims/SIM_Apollo/Modified_data/state/integrator.py
dynamics.dyn_manager_init.sim_integ_opt = trick.sim_services.Runge_Kutta_4

chaser.dyn_body.set_name("chaser")
target.dyn_body.set_name("target")

chaser.dyn_body.integ_frame_name = "Earth.inertial"
target.dyn_body.integ_frame_name = "Earth.inertial"

# default is false, i.e. jeod treats the body as kinematically fixed
chaser.dyn_body.translational_dynamics = True
target.dyn_body.translational_dynamics = True

#--- Chaser initial state ---#
# matching sims/SIM_Apollo/Modified_data/state/sv_leo_lvlh.py's pattern
chaser.trans_init.set_subject_body(chaser.dyn_body)
chaser.trans_init.reference_ref_frame_name = "Earth.inertial"
chaser.trans_init.body_frame_id = "composite_body"
chaser.trans_init.position = [6778137, -621.1, -783.7]  #~1 km separation
chaser.trans_init.velocity = [0, 4763.0, 6009.9]  #assume same vel as tgt

chaser.lvlh_init.set_subject_body(chaser.dyn_body)
chaser.lvlh_init.planet_name = "Earth"
chaser.lvlh_init.body_frame_id = "composite_body"
chaser.lvlh_init.orientation.data_source = trick.Orientation.InputEulerRotation
chaser.lvlh_init.orientation.euler_sequence = trick.Orientation.Yaw_Pitch_Roll
chaser.lvlh_init.orientation.euler_angles = [0.0, 0.0, 0.0]
chaser.lvlh_init.ang_velocity = [0.0, 0.0, 0.0]

# lvlh_rel_state is declared in s_define (jeod::LvlhRelativeDerivedState)
chaser.lvlh_rel_state.set_name("chaser_wrt_target_lvlh")
chaser.lvlh_rel_state.subject_frame_name = "chaser.composite_body"
chaser.lvlh_rel_state.target_frame_name  = "target.composite_body.Earth.lvlh"

dynamics.dyn_manager.add_body_action(chaser.trans_init)
dynamics.dyn_manager.add_body_action(chaser.lvlh_init)

# matching sims/SIM_Apollo/Modified_data/mass/ascent_module.py's pattern
chaser.mass_init.set_subject_body(chaser.dyn_body.mass)
chaser.mass_init.properties.mass = 1000.0   # trick_units(kg)
chaser.mass_init.properties.position = [0.0, 0.0, 0.0]   # com at body origin

# placeholder: this project assumes translation-only (not attitude ctrl, 
# no torque), but JEOD needs a non-singular inertia tensor to initialize.
# here values don't actually matter
chaser.mass_init.properties.inertia[0] = [10.0, 0.0, 0.0]
chaser.mass_init.properties.inertia[1] = [0.0, 10.0, 0.0]
chaser.mass_init.properties.inertia[2] = [0.0, 0.0, 10.0]
dynamics.dyn_manager.add_body_action(chaser.mass_init)

#--- Target initial state ---#
target.trans_init.set_subject_body(target.dyn_body)
target.trans_init.reference_ref_frame_name = "Earth.inertial"
target.trans_init.body_frame_id = "composite_body"
target.trans_init.position = [6778137, 0, 0]
target.trans_init.velocity = [0, 4763.0, 6009.9]

target.lvlh_init.set_subject_body(target.dyn_body)
target.lvlh_init.planet_name = "Earth"
target.lvlh_init.body_frame_id = "composite_body"
target.lvlh_init.orientation.data_source = trick.Orientation.InputEulerRotation
target.lvlh_init.orientation.euler_sequence = trick.Orientation.Yaw_Pitch_Roll
target.lvlh_init.orientation.euler_angles = [0.0, 0.0, 0.0]
target.lvlh_init.ang_velocity = [0.0, 0.0, 0.0]

target.lvlh_frame.subject_name = "target.composite_body"
target.lvlh_frame.planet_name  = "Earth"

dynamics.dyn_manager.add_body_action(target.trans_init)
dynamics.dyn_manager.add_body_action(target.lvlh_init)

target.mass_init.set_subject_body(target.dyn_body.mass)
target.mass_init.properties.mass = 450000   # kg
target.mass_init.properties.position = [0.0, 0.0, 0.0]
target.mass_init.properties.inertia[0] = [10.0, 0.0, 0.0]
target.mass_init.properties.inertia[1] = [0.0, 10.0, 0.0]
target.mass_init.properties.inertia[2] = [0.0, 0.0, 10.0]
dynamics.dyn_manager.add_body_action(target.mass_init)


#--------------------------------------------------------#
#--- Navigation/sensor configuration ---#
pos_std, vel_std =  [0.1, 0.1, 0.1], [0.01, 0.01, 0.01]
gnc.navigation.set_noise_std(pos_std, vel_std)
#gnc.navigation.set_seed(42)

#--- Guidance configuration ---#
gnc.guidance.n_hold_points_ = 3
gnc.guidance.hold_points_[0].pos_target = [-500.0, 0.0, 0.0]
gnc.guidance.hold_points_[0].vel_target = [0.0, 0.0, 0.0]
gnc.guidance.hold_points_[0].hold_duration = 60.0

gnc.guidance.hold_points_[1].pos_target = [-200.0, 0.0, 0.0]
gnc.guidance.hold_points_[1].vel_target = [0.0, 0.0, 0.0]
gnc.guidance.hold_points_[1].hold_duration = 60.0

gnc.guidance.hold_points_[2].pos_target = [-30.0, 0.0, 0.0]
gnc.guidance.hold_points_[2].vel_target = [0.0, 0.0, 0.0]
gnc.guidance.hold_points_[2].hold_duration = 60.0

# didn't work bc input.py can't reach private members
#gnc.guidance.corridor_.half_angle_rad = 0.26            # ~15 degrees
#gnc.guidance.corridor_.ellipsoid_semi_axes = [100.0, 50.0, 50.0]   # placeholder
#gnc.guidance.corridor_.use_ellipsoid = False

corridor = trick.CorridorParams()
corridor.half_angle_rad = 0.26            # ~15 degrees
corridor.ellipsoid_semi_axes = [100.0, 50.0, 50.0]   # placeholder
corridor.use_ellipsoid = False
gnc.guidance.set_corridor_params(corridor)

gnc.guidance.set_abort_retreat_point([-1000.0, 0.0, 0.0])   # m, Hill frame
pos_tol, vel_tol = 5, 0.05  # arbitrary
gnc.guidance.set_tolerances(pos_tol, vel_tol)

#--- Control configuration ---#
#kp, kd, max_force = 0.01, 0.5, 5 # arbtrary selection
kp, kd, max_force = 2, 100, 1200
gnc.control.set_gains(kp, kd)
gnc.control.set_max_force(max_force)

trick.sim_services.exec_set_terminate_time(1200)

exec(compile(open("log_data.py", "rb").read(), "log_data.py", 'exec'))