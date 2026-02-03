import numpy as np

def dft_phasor(samples):
    N = len(samples)
    k = np.arange(N)
    theta = 2*np.pi/N

    Xc = np.sum(samples*np.cos(k*theta))
    Xs = np.sum(samples*np.sin(k*theta))

    X_real = np.sqrt(2)/N * Xc
    X_imag = -np.sqrt(2)/N * Xs

    return X_real, X_imag
