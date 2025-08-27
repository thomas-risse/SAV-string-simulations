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
output_folder = "/Users/risse/work/these/codes manuscrit/SAV_drift"

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

# Simulation parameters
sr = 44100
duration = 5
alphaCFL = 0.9
OF = 2 # Over-sampling factor for reference

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
print(f0_0)
plt.figure(figsize = set_size("PHD", height_ratio=0.7))
plt.plot(np.linspace(0, duration, len(f0_0)), f0_0, label = r"$\lambda_0 = 0$ Hz")
plt.plot(np.linspace(0, duration, len(f0_1000)), f0_1000, label = r"$\lambda_0 = 1000$ Hz")
plt.plot(np.linspace(0, duration, len(f0_ref)), f0_ref, label = "ref")
plt.legend(loc = "upper right", frameon = True, fancybox = True)
plt.grid()
plt.xlim(0, duration)
plt.xlabel("Time [s]")
plt.ylabel("Fundamental frequency [Hz]")
plt.tight_layout()
plt.savefig(os.path.join(output_folder, "f0_estim_string_geom.pdf"), bbox_inches='tight')
####### Plots #######
# Spectrogram
fig, axs = plt.subplots(3, 1, figsize=set_size("PHD", subplots=(3, 1), height_ratio=0.4), sharex=True)


nfft = 4096
nperseg = 4096
fmin = 50
fmax = 800
window = signal.windows.tukey(nperseg, 0.9)

f, t, Sxx = signal.spectrogram(qsavmid0, sr, nfft=nfft, nperseg = nperseg, window = window)
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmax = np.max(Sxx)
vmin = vmax - 48
s1 = axs[0].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
axs[0].set_yscale('log')
axs[0].set_ylabel('Frequency [Hz]')

f, t, Sxx = signal.spectrogram(qsavmid1000, sr, nfft=nfft, nperseg = nperseg, window = window)
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmax = np.max(Sxx)
vmin = vmax - 48
s1 = axs[1].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
axs[1].set_yscale('log')
axs[1].set_ylabel('Frequency [Hz]')

f, t, Sxx = signal.spectrogram(qrefmid, sr, nfft=nfft, nperseg = nperseg, window = window)
Sxx = 10*np.log10(Sxx[(fmin < f) * (f < fmax), :])
Sxx -= np.max(Sxx)
vmin = vmax - 48
s2 = axs[2].pcolormesh(t, f[(fmin < f) * (f < fmax)], Sxx, shading='gouraud', cmap='Blues', vmin=vmin, vmax=vmax)
axs[2].set_yscale('log')
axs[2].set_ylabel('Frequency [Hz]')

yticks = [100, 200, 600]
axs[0].set_yticks(yticks)
axs[0].set_yticklabels(yticks)
axs[1].set_yticks(yticks)
axs[1].set_yticklabels(yticks)
axs[2].set_yticks(yticks)
axs[2].set_yticklabels(yticks)

# Subplot titles
axs[0].text(0.1, 500, r"$\lambda_0 = 0$ Hz", ha="left")
axs[1].text(0.1, 500, r"$\lambda_0 = 1000$ Hz", ha="left")
axs[2].text(0.1, 500, r'reference', ha="left")

axs[2].set_xlabel(r'$t$ [s]')

fig.subplots_adjust(hspace=0)
# one colorbar for both
cbar = fig.colorbar(s1, ax=axs, orientation='vertical', pad = 0.025)
cbar.set_label("dB")
# fig.tight_layout()
for ax in axs:
    for i in range(5):
        fn = (i+1) / (2 * string.l0) * string.c0 * np.sqrt(1 + string.beta * (i+1) **2) 
        ax.plot([0, duration], [fn, fn], ls = ':', c="r")
axs[2].set_xlim(0, duration)
# Save figure
fig.align_ylabels(axs)
fig.savefig(os.path.join(output_folder, "spectro_sav_string2.pdf"), bbox_inches='tight')


# Save sound
qsavmid0 = qsav0[:, N//2]
qsavmid1000 = qsav1000[:, N//2]
write(os.path.join(output_folder, "qsav0.wav"), sr, (qsavmid0/np.max(np.abs(qsavmid0))).astype(np.float32))
write(os.path.join(output_folder, "qsav1000.wav"), sr, (qsavmid1000/np.max(np.abs(qsavmid1000))).astype(np.float32))
write(os.path.join(output_folder, "qref.wav"), sr, (qrefmid/np.max(np.abs(qrefmid))).astype(np.float32))


# # Animation
# fig1 = string.animation_displacement([qsav, qsemi], h, N, sr, slow_factor=100)
