/*************************************************************************
PURPOSE: 
    (Model what a real navigation sensor would give us, i.e. truth + noise
    , since guidance/control nevers see ground truth.)

INPUTS: 
    (JEOD's true relative position and velocity from RelativeDerivedState.)
OUTPUTS:
    (A "measured" relative position and velocity)

LOGIC:
    Add zero-mean Gaussian noise to each component of position and velocity
    Noise standard deviations should be configurable (set from input.py), 
    which lets us run MC dispersions later
    initialize(): set up rng/seed and noise parameters
    update(): called each cycle: truth-in, noisy-measurement-out
*************************************************************************/

#ifndef NAVIGATION_HH
#define NAVIGATION_HH

#include <random>
//#include "trick/StlRandomGenerator.hh"

class Navigation {
public:
    Navigation();
    void initialize();
    void set_noise_std(const double pos_std[3], const double vel_std[3]);
    void update(const double true_rel_pos[3], const double true_rel_vel[3],
        double meas_rel_pos[3], double meas_rel_vel[3]);

    //optional, if we want input.py to control reproducibility per-run
    // might be good for Monte Carlo? same seed = same dispersion realization
    void set_seed(unsigned long seed);

private:
    double pos_noise_std_[3];	/* m Stdev of position noise per axis */
    double vel_noise_std_[3];	/* m/s Stdev of velocity noise per axis */
    unsigned long rng_seed_;	
    
    // seed needs to persist between calls, so it's a member, not a local variable
    // std::mt19937 gen_{rng_seed_};   //rng_seed_ is unsigned long, but std::mt19937's
    // result_type is unsigned int, brace-init rejected this (trick-cp failed)
    std::mt19937 gen_{static_cast<std::mt19937::result_type>(rng_seed_)};
    // might need to comment out incase trick doesn't support it

    // StlRandomGenerator* pos_gen_[3];   // one generator per axis
    //StlRandomGenerator* vel_gen_[3];
};

#endif  // NAVIGATION_HH