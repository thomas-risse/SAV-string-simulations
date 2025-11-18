import numpy as np
import matplotlib.pyplot as plt
from time import sleep

class SAVSolver():
    """General SAV solver using same matrices thatn in the JAES paper.
    """
    def __init__(self, sr = 44100, **kwargs):
        ### System definition ###
        # Number of dofs
        self.N = 10
        # Number of inputs
        self.Nu = 1
        # Diagonal system matrices
        self.J0 = np.ones(self.N)
        self.M = self.J0
        # Rmid is diagonal but can depend on the state
        self.Rmid = lambda q: (0 * np.ones(self.N))
        # Non-diagonal system matrices as operators
        self.K_op = lambda x: (x)
        self.Rsv_op = lambda x: (0.1 * x)
        # Input matrix, may depend on the state
        self.G = lambda q: (np.ones((self.N, self.Nu)))
        # Nonlinear functions
        self.Enl = lambda q: (0.25 * np.sum(q**4)) * 100
        self.Fnl = lambda q: (q**3) * 100

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
        self.num_eps = 1e-16

        ### Some vector initialization ###
        self.gn = np.zeros(self.N)
        self.Rmidn = np.zeros(self.N)
        self.Gn = np.zeros(self.N)
        self.A0_inv_n = np.zeros(self.N)

        ### Check dimensions ###
        self.check_sizes()

    def A0_inv(self, Rmid):
        return 2 * self.dt2 * np.ones(self.N) / (2 * self.M + self.dt * Rmid)
    
    def B_op(self, q):
        return 2 * self.M / (self.dt2 * self.J0) * q - self.J0 * self.K_op(q) - self.Rsv_op(q / self.J0) / self.dt
    
    def C_op(self, q, g, Rmid):
        return - np.ones(self.N) * \
            (
                (self.M / self.dt2 
                - g.dot(g) / 4 - Rmid / (2 * self.dt)) * q / self.J0
                - self.Rsv_op(q / self.J0) / self.dt
            )
                                              
    def g(self, q):
        return self.J0 * self.Fnl(q) / (np.sqrt(2 * self.Enl(q) + self.C0 + self.num_eps))
    
    def g_mod(self, q, p, r):
        self.epsilon = r - np.sqrt(2 * self.Enl(q) + self.C0)
        return - self.lamba0 * self.epsilon * self.M * np.sign(p) / (np.abs(p) + self.num_eps)
    
    def check_sizes(self):
        # Check that all matrices and operator provided to describe the 
        # system are of the right dimensions
        x = np.zeros(self.N)
        u = np.zeros((self.N, self.Nu))

        if (self.J0.shape[0] != self.N or self.J0.ndim != 1):
            raise Exception(f"J0 must have {self.N} elements but has shape {self.J0.shape}")
        if (self.M.shape != self.J0.shape):
            raise Exception(f"M must have {self.N} elements but has shape {self.M.shape}")
        if (self.M.shape != self.J0.shape):
            raise Exception(f"M must have {self.N} elements but has shape {self.M.shape}")
        self.Rmidn = self.Rmid(x)
        if (self.Rmidn.shape != self.J0.shape):
            raise Exception(f"Rmidn must have {self.N} elements but has shape {self.Rmidn.shape}")
        try:
            Kq = self.K_op(x)
        except:
            Exception(f"K_op function not working with input vector of size {self.N}")
        if (Kq.shape != self.J0.shape):
            raise Exception(f"Rmidn must have {self.N} elements but has shape {Kq.shape}")
        Rsvq = self.Rsv_op(x)
        if (Rsvq.shape != self.J0.shape):
            raise Exception(f"Rmidn must have {self.N} elements but has shape {Rsvq.shape}")
        try: 
            self.Gn = self.G(u)
        except:
            Exception(f"G function not working with input vector of shape {self.u.shape}")
        if (self.Gn.shape != (self.N, self.Nu)):
            raise Exception(f"Rmidn must have shape {(self.N, self.Nu)} but has shape {self.Gn.shape}")
        try:
            self.Enl(x)
        except:
            raise Exception(f"Enl function not working with input vector of size {self.N}")
        try:
            Fnl_val = self.Fnl(x)
        except:
            raise Exception(f"Fnl function not working with input vector of size {self.N}")
        if (Fnl_val.shape[0] != self.N or self.J0.ndim != 1):
            raise Exception(f"Fnl(q) must have {self.N} elements but has shape {Fnl_val.shape}")

    def time_step(self, qlast, qnow, rn, unow):
        # qlast correponds to q^{n-1/2} and qnow to
        # q^{n+1/2}. rn corresponds to r^n. unow to u^{n+1/2}.
        # First, compute g
        pn = (qnow - qlast / self.dt) * self.M / self.J0
        qn = (qlast + qnow)/2
        self.gn = self.g(qnow) + self.g_mod(pn, qn, rn)
        # Compute Rmid and G
        self.Rmidn = self.Rmid(qnow)
        self.Gn = self.G(qnow)
        # Get qnext q^{n+3/2} using Shermann-Morrison
        self.A0_inv_n = self.A0_inv(self.Rmidn)
        qnext = self.J0 * (self.A0_inv_n - self.A0_inv_n * self.gn.dot(self.gn) * self.A0_inv_n / (4 + self.gn.dot(self.A0_inv_n * self.gn))) * \
            (self.B_op(qnow) + self.C_op(qlast, self.gn, self.Rmidn) - self.gn * rn + self.Gn @ unow)
        rnext = rn + self.gn.dot(qnext - qlast) / 2
        return qnext, rnext
    
    def integrate(self, q0, u0, u_func, duration):
        ### Time vector and storage initialization ###
        self.Nt = int(duration / self.dt)
        self.t = np.arange(self.Nt) * self.dt

        qdata = np.zeros(self.Nt)

        ### State initialization ###
        qlast = q0 - u0 * self.dt / 2
        qnow = q0 + u0 * self.dt / 2
        r = np.sqrt(2 * self.Enl(q0) + self.C0)

        fig = plt.figure()
        plt.ion()
        plt.show(block = False)
        ax = plt.gca()
        ax.set_ylim(-1, 1)
        line1, = ax.plot(self.t[:2], np.zeros(2))
        ### Main loop ###
        for i in range(self.Nt):
            qnext, r = self.time_step(qlast, qnow, r, u_func(i * self.dt))
            qlast = qnow
            qnow = qnext

            qdata[i] = qnow[0]
            print(qdata[i])

            if ((i%1000) == 1):
                line1.set_ydata(qdata[:i])
                line1.set_xdata(self.t[:i])
                ax.set_xlim(0, self.t[i])
                # ax.set_ylim(-1.2*np.min(qdata), 1.2 * np.max(qdata))

                fig.canvas.draw()
                fig.canvas.flush_events()
                sleep(0.1)
        plt.show(block = True)

    
if __name__ == "__main__":
    solver = SAVSolver(sr = 100)
    solver.check_sizes()
    q0 = np.ones(solver.N)
    u0 = np.zeros(solver.N)
    def u_func(t):
        return np.zeros(solver.Nu)
    solver.integrate(q0, u0, u_func, 100)

