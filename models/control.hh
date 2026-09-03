/*************************************************************************
PURPOSE:
    (Convert position and velocity errors into a commanded 3-axis force using PD.)

ASSUMPTIONS AND LIMITATIONS:
    (Applies proportional and derivative feedback gains on relative state errors.)

CLASS: Control

INPUTS:
    - meas_rel_pos[3] : [m]   Measured relative position vector (x, y, z)
    - meas_rel_vel[3] : [m/s] Measured relative velocity vector (x, y, z)
    - setpoint_pos[3] : [m]   Guidance target position vector (x, y, z)
    - setpoint_vel[3] : [m/s] Guidance target velocity vector (x, y, z)

OUTPUTS:
    cmd_force[3] : [N] 3-axis control force vector (x, y, z)
**************************************************************************/

#ifndef CONTROL_HH
#define CONTROL_HH
// #include <cstddef>

class Control {
public:
    // assume one gain (scalar) for all axes
    double kp_;            /* N/m Proportional gain */
    double kd_;	           /* N*s/m Derivative gain */
   	// double mass_;  // chaser; commented out bc I went w/ F=gain*error insteda of m*(gain*error)
    double max_force_;	   /* N Saturation limit per axis */ 
    bool saturated_[3];    /* -- Saturated or not */

    // living only on GncSimObject, written via the output parameter 
    // double cmd_force_[3];  /* N Commanded output force */
    
    Control(); 
    void initialize();
    void set_gains(double kp, double kd);
    // p.s. where do meas_rel_pos, vel and setpoint_pos, vel come from?
    void update(const double meas_rel_pos[3], const double meas_rel_vel[3], 
        const double setpoint_pos[3], const double setpoint_vel[3], double cmd_force[3]);
    void set_max_force(double max_force); // set via input.py

// no private?
};

#endif  // CONTROL_HH