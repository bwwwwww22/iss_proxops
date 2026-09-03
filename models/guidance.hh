/*************************************************************************
PURPOSE:
    (Decide where the vehicle should be trying to go and whether it's safe.)

ASSUMPTIONS AND LIMITATIONS:
    - Approach corridor can be configured as either a cone or an ellipsoid.
    - Coordinate system is assumed to be in the Hill (LVLH/V-bar) frame.

CLASS:
    - Guidance

STATE MACHINE LOGIC:
    APPROACH: setpoint = next hold point; check corridor; 
            if within tolerance -> HOLD.
    HOLD:     station-keep at hold point; check corridor; 
            once dwell time elapses -> GO_NOGO_CHECK.
    GO_NOGO:  re-check corridor; if clear -> next hold point & APPROACH; 
            if violated -> ABORT.
    ABORT:    setpoint = retreat point; once reached -> COMPLETE.
    COMPLETE: setpoint holds indefinitely.

INPUTS:
    - sim_time : current simulation time [s]
    - meas_rel_pos : relative position vector [m]
    - meas_rel_vel : relative velocity vector [m/s]

OUTPUTS:
    - setpoint_pos : target position vector [m]
    - setpoint_vel : target velocity vector [m/s]
    - state_ : current guidance state machine state

CONFIGURATION NEEDED:
    - Hold points (target pos, vel, dwell time)
    - Corridor parameters (cone angle or ellipsoid semi-axes)
    - Abort retreat point
    - Position and velocity tolerances (set via input.py)
*************************************************************************/

#ifndef GUIDANCE_HH
#define GUIDANCE_HH

#include <cstddef>

/*
 * expressed in the target's Hill frame, along the V-bar corridor
 * pos_target[3] is the relative position the chaser should station-keep at
 * vel_target[3] is nominally zero for a hold point
 */
struct HoldPoint {
    double pos_target[3];   /* m Target relative position */
    double vel_target[3];   /* m/s Target relative velocity */
    double hold_duration;   /* s Dwell time before check */
};
constexpr std::size_t MAX_HOLD_POINTS = 10; // arbirary value

/*
 * single cone or ellipsoid test around the v-bar approach axis (simplification)
 */
struct CorridorParams {
    double half_angle_rad;         /* rad Cone half-angle about approach axis */
    double ellipsoid_semi_axes[3]; /* m Ellipsoid semi-axes */
    bool use_ellipsoid;            /* -- Ellipsoid or not */
};

enum class GuidanceState {
    APPROACH,
    HOLD,
    GO_NOGO_CHECK,
    ABORT,
    COMPLETE
};

class Guidance {
public:
    Guidance();

    void set_hold_points(const HoldPoint* points, std::size_t n_points);
    void set_corridor_params(const CorridorParams& corridor);
    void set_abort_retreat_point(const double retreat_pos[3]); 
    void set_tolerances(double pos_tolerance, double vel_tolerance);

    void update(double sim_time, const double meas_rel_pos[3],
                const double meas_rel_vel[3]); // runs one state machine step
    
    // Outputs consumed by control
    void get_setpoint(double setpoint_pos[3], double setpoint_vel[3]) const;
    GuidanceState get_state() const { return state_; }

    std::size_t get_current_leg() const { return current_leg_; }
    bool get_last_corridor_violation() const { return last_corridor_violation_; }

    // made these public bc not sure if trick's input processor can reach them
    // const HoldPoint* hold_points_;  /* -- Pointer to hold points */
    // had ckpt safety issue, switched from an unowned pointer to an array that
    // stores HoldPoint structs inside Guidance
    HoldPoint hold_points_[MAX_HOLD_POINTS];  /* -- Array of hold points */
    std::size_t n_hold_points_;     /* -- Number of points */

private:
    // State machine steps: each returns the next state
    GuidanceState step_approach(double sim_time, const double rel_pos[3],
                                const double rel_vel[3]);
    GuidanceState step_hold(double sim_time, const double rel_pos[3],
                            const double rel_vel[3]);
    GuidanceState step_go_nogo_check(const double rel_pos[3]);
    GuidanceState step_abort(const double rel_pos[3]);
    void enter_abort_setpoint();   // writes retreat point into setpoint_pos_/vel_

    bool corridor_violation(const double rel_pos[3]) const;
    bool reached_setpoint(const double rel_pos[3], const double rel_vel[3],
        const double target_pos[3], double pos_tol, double vel_tol) const;

    GuidanceState state_;
    std::size_t current_leg_;       /* -- Index of current hold point */
    CorridorParams corridor_;       /* -- Corridor config */
    double abort_retreat_point_[3]; /* m Where to abort to */
    double setpoint_pos_[3];        /* m Current setpoint position */
    double setpoint_vel_[3];        /* m/s Current setpoint velocity */
    double hold_entry_time_;        /* s Sim time entering HOLD */
    bool last_corridor_violation_;

    // will be set via input.py configuration
    double pos_tolerance_;          /* m Setpoint position tolerance */
    double vel_tolerance_;          /* m/s Setpoint velocity tolerance */
};

#endif  // GUIDANCE_HH