#include "guidance.hh"
#include <cmath>
#include <cstring>
#include <algorithm>

Guidance::Guidance()
    : // hold_points_(nullptr), // not needed anymore bc fixed-size array doesn't take pointer initializer
      n_hold_points_(0), // moved up bc made public
      state_(GuidanceState::APPROACH),
      current_leg_(0),
      corridor_(),
      hold_entry_time_(0.0),
      last_corridor_violation_(false),
      pos_tolerance_(0.5), 
      vel_tolerance_(0.02) 
{
    std::memset(setpoint_pos_, 0, sizeof(setpoint_pos_));
    std::memset(setpoint_vel_, 0, sizeof(setpoint_vel_));
    std::memset(abort_retreat_point_, 0, sizeof(abort_retreat_point_));
}

// Public functions
void Guidance::set_hold_points(const HoldPoint* points, std::size_t n_points) {
   //hold_points_ = points;
   // copy-in instead of a pointer assignment
    n_points = std::min(n_points, MAX_HOLD_POINTS);
    for (std::size_t i = 0; i < n_points; ++i) {
        hold_points_[i] = points[i];
    }
    n_hold_points_ = n_points;
    current_leg_ = 0;
}

void Guidance::set_corridor_params(const CorridorParams& corridor) {
    corridor_ = corridor;
}

void Guidance::set_abort_retreat_point(const double retreat_pos[3]) {
    // can't do abort_retreat_point_ = retreat_pos;
    std::memcpy(abort_retreat_point_, retreat_pos, sizeof(abort_retreat_point_));
}

void Guidance::set_tolerances(double pos_tolerance, double vel_tolerance) {
    pos_tolerance_ = pos_tolerance;
    vel_tolerance_ = vel_tolerance;
}

void Guidance::update(double sim_time, const double meas_rel_pos[3], 
    const double meas_rel_vel[3]) { 
    // runs one state machine step
    switch (state_) {
        case GuidanceState::APPROACH:
            state_ = step_approach(sim_time, meas_rel_pos, meas_rel_vel);
            break;
        case GuidanceState::HOLD:
            state_ = step_hold(sim_time, meas_rel_pos, meas_rel_vel);
            break;
        case GuidanceState::GO_NOGO_CHECK:
            state_ = step_go_nogo_check(meas_rel_pos);
            break;
        case GuidanceState::ABORT:
            state_ = step_abort(meas_rel_pos);
            break;
        case GuidanceState::COMPLETE:
            // setpoint frozen at last hold point
            break;
    }
}

void Guidance::get_setpoint(double setpoint_pos[3], double setpoint_vel[3]) const {
    std::memcpy(setpoint_pos, setpoint_pos_, sizeof(setpoint_pos_));
    std::memcpy(setpoint_vel, setpoint_vel_, sizeof(setpoint_vel_));
}

// Private state step methods
GuidanceState Guidance::step_approach(double sim_time, const double rel_pos[3], 
    const double rel_vel[3]) {
    if (current_leg_ >= n_hold_points_) {
        return GuidanceState::COMPLETE;  // no more hold points
    }

    const HoldPoint& target = hold_points_[current_leg_]; // get ref to current tgt

    // get_setpoint will read setpoint_pos_ and copy to gnc.setpoint_pos,
    // which the controller will read as input
    std::memcpy(setpoint_pos_, target.pos_target, sizeof(setpoint_pos_));
    std::memcpy(setpoint_vel_, target.vel_target, sizeof(setpoint_vel_));

    if (corridor_violation(rel_pos)) {
        last_corridor_violation_ = true;
        // writes the abort retreat point into setpoint_pos_ & vel_,
        // so this cycle's get_setpoint() already reflects it
        enter_abort_setpoint();
        return GuidanceState::ABORT;
    }

    if (reached_setpoint(rel_pos, rel_vel, target.pos_target, pos_tolerance_, vel_tolerance_)) {
        hold_entry_time_ = sim_time; // mark when HOLD, for dwell timing
        return GuidanceState::HOLD;
    }

    // otherwise: still traveling
    return GuidanceState::APPROACH;
}

GuidanceState Guidance::step_hold(double sim_time, const double rel_pos[3], const double rel_vel[3]) {
    if (corridor_violation(rel_pos)) {
        last_corridor_violation_ = true;
        enter_abort_setpoint();
        return GuidanceState::ABORT;
    }
    
    const HoldPoint& target = hold_points_[current_leg_];
    if ((sim_time - hold_entry_time_) >= target.hold_duration) { // check dwell time 
        return GuidanceState::GO_NOGO_CHECK;
    }
    // otherwise, keep waiting
    return GuidanceState::HOLD;
}

