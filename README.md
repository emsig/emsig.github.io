## Installation & requirements

The easiest way to install the latest stable version of `empymod` is via
`conda`:

```bash
conda install -c empymod
```

or via `pip`:

```bash
pip install empymod
```

Alternatively, you can download the latest version from GitHub and either add
the path to `empymod` to your python-path variable, or install it in your
python distribution via:

```bash
python setup.py install
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

The manual of `empymod` can be found at `empymod.readthedocs.io
[empymod.readthedocs.io](http://empymod.readthedocs.io/en/stable).

Examples can be found in the
[empymode/example-notebooks](https://github.com/empymod/example-notebooks)-repository.

Articles (published or in preparation):

    - [empymod/article-geo2017 <https://github.com/empymod/article-geo2017>`_
    - [empymod/article-tle2017 <https://github.com/empymod/article-tle2017>`_


## Code

## Features

## Contributing

## Citation

## License



