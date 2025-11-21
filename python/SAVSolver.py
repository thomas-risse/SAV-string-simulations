import numpy as np
import matplotlib.pyplot as plt
from time import sleep
from Model import Model

class SAVSolver():
    """General SAV solver using same matrices thatn in the JAES paper.
    """
    def __init__(self,model, sr = 44100):
        ### System definition ###
        self.model = model

        ### Numerical parameters ###
        # Sampling
        self.sr = sr
        self.dt = 1/self.sr
        self.dt2 = self.dt**2
        # Shifting constant
        self. C0 = 0
        # Control parameter
        self.lamba0 = 0
        # Numerical epsilon
        self.model.Num_eps = 1e-16

        ### Some vector initialization ###
        self.Gn = np.zeros(self.model.N)
        self.Rmidn = np.zeros(self.model.N)
        self.A0_inv_n = np.zeros(self.model.N)
        self.gn = np.zeros(self.model.N)

        self.RHSn = np.zeros(self.model.N)

        ### Intermediary fixed quantities ###
        self.M_J0dt = self.model.M / (self.dt * self.model.J0)

        ### Check dimensions ###
        self.check_sizes()

    def check_sizes(self):
        # Check that all matrices and operator provided to describe the 
        # system are of the right dimensions
        x = np.zeros(self.model.N)
        u = np.zeros((self.model.N, self.model.Nu))

        if (self.model.J0.shape[0] != self.model.N or self.model.J0.ndim != 1):
            raise Exception(f"J0 must have {self.model.N} elements but has shape {self.model.J0.shape}")
        if (self.model.M.shape != self.model.J0.shape):
            raise Exception(f"M must have {self.model.N} elements but has shape {self.model.M.shape}")
        if (self.model.M.shape != self.model.J0.shape):
            raise Exception(f"M must have {self.model.N} elements but has shape {self.model.M.shape}")
        self.model.Rmidn = self.model.Rmid(x)
        if (self.model.Rmidn.shape != self.model.J0.shape):
            raise Exception(f"Rmidn must have {self.model.N} elements but has shape {self.model.Rmidn.shape}")
        try:
            Kq = self.model.K_op(x)
        except:
            raise Exception(f"K_op function not working with input vector of size {self.model.N}")
        if (Kq.shape != self.model.J0.shape):
            raise Exception(f"Kq must have {self.model.N} elements but has shape {Kq.shape}")
        Rsvq = self.model.Rsv_op(x)
        if (Rsvq.shape != self.model.J0.shape):
            raise Exception(f"Rsvq must have {self.model.N} elements but has shape {Rsvq.shape}")
        try: 
            self.Gn = self.model.G(u)
        except:
            Exception(f"G function not working with input vector of shape {self.u.shape}")
        if (self.Gn.shape != (self.model.N, self.model.Nu)):
            raise Exception(f"Gn must have shape {(self.model.N, self.model.Nu)} but has shape {self.Gn.shape}")
        try:
            self.model.Enl(x)
        except:
            raise Exception(f"Enl function not working with input vector of size {self.model.N}")
        try:
            Fnl_val = self.model.Fnl(x)
        except:
            raise Exception(f"Fnl function not working with input vector of size {self.model.N}")
        if (Fnl_val.shape[0] != self.model.N or self.model.J0.ndim != 1):
            raise Exception(f"Fnl(q) must have {self.model.N} elements but has shape {Fnl_val.shape}")

    def A0_inv(self, Rmid):
        return 2 * self.dt2 * np.ones(self.model.N) / (2 * self.model.M + self.dt * Rmid)
    
    def B_op(self, q):
        return 2 * self.model.M / (self.dt2 * self.model.J0) * q - self.model.J0 * self.model.K_op(q) - self.model.Rsv_op(q / self.model.J0) / self.dt
    
    def C_op(self, q, g, Rmid):
        return - np.ones(self.model.N) * \
            (
                (self.model.M / self.dt2
                - Rmid / (2 * self.dt)) 
                * q / self.model.J0
                - 0.25 * g * g.dot(q / self.model.J0)
                - self.model.Rsv_op(q / self.model.J0) / self.dt
            )
                                              
    def g(self, q):
        return self.model.J0 * self.model.Fnl(q) / (np.sqrt(2 * self.model.Enl(q) + self.C0 + self.model.Num_eps))
    
    def g_mod(self, q, p, r):
        self.epsilon = r - np.sqrt(2 * self.model.Enl(q) + self.C0)
        return - self.lamba0 * self.epsilon * self.model.M * np.sign(p) / (np.abs(p) + self.model.Num_eps)

    def time_step(self, qlast, qnow, rn, unow, ConstantRmid = False):
        # qlast correponds to q^{n-1/2} and qnow to
        # q^{n+1/2}. rn corresponds to r^n. unow to u^{n+1/2}.
        # First, compute g
        pn = (qnow - qlast) * self.M_J0dt
        qn = (qlast + qnow)/2
        self.gn = self.g(qnow) + self.g_mod(pn, qn, rn)

        # Compute Rmid and G
        self.Gn = self.model.G(qnow)
        if not ConstantRmid:
            self.model.Rmidn = self.model.Rmid(qnow)
            # Get qnext q^{n+3/2} using Shermann-Morrison
            self.A0_inv_n = self.A0_inv(self.model.Rmidn)

        den = (4 + self.gn.dot(self.A0_inv_n * self.gn)) # eq 19g

        self.RHSn = self.B_op(qnow) + self.C_op(qlast, self.gn, self.model.Rmidn) - self.gn * rn + self.Gn @ unow # eq 19b
        
        qnext = self.model.J0 * self.A0_inv_n * self.RHSn \
            - self.model.J0 * self.A0_inv_n * self.gn / den * self.gn.dot(self.A0_inv_n * self.RHSn) # 19b+19g
        
        # Update auxiliary variable
        rnext = rn + self.gn.dot(qnext - qlast) / (2 * self.model.J0)
        return qnext, rnext
    
    def integrate(self, q0, u0, u_func, duration, plot = None, ConstantRmid = False):
        ### Time vector and storage initialization ###
        self.model.Nt = int(duration / self.dt)
        self.t = np.arange(self.model.Nt) * self.dt

        qdata = np.zeros(self.model.Nt)

        ### State initialization ###
        qlast = q0 - u0 * self.dt / 2
        qnow = q0 + u0 * self.dt / 2
        r = np.sqrt(2 * self.model.Enl(q0) + self.C0)

        if ConstantRmid:
            # Rmid vector is evaluated once at the begining of the simulation in this case
            self.model.Rmidn = self.model.Rmid(q0)
            self.A0_inv_n = self.A0_inv(self.model.Rmidn)

        if plot is not None:
            fig = plt.figure()
            plt.ion()
            plt.show(block = False)
            ax = plt.gca()
            ax.set_ylim(-1, 1)
            line1, = ax.plot(self.t[:2], np.zeros(2))
        ### Main loop ###
        for i in range(self.model.Nt):
            qnext, r = self.time_step(qlast, qnow, r, u_func(i * self.dt), ConstantRmid=ConstantRmid)
            qlast = qnow
            qnow = qnext

            if plot is not None:
                qdata[i] = qnow[plot]
                if ((i%1000) == 1):
                    line1.set_ydata(qdata[:i])
                    line1.set_xdata(self.t[:i])
                    ax.set_xlim(0, self.t[i])
                    minq = np.min(qdata)
                    maxq = np.max(qdata)
                    if (minq != maxq):
                        ax.set_ylim(-1.2*minq*np.sign(minq), 1.2 * maxq*np.sign(maxq))

                    fig.canvas.draw()
                    fig.canvas.flush_events()
                    # sleep(0.01)
        plt.show(block = True)

if __name__ == "__main__":
    model = Model(10)
    solver = SAVSolver(model, sr = 100)
    solver.check_sizes()
    q0 = np.ones(model.N)
    u0 = np.zeros(model.N)
    def u_func(t):
        return np.zeros(model.Nu)
    solver.integrate(q0, u0, u_func, 100, plot=None)