GuidanceState Guidance::step_go_nogo_check(const double rel_pos[3]) {
    if (corridor_violation(rel_pos)) { // no go
        last_corridor_violation_ = true;
        enter_abort_setpoint();
        return GuidanceState::ABORT;
    }
  
    // go
    last_corridor_violation_ = false;
    ++current_leg_; // move to next hold point
    if (current_leg_ >= n_hold_points_) {
        return GuidanceState::COMPLETE; // last leg
    }

    const HoldPoint& next = hold_points_[current_leg_];
    std::memcpy(setpoint_pos_, next.pos_target, sizeof(setpoint_pos_));
    std::memcpy(setpoint_vel_, next.vel_target, sizeof(setpoint_vel_));

    return GuidanceState::APPROACH;  // go chase the next hold point
}

void Guidance::enter_abort_setpoint() {
    std::memcpy(setpoint_pos_, abort_retreat_point_, sizeof(setpoint_pos_));
    setpoint_vel_[0] = setpoint_vel_[1] = setpoint_vel_[2] = 0.0;
}

GuidanceState Guidance::step_abort(const double rel_pos[3]) {
    // alt: std::memcpy(setpoint_pos_, abort_retreat_point_, sizeof(setpoint_pos_));
    // alt: setpoint_vel_[0] = setpoint_vel_[1] = setpoint_vel_[2] = 0.0; // all zeros (stationary tgt)
    enter_abort_setpoint();

    if (reached_setpoint(rel_pos, nullptr, abort_retreat_point_, pos_tolerance_, 1e8)) {
        // nullptr for velocity (don't care about vel tolerance on abort)
        // but make sure reach_setpoint handles that
        // 1e8 is just an arbitrary, large number
        return GuidanceState::COMPLETE;
    }
    return GuidanceState::ABORT; // still retreating
}

bool Guidance::corridor_violation(const double rel_pos[3]) const {
    if (corridor_.use_ellipsoid) {
        double sum = 0.0;
        for (int i = 0; i < 3; i++) { // for each axis i
            double a = corridor_.ellipsoid_semi_axes[i]; 
            if (a <= 0.0) {
                continue; // skip this axis
            }
            sum += (rel_pos[i] * rel_pos[i]) / (a * a);
        }
        return sum > 1.0; // return true (outside the ellipsoid) if sum > 1
    } else { // conical
        double dist_sq = rel_pos[0] * rel_pos[0] +
                         rel_pos[1] * rel_pos[1] +
                         rel_pos[2] * rel_pos[2];
        if (dist_sq < 1e-12) {
            return false; // avoid div by 0
        }

        // Compute range magnitude for cosine calculation
        double range = std::sqrt(dist_sq);
        // assuming +x is the v-bar axis
        // verified against jeod/models/utils/lvlh_frame/src/lvlh_frame.cc
        double axial = -rel_pos[0];  // chaser approaches from -x; cone opens toward -x
        double cos_angle = axial / range;
        // double angle = std::acos(std::clamp(cos_angle, -1.0, 1.0)); // my version doesn't work
        double angle = std::acos(std::max(-1.0, std::min(1.0, cos_angle)));

        // return true (outside the allowed approach cone) if angle > half
        return angle > corridor_.half_angle_rad;
    }
}

bool Guidance::reached_setpoint(const double rel_pos[3], const double rel_vel[3],
                                 const double target_pos[3], double pos_tol, double vel_tol) const {
    // squared distance
    // (rel_pos[0]-target_pos[0])^2 + (rel_pos[1]-target_pos[1])^2 + (rel_pos[2]-target_pos[2])^2
    double dp = 0.0;
    for (int i = 0; i < 3; ++i) {
        double d = rel_pos[i] - target_pos[i];
        dp += d * d;
    }
    bool pos_ok = std::sqrt(dp) <= pos_tol;

    // if rel_vel is nullptr (position-only check, used by step_abort)
    if (!rel_vel) { 
        return pos_ok; 
    }

    // squared vel
    double dv = rel_vel[0] * rel_vel[0] +
                rel_vel[1] * rel_vel[1] +
                rel_vel[2] * rel_vel[2];
    bool vel_ok = std::sqrt(dv) <= vel_tol;

    return pos_ok && vel_ok;
}