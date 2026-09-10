"""
visualize log_RelState.csv
  1. Position vs time (all 3 axes) with hold-point/setpoint overlay
  2. Trajectory in the x-y (V-bar / cross-track) plane, colored by state
  3. State machine timeline (state_ and current_leg_ vs time)
  4. Velocity vs time (all 3 axes)
  5. Commanded force vs time, with saturation flags highlighted
  6. Corridor margin vs time (how close to the cone/ellipsoid boundary)
"""

import sys
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# matching guidance.hh
STATE_NAMES = {
    0: "APPROACH",
    1: "HOLD",
    2: "GO_NOGO_CHECK",
    3: "ABORT",
    4: "COMPLETE",
}
STATE_COLORS = {
    0: "tab:blue",
    1: "tab:orange",
    2: "tab:green",
    3: "tab:red",
    4: "tab:purple",
}

# matching RUN_nominal/input.py
CORRIDOR_HALF_ANGLE_DEG = 15.0

def load_log(path):
    df = pd.read_csv(path)
    # strip units from column names
    df.columns = [c.split(" {")[0] for c in df.columns]
    return df

def plot_position_vs_time(df, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(3, 1, figsize=(9, 9), tight_layout=True)
    labels = ["x (V-bar)", "y", "z"]
    for i, ax in enumerate(axes):
        ax.plot(df[ax_time], df[f"chaser.lvlh_rel_state.rel_state.trans.position[{i}]"], 
                label="truth", color="k", lw=2)
        ax.plot(df[ax_time], df[f"gnc.meas_rel_pos[{i}]"], 
                label="measured", color="tab:blue", ls="--", lw=1)
        ax.plot(df[ax_time], df[f"gnc.setpoint_pos[{i}]"], 
                label="setpoint", color="tab:orange", ls="--", lw=1.5)
        ax.set_ylabel(f"{labels[i]} [m]")
    axes[0].legend(loc="best")
    axes[-1].set_xlabel("time [s]")
    fig.suptitle("Relative position vs time")
    fig.savefig("results/position_vs_time.png", dpi=300)

def plot_trajectory_xy(df, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(3, 1, figsize=(9,9), tight_layout=True)
    x = df["chaser.lvlh_rel_state.rel_state.trans.position[0]"]
    y = df["chaser.lvlh_rel_state.rel_state.trans.position[1]"]
    z = df["chaser.lvlh_rel_state.rel_state.trans.position[2]"]
    states = df["gnc.guidance.state_"]
    #print(np.min(x), np.max(x), np.min(y), np.max(y))

    for state_val, name in STATE_NAMES.items():
        mask = states == state_val
        if mask.any():
            axes[0].scatter(x[mask], y[mask], 
                s=20, color=STATE_COLORS[state_val], label=name)
            axes[1].scatter(x[mask], z[mask], 
                s=20, color=STATE_COLORS[state_val], label=name)
            axes[2].scatter(y[mask], z[mask], 
                s=20, color=STATE_COLORS[state_val], label=name)

    xylabels = [["x / V-bar [m]", "y [m]"],
                ["x [m]", "z [m]"], ["y [m]", "z [m]"]]
    for i in range(3):
        axes[i].scatter([0], [0], marker="*", s=60, color="r", 
                ec="k", label="target", zorder=5)
        axes[i].set_xlabel(xylabels[i][0])
        axes[i].set_ylabel(xylabels[i][1])
    fig.suptitle("Chaser trajectory")
    axes[0].legend()
    fig.savefig("results/trajectory_xy.png", dpi=300)


def plot_state_timeline(df, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(2, 1, figsize=(9,6), tight_layout=True)

    axes[0].step(df[ax_time], df["gnc.guidance.state_"],
                 where="post", color="tab:blue")
    axes[0].set_yticks(list(STATE_NAMES.keys()))
    axes[0].set_yticklabels(list(STATE_NAMES.values()))
    #axes[0].set_ylabel("guidance state")
    axes[0].grid(alpha=0.25)

    axes[1].step(df[ax_time], df["gnc.guidance.current_leg_"],
                where="post", color="tab:orange")
    axes[1].set_ylabel("current leg")
    axes[1].set_xlabel("time [s]")

    fig.suptitle("Guidance state timeline")
    fig.savefig("results/state_timeline.png", dpi=300)


def plot_velocity_vs_time(df, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(3, 1, figsize=(9,9), tight_layout=True)
    labels = ["x (V-bar)", "y", "z"]
    truth_cols = [f"chaser.lvlh_rel_state.rel_state.trans.velocity[{i}]" for i in range(3)]
    meas_cols = [f"gnc.meas_rel_vel[{i}]" for i in range(3)]

    for i, ax in enumerate(axes):
        ax.plot(df[ax_time], df[truth_cols[i]],
                 label="truth", color="k", lw=2)
        ax.plot(df[ax_time], df[meas_cols[i]], 
                label="measured", color="tab:orange", alpha=0.75, lw=1.25, ls="--")
        ax.set_ylabel(f"v_{labels[i]} [m/s]")
    axes[0].legend(loc="best")
    axes[-1].set_xlabel("time [s]")
    fig.suptitle("Relative velocity vs time")
    fig.savefig("results/velocity_vs_time.png", dpi=300)


def plot_force_and_saturation(df, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(3, 1, figsize=(9, 9), tight_layout=True,
                              #gridspec_kw={"height_ratios": [2, 2, 2, 1]}
                              )
    labels = ["x", "y", "z"]
    for i in range(3):
        axes[i].plot(df[ax_time], df[f"gnc.cmd_force[{i}]"], color="tab:blue")
        axes[i].set_ylabel(f"F_{labels[i]} [N]")
        axes[i].grid(alpha=0.3)
        # shade where saturated
        sat_mask = df[f"gnc.control.saturated_[{i}]"].astype(bool)
        if sat_mask.any():
            axes[i].fill_between(df[ax_time], axes[i].get_ylim()[0], axes[i].get_ylim()[1],
                where=sat_mask, color="tab:red", alpha=0.15, step="post")

    '''any_sat = df[f"gnc.control.saturated_[{i}]"].any(axis=1)
    axes[3].step(df[ax_time], any_sat.astype(int), where="post", color="tab:red")
    axes[3].set_ylabel("saturated(=1)?")
    axes[3].set_ylim(-0.1, 1.1)
    axes[3].set_xlabel("time [s]")
    axes[3].grid(alpha=0.3) '''
    fig.suptitle("Commanded force vs time")
    fig.savefig("results/force_vs_time.png", dpi=300)

def plot_corridor_margin(df, ax_time="sys.exec.out.time"):
    """
    Cone check margin: half_angle - actual_angle. Positive = inside corridor,
    negative = violation. Uses TRUTH position (not measured) since that's
    what governs the real dynamics.
    """
    fig, ax = plt.subplots(figsize=(9,3), tight_layout=True)

    pos = df[[f"chaser.lvlh_rel_state.rel_state.trans.position[{i}]" for i in range(3)]].to_numpy()
    range_ = np.linalg.norm(pos, axis=1)
    range_safe = np.where(range_ < 1e-6, 1e-6, range_)
    # chaser approaches from -x, so "toward target" direction is -pos
    cos_angle = (-pos[:, 0]) / range_safe
    cos_angle = np.clip(cos_angle, -1.0, 1.0)
    angle_deg = np.degrees(np.arccos(cos_angle))
    margin_deg = CORRIDOR_HALF_ANGLE_DEG - angle_deg

    ax.plot(df[ax_time], margin_deg, color="tab:blue")
    ax.axhline(0, color="red", ls="--", label="corridor boundary")
    ax.fill_between(df[ax_time], margin_deg, 0, where=(margin_deg < 0),
                     color="red", alpha=0.3, label="violation")
    ax.set_xlabel("time [s]")
    ax.set_ylabel("corridor margin [deg]\n(positive = inside cone)")
    ax.set_title("Cone corridor margin vs time")
    ax.legend()
    #fig.savefig("results/corridor_margin.png", dpi=300)


def main():
    path = sys.argv[1]
    df = load_log(path)

    #print(df)
    figs = [
        #plot_position_vs_time(df),
        #plot_trajectory_xy(df),
        #plot_state_timeline(df),
        #plot_velocity_vs_time(df),
        #plot_force_and_saturation(df),
        plot_corridor_margin(df),
    ]
    plt.show()

if __name__ == "__main__":
    main()