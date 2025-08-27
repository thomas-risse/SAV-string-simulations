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
Generates figures for the manuscript relative to contact sticking analysis for 
SAV simulations of string with contact.
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
    "s_1": 2.04e-4,
    "kc": 1e9, # contact law stifness
    "alpha": 1.3, # contact law exponent
    "qc": - 5e-3 # wall position
}

string = StringGeom(**StringParams)

string.print_perceptual_params()

#%%
# Simulation parameters
sr = 20000
duration = 0.5
alphaCFL = 0.9
lambda0s = [0, 10000]
OF = 64

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
q0 = qinit(N, h, string)
u0 = uinit(N, h, string)

# External force (applied at the middle of the string)
def Fext(t):
    Amp = 15
    width = 2e-3
    period = 1000 * width
    return Amp * np.sin(np.pi * t / width) * (t%period < width)
q0 = qinit(N, h, string)
u0 = uinit(N, h, string)

# Compute SAV solution
qsav0, psi0, epsilon0, Fnl0= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=lambda0s[0], Fext=Fext, mode = "contact", outFnl=True)
qsavref, psiref, epsilonref, Fnlref= string.compute_SAV(sr*OF, h, N, q0, u0, duration, lambda0=lambda0s[1], Fext=Fext, mode = "contact", outFnl=True)
qsavref = qsavref[::OF, :]
psiref = psiref[::OF]
epsilonref = epsilonref[::OF]
Fnlref = Fnlref[::OF, :]
qsav1000, psi1000, epsilon1000, Fnl1000= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=lambda0s[1], Fext=Fext, mode = "contact", outFnl=True)

#%%
# Figure
fig, axs = plt.subplots(3, 1, figsize = set_size("PHD", height_ratio=1), sharex=True)
t = np.linspace(0, duration, len(qsav0))
axs[0].plot(t, np.min(qsav0[:], axis=1), label = r"$\lambda = 0$ s$^{-1}$")
axs[1].plot(t, -np.mean(Fnl0[:], axis=1))
axs[2].plot(t, epsilon0)

axs[0].plot(t, np.min(qsav1000[:], axis=1), label = r"$\lambda = 10000$ s$^{-1}$")
axs[1].plot(t, -np.mean(Fnl1000[:], axis=1))
axs[2].plot(t, epsilon1000)

axs[0].plot(t, np.min(qsavref[:], axis=1), label = r"ref")
axs[1].plot(t, -np.mean(Fnlref[:], axis=1))
axs[2].plot(t, epsilonref)

axs[0].plot(t, -0.005 * np.ones_like(t), c = "r", ls = ":")
axs[0].legend(loc = "upper right", fontsize = 8, frameon = True, fancybox = True)

axs[0].set_ylabel(r"${\rm min}(u)$ [m]")
axs[1].set_ylabel(r"${\rm mean}(\mathbf f_{\rm SAV})$ [N]")
axs[2].set_ylabel(r"$\epsilon_{rel}$")

axs[2].set_xlabel(r"Time [s]")

axs[1].set_xlim(0, duration)
for ax in axs:
    ax.grid()
# Squeeze
fig.tight_layout()
fig.align_ylabels(axs)
fig.subplots_adjust(hspace=0.1, wspace=0.23)
# Save figure
fig.savefig(os.path.join(output_folder, "Fnl_sign_contact.pdf"), bbox_inches='tight')
