## About

The electromagnetic modeller **empymod** can model electric or magnetic
responses due to a three-dimensional electric or magnetic source in a
layered-earth model with vertical transverse isotropy, electric permittivity,
and magnetic permeability, from very low frequencies (DC) to very high
frequencies (GPR). The calculation is carried out in the wavenumber-frequency
domain, and various Hankel- and Fourier-transform methods are included to
transform the responses into the space-frequency and space-time domains.


## Installation & requirements

You can install empymod either via `conda`:

```bash
conda install -c prisae empymod
```

or via `pip`:

```bash
pip install empymod
```

Required are python version 3.4 or higher and the modules `NumPy` and `SciPy`.
If you want to run parts of the kernel in parallel, the module `numexpr` is
required additionally.

**Note**: Do not use `scipy == 0.19.0`. It has a memory leak in `quad`
([source](https://github.com/scipy/scipy/pull/7216)). So if you use QUAD (or
potentially QWE) in any of your transforms you might see your memory usage
going through the roof.

If you are new to Python I recommend using a Python distribution, which will
ensure that all dependencies are met, specifically properly compiled versions
of `NumPy` and `SciPy`; I recommend using
[Anaconda](https://www.continuum.io/downloads). If you install Anaconda you
can simply start the *Anaconda Navigator*, add the channel `prisae` and
`empymod` will appear in the package list and can be installed with a click.

## Documentation

The manual of `empymod` can be found at
[empymod.readthedocs.io](http://empymod.readthedocs.io/en/stable).

## Examples

A good way to get started is by following the [*Geophysical
Tutorial*](http://library.seg.org/doi/pdf/10.1190/tle36040352.1) from the April
2017 issue of the *The Leading Edge*
([source](https://github.com/empymod/article-tle2017)).

Lots of examples can be found in the
[notebook repository](https://github.com/empymod/example-notebooks).

## Code

If you want to dig deeper you can find the source of empymod, its accompanying
notebooks, and the published articles on the
[empymod project page](https://github.com/empymod).

## Contributing
Please get in touch if you would like to contribute some additional code to
empymod or additional examples of its usage, encountered a bug, or simply have
a question regarding its usage. Just make a pull-request or open an issue on
GitHub.

## Features
- Calculates the full (diffusion and wave phenomena) 3D electromagnetic field
  in a layered-earth model:
  - Wavenumber-frequency domain
  - Space-frequency domain
  - Space-time domain
  - Electric and magnetic sources
  - Electric and magnetic receivers
  - Vertical transverse isotropic resistivity
  - Vertical transverse electric permittivity
  - Vertical transverse magnetic permeability
- Hankel transforms
  - Adaptive quadrature
  - Fast Hankel transform
    (Includes 9 different filters between 51 and 801 points; own ones can be
    used)
  - Quadrature with extrapolation
- Fourier transforms
  - Sine/Cosine-transforms
    (Includes 9 different filters between 81 and 241 points; own ones can be
    used)
  - Quadrature with extrapolation
  - Fast Fourier Transform
  - Logarithmic Fast Fourier Transform
- Analytical, space-frequency and space-time domain solutions
  - Full fullspace (el./mag. src/rec); space-frequency domain
  - Diffusive halfspace (el. src/rec); space-frequency and space-time domains
    - Direct wave (= diffusive fullspace solution)
    - Reflected wave
    - Airwave (semi-analytical in the case of step-responses)
- Modelling routines:
  - Bipole: arbitrary oriented, finite length bipoles with given source
    strength, space-frequency and space-time domains.
  - Dipole: infinitesimal small dipoles oriented along the principal axis,
    normalized field, space-frequency and space-time domains.
  - Wavenumber: as previous routine, but returns the wavenumber-frequency
    response.
  - GPR: Model the ground-penetrating radar response for given central
    frequency, using a Ricker wavelet (experimental).
  - Analytical: interface to the analytical, space-frequency and space-time
    domain solutions.


## Citation

I am in the process of publishing an article in Geophysics regarding empymod,
and I will put the info here once it is a reality. If you publish results for
which you used empymod, please consider citing this article. Meanwhile, you
could cite the Geophysical Tutorial:

> Werthmüller, D., 2017, Getting started with controlled-source electromagnetic
> 1D modeling: The Leading Edge, 36, 352-355; DOI: 10.1190/tle36040352.1.

Also consider citing the two articles given below, Hunziker et al. (2015),
and Key (2012), without which empymod would not exist:

> Hunziker, J., J. Thorbecke, and E. Slob, 2015, The electromagnetic response
> in a layered vertical transverse isotropic medium: A new look at an old
> problem: Geophysics, 80, F1-F18; DOI: 10.1190/geo2013-0411.1.

> Key, K., 2012, Is the fast Hankel transform faster than quadrature?:
> Geophysics, 77, F21-F30; DOI: 10.1190/GEO2011-0237.1.


## License
Licensed under the Apache License, Version 2.0.
