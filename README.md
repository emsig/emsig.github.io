## About

The electromagnetic modeller **empymod** can model electric or magnetic
responses due to a three-dimensional electric or magnetic source in a
layered-earth model with vertical transverse isotropic (VTI) resistivity, VTI
electric permittivity, and VTI magnetic permeability, from very low frequencies
(DC) to very high frequencies (GPR). The calculation is carried out in the
wavenumber-frequency domain, and various Hankel- and Fourier-transform methods
are included to transform the responses into the space-frequency and space-time
domains.


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
If you want to run parts of the kernel in parallel, the module `numexpr` is
required additionally.

**Note**: Do not use `scipy == 0.19.0`. It has a memory leak in `quad`
([source](https://github.com/scipy/scipy/pull/7216)). So if you use QUAD (or
potentially QWE) in any of your transforms you might see your memory usage
going through the roof.

If you are new to Python I recommend using a Python distribution, which will
ensure that all dependencies are met, specifically properly compiled versions
of `NumPy` and `SciPy`; I recommend using
[Anaconda](https://www.anaconda.com/download). If you install Anaconda you
can simply start the *Anaconda Navigator*, add the channel `prisae` and
`empymod` will appear in the package list and can be installed with a click.


## Documentation [![](https://readthedocs.org/projects/empymod/badge/?version=stable)](https://empymod.readthedocs.io/en/stable/?badge=stable)

The manual of `empymod` can be found at
[empymod.readthedocs.io](http://empymod.readthedocs.io/en/stable).


## Examples

A good way to get started is by following the [*Geophysical
Tutorial*](http://library.seg.org/doi/pdf/10.1190/tle36040352.1) from the April
2017 issue of *The Leading Edge*
([source](https://github.com/empymod/article-tle2017)).

Lots of examples can be found in the
[notebook repository](https://github.com/empymod/example-notebooks).


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
  - Adaptive quadrature
  - Fast Hankel transform
    (includes 9 different filters between 51 and 801 points; own ones can be
    provided)
  - Quadrature with extrapolation
- Fourier transforms (space-frequency to space-time transform)
  - Sine/Cosine-transforms
    (includes 5 different filters between 81 and 241 points; own ones can be
    provided)
  - Quadrature with extrapolation
  - Fast Fourier Transform
  - Logarithmic Fast Fourier Transform
- Analytical, space-frequency and space-time domain solutions
  - Complete full-space (electric and magnetic sources and receivers);
    space-frequency domain
  - Diffusive half-space (electric sources and receivers); space-frequency and
    space-time domains
    - Direct wave (= diffusive full-space solution)
    - Reflected wave
    - Airwave (semi-analytical in the case of step responses)


## Code

If you want to dig deeper you can find the source of empymod, its accompanying
notebooks, and the published articles on the
[empymod project page](https://github.com/empymod).


## Contributing
Please get in touch if you would like to contribute some additional code to
empymod or additional examples of its usage, encountered a bug, or simply have
a question regarding its usage. Just make a pull-request or open an issue on
GitHub. Have a look at the
[Roadmap](https://github.com/empymod/empymod#roadmap)
if you need an idea on what to work.


## Citation

If you publish results for which you used empymod, please give credit by citing
this article:

> Werthmüller, D., 2017, An open-source full 3D electromagnetic modeler for 1D
> VTI media in Python: empymod: Geophysics, 82, WB9-WB19; DOI:
> [10.1190/geo2016-0626.1](http://doi.org/10.1190/geo2016-0626.1).

Also consider citing Hunziker et al. (2015) and Key (2012), without which
empymod would not exist:

> Hunziker, J., J. Thorbecke, and E. Slob, 2015, The electromagnetic response in
> a layered vertical transverse isotropic medium: A new look at an old problem:
> Geophysics, 80, F1-F18; DOI:
> [10.1190/geo2013-0411.1](http://doi.org/10.1190/geo2013-0411.1).  
>  
> Key, K., 2012, Is the fast Hankel transform faster than quadrature?:
> Geophysics, 77, F21-F30; DOI:
> [10.1190/geo2011-0237.1](http://doi.org/10.1190/geo2011-0237.1).

All releases have a Zenodo-DOI, provided on the
[release-page](https://github.com/empymod/empymod/releases).


## Contact

Please use the possibilities provided by GitHub to get in touch
([opening issues](https://github.com/empymod/empymod/issues),
[pull requests](https://github.com/empymod/empymod/pulls)). Use the
[contact form](https://werthmuller.org/contact) on my personal website if you
would like to write me outside of GitHub.


## Notice

This product includes software that was initially (till 01/2017) developed at
*The Mexican Institute of Petroleum IMP*
([Instituto Mexicano del Petróleo](http://www.gob.mx/imp)). The project was
funded through *The Mexican National Council of Science and Technology*
([Consejo Nacional de Ciencia y Tecnología](http://www.conacyt.mx)). Since
02/2017 it is a personal effort, and new contributors are welcome!


## License

Copyright 2016-2017 Dieter Werthmüller

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License.  You may obtain a copy of the
License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied.  See the License for the
specific language governing permissions and limitations under the License.

See the *LICENSE*-file in the root directory for a full reprint of the Apache
License.
