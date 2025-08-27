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
output_folder = "/Users/risse/work/these/manuscrit/medias/SAV"

"""
Generates drift figures for the ``geom'' nonlinear string, before control. 
One figure with inpput force, reference signal, SAV signal and epsilon.
The other with spectrograms.
"""

# Physical parameters
StringParams = {
    "l0": 0.65,
    "Ra": 0.597e-3,
    "rho": 7850,
    "E": 2.1e11,
    "T": 90.48,
    "s_0": 0.921,
    "s_1": 1.04e-4
}

# Simulation parameters
sr = 44100
duration = 10
alphaCFL = 0.9
lambda0 = 0
OF = 4 # Over-sampling factor for reference

# Intitial conditions
def qinit(N, h, string):
    return np.zeros(N-1)

def uinit(N, h, string):
    return np.zeros(N-1)

# External force (applied at the middle of the string)
def Fext(t):
    Amp = 5
    width = 1e-3
    period = int(1 / (2*width)) * 2 * width
    return Amp/5 * np.sin(np.pi * t / width) * (t%period < width) * (t< 3) \
        + Amp * np.sin(np.pi * t / width) * (t%period < width) * (t> 3) * (t<7) \
        + Amp/5 * np.sin(np.pi * t / width) *  (t%period < width)* (t> 7)

####### Computations #######
# Create StringGeom object
string = StringGeom(**StringParams)

string.print_perceptual_params()

# Deduce discretization from stability condition
dt = 1 / sr
h, N = string.h_stability(sr, odd=False, alpha=alphaCFL)

# Compute initial conditions
q0 = qinit(N, h, string)
u0 = uinit(N, h, string)
if np.allclose(q0, q0[::-1], atol=1e-16) and np.allclose(u0, u0[::-1], atol=1e-16):
    print("Initial conditions are symmetric")

# Compute SAV solution
qsav, psi, epsilon= string.compute_SAV(sr, h, N, q0, u0, duration, lambda0=lambda0, Fext=Fext, mode = "geom")

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
fig.subplots_adjust(hspace=0.2, wspace=0.23)

# Save figure
fig.savefig(os.path.join(output_folder, "time_series_sav_string.pdf"), bbox_inches='tight')



# Spectrogram
fig, axs = plt.subplots(2, 1, figsize=set_size("PHD"), sharex=True)
qsavmid = qsav[:, N//2]
qrefmid = qsemi[:, N//2]

nfft = 4096
nperseg = 4096
fmin = 50
fmax = 500
window = ('tukey', 0.95)

f, t, Sxx = signal.spectrogram(qsavmid, sr, nfft=nfft, nperseg = nperseg, window = window, mode = "psd")
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmax = np.max(Sxx)
vmin = vmax - 60
s1 = axs[0].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
# axs[0].set_yscale('log')
axs[0].set_ylabel('Frequency [Hz]', fontsize=8)

f, t, Sxx = signal.spectrogram(qrefmid, sr, nfft=nfft, nperseg = nperseg, window = window, mode = "psd")
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmin = vmax - 60
s2 = axs[1].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
# axs[1].set_yscale('log')
axs[1].set_ylabel('Frequency [Hz]', fontsize=8)

yticks = [200, 300, 400]
axs[0].set_yticks(yticks)
axs[0].set_yticklabels(yticks)
axs[1].set_yticks(yticks)
axs[1].set_yticklabels(yticks)

# Reference partial frequencies
fn = string.fTheo(7)
print(fn)
axs[0].plot([0, duration], [fn, fn], c='r', ls='--', alpha=0.5)
axs[1].plot([0, duration], [fn, fn], c='r', ls='--', alpha=0.5)

# Subplot titles
axs[0].set_title(r"``sv'' solution", fontsize=10)
axs[1].set_title(r'reference solution', fontsize=10)

axs[1].set_xlabel(r'$t$ [s]', fontsize=8)
axs[0].set_xlim([0, duration])

# Add color bar
cbar = fig.colorbar(s1, ax=axs, pad=0.01)
cbar.set_label('Amplitude [dB]', rotation=270, labelpad=15, fontsize=8)

# fig.tight_layout()
# fig.subplots_adjust(hspace=0, wspace=0.23)
# Save figure
fig.align_ylabels(axs)
fig.savefig(os.path.join(output_folder, "spectro_sav_string.pdf"), bbox_inches='tight')


# Save sound
qsavmid = qsav[:, N//2]
write(os.path.join(output_folder, "qsav1000.wav"), sr, (qsavmid/np.max(np.abs(qsavmid))).astype(np.float32))
write(os.path.join(output_folder, "qref.wav"), sr, (qrefmid/np.max(np.abs(qrefmid))).astype(np.float32))


# Animation
fig1 = string.animation_displacement([qsav, qsemi], h, N, sr, slow_factor=100)
