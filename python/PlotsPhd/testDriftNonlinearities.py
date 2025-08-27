import numpy as np
import os
import matplotlib.pyplot as plt
import sys
sys.path.append("/Users/risse/work/these/nonlinear_string/SAV-string-simulations/python")
from helper_plots import set_size

from StringGeom import StringGeom

# Output folder
output_folder = "/Users/risse/work/these/manuscrit/medias/dafx"

"""
Generates figures of section "to drift or not to drift".
"""

#%%
# System description

# Physical parameters
StringParams = {
    "l0": 0.65,
    "Ra": 0.597e-3,
    "rho": 7850,
    "E": 2.1e11,
    "T": 90.48,
    "s_0": 0.921,
    "s_1": 2.04e-4
}
string = StringGeom(**StringParams)

string.print_perceptual_params()

modes = ["geom", "KC", "contact"] # Nonlinear modes

#%% 
# Simulation parameters
sr = 44100
duration = 5
alphaCFL = 0.9
lambda0s = [0, 1000]
OF = 2 # Over-sampling factor for reference

# Deduce discretization from stability condition
dt = 1 / sr
h, N = string.h_stability(sr, odd=False, alpha=alphaCFL)


#%%
# Initial conditions and excitation
# Intitial conditions
def qinit(N, h, string):
    return np.zeros(N-1)

def uinit(N, h, string):
    return np.zeros(N-1)

# External force (applied at the middle of the string)
def Fext(t):
    Amp = 10
    width = 1e-3
    period = 1000 * width
    return Amp * np.sin(np.pi * t / width) * (t%period < width)
q0 = qinit(N, h, string)
u0 = uinit(N, h, string)


#%% Run simulations and plot results
for lambda0 in lambda0s:
  fig, axs = plt.subplots(3, 1, figsize=set_size("PHD", height_ratio=0.8), sharex=True)

  for mode in modes:
    # Compute SAV solution
    qsav, psi, epsilon= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=lambda0, Fext=Fext, mode = mode) 

    # # Compute SAV solution with OF factor (only in time)
    # qref, psiref, epsilonref = string.compute_semi(sr * OF, h, N, q0, u0, duration, Fext=Fext)
    # # Keep only samples at sr
    # qref = qref[::OF, :]
    Ek, Ep, E, Pdiss, Pstored, Ptot = string.compute_power(sr, h, N, qsav, psi, "/Users/risse/work/these/codes manuscrit/SAV_drift")
    if mode=="geom":
        axs[0].plot(np.arange(int(duration * sr)) * dt, Fext(np.arange(int(duration * sr)) * dt), color = "black")
    axs[1].plot(np.arange(int(duration * sr)) * dt, E, label = mode)
    axs[2].semilogy(np.arange(int(duration * sr)) * dt, np.abs(epsilon), label = mode)

  axs[1].legend(loc = "upper right", fontsize = 8, frameon = True, fancybox = True)
  axs[0].set_ylabel(r"$f_{in}$ [N]")
  axs[1].set_ylabel(r"${\rm H}_{\rm SAV}$ [J]")
  axs[2].set_ylabel(r"${\rm abs}(\epsilon_{rel})$")
  axs[2].set_xlim(0, duration)
  axs[2].set_yticks([1e-4, 1e-1])
  axs[2].set_yticklabels([1e-4, 1e-1])
  axs[2].set_ylim(1e-8, 10)
  axs[2].set_xlabel(r"Time [s]")
  for ax in axs:
      ax.grid()
  # Squeeze
  fig.tight_layout()
  fig.align_ylabels(axs)
  fig.subplots_adjust(hspace=0.1, wspace=0.23)
  # Save figure
  fig.savefig(os.path.join(output_folder, f"test_drift_nl_force_{lambda0}.pdf"), bbox_inches='tight')
