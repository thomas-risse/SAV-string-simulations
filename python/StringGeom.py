import numpy as np
import scipy.sparse as spa
import matplotlib.pyplot as plt
import matplotlib as mpl
import matplotlib.animation as anim
from matplotlib.ticker import ScalarFormatter, NullFormatter
import sounddevice as sd
import scipy.linalg as lin
from scipy.io.wavfile import write
from os.path import join
from scipy.signal import resample_poly
from time import time
from tqdm import tqdm
from helper_plots import set_size
from cycler import cycler
from os.path import exists, join
from StringGeom import *
from os import mkdir

DEFAULT_STRING_PARAMS = {
    "l0": 1.1,
    "Ra": 0.4e-3,
    "rho": 8000,
    "E": 2e11,
    "T": 60,
    "s_0": 0.921,
    "s_1": 2.04e-4
}

class StringGeom():
    def __init__(self, **kwargs):
        self.__dict__.update(DEFAULT_STRING_PARAMS)
        self.__dict__.update(kwargs)

        self.A = np.pi*self.Ra**2
        self.I = np.pi*self.Ra**4/4
        self.rhol = self.rho * self.A

    def hann_init(self, center, width, amp, h, N):
        x0 = np.zeros(N)
        for i in range(N-1):
            xcur = (i+1) * h
            dist = np.abs(xcur - center)
            if dist < width:
                x0[i] = amp * 0.5 * (1 + np.cos(np.pi * dist / width))
        return x0

    def h_stability(self, sr, odd = True, alpha = 1):
        dt = 1/sr
        gamma = dt**2 * self.T + 4*  dt * self.rhol * self.s_1
        h = np.sqrt((gamma + np.sqrt(gamma**2 + 16 * self.rhol * self.E * self.I * dt**2))/ (2 * self.rhol))
        N = int(np.floor(alpha * self.l0 / (h)))
        if odd:
            if N%2 == 0:
                N-=1
        else:
            if N%2 != 0:
                N-=1
        h = self.l0 / (N)
        return h, N

    def compute_SAV(self, sr, h, N, q0, u0, duration, lambda0):
        dt = 1/sr
        Ns = int(duration*sr)

        # Matrices
        D40 = np.ones(N-1) * 6 / h**4
        D40[0] = 5 / h**4
        D40[-1] = 5 / h**4
        D41 = -4 / h**4
        D42 = 1 / h**4

        dxq = np.zeros(N)

        # Nonlinear functions
        def V(dxq):
            return np.sum((self.E * self.A - self.T)/8 * h * (dxq)**4)
            return np.sum((self.E * self.A)/(8*self.l0) * h**2 * (dxq.dot(dxq))**2)

        def Vprime(dxq):
            dxq3 = dxq**3
            Dmindxq3 = -1/h * (dxq3[1:] - dxq3[:-1])
            return (self.E * self.A - self.T)/2 * h * Dmindxq3
            return (self.E * self.A)/(8*self.l0) * h**2 * (dxq.dot(dxq)) * (-1/h *(dxq[1:] - dxq[:-1]))

        def g(dxq):
            return Vprime(dxq) / (np.sqrt(2 * V(dxq)) + 1e-12)

        # State vectors and initialisation
        q = np.zeros((Ns, N-1))
        q[0] = q0 - dt/2*u0
        q[1] = q0 + dt/2*u0

        psi = np.zeros(Ns)
        psi[0] = np.sqrt(2 * V((q0[1:] - q0[:-1])/h))

        epsilons = np.zeros(Ns)

        # Main loop
        for i in tqdm(range(1, Ns-1)):
            # Compute nonlinearity term
            dxq = np.zeros_like(dxq)
            dxq[:-1] = q[i]
            dxq[1:] -= q[i]
            dxq /= h

            gi0 = g(dxq)
            # Modified g
            dxq = np.zeros_like(dxq)
            dxq[:-1] = (q[i] + q[i-1])/2
            dxq[1:] -= (q[i] + q[i-1])/2
            dxq/=h
            epsilon = psi[i-1] - np.sqrt(2 * V(dxq))
            epsilons[i] = np.sqrt(2 * V(dxq) + 1e-12)
            #gimod = - lambda0 * epsilon * (q[i] - q[i-1]) /( np.linalg.norm(q[i] - q[i-1], 2) + 1e-12)
            gimod = - lambda0 * epsilon * \
                np.sign((q[i] - q[i-1])) * dt / \
                (np.linalg.norm(q[i] - q[i-1], 1) + 1e-12)
            gi = gi0 + gimod

            # Without matrix product
            righthandterm = (2 * self.rhol * q[i]
                             - ((1-dt*self.s_0) * self.rhol)*q[i-1])
            righthandterm += ((- 1/h**2 * 2 * dt**2 * self.T
                               - dt**2 * self.E * self.I * D40
                               - 4 * self.rhol * self.s_1 * dt / h**2)*q[i]
                              + (4 * self.rhol * dt * self.s_1 / h**2) * q[i-1])
            righthandterm[1:] += (1/h**2 * dt**2 * self.T - dt**2 * self.E * self.I * D41 + 2 * self.rhol *
                                  self.s_1 * dt/h**2) * q[i, :-1] - (2 * self.rhol * self.s_1 * dt/h**2) * q[i-1, :-1]
            righthandterm[:-1] += (1/h**2 * dt**2 * self.T - dt**2 * self.E * self.I * D41 + 2 * self.rhol *
                                   self.s_1 * dt/h**2) * q[i, 1:] - (2 * self.rhol * self.s_1 * dt/h**2) * q[i-1, 1:]
            righthandterm[2:] += (- dt**2 * self.E * self.I * D42) * q[i, :-2]
            righthandterm[:-2] += (- dt**2 * self.E * self.I * D42) * q[i, 2:]
            # righthandterm += dt**2*Fext
            # Nonlinear part
            righthandterm += dt**2/4 * gi * gi.dot(q[i-1])*1/h
            righthandterm += - 1/h * dt**2 * gi * psi[i-1]

            # Sherman-Morrison
            C1 = dt/2 * gi
            term0 = 1/(self.rhol*(1+dt*self.s_0))
            q[i+1] = term0 * righthandterm \
                - term0**2 * 1/h * C1 * C1.dot(righthandterm) / \
                (1 +term0* 1/h * C1.dot(C1))
            psi[i] = psi[i-1] + 0.5 * gi.dot(q[i+1] - q[i-1])
        return q, psi, epsilons

    def compute_semi(self, sr, h, N, q0, u0, duration):
        dt = 1/sr
        Ns = int(duration*sr)

        # Matrices
        Dmin = np.zeros((N, N-1))
        Dmin[:-1, :] = np.diag(np.ones(N-1), 0)
        Dmin[1:, :] -= np.diag(np.ones(N-1), 0)
        Dmin /= h
        Dplus = - Dmin.T
        D2 = Dplus @ Dmin
        D4 = D2 @ D2
        D40 = np.ones(N-1) * 6 / h**4
        D40[0] = 5 / h**4
        D40[-1] = 5 / h**4
        D41 = -4 / h**4
        D42 = 1 / h**4

        baseleftterm = self.rhol * np.eye(N-1) \
            - dt * (-self.rhol * self.s_0 * np.eye(N-1) + self.rhol * self.s_1 * D2)
        base_main = np.diag(baseleftterm, 0)
        base_side = np.diag(baseleftterm, 1)

        # State vectors and initialisation
        q = np.zeros((Ns, N-1))
        q[0] = q0 - dt/2*u0
        q[1] = q0 + dt/2*u0

        dxq = np.zeros(N)
        dxqlast = np.zeros(N)

        dx3 = np.zeros(N)
        dplusdx3 = np.zeros(N-1)

        # Main loop
        for i in tqdm(range(1, Ns-1)):
            # Without matrix product
            righthandterm = (2 * self.rhol * q[i]
                             - ((1-dt*self.s_0) * self.rhol)*q[i-1])
            righthandterm += (- 1/h**2 * 2 * dt**2 *self.T
                               - dt**2 * self.E * self.I * D40) * q[i] \
                              + (2 * self.rhol * dt * self.s_1 / h**2) * q[i-1]
            righthandterm[1:] += (1/h**2 * dt**2 * self.T - dt**2 * self.E * self.I * D41) * q[i, :-1] \
                                - (self.rhol * self.s_1 * dt/h**2) * q[i-1, :-1]
            righthandterm[:-1] += (1/h**2 * dt**2 * self.T - dt**2 * self.E * self.I * D41) * q[i, 1:]\
                                - (self.rhol * self.s_1 * dt/h**2) * q[i-1, 1:]
            righthandterm[2:] += (- dt**2 * self.E * self.I * D42) * q[i, :-2]
            righthandterm[:-2] += (- dt**2 * self.E * self.I * D42) * q[i, 2:]
            # Nonlinearity
            # Compute nonlinearity term
            dxq = np.zeros_like(dxq)
            dxq[:-1] = q[i]
            dxq[1:] -= q[i]
            dxq /= h

            dxqlast = np.zeros_like(dxqlast)
            dxqlast[:-1] = q[i-1]
            dxqlast[1:] -= q[i-1]
            dxqlast /= h

            dx3 = dxq**2 * dxqlast
            dplusdx3 = 1/h*(dx3[1:] - dx3[:-1])

            righthandterm += dt**2 * (self.E * self.A - self.T)/4*dplusdx3
            #righthandterm += dt**2*Fext
            # Left hand term
            lhs_main = base_main - dt**2/h**2 * (self.E * self.A - self.T)/4 * (-(dxq**2)[:-1] + -(dxq**2)[1:])
            lhs_side = base_side - dt**2/h**2 * (self.E * self.A - self.T)/4 * dxq[1:-1]**2

            q[i+1] = lin.lapack.dgtsv(lhs_side, lhs_main, lhs_side, righthandterm)[3]
        return q
    
    def compute_power(self, sr, h, N, q, psi, folder = ""):
        dt = 1/sr
        
        Dmin = 1/h * spa.diags([1, -1], [0, -1], shape=(N, N-1))
        Dplus = - Dmin.T
        D2 = Dplus @ Dmin

        Mtildeinv = h / self.rhol * (spa.eye(N-1) + (dt**2 / (4*self.rhol) * (self.T * spa.eye(N-1) - self.E * self.I * D2) + dt * self.s_1 * spa.eye(N-1)) @ D2)
        K = h * (-self.T * spa.eye(N-1) + self.E * self.I * D2) @ D2
        R = 2 *self.rhol / h * (self.s_0 * spa.eye(N-1) - self.s_1 * D2)

        Ns = len(q)
        t = np.arange(Ns) * dt
        p = self.rhol / ( dt) * (q[1:] - q[:-1])
        pmid =(p[1:] + p[:-1])/2
        qn = (q[1:] + q[:-1])/2
        Ek = np.zeros(Ns)
        Ep = np.zeros(Ns)
        E = np.zeros(Ns)
        Pdiss = np.zeros(Ns-1)
        for i in range(1, Ns-1):
            Ek[i] = 0.5 * (qn[i-1].dot(K @ qn[i-1]))
            Ep[i] = 0.5 * (p[i-1].dot(Mtildeinv @ p[i-1]))
            E[i] = Ek[i] + Ep[i] + 0.5 * psi[i-1]**2
            Pdiss[i] = pmid[i-1].dot(R @ pmid[i-1]) * h * h / (self.rhol**2)
        Pstored = (E[1:] - E[:-1]) / dt 
        Ptot = Pstored + Pdiss
        plt.figure(figsize = set_size("DAFx", fraction=0.5))
        plt.plot(t[2:-1], Ek[2:-1], label="Kinetic")
        plt.plot(t[2:-1], Ep[2:-1], label="Potential")
        plt.plot(t[2:-1], E[2:-1], label="Total")
        plt.xlabel("Time (s)")
        plt.ylabel("Energy (J)")
        plt.legend(frameon = True, loc = "upper right")
        plt.ticklabel_format(scilimits=(-2, 2))
        plt.tight_layout()
        plt.savefig(join(folder, "energy.pdf"), bbox_inches="tight")

        plt.figure(figsize = set_size("DAFx", fraction=0.5))
        plt.plot(t[2:-1], Pdiss[1:-1], label=r"$P_{diss}^{n+\frac{1}{2}}$")
        plt.plot(t[2:-1], Pstored[1:-1], label=r"$\frac{E^{n+1} - E^n}{dt}$")
        #plt.scatter(t[2:-1], Ptot[1:-1], label="Total") #, linewidth=0, marker="x")
        plt.legend(frameon = True, loc = "upper right")
        plt.ticklabel_format(scilimits=(-2, 2))
        plt.xlabel("Time (s)")
        plt.ylabel("Power (W)")
        plt.tight_layout()
        plt.savefig(join(folder, "powers.pdf"), bbox_inches="tight")

        plt.figure(figsize = set_size("DAFx", fraction=0.5))
        totalDissE = np.cumsum(Pdiss) * dt
        totalDissE[0] = 0
        plt.plot(t[2:-2], np.cumsum(Ptot[1:-1])[:-1] * dt / E[2])
        plt.xlabel("Time (s)")
        plt.ylabel("Relative energy balance error")
        plt.tight_layout()
        plt.savefig(join(folder, "energy_balance.pdf"), bbox_inches="tight")
        return Ek, Ep, E, Pdiss, Pstored, Ptot


    def animation_displacement(self, qs, h, N, sr, slow_factor = 100):
        dt = 1/sr
        time = np.linspace(0, dt * len(qs[0]), len(qs[0]))
        space = np.linspace(0, h*N, N+1)
        space = space[1:-1]

        fig, axs = plt.subplots(1, 1)
        qtrace, = axs.plot(space, qs[0][0], label = "SAV", linestyle="--")
        qtrace2, = axs.plot(space, qs[0][0], label = "Semi-implicit", linestyle=":")
        axs.set_xlabel("Position")
        axs.set_ylabel("Displacement")
        axs.set_ylim([-1.2 * np.max(np.abs(qs[0])), 1.2 * np.max(np.abs(qs[0]))])
        axs.legend()

        def pos(frame):
            qtrace.set_ydata(qs[0][frame])
            qtrace2.set_ydata(qs[1][frame])
            return (qtrace, qtrace2, )
        animation = anim.FuncAnimation(fig=fig,
                                       func=pos,
                                       frames=len(qs[0]),
                                       interval=int(dt * 1000 * slow_factor),
                                       blit=True)
        plt.show()
        return fig

    def run_convergence(self, qinit, uinit, srs, sr_ref, lambda0s, duration, h, N, error="global", folder="", position=0.3, plot = True):
        t0 = time()
        # Initial conditions
        q0 = qinit(N, h)
        u0 = uinit(N, h)
        # Compute reference solution
        dt_ref = 1/sr_ref
        qref = self.compute_semi(sr_ref, h, N, q0, u0, duration)
        print("Finished computing reference solution")

        if plot:
            fig = plt.figure()
            ax = plt.gca()
            plt.title("FFT of center displacement")
            fftqref = np.fft.rfft(qref[:, int(N/2)], norm="forward")
            fftscale = np.max(np.abs(fftqref))
            freq = np.fft.rfftfreq(len(qref[:, int(N/2)]), dt_ref)
            ax.plot(freq, 20*np.log10(np.abs(fftqref) / fftscale), label = "reference")
            plt.xlabel("Frequency (Hz)")
            plt.ylabel("Amplitude")
            ax.legend()
            plt.draw()

        # Compute solutions for each configurations
        errors_sav  = np.zeros((len(lambda0s), len(srs)))
        errors_semi = np.zeros(len(srs))
        for i, sr in enumerate(srs):
            dt = 1/sr
            for j, lambda0 in enumerate(lambda0s):
                qsav, psisav, _ = self.compute_SAV(sr, h, N, q0, u0, duration, lambda0 = lambda0)
                errors_sav[j, i] = np.linalg.norm(qsav - qref[::int(sr_ref/sr), :], 2) / np.linalg.norm(qref[::int(sr_ref/sr), :], 2)
                psav = (qsav[1:, int(position*self.l0/h)] - qsav[:-1, int(position*self.l0/h)]) *sr
                psav_resampled = resample_poly(psav, 1, int(sr/np.min(srs))).astype(np.float32)
                write(join(folder, f"sav_{sr}_{lambda0}.wav"), np.min(srs), psav_resampled/np.max(np.abs(psav_resampled)))

                if plot:
                    fftq = np.fft.rfft(qsav[:, int(N/2)], norm="forward")
                    freq = np.fft.rfftfreq(len(qsav[:, int(N/2)]), dt)
                    #ax.plot(freq, 20*np.log10(np.abs(fftq)/fftscale), label=f"sav {sr} {lambda0}")
                    ax.legend()
                    plt.draw()

            qsemi = self.compute_semi(sr, h, N, q0, u0, duration)
            errors_semi[i] = np.linalg.norm(qsemi - qref[::int(sr_ref/sr), :], 2) / np.linalg.norm(qref[::int(sr_ref/sr), :], 2)
            psemi = (qsemi[1:, int(position*self.l0/h)] - qsemi[:-1, int(position*self.l0/h)]) *sr
            psemi_resampled = resample_poly(psemi, 1, int(sr/np.min(srs))).astype(np.float32)
            write(join(folder, f"semi_{sr}.wav"), np.min(srs), psemi_resampled/np.max(np.abs(psemi_resampled)))
            print("Finished computing solutions for sr = ", sr, " Hz")

            if plot:
                fftq = np.fft.rfft(qsemi[:, int(N/2)], norm="forward")
                freq = np.fft.rfftfreq(len(qsemi[:, int(N/2)]), dt)
                ax.plot(freq, 20*np.log10(np.abs(fftq)/fftscale), label=f"semi {sr}")
                ax.legend()
                plt.draw()
                plt.xlim([0, 5000])
                fig.savefig(join(folder, f"ffts.png"))
            

        t1 = time()
        print(f"Elapsed simulation time : ", "%.2f" % (t1-t0), " s")
        fig = plt.figure(figsize=(6, 3))
        plt.plot([srs[0], srs[-1]], [0.5 * errors_semi[0], 0.5 * errors_semi[0]/ (srs[-1] / srs[0])**2], linestyle = "--", color="gray", label = "second order slope")
        plt.plot(srs, errors_semi, label = "reference algorithm", color="blue", ls="-.", marker= "x", markersize = 15)
        plt.xlabel("sr [Hz]")
        plt.ylabel("Relative error e")
        plt.grid()
        cycle = cycler(color = mpl.colormaps["Reds"](np.linspace(0.3, 1, len(lambda0s))))
        plt.gca().set_prop_cycle(cycle)
        for i, lambda0 in enumerate(lambda0s):
            plt.loglog(srs, errors_sav[i], label=r"$\lambda = $" + f"{lambda0}", ls="dotted", marker = "+", markersize = 15)
        plt.legend()
        plt.tight_layout()
        fig.savefig(join(folder, f"conv.png"))
        plt.show()
        return errors_sav, errors_semi
    
    def run_convergence_space_time(self, qinit, uinit, srs, sr_ref, lambda0s, duration, error="global", folder="", position=0.3, alpha = 1, plot=True):
        t0 = time()
        # Compute reference solution
        dt_ref = 1/sr_ref
        href, Nref = self.h_stability(sr_ref, odd=False, alpha=alpha)
        qref = self.compute_semi(sr_ref, href, Nref, qinit(Nref, href), uinit(Nref, href), duration)
        print("Finished computing reference solution")

        if plot:
            fig = plt.figure()
            ax = plt.gca()
            plt.title("FFT of center displacement")
            fftqref = np.fft.rfft(qref[:, int(Nref/2)], norm="forward")
            fftscale = np.max(np.abs(fftqref))
            freq = np.fft.rfftfreq(len(qref[:, int(Nref/2)]), dt_ref)
            ax.plot(freq, 20*np.log10(np.abs(fftqref)/fftscale), label = "reference")
            plt.xlabel("Frequency (Hz)")
            plt.ylabel("Amplitude")
            ax.legend()
            plt.draw()

        # Compute solutions for each configurations
        errors_sav  = np.zeros((len(lambda0s), len(srs)))
        errors_semi = np.zeros(len(srs))
        hs = np.zeros(len(srs))
        for i, sr in enumerate(srs):
            print("Computing solutions for sr = ", sr, " Hz")
            dt = 1/sr
            h, N = self.h_stability(sr, odd=False, alpha=alpha)
            hs[i] = h
            for j, lambda0 in enumerate(lambda0s):
                qsav, psisav, _ = self.compute_SAV(sr, h, N, qinit(N, h), uinit(N, h), duration, lambda0 = lambda0)
                errors_sav[j, i] = np.linalg.norm(qsav[:, int(N/2)] - qref[::int(sr_ref/sr), int(Nref/2)], 2) / np.linalg.norm(qref[::int(sr_ref/sr), int(Nref/2)], 2)
                psav = (qsav[1:, int(position*self.l0/h)] - qsav[:-1, int(position*self.l0/h)]) *sr
                psav_resampled = resample_poly(psav, 1, int(sr/np.min(srs))).astype(np.float32)
                write(join(folder, f"sav_{sr}_{lambda0}.wav"), np.min(srs), psav_resampled/np.max(np.abs(psav_resampled)))

                if plot:
                    fftq = np.fft.rfft(qsav[:, int(N/2)], norm="forward")
                    freq = np.fft.rfftfreq(len(qsav[:, int(N/2)]), dt)
                    ax.plot(freq, 20*np.log10(np.abs(fftq)/fftscale), label=f"sav {sr} {lambda0}")
                    ax.legend()
                    plt.draw()

            qsemi = self.compute_semi(sr, h, N, qinit(N, h), uinit(N, h), duration)
            errors_semi[i] = np.linalg.norm(qsemi[:, int(N/2)] - qref[::int(sr_ref/sr), int(Nref/2)], 2) / np.linalg.norm(qref[::int(sr_ref/sr), int(Nref/2)], 2)
            psemi = (qsemi[1:, int(position*self.l0/h)] - qsemi[:-1, int(position*self.l0/h)]) *sr
            psemi_resampled = resample_poly(psemi, 1, int(sr/np.min(srs))).astype(np.float32)
            write(join(folder, f"semi_{sr}.wav"), np.min(srs), psemi_resampled/np.max(np.abs(psemi_resampled)))

            if plot:
                fftq = np.fft.rfft(qsemi[:, int(N/2)], norm="forward")
                freq = np.fft.rfftfreq(len(qsemi[:, int(N/2)]), dt)
                ax.plot(freq, 20*np.log10(np.abs(fftq)/fftscale), label=f"semi {sr}")
                ax.legend()
                plt.xlim([0, 5000])
                plt.draw()
                fig.savefig(join(folder, f"ffts.png"))
            

            print("Finished computing solutions for sr = ", sr, " Hz")
        t1 = time()
        print(f"Elapsed simulation time : ", "%.2f" % (t1-t0), " s")
        fig = plt.figure(figsize = set_size("DAFx", fraction=0.5))
        #plt.plot([srs[0], srs[-1]], [0.5 * errors_semi[0], 0.5 * errors_semi[0]/ (srs[-1] / srs[0])**2], linestyle = "--", color="gray", label = "Second order slope")
        plt.plot([srs[0], srs[-1]], [0.5 * errors_semi[0], 0.5 * errors_semi[0]/ (srs[-1] / srs[0])], linestyle = "--", color="gray", label = "First order slope")
        plt.plot(srs, errors_semi, label = "reference algorithm", color="blue", ls="-.", marker= "x", markersize = 15)
        plt.xlabel("sr (Hz])")
        plt.ylabel("Relative error e")
        plt.grid()
        #draw_loglog_slope(fig, plt.gca(), origin=(np.min(srs), np.min(errors_semi)), inverted=False, width_inches=1e5, slope=2, color="black")
        cycle = cycler(color = mpl.colormaps["Reds"](np.linspace(0.3, 1, len(lambda0s))))
        plt.gca().set_prop_cycle(cycle)
        for i, lambda0 in enumerate(lambda0s):
            plt.loglog(srs, errors_sav[i], label=r"$\lambda_0 = $" + f"{lambda0}", ls="dotted", marker = "+", markersize = 15)
        plt.legend(frameon = True)
        plt.tight_layout()
        fig.savefig(join(folder, f"conv_sr.pdf"), bbox_inches="tight")

        fig = plt.figure(figsize = set_size("DAFx", fraction=0.5, height_ratio=0.7))
        ax = plt.gca()
        ax.set_xscale("log")
        ax.set_yscale("log")
       
        # 2nd order convergence triangle
        triangle = mpl.patches.Polygon([[hs[-3], 0.5 * errors_semi[0]], [hs[-3], 0.5 * errors_semi[0]/ (hs[-1] / hs[-3])**2], [hs[-1], 0.5 * errors_semi[0]]], closed=True, color="gray", alpha=0.2, label="2nd order convergence triangle")
        ax.add_patch(triangle)
        # Add numbers
        ax.text(np.sqrt(hs[-1] * hs[-3]), 0.5 * errors_semi[0], "1", fontsize=8, ha='center', va='top')
        ax.text(hs[-3], np.sqrt(0.5 * errors_semi[0] * 0.5 * errors_semi[0]/ (hs[-1] / hs[-3])**2), "2", fontsize=8, ha='left', va='center')

        ax.plot(hs, errors_semi, label = "reference algorithm", color="blue", ls="-.", marker= "x", markersize = 15)
        ax.grid()
        cycle = cycler(color = mpl.colormaps["Reds"](np.linspace(0.3, 1, len(lambda0s))))
        ax.set_prop_cycle(cycle)
        for i, lambda0 in enumerate(lambda0s):
            ax.plot(hs, errors_sav[i], label=r"$\lambda_0 = $" + f"{lambda0}", ls="dotted", marker = "+", markersize = 15)
        ax.legend(frameon = True)
        # Set x-axis ticks to align with data points
        stride = 2
        ax.xaxis.set_minor_formatter(NullFormatter())
        ax.xaxis.set_tick_params(which='minor', size=0)
        ax.xaxis.set_tick_params(which='minor', width=0) 
        ax.set_xticks(hs[::stride])
        ax.set_xticklabels([f"{x:.2e}" for x in hs[::stride]])
        # Add a secondary x axis with sampling frequency
        def forward(x):
            return x
        def backward(x):
            return x
        secax = plt.gca().secondary_xaxis('top', functions=(forward, backward))
        secax.set_xlabel('sr (Hz)')
        secax.set_xticks(hs[::stride])
        secax.set_xticklabels([f"{x:.2e}" for x in srs[::stride]])
        secax.xaxis.set_minor_formatter(NullFormatter())
        secax.xaxis.set_tick_params(which='minor', size=0)
        secax.xaxis.set_tick_params(which='minor', width=0)
        plt.xlabel("h (m)")
        plt.ylabel("Relative error e")
        fig.savefig(join(folder, f"conv_hs.pdf"), bbox_inches="tight")
        plt.show()
        return errors_sav, errors_semi

