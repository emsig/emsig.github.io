## Installation

conda install -c prisae empymod

## Documentation

## Code

## Features

## Contributing


Installation & requirements |anaconda| |pypi| |github|
------------------------------------------------------

The easiest way to install the latest stable version of `empymod` is via
`conda`:

.. code:: bash

    conda install -c prisae empymod

or via `pip`:

.. code:: bash

   pip install empymod

Alternatively, you can download the latest version from GitHub and either add
the path to `empymod` to your python-path variable, or install it in your
python distribution via:

.. code:: bash

   python setup.py install

Required are python version 3.4 or higher and the modules `NumPy` and `SciPy`.
If you want to run parts of the kernel in parallel, the module `numexpr` is
required additionally.

**Note**: Do not use `scipy == 0.19.0`. It has a memory leak in `quad`, see
`github.com/scipy/scipy/pull/7216 <https://github.com/scipy/scipy/pull/7216>`_.
So if you use QUAD (or potentially QWE) in any of your transforms you might see
your memory usage going through the roof.

If you are new to Python I recommend using a Python distribution, which will
ensure that all dependencies are met, specifically properly compiled versions
of `NumPy` and `SciPy`; I recommend using Anaconda (version 3.x;
`continuum.io/downloads <https://www.continuum.io/downloads>`_).  If you
install Anaconda you can simply start the *Anaconda Navigator*, add the channel
`prisae` and `empymod` will appear in the package list and can be installed
with a click.


## Citation

## License


### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/empymod/empymod.github.io/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
