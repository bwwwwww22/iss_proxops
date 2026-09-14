"""
Aggregate visualization across all Monte Carlo runs.
Expects each RUN_##### subfolder to contain a converted CSV (same column
format as the nominal-run log, e.g. RUN_00000/log_RelState.csv).
"""

import glob
import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

STATE_COMPLETE = 4
STATE_ABORT = 3
CORRIDOR_HALF_ANGLE_DEG = 15.0

OUTCOME_COLORS = {
    "COMPLETE": "tab:green",
    "ABORT": "tab:red",
    "INCOMPLETE": "tab:gray",
}
ylabels = ["x", "y", "z"]

def classify_outcome(df):
    final_state = df["gnc.guidance.state_"].iloc[-1]
    if final_state == STATE_COMPLETE:
        return "COMPLETE"
    elif final_state == STATE_ABORT:
        return "ABORT"
    else:
        return "INCOMPLETE"

def compute_corridor_margin(df):
    pos = df[[f"chaser.lvlh_rel_state.rel_state.trans.position[{i}]" for i in range(3)]].to_numpy()
    range_ = np.linalg.norm(pos, axis=1)
    range_safe = np.where(range_ < 1e-6, 1e-6, range_)
    cos_angle = (-pos[:, 0]) / range_safe
    cos_angle = np.clip(cos_angle, -1.0, 1.0)
    angle_deg = np.degrees(np.arccos(cos_angle))
    return CORRIDOR_HALF_ANGLE_DEG - angle_deg

def load_all_runs(root_dir):
    run_dirs = sorted(glob.glob(os.path.join(root_dir, "RUN_*")))
    runs = []
    for run_dir in run_dirs:
        df = pd.read_csv(f'{run_dir}/log_RelState.csv')
        df.columns = [c.split(" {")[0] for c in df.columns]

        outcome = classify_outcome(df)
        runs.append({"name": os.path.basename(run_dir), 
                    "df": df, "outcome": outcome})
    return runs


