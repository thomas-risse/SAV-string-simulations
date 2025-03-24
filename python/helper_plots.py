import matplotlib as mpl
import numpy as np
import matplotlib.pyplot as plt
import scienceplots

plt.style.use('science')

tex_fonts = {
    # Use LaTeX to write all text
    "text.usetex": True,
    "font.family": "serif",
    # Use 10pt font in plots, to match 10pt font in document
    "axes.labelsize": 8,
    "font.size": 8,
    # Make the legend/label fonts a little smaller
    "legend.fontsize": 8,
    "xtick.labelsize": 8,
    "ytick.labelsize": 8
}

plt.rcParams.update(tex_fonts)

def set_size(width, fraction=1, subplots=(1, 1), height_ratio=1):
    """Set figure dimensions to avoid scaling in LaTeX.

    Parameters
    ----------
    width: float or string
            Document width in inches, or string of predined document type
    fraction: float, optional
            Fraction of the width which you wish the figure to occupy
    subplots: array-like, optional
            The number of rows and columns of subplots.
    Returns
    -------
    fig_dim: tuple
            Dimensions of figure in inches
    """
    if width == 'DAFx':
        fig_width = 6.89111 * fraction
    else:
        fig_width = width * fraction

    # Golden ratio to set aesthetic figure height
    golden_ratio = (5**.5 - 1) / 2

    # Figure height in inches
    fig_height = fig_width * golden_ratio * height_ratio * (subplots[0] / subplots[1])

    return (fig_width, fig_height)

