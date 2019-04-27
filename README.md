<img src="./assets/logo-empymod-plain.png" alt="empymod" width="250"/>

### An open-source full 3D electromagnetic modeller for 1D VTI media.

The electromagnetic modeller **empymod** can model electric or magnetic
responses due to a three-dimensional electric or magnetic source in a
layered-earth model with vertical transverse isotropic (VTI) resistivity, VTI
electric permittivity, and VTI magnetic permeability, from very low frequencies
(DC) to very high frequencies (GPR). The calculation is carried out in the
wavenumber-frequency domain, and various Hankel- and Fourier-transform methods
are included to transform the responses into the space-frequency and space-time
domains. It is written entirely in Python and licensed under the *Apache
License, Version 2.0*.

**Useful links:**
<ul class="fa-ul">
- <i class="fas fa-book fa-2x"></i> Manual: [empymod.rtfd.org](https://empymod.readthedocs.io) [![](https://readthedocs.org/projects/empymod/badge/?version=stable)](https://empymod.readthedocs.io/en/stable/?badge=stable)
    - <i class="fas fa-copy fa-3x"></i> [Feature-list](https://empymod.readthedocs.io/en/stable/index.html#features)
    - <i class="fab fa-python fa-4x"></i> [Installation guide](https://empymod.readthedocs.io/en/stable/index.html#installation) [![](https://anaconda.org/prisae/empymod/badges/version.svg)](https://anaconda.org/prisae/empymod)  [![](https://img.shields.io/pypi/v/empymod.svg)](https://pypi.python.org/pypi/empymod)
- <i class="fas fa-scroll fa-lg"></i> Examples: [empymod-examples](https://github.com/empymod/empymod-examples)
</ul>

<br>
<hr style="height:1px;border:none;color:#000000; background:#000000">
<br>
<img src="./assets/logo-emg3d-transp.png" alt="emg3d" width="250"/>

### A multigrid solver for 3D electromagnetic diffusion.

The multigrid solver **emg3d** is a solver for 3D electromagnetic diffusion
with tri-axial electrical anisotropy. The matrix-free solver can be used as
main solver or as preconditioner for one of the Krylov subspace methods
implemented in `scipy.sparse.linalg`, and the governing equations are
discretized on a staggered Yee grid. The code is written completely in Python
using the numpy/scipy-stack, where the most time- and memory-consuming parts
are sped up through jitted numba-functions. It is licensed under the *Apache
License, Version 2.0*.

**Useful links:**
- <i class="fas fa-book fa-lg"></i> Manual: [emg3d.rtfd.org](https://emg3d.readthedocs.io)
    - <i class="fas fa-copy fa-lg"></i> [Feature-list](https://emg3d.readthedocs.io/en/stable/index.html#features)
    - <i class="fas fa-copy fa-lg"></i> [Installation guide](https://emg3d.readthedocs.io/en/stable/index.html#installation)
- <i class="fas fa-scroll fa-lg"></i> Examples: [emg3d-examples](https://github.com/empymod/emg3d-examples)

<br>
<hr style="height:1px;border:none;color:#000000; background:#000000">

## Contributing

- <i class="fab fa-github fa-lg"></i>
  [empymod GitHub page](https://github.com/empymod)  
  Submit bugs, fix typos, contribute code, and so much more!
- <i class="fab fa-slack fa-lg"></i>
  [SimPEG on Slack](http://slack.simpeg.xyz)  
  Join the Slack channel &laquo;em-x-d&raquo; of [SimPEG](https://simpeg.xyz).
- <i class="fas fa-bookmark fa-lg"></i>Cite us:

  If you publish results for which you used our codes, please give credit by
  citing us.

  **empymod** - [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.593094.svg)](https://doi.org/10.5281/zenodo.593094)

  > Werthmüller, D., 2017, An open-source full 3D electromagnetic modeler for
  > 1D VTI media in Python: empymod: Geophysics, 82(6), WB9--WB19; DOI:
  > [10.1190/geo2016-0626.1](http://doi.org/10.1190/geo2016-0626.1).

  **emg3d** A Zenodo-DOI and citation will follow soon.

  You can find a list of all articles related to *empymod* and *emg3d* in the
  [publications-repo](https://github.com/empymod/publications).