if __name__ == "__main__":
    string = StringGeom()

    sr = 44100 * 10
    dt = 1/sr
    h, N = string.h_stability(sr, odd=False)
    print(N)
    print(string.__dict__)
    q0 = string.hann_init(string.l0/2, 0.2, 4e-3, h, N-1)
    # q0 = np.zeros_like(q0)
    q0 = np.sin(np.pi / N * (np.arange(N-1) + 1)) * 1e-2
    u0 = string.hann_init(string.l0/2, 0.2, 1, h, N-1)
    u0 = np.zeros_like(u0)
    # u0 = np.sin(np.pi / N * (np.arange(N-1) + 1)) * 2
    if np.allclose(q0, q0[::-1], atol=1e-16) and np.allclose(u0, u0[::-1], atol=1e-16):
        print("Initial conditions are symmetric")
    qsav, psi, epsilon= string.compute_SAV(sr, h, N, q0, u0, 0.2, lambda0=0)
    plt.figure()
    plt.plot(np.arange(len(epsilon)) * dt, epsilon, label=r"$\epsilon$")
    plt.plot(np.arange(len(psi)) * dt, psi, label="SAV")
    plt.legend()

    resultfolder = "./results/"
    if not exists(resultfolder):
        mkdir(resultfolder)

    Ek, Ep, E, Pdiss, Pstored, Ptot = string.compute_power(sr, h, N, qsav, psi, resultfolder)
    qsemi = string.compute_semi(sr, h, N, q0, u0, 0.2)
    #fig1 = string.animation_displacement([qsav, qsemi], h, N, sr, slow_factor=1000)
    outpoint = 0.5
    outsigsav = (qsav[1:, int(outpoint*string.l0/h)] - qsav[:-1, int(outpoint*string.l0/h)]) *sr
    outsigsav = qsav[:, int(outpoint*string.l0/h)]
    outsigsemi = qsemi[:, int(outpoint*string.l0/h)]
    #outsigsemi = (qsemi[1:, int(outpoint*string.l0/h)] - qsemi[:-1, int(outpoint*string.l0/h)]) *sr

    plt.figure()
    plt.plot(outsigsav, label="sav")
    plt.plot(outsigsemi, label="semi")
    plt.legend()
    # sd.play(outsigsav/np.max(np.abs(outsigsav)), samplerate=sr, blocking=True)
    #sd.play(outsigsemi/np.max(np.abs(outsigsemi)), samplerate=sr, blocking=True)
    #write("sound2.wav", 44100, outsigsemi/np.max(np.abs(outsigsemi)))
    plt.show(block=True)