import numpy as np
import scipy.sparse as spa
import matplotlib.pyplot as plt
import matplotlib as mpl
import matplotlib.animation as anim
import sounddevice as sd
import scipy.linalg as lin
from scipy.io.wavfile import write
from os.path import join
from scipy.signal import resample_poly
from time import time
from tqdm import tqdm
from order_triangle import draw_loglog_slope
from cycler import cycler

plt.rcParams['text.usetex'] = True

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
        h = np.sqrt((self.T*dt**2 + np.sqrt(self.T**2 * dt**4 +
                    16 * self.rhol * self.E * self.I * dt**2)) / (2*self.rhol))
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
        Dmin = np.zeros((N, N-1))
        Dmin[:-1, :] = np.diag(np.ones(N-1), 0)
        Dmin[1:, :] -= np.diag(np.ones(N-1), 0)
        Dmin /= h
        #Dplus = - Dmin.T
        #D2 = Dplus @ Dmin
        #D4 = D2 @ D2
        D40 = np.ones(N-1) * 6 / h**4
        D40[0] = 5 / h**4
        D40[-1] = 5 / h**4
        D41 = -4 / h**4
        D42 = 1 / h**4

        dxq = np.zeros(N)
        # Nonlinear functions
        def V(dxq):
            return np.sum((self.E * self.A - self.T)/8 * h * (dxq)**4)

        def Vprime(dxq):
            dxq3 = dxq**3
            #Dmindxq3 =  Dmin.T @ dxq3
            Dmindxq3 = -1/h * (dxq3[1:] - dxq3[:-1])
            return (self.E * self.A - self.T)/2 * h * Dmindxq3

        def g(dxq):
            return Vprime(dxq) / (np.sqrt(2 * V(dxq)) + 1e-12)

        #def psival(q):
        #    return np.sqrt(2 * V(q))

        # State vectors and initialisation
        q = np.zeros((Ns, N-1))
        q[0] = q0
        q[1] = q0 + dt*u0

        psi = np.zeros(Ns)
        psi[0] = V((q[0]+q[1])/2)

        epsilons = np.zeros(Ns)

        # Main loop
        for i in tqdm(range(1, Ns-1)):
            #dxq = np.zeros_like(dxq)
            #dxq[:-1] = q[i]
            #dxq[1:] -= q[i]
            #dxq/=h
            # Compute nonlinearity term
            #dxq = Dmin @ q[i]
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
            epsilons[i] = epsilon / np.sqrt(2 * V(dxq) + 1e-12)
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
        #Dmin.diagonal()
        #Dmin = 1/h * spa.diags([-1, 1], [-1, 0], shape=(N, N-1)).toarray()
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

        # State vectors and initialisation
        q = np.zeros((Ns, N-1))
        q[0] = q0
        q[1] = q0 + dt*u0

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
            dxq = Dmin@q[i]
            dxqlast = Dmin@q[i-1]
            righthandterm += dt**2 * (self.E * self.A - self.T)/4*Dplus@(dxq**2 * dxqlast)
            #righthandterm += dt**2*Fext
            lefthandterm = baseleftterm - dt**2 * (self.E * self.A - self.T)/4*Dplus@np.diag(dxq**2)@Dmin
            #q[i+1] = np.linalg.solve(lefthandterm, righthandterm)
            q[i+1] = lin.lapack.dgtsv(np.diag(lefthandterm, -1), np.diag(lefthandterm, 0), np.diag(lefthandterm, 1), righthandterm)[3]
            
            #q[i+1] = np.linalg(lefthandterm, righthandterm)
        return q

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
        #draw_loglog_slope(fig, plt.gca(), origin=(np.min(srs), np.min(errors_semi)), inverted=False, width_inches=1e5, slope=2, color="black")
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
        for i, sr in enumerate(srs):
            print("Computing solutions for sr = ", sr, " Hz")
            dt = 1/sr
            h, N = self.h_stability(sr, odd=False, alpha=alpha)
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
        fig = plt.figure(figsize = (6, 3))
        plt.plot([srs[0], srs[-1]], [0.5 * errors_semi[0], 0.5 * errors_semi[0]/ (srs[-1] / srs[0])**2], linestyle = "--", color="gray", label = "second order slope")
        plt.plot([srs[0], srs[-1]], [0.5 * errors_semi[0], 0.5 * errors_semi[0]/ (srs[-1] / srs[0])], linestyle = "--", color="gray", label = "First order slope")
        plt.plot(srs, errors_semi, label = "reference algorithm", color="blue", ls="-.", marker= "x", markersize = 15)
        plt.xlabel("sr [Hz]")
        plt.ylabel("Relative error e")
        plt.grid()
        #draw_loglog_slope(fig, plt.gca(), origin=(np.min(srs), np.min(errors_semi)), inverted=False, width_inches=1e5, slope=2, color="black")
        cycle = cycler(color = mpl.colormaps["Reds"](np.linspace(0.3, 1, len(lambda0s))))
        plt.gca().set_prop_cycle(cycle)
        for i, lambda0 in enumerate(lambda0s):
            plt.loglog(srs, errors_sav[i], label=r"$\lambda = $" + f"{lambda0}", ls="dotted", marker = "+", markersize = 15)
        plt.legend()
        plt.tight_layout()
        fig.savefig(join(folder, f"conv.png"))
        plt.show()
        return errors_sav, errors_semi

if __name__ == "__main__":
    string = StringGeom()

    sr = 44100
    h, N = string.h_stability(sr, odd=False)
    print(N)
    print(string.__dict__)
    q0 = string.hann_init(string.l0/2, 0.2, 4e-3, h, N-1)
    q0 = np.zeros_like(q0)
    u0 = string.hann_init(string.l0/2, 0.2, 5, h, N-1)
    if np.allclose(q0, q0[::-1], atol=1e-16) and np.allclose(u0, u0[::-1], atol=1e-16):
        print("Initial conditions are symmetric")
    qsav, psi, = string.compute_SAV(sr, h, N, q0, u0, 1, lambda0=2000)
    #qsemi = string.compute_semi(sr, h, N, q0, u0, 1)
    #fig1 = string.animation_displacement([qsav, qsemi], h, N, sr, slow_factor=1000)
    outpoint = 0.3
    outsigsav = (qsav[1:, int(outpoint*string.l0/h)] - qsav[:-1, int(outpoint*string.l0/h)]) *sr
    #outsigsemi = (qsemi[1:, int(outpoint*string.l0/h)] - qsemi[:-1, int(outpoint*string.l0/h)]) *sr

    plt.figure()
    plt.plot(outsigsav, label="sav")
    #plt.plot(outsigsemi, label="semi")
    plt.legend()
    sd.play(outsigsav/np.max(np.abs(outsigsav)), samplerate=sr, blocking=True)
    #sd.play(outsigsemi/np.max(np.abs(outsigsemi)), samplerate=sr, blocking=True)
    #write("sound2.wav", 44100, outsigsemi/np.max(np.abs(outsigsemi)))
    plt.show(block=True)