import numpy as np
import os
import matplotlib.pyplot as plt
import scipy.signal as signal
from helper_plots import set_size
from matplotlib.ticker import ScalarFormatter

from StringGeom import StringGeom

# Output folder
output_folder = "/Users/risse/work/these/codes manuscrit/SAV_drift"

# Physical parameters
StringParams = {
    "l0": 1.1,
    "Ra": 0.4e-3,
    "rho": 8000,
    "E": 2e11,
    "T": 60,
    "s_0": 0.921 * 4,
    "s_1": 2.04e-4
}

# Simulation parameters
sr = 44100
duration = 10
alphaCFL = 0.9
lambda0 = 0
OF = 4 # Over-sampling factor for reference

# Intitial conditions
def qinit(N, h, string):
    return np.zeros(N)

def uinit(N, h, string):
    return np.zeros(N)

# External force (applied at the middle of the string)
def Fext(t):
    Amp = 3
    width = 2e-3
    period = 500 * width
    return Amp/5 * np.sin(np.pi * t / width) * (t%period < width) * (t< 3) \
        + Amp * np.sin(np.pi * t / width) * (t%period < width) * (t> 3) * (t<7) \
        + Amp/5 * np.sin(np.pi * t / width) *  (t%period < width)* (t> 7)


####### Computations #######
# Create StringGeom object
string = StringGeom(**StringParams)

# Deduce discretization from stability condition
dt = 1 / sr
h, N = string.h_stability(sr, odd=False, alpha=alphaCFL)

# Compute initial conditions
q0 = qinit(N-1, h, string)
u0 = uinit(N-1, h, string)
if np.allclose(q0, q0[::-1], atol=1e-16) and np.allclose(u0, u0[::-1], atol=1e-16):
    print("Initial conditions are symmetric")

# Compute SAV solution
qsav, psi, epsilon= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=lambda0, Fext=Fext)

# Compute semi-implicit solution with OF factor (only in time)
qsemi = string.compute_semi(sr * OF, h, N, q0, u0, duration, Fext=Fext)
# Keep only samples at sr
qsemi = qsemi[::OF, :]



####### Plots #######
# Input force, Evolution of epsilon
fig, axs = plt.subplots(4, 1, figsize=set_size("PHD", height_ratio=0.8), sharex=True)

axs[0].plot(np.arange(int(duration * sr)) * dt, Fext(np.arange(int(duration * sr)) * dt))
axs[0].set_ylabel(r"$F_{ext}$[N]")

qsavmid = qsav[:, N//2]
qrefmid = qsemi[:, N//2]

axs[1].plot(np.arange(len(qrefmid)) * dt, qrefmid)
axs[1].set_ylabel(r"$q_{\rm ref}$[m]")
axs[2].plot(np.arange(len(qsavmid)) * dt, qsavmid)
axs[2].set_ylabel(r"$q_{\rm sv}$[m]")

axs[3].plot(np.arange(len(epsilon[1:-1])) * dt, epsilon[1:-1])
axs[3].set_ylabel(r"$\epsilon_{rel}$")
axs[3].set_xlim(0, duration)
axs[3].set_xlabel(r"$t$ [s]")

for ax in axs:
    ax.grid()

fig.align_ylabels(axs)
# Squeeze
fig.tight_layout()
fig.subplots_adjust(hspace=0, wspace=0.23)

# Save figure
fig.savefig(os.path.join(output_folder, "input_force_epsilon.pdf"), bbox_inches='tight')



# Spectrogram
fig, axs = plt.subplots(2, 1, figsize=set_size("PHD"), sharex=True)
qsavmid = qsav[:, N//2]
qrefmid = qsemi[:, N//2]

nfft = 4096
nperseg = 4096
fmin = 120
fmax = 500

f, t, Sxx = signal.spectrogram(qsavmid, sr, nfft=nfft, nperseg = nperseg)
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmax = np.max(Sxx)
vmin = vmax - 48
s1 = axs[0].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
axs[0].set_yscale('log')
axs[0].set_ylabel('Frequency [Hz]')

f, t, Sxx = signal.spectrogram(qrefmid, sr, nfft=nfft, nperseg = nperseg)
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmin = vmax - 48
s2 = axs[1].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
axs[1].set_yscale('log')
axs[1].set_ylabel('Frequency [Hz]')

yticks = [200, 300, 400]
axs[0].set_yticks(yticks)
axs[0].set_yticklabels(yticks)
axs[1].set_yticks(yticks)
axs[1].set_yticklabels(yticks)

# Subplot titles
axs[0].set_title(r"``sv'' solution")
axs[1].set_title(r'reference solution')

axs[1].set_xlabel(r'$t$ [s]')

# one colorbar for both
# cbar = fig.colorbar(s1, ax=axs, orientation='vertical')

fig.tight_layout()
# fig.subplots_adjust(hspace=0, wspace=0.23)
# Save figure
fig.align_ylabels(axs)
fig.savefig(os.path.join(output_folder, "spectro_sav_string.pdf"), bbox_inches='tight')
