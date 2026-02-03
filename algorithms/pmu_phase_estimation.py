import numpy as np
from scipy.signal import hilbert

def estimate_phase(signal):
    analytic = hilbert(signal)
    phase = np.angle(analytic)
    return phase
