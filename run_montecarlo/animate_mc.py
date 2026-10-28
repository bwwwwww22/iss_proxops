import glob
import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
from plot_montecarlo import classify_outcome, STATE_NAMES

STATE_COLORS = {
    0: "tab:blue",
    1: "tab:orange",
    2: "tab:green",
    3: "tab:red",
    4: "tab:purple",
}

def load_all_runs(root_dir):
    run_dirs = sorted(glob.glob(os.path.join(root_dir, "RUN_*")))
    runs = []
    for run_dir in run_dirs:
        df = pd.read_csv(f"{run_dir}/log_RelState.csv")
        df.columns = [c.split(" {")[0] for c in df.columns]
        df = df[::20].reset_index(drop=True) # instead of taking all ~1200 steps
        runs.append({
            "name": os.path.basename(run_dir),
            "outcome": classify_outcome(df),
            "state": df["gnc.guidance.state_"].to_numpy(),
            "x": df["chaser.lvlh_rel_state.rel_state.trans.position[0]"].to_numpy(),
            "y": df["chaser.lvlh_rel_state.rel_state.trans.position[1]"].to_numpy(),
            "z": df["chaser.lvlh_rel_state.rel_state.trans.position[2]"].to_numpy(),
            "time": df["sys.exec.out.time"].to_numpy(),
        })
    return runs

runs = load_all_runs("../MONTE_run_montecarlo/")

fig = plt.figure(figsize=(9, 9), tight_layout=True)
ax = fig.add_subplot(111, projection="3d")
ax.set_xlabel("x [m]")
ax.set_ylabel("y [m]")
ax.set_zlabel("z [m]")

x_min = min(r["x"].min() for r in runs)
y_min = min(r["y"].min() for r in runs)
y_max = max(r["y"].max() for r in runs)
z_min = min(r["z"].min() for r in runs)
z_max = max(r["z"].max() for r in runs)
n_frames = max(len(r["x"]) for r in runs)

ax.set_xlim(x_min - 10, 10)
ax.set_ylim(y_min - 10, y_max + 10)
ax.set_zlim(z_min - 10, z_max + 10)

time_text = ax.text2D(0.02, 0.95, "", transform=ax.transAxes)
ax.scatter(0, 0, 0, color="black", s=40, label="target")

artists = []
for r in runs:
    trail, = ax.plot([], [], [], color='gray', lw=1, alpha=0.6)
    marker, = ax.plot([], [], [], marker="o", markersize=5, ls="")
    artists.append({"run": r, "trail": trail, "marker": marker})

def update(frame):
    updated = [time_text]
    for a in artists:
        r = a["run"]
        #the index i should be min(frame, len(r["x"]) - 1) if runs have different lengths?
        i = frame 
        a["trail"].set_data_3d(r["x"][:i + 1], 
                               r["y"][:i + 1], 
                               r["z"][:i + 1])
        a["marker"].set_data_3d([r["x"][i]], 
                                [r["y"][i]], 
                                [r["z"][i]])
        a["marker"].set_color(STATE_COLORS.get(int(r["state"][i])))
        updated += [a["trail"], a["marker"]] # format is time, path, marker (last pt of intv)

    time_text.set_text(f"t = {runs[0]['time'][frame]:.0f} s") 
    return updated

legend_handles = [
    ax.plot([], [], [], marker="o", ls="", color=STATE_COLORS[s], label=STATE_NAMES[s])[0]
    for s in STATE_COLORS
]
ax.legend(handles=legend_handles, loc="upper left", bbox_to_anchor=(0,0.95))

ani = FuncAnimation(fig, update, frames=n_frames, interval=20, blit=False)
#ani.save("mc_trajectory.gif", writer="pillow", fps=60)
plt.show()