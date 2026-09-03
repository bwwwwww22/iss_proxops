#include "navigation.hh"
#include <cmath>
#include <cstring>

Navigation::Navigation()
    : rng_seed_(1),
      gen_(rng_seed_)
    {
        std::memset(pos_noise_std_, 0, sizeof(pos_noise_std_));
        std::memset(vel_noise_std_, 0, sizeof(vel_noise_std_));
    }

void Navigation::initialize() {
    gen_.seed(rng_seed_);  // re-seed the RNG, in case set_seed() was called after 
    // construction but before the sim starts
}

void Navigation::set_noise_std(const double pos_std[3], const double vel_std[3]) {
    std::memcpy(pos_noise_std_, pos_std, sizeof(pos_noise_std_));
    std::memcpy(vel_noise_std_, vel_std, sizeof(vel_noise_std_));
}

void Navigation::set_seed(unsigned long seed) {
    rng_seed_ = seed; // doesnt re-seed
}

void Navigation::update(const double true_rel_pos[3], const double true_rel_vel[3], 
    double meas_rel_pos[3], double meas_rel_vel[3]) {
        for (int i=0; i<3; i++) { //for each axis i
            std::normal_distribution<double> dist(0.0, pos_noise_std_[i]); // gaussian
            double noise = dist(gen_);
            meas_rel_pos[i] = true_rel_pos[i] + noise; // measured = truth + noise
        }

        for (int i = 0; i < 3; i++) {
            std::normal_distribution<double> dist(0.0, vel_noise_std_[i]);
            double noise = dist(gen_);
            meas_rel_vel[i] = true_rel_vel[i] + noise;
    }
}