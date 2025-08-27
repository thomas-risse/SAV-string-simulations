import numpy as np
import os
import matplotlib.pyplot as plt
import scipy.signal as signal
import sys
sys.path.append("/Users/risse/work/these/nonlinear_string/SAV-string-simulations/python")
from helper_plots import set_size
from matplotlib.ticker import ScalarFormatter
from scipy.io.wavfile import write
import librosa

from StringGeom import StringGeom

# Output folder
output_folder = "/Users/risse/work/these/manuscrit/medias/dafx"

"""
Generates f0 drift figure for the geometric nonlinear string.
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

#%% 
# Simulation parameters
sr = 44100
duration = 5
alphaCFL = 0.9
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

#%% Simulations
# Compute SAV solution
qsav0, psi0, epsilon0= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=0, Fext=Fext, mode = "geom")
qsav1000, psi1000, epsilon1000= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=1000, Fext=Fext, mode = "geom")

# Compute semi-implicit solution with OF factor (only in time)
qsemi = string.compute_semi(sr * OF, h, N, q0, u0, duration, Fext=Fext)
# Keep only samples at sr
qsemi = qsemi[::OF, :]

qsavmid0 = qsav0[:, N//2]
qsavmid1000 = qsav1000[:, N//2]
qrefmid = qsemi[:, N//2]

f0_0, _, _ = librosa.pyin(qsavmid0, fmin = 40, fmax = 200, sr = 44100, frame_length = 2048 * 4)
f0_1000, _, _ = librosa.pyin(qsavmid1000, fmin = 40, fmax = 200, sr = 44100, frame_length = 2048 * 4)
f0_ref, _, _ = librosa.pyin(qrefmid, fmin = 40, fmax = 200, sr = 44100, frame_length = 2048 * 4)
plt.figure(figsize = set_size("PHD", height_ratio=0.5))
plt.plot(np.linspace(0, duration, len(f0_0)), f0_0, label = r"$\lambda_0 = 0$ s$^{-1}$")
plt.plot(np.linspace(0, duration, len(f0_1000)), f0_1000, label = r"$\lambda_0 = 1000$ s$^{-1}$")
plt.plot(np.linspace(0, duration, len(f0_ref)), f0_ref, label = "ref")
plt.legend(loc = "upper right", frameon = True, fancybox = True, fontsize=8)
plt.grid()
plt.xlim(0, duration)
plt.xlabel("Time [s]")
plt.ylabel(r"$f_0$ [Hz]")
plt.tight_layout()
plt.savefig(os.path.join(output_folder, "f0_estim_string_geom.pdf"), bbox_inches='tight')
