#include "control.hh"
#include <cmath>
#include <cstring>

Control::Control()
    : kp_(0.0),
     kd_(0.0),
     max_force_(1000.0) // arbitrary for now
     //mass_(0.0), // F=gain*error
{
    // std::memset(saturated_, 0, sizeof(saturated_));
    // std::memset(cmd_force_, 0, sizeof(cmd_force_));
}

//giving input.py (or S_define) an explicit call to hook into
// might come back and assert/log if gains are still zero when the sim starts running
void Control::initialize() {
    std::memset(saturated_, 0, sizeof(saturated_));
    //std::memset(cmd_force_, 0, sizeof(cmd_force_));
}

void Control::set_gains(double kp, double kd) {
    kp_ = kp;
    kd_ = kd;
}

void Control::set_max_force(double max_force) {
    max_force_ = max_force;
}

void Control::update(const double meas_rel_pos[3], const double meas_rel_vel[3], 
    const double setpoint_pos[3], const double setpoint_vel[3], double cmd_force[3]) {
        for (int i=0; i<3; i++) { // pd law, independent per axis
            double pos_error = setpoint_pos[i] - meas_rel_pos[i];
            double vel_error = setpoint_vel[i] - meas_rel_vel[i];
            double raw_force = kp_ * pos_error + kd_ * vel_error;
            
            if (raw_force > max_force_) { // check saturation:
                cmd_force[i] = max_force_;
                saturated_[i] = true;
            }
            else if (raw_force < -max_force_) {
                cmd_force[i] = -max_force_;
                saturated_[i] = true;
            }
            else {
                cmd_force[i] = raw_force; 
                saturated_[i] = false;
            }

            // No return value — output goes through the cmd_force[3] output parameter, 
            // matching how guidance.get_setpoint() writes rather than returning a struct
            // cmd_force_[i] = cmd_force[i];
        }
}