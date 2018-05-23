[[Features](#features)] [[Documentation](#documentation-)] [[Installation](#installation--requirements---)] [[Examples](#examples)] [[Contributing](#contributing)] [[Citation](#citation)] [[License](#license-information)]

The electromagnetic modeller **empymod** can model electric or magnetic
responses due to a three-dimensional electric or magnetic source in a
layered-earth model with vertical transverse isotropic (VTI) resistivity, VTI
electric permittivity, and VTI magnetic permeability, from very low frequencies
(DC) to very high frequencies (GPR). The calculation is carried out in the
wavenumber-frequency domain, and various Hankel- and Fourier-transform methods
are included to transform the responses into the space-frequency and space-time
domains.


## Features

- Calculates the complete (diffusion and wave phenomena) 3D electromagnetic
  field in a layered-earth model including vertical transverse isotropic (VTI)
  resistivity, VTI electric permittivity, and VTI magnetic permeability, for
  electric and magnetic sources as well as electric and magnetic receivers.
- Modelling routines:
  - `bipole`: arbitrary oriented, finite length bipoles with given source
    strength; space-frequency and space-time domains.
  - `dipole`: infinitesimal small dipoles oriented along the principal axes,
    normalized field; space-frequency and space-time domains.
  - `wavenumber`: as `dipole`, but returns the wavenumber-frequency domain
    response.
  - `gpr`: calculates the ground-penetrating radar response for given central
    frequency, using a Ricker wavelet (experimental).
  - `analytical`: interface to the analytical, space-frequency and space-time
    domain solutions.
- Hankel transforms (wavenumber-frequency to space-frequency transform)
  - Digital Linear Filters DLF (using included filters or providing own ones)
  - Quadrature with extrapolation QWE
  - Adaptive quadrature QUAD
- Fourier transforms (space-frequency to space-time transform)
  - Digital Linear Filters DLF (using included filters or providing own ones)
  - Quadrature with extrapolation QWE
  - Logarithmic Fast Fourier Transform FFTLog
  - Fast Fourier Transform FFT
- Analytical, space-frequency and space-time domain solutions
  - Complete full-space (electric and magnetic sources and receivers);
    space-frequency domain
  - Diffusive half-space (electric sources and receivers); space-frequency and
    space-time domains
    - Direct wave (= diffusive full-space solution)
    - Reflected wave
    - Airwave (semi-analytical in the case of step responses)
- Add-ons (`empymod.scripts`)  
  The add-ons for empymod provide some very specific, additional functionalities:
  - `tmtemod`: Return up- and down-going TM/TE-mode contributions for
    x-directed electric sources and receivers, which are located in the same
    layer.
  - `fdesign`: Design digital linear filters for the Hankel and Fourier
    transforms.
  - `printinfo`: Can be used to show date, time, and package version information
    at the end of a notebook or script:
    - `versions('HTML')` for Jupyter Notebooks, and
    - `versions()` for IPython, QT, and Python consoles.



## Documentation [![](https://readthedocs.org/projects/empymod/badge/?version=stable)](https://empymod.readthedocs.io/en/stable/?badge=stable)

The documentation of `empymod` can be found at
[empymod.readthedocs.io](http://empymod.readthedocs.io/en/stable).


## Installation & requirements [![](https://anaconda.org/prisae/empymod/badges/version.svg)](https://anaconda.org/prisae/empymod)  [![](https://img.shields.io/pypi/v/empymod.svg)](https://pypi.python.org/pypi/empymod)

You can install empymod either via `conda`:

```bash
conda install -c prisae empymod
```

or via `pip`:

```bash
pip install empymod
```

Required are Python version 3.4 or higher and the modules `NumPy` and `SciPy`.

If you are new to Python I recommend using a Python distribution, which will
ensure that all dependencies are met, specifically properly compiled versions
of `NumPy` and `SciPy`; I recommend using
[Anaconda](https://www.anaconda.com/download). If you install Anaconda you
can simply start the *Anaconda Navigator*, add the channel `prisae`, and
`empymod` will appear in the package list and can be installed with a click.


## Examples

Lots of examples can be found in the
[example notebooks](https://github.com/empymod/example-notebooks). A good way
to get started is by following the
[*Geophysical Tutorial*](http://library.seg.org/doi/pdf/10.1190/tle36040352.1)
from the April 2017 issue of *The Leading Edge*
([source](https://github.com/empymod/article-tle2017)).


## Contributing

Head over to the [empymod GitHub page](https://github.com/empymod) if you would
like to contribute or file a bug. See the documentation for more information in
this regard.


## Citation

If you publish results for which you used empymod, please give credit by citing
this article:

> Werthmüller, D., 2017, An open-source full 3D electromagnetic modeler for 1D
> VTI media in Python: empymod: Geophysics, 82(6), WB9-WB19; DOI:
> [10.1190/geo2016-0626.1](http://doi.org/10.1190/geo2016-0626.1).

All releases have a [Zenodo-DOI](https://doi.org/10.5281/zenodo.593094),
provided on the [release-page](https://github.com/empymod/empymod/releases).
Also consider citing
[Hunziker et al. (2015)](https://doi.org/10.1190/geo2013-0411.1) and
[Key (2012)](https://doi.org/10.1190/geo2011-0237.1), without which
empymod would not exist.


## License information

Copyright 2016-2018 Dieter Werthmüller

Licensed under the Apache License, Version 2.0. See the `LICENSE`- and
`NOTICE`-files on GitHub or the documentation for more information.
