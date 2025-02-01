from StringGeom import *
from os import mkdir
from os.path import exists, join
import json
import shutil

# Read config file
with open("config.json") as f:
    config = json.load(f)
print("config : ", config)

# String with parameters from config file
string = StringGeom(**config["string_params"])
print("Simulating string with parameters: ", string.__dict__)

# Sampling frequencies
srs = [config["basesr"] * 2**(i) for i in range(config["n_srs"])]
sr_ref = srs[-1] * 4

print(f"Computing for reference samplerate {sr_ref} and increasing samplerates {srs}.")

# Compute h and N from stability conditon at lowest sr
h, N = string.h_stability(srs[0], odd=False, alpha = config["alphaCFL"])

# Initial condition: q0 is set to zero for ease of initialisation of the second order scheme formulation
def qinit(N, h):
    return np.zeros_like(string.hann_init(string.l0/2, 0.2, 4e-3, h, N-1))


def uinit(N, h):
    if config["init"]["mode"] == "modal":
        return (config["init"]["amplitude"] * np.sin(np.pi * np.arange(N+1) / (N)))[1:-1]
    else:
        return string.hann_init(string.l0*config["init"]["position"], config["init"]["width"], config["init"]["amplitude"], h, N-1)


plt.figure()
x = np.linspace(0, string.l0, N+1)[1:-1]
plt.plot(x, uinit(N, 1))
plt.title("Initial velocity")
plt.xlabel("Position (m)")
plt.ylabel("Velocity (m/s)")
plt.show(block=False)

if np.allclose(qinit(100, h), qinit(100, h)[::-1], atol=1e-16) and np.allclose(uinit(100, h), uinit(100, h)[::-1], atol=1e-16):
    print("Initial conditions are symmetric")

# Run simulations
resultfolder = config["resultfolder"]
if not exists(resultfolder):
    mkdir(resultfolder)
# Copy config file used to result folder
shutil.copy("config.json", join(resultfolder, "config.json"))
# Time convergence
if config["convmode"] == "time":
    errors_sav, errors_semi = string.run_convergence(qinit,
                                                     uinit,
                                                     srs,
                                                     sr_ref,
                                                     np.array(
                                                         config["lambda0s"]),
                                                     config["duration"],
                                                     h,
                                                     N,
                                                     folder=resultfolder)
else:
    errors_sav, errors_semi = string.run_convergence_space_time(qinit,
                                                                uinit,
                                                                srs,
                                                                sr_ref,
                                                                np.array(
                                                                    config["lambda0s"]),
                                                                config["duration"],
                                                                folder=resultfolder,
                                                                alpha=config["alphaCFL"])