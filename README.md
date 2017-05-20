## About

The electromagnetic modeller **empymod** can model electric or magnetic responses due to a three-dimensional electric or
magnetic source in a layered-earth model with vertical transverse isotropy, electric permittivity, and magnetic
permeability, from very low frequencies (DC) to very high frequencies (GPR). The calculation is carried out in the 
wavenumber-frequency domain, and various Hankel- and Fourier-transform methods are included to transform the responses into 
the space-frequency and space-time domains.


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

**Note**: Do not use `scipy == 0.19.0`. It has a memory leak in `quad`, see
[github.com/scipy/scipy/pull/7216](https://github.com/scipy/scipy/pull/7216).
So if you use QUAD (or potentially QWE) in any of your transforms you might see
your memory usage going through the roof.

If you are new to Python I recommend using a Python distribution, which will
ensure that all dependencies are met, specifically properly compiled versions
of `NumPy` and `SciPy`; I recommend using Anaconda (version 3.x;
[continuum.io/downloads](https://www.continuum.io/downloads)).  If you
install Anaconda you can simply start the *Anaconda Navigator*, add the channel
`prisae` and `empymod` will appear in the package list and can be installed
with a click.

## Documentation

The manual of `empymod` can be found at
[empymod.readthedocs.io](http://empymod.readthedocs.io/en/stable).

## Examples

A good way to get started is by following the
[*Geophysical Tutorial*](http://library.seg.org/doi/pdf/10.1190/tle36040352.1)
from the April 2017 issue of the *The Leading Edge*:

Lots of examples can be found in the [notebooks repository](https://github.com/empymod/example-notebooks).

## Code

## Features

## Contributing

## Citation

## License