def plot_position_overlay(runs, colors, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(3, 1, figsize=(9, 9), tight_layout=True)
    #seen_labels = set() 
    for j, run in enumerate(runs):
        df, outcome = run["df"], run["outcome"]
        #color = OUTCOME_COLORS[outcome]
        #label = outcome if outcome not in seen_labels else None
        #seen_labels.add(outcome)
        for i, ax in enumerate(axes):
            ax.plot(df[ax_time],
                    df[f"chaser.lvlh_rel_state.rel_state.trans.position[{i}]"], 
                    lw=0.85, #label=label
                    color=colors[j]
                    )
            ax.set_ylabel(f"{ylabels[i]} [m]")
        axes[-1].set_xlabel("time [s]")
    fig.suptitle(f"MC: position vs time")
    #axes[0].legend()
    fig.savefig("results/mc_position.png", dpi=300)

def plot_velocity_overlay(runs, colors, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(3, 1, figsize=(9, 9), tight_layout=True)
    #seen_labels = set() 
    for j, run in enumerate(runs):
        df, outcome = run["df"], run["outcome"]
        #color = OUTCOME_COLORS[outcome]
        #label = outcome if outcome not in seen_labels else None
        #seen_labels.add(outcome)
        for i, ax in enumerate(axes):
            ax.plot(df[ax_time],
                    df[f"chaser.lvlh_rel_state.rel_state.trans.velocity[{i}]"], 
                    lw=0.85, #label=label
                    color=colors[j]
                    )
            ax.set_ylabel(f"{ylabels[i]} [m]")
        axes[-1].set_xlabel("time [s]")
    fig.suptitle(f"MC: velocity vs time")
    #axes[0].legend()
    fig.savefig("results/mc_velocity.png", dpi=300)

def plot_trajectory_overlay(runs, colors):
    fig, axes = plt.subplots(3,1, figsize=(9,9), tight_layout=True)
    #seen_labels = set()
    for i, run in enumerate(runs):
        df, outcome = run["df"], run["outcome"]
        #color = OUTCOME_COLORS[outcome]
        #label = outcome if outcome not in seen_labels else None
        #seen_labels.add(outcome)
        x = df["chaser.lvlh_rel_state.rel_state.trans.position[0]"]
        y = df["chaser.lvlh_rel_state.rel_state.trans.position[1]"]
        z = df["chaser.lvlh_rel_state.rel_state.trans.position[2]"]
        axes[0].plot(x, y, lw=0.85, color=colors[i])
        axes[1].plot(x, z, lw=0.85, color=colors[i])
        axes[2].plot(y, z, lw=0.85, color=colors[i])
    xylabels = [["x [m]", "y [m]"],["x [m]", "z [m]"], ["y [m]", "z [m]"]]
    for i in range(3):
        axes[i].scatter([0], [0], marker="*", s=60, color="r", 
                ec="k", label="target", zorder=5)
        axes[i].set_xlabel(xylabels[i][0])
        axes[i].set_ylabel(xylabels[i][1])
    axes[0].legend()
    fig.suptitle("MC: chaser trajectory")
    fig.savefig("results/mc_trajectory.png", dpi=300)

def plot_corridor_margin_overlay(runs, colors, ax_time="sys.exec.out.time"):
    fig, ax = plt.subplots(figsize=(9,3), tight_layout=True)
    worst_margin = np.inf
    worst_run_name = None

    #seen_labels = set()
    for i, run in enumerate(runs):
        df, outcome = run["df"], run["outcome"]
        margin = compute_corridor_margin(df)
        #color = OUTCOME_COLORS[outcome]
        #label = outcome if outcome not in seen_labels else None
        #seen_labels.add(outcome)
        ax.plot(df[ax_time], margin, lw=0.85, color=colors[i])

        run_min = margin.min()
        if run_min < worst_margin:
            worst_margin = run_min
            worst_run_name = run["name"]

    ax.axhline(0, color="dimgray", ls="-", label="corridor boundary")
    ax.set_xlim(-20, 1220)
    ax.set_xlabel("time [s]")
    ax.set_ylabel("corridor margin [deg]")
    ax.scatter([0], [worst_margin], marker="o", s=40, color="k",
               ec="k", label=f"worst-case: {worst_margin:.1f} deg")
    ax.legend()
    fig.savefig("results/mc_corridor_margin.png", dpi=300)


def plot_outcome_summary(runs):
    fig, ax = plt.subplots(figsize=(3, 1), tight_layout=True)
    counts = {}
    for run in runs:
        counts[run["outcome"]] = counts.get(run["outcome"], 0) + 1

    labels = list(counts.keys())
    values = [counts[l] for l in labels]
    colors = [OUTCOME_COLORS[l] for l in labels]

    ax.bar(labels, values, color=colors)
    for i, v in enumerate(values):
        ax.text(i, v + 0.5, str(v), ha="center")
    ax.set_ylabel("number of runs")
    ax.set_title(f"MC outcomes (n={len(runs)})")
    fig.savefig("results/mc_outcome.png", dpi=300)
    return counts

def analyze_saturation(runs, ax_time="sys.exec.out.time"):
    """
    whether any saturation occurred, and first time it did.
    """
    sat_cols = [f"gnc.control.saturated_[{i}]" for i in range(3)]
    results = []
    for run in runs:
        df = run["df"]
        any_sat = df[sat_cols].any(axis=1)
        if any_sat.any():
            first_time = df.loc[any_sat.idxmax(), ax_time]
            results.append({"name": run["name"], "saturated": True, "first_time": first_time})
        else:
            results.append({"name": run["name"], "saturated": False, "first_time": None})
 
    n_saturated = sum(r["saturated"] for r in results)
    print("\n--- Saturation summary ---")
    print(f"{n_saturated}/{len(runs)} runs saturated at least once "
          f"({100*n_saturated/len(runs):.1f}%)")
    if n_saturated > 0:
        print("Runs with saturation (name, first time):")
        for r in results:
            if r["saturated"]:
                print(f"  {r['name']}: t={r['first_time']:.1f}s")
    return results
 
STATE_NAMES = {
    0: "APPROACH",
    1: "HOLD",
    2: "GO_NOGO_CHECK",
    3: "ABORT",
    4: "COMPLETE",
}
def plot_state_overlay(runs, colors, ax_time="sys.exec.out.time"):
    fig, axes = plt.subplots(2, 1, figsize=(9,6), tight_layout=True)

    for i, run in enumerate(runs):
        df = run["df"]
        axes[0].step(df[ax_time], df["gnc.guidance.state_"],
                    where="post", color=colors[i])
        axes[0].set_yticks(list(STATE_NAMES.keys()))
        axes[0].set_yticklabels(list(STATE_NAMES.values()))
        #axes[0].set_ylabel("guidance state")

        axes[1].step(df[ax_time], df["gnc.guidance.current_leg_"],
                    where="post", color=colors[i])
        axes[1].set_ylabel("current leg")
        axes[1].set_xlabel("time [s]")

    #fig.suptitle("Guidance state timeline")
    fig.savefig("results/mc_states.png", dpi=300)
 
 
def analyze_measurement_error(runs):
    """
    Max absolute measured-vs-truth error in pos and vel across all runs
    """
    max_pos_err = 0.0
    max_vel_err = 0.0
    worst_pos_run = None
    worst_vel_run = None
 
    for run in runs:
        df = run["df"]
        for i in range(3):
            truth_pos = df[f"chaser.lvlh_rel_state.rel_state.trans.position[{i}]"]
            meas_pos = df[f"gnc.meas_rel_pos[{i}]"]
            err_pos = (truth_pos - meas_pos).abs().max()
            if err_pos > max_pos_err:
                max_pos_err = err_pos
                worst_pos_run = run["name"]
 
            truth_vel = df[f"chaser.lvlh_rel_state.rel_state.trans.velocity[{i}]"]
            meas_vel = df[f"gnc.meas_rel_vel[{i}]"]
            err_vel = (truth_vel - meas_vel).abs().max()
            if err_vel > max_vel_err:
                max_vel_err = err_vel
                worst_vel_run = run["name"]
 
    print("\n--- Measurement Error Summary ---")
    print(f"Max abs position error: {max_pos_err:.4f} m ({worst_pos_run})")
    print(f"Max abs velocity error: {max_vel_err:.4f} m/s ({worst_vel_run})")
 
    return max_pos_err, max_vel_err

def main():
    runs = load_all_runs('../MONTE_run_montecarlo/')
    total = len(runs)
    colors = sns.color_palette("husl", n_colors=total)

    plot_position_overlay(runs, colors)
    plot_velocity_overlay(runs, colors)
    plot_trajectory_overlay(runs, colors)
    plot_corridor_margin_overlay(runs, colors)
    plot_state_overlay(runs, colors)
    sat_results = analyze_saturation(runs)
    analyze_measurement_error(runs)

    '''counts = plot_outcome_summary(runs)
    for outcome, count in counts.items():
        print(f"{outcome}: {count}/{total} ({100*count/total:.1f}%)")
    print(f"Worst-case corridor margin across all runs: {worst_margin:.2f} deg (run {worst_run})")
    '''

if __name__ == "__main__":
    main()
