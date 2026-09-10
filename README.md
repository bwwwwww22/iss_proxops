# ISS-Proximity-Ops-Inspired V-Bar Approach Simulator

A closed-loop C++ simulator for spacecraft proximity operations, built on
NASA's Trick and JEOD frameworks. Modular architecture isolates the flight-
software GN&C layer from JEOD's physics/environment. Current progress includes:
guidance state machine sequencing a multi-hold-point V-bar approach with
corridor/keep-out-zone enforcement, and a PD translation controller,
validated via closed-loop trajectory analysis.

## Architecture

A SIL-style boundary is enforced between JEOD's truth and the flight-software:

```
JEOD (orbital dynamics, relative state, etc)
        ↓
NAVIGATION (adds sensor noise)
        ↓
GUIDANCE (state machine → setpoint)
        ↓
CONTROL (PD → commanded force)
        ↓
JEOD (applied force → next integration step)
```
- **JEOD** (`S_define` environment/dynamics modules):
  time, truth-state, etc via `DynBody`. Relative position/ velocity
  between chaser and target computed by JEOD's `RelativeDerivedState`
- **Navigation** (`models/navigation/`): a noisy measurement
- **Guidance** (`models/guidance/`): discrete state machine and
  corridor/keep-out check. Owns hold-point sequencing and abort logic;
  outputs a setpoint
- **Control** (`models/control/`): PD law on measured-state-vs-setpoint
  error, with thruster saturation. No knowledge of guidance's internal
  state beyond the setpoint it's handed.
- **S_define**: wiring (sim_object declarations, job scheduling)

## Conventions

- **Frames:** translation expressed in LVLH relative to the
  target, computed by JEOD's `RelativeDerivedState`. Axes are currently
  labeled x/y/z (x = along-track/V-bar) rather than the traditional
  radial/along-track/cross-track naming
- **Units:** meters, seconds, newtons, kilograms
- **Corridor definition:** a cone (half-angle) or ellipsoid keep-out check
  about the V-bar approach axis, selectable via `CorridorParams.use_ellipsoid`

## Assumptions

- Target: generic LEO station, ISS-like orbital parameters (~400 km
  altitude, 51.6° inclination, circular)
- Chaser: generic small vehicle with mass and inertia placeholders
- **Translation only**: chaser is a point mass with prescribed
  attitude; no attitude control or torque commands (plan to add later).
- No atmospheric drag, no J2
- Hold-point count, spacing, and corridor angle are chosen for a
  reasonable, staged approach

## Guidance

- Discrete state machine: `APPROACH → HOLD → GO_NOGO_CHECK →` (next leg's
  `APPROACH`, or `ABORT` on corridor violation) `→ COMPLETE` after the
  final leg's GO/NO-GO passes.
- Corridor/keep-out check runs continuously (not just at hold points),
  evaluated as the angle between the chaser's position and the direction
  toward the target.
- Setpoint is written unconditionally at the top of each state's step
  function, before checks run, so a same-cycle state transition never
  hands the controller a stale setpoint.

## Control

- PD was chosen because PID would be an overkill for the current, assumed
  disturbance environment (no drag, no J2, zero-mean sensor noise)
- Independent per-axis control (no cross-axis gain coupling): 
  cross-axis effects come from the real dynamics, not the control law.
- Thruster saturation is enforced per-axis.

## Navigation

- Gaussian sensor noise added independently per axis to JEOD's true
  relative position/velocity; no navigation filter (yet), i.e. guidance
  and control act directly on the noisy measurement.
- RNG: `std::mt19937`, seeded via `input.py`. Deliberately not migrated
  to Trick's own `StlRandomGenerator` wrapper after confirming (by
  reading Trick's actual source) that Trick's own RNG wrapper has the
  identical checkpoint-state limitation

See `results/summary.md` for closed-loop trajectory results, corridor
margin validation, etc