.. image:: ./_static/emsig-logo.svg
   :width: 400 px
   :align: center
   :alt: emsig logo
   :target: https://emsig.xyz

|
|
|

========================================
ElectroMagnetic Simulation in Geophysics
========================================

**emsig** are open-source Python codes to simulate electromagnetic data
(license under Apache v2) . Their main targets are geophysical applications
(exploration and monitoring, engineering, environmental), but they are by no
means limited to that. Currently there are two main codes, `empymod
<https://empymod.emsig.xyz>`_ and `emg3d <https://emg3d.emsig.xyz>`_. The
former is a 3D code for layered media, the latter is a low-memory multigrid
solver for 3D media. Both are written in Python and licensed under the
permissive Apache v2.


|
|
|

.. panels::
    :img-top-cls: p-5 pr-5

    ---
    :img-top: _static/empymod-logo.svg

    **3D EM modeller for 1D VTI media**
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    .. link-button:: https://empymod.emsig.xyz
        :text: empymod.emsig.xyz
        :classes: btn-block btn-secondary

    The modeller **empymod** can compute electric or magnetic responses due to
    a 3D electric or magnetic source in a layered-earth model with vertical
    transverse isotropic (VTI) resistivity, VTI electric permittivity, and VTI
    magnetic permeability, from very low frequencies (DC) to very high
    frequencies (GPR). The computation is carried out in the
    wavenumber-frequency domain, and various Hankel- and Fourier-transform
    methods are included to transform the responses into the space-frequency
    and space-time domains.

    ++++++

    .. code:: bash

       pip install empymod

    .. code:: bash

       conda install -c conda-forge empymod


    ---
    :img-top: _static/emg3d-logo.svg

    **Multigrid solver for 3D EM diffusion**
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    .. link-button:: https://emg3d.emsig.xyz
        :text: emg3d.emsig.xyz
        :classes: btn-block btn-secondary

    The modeller **emg3d** is a multigrid solver for 3D EM diffusion with
    tri-axial electrical anisotropy. The matrix-free solver can be used as main
    solver or as preconditioner for Krylov subspace methods, and the governing
    equations are discretized on a staggered Yee grid.

    ++++++

    .. code:: bash

       pip install emg3d

    .. code:: bash

       conda install -c conda-forge emg3d

|
|
|

:fa:`fas fa-users fa-2x` Contributing & Contact
-----------------------------------------------

**emsig** are community codes, please help to shape their future!

.. panels::
    :container: container-lg pb-1
    :column: col-lg-12 p-2

    :fa:`fab fa-github fa-2x padding=10em`
    · `Submit bugs, fix typos, contribute code, and so much more!
    <https://github.com/emsig>`_

    ---
    :column: col-lg-12 p-2

    :fa:`fab fa-slack fa-2x margin=10em`
    · Join the **#emsig**-channel either on `SWUNG
    <https://swu.ng/slack>`_ or on `SimPEG <http://slack.simpeg.xyz>`_.

    ---
    :column: col-lg-12 p-2

    :fa:`far fa-envelope fa-2x`
    · `If you prefer personal email you can contact me through
    my website werthmuller.org. <https://werthmuller.org/contact/>`_

|
|
|

Related ecosystem
=================

**emsig** and its codes **empymod** and **emg3d** are part of a bigger, fast
growing, open-source **EM & Potential Geo-Exploration Python Ecosystem**:

.. raw:: html

   <p style="line-height:10em">

   <a href=https://pygimli.org><img src="https://www.pygimli.org/_static/gimli_logo.svg" style="max-height: 2cm;"></a>

   <a href=https://simpeg.xyz><img src="https://raw.github.com/simpeg/simpeg/master/docs/images/simpeg-logo.png" style="max-height: 2.5cm;"></a>

   <a style="margin:1em" href=http://petgem.bsc.es><img src="http://petgem.bsc.es/_static/figures/petgem_logo.png" style="max-height: 3cm;"></a>

   <a href=https://gitlab.com/Rochlitz.R/custEM><img src="https://custem.readthedocs.io/en/latest/_static/custEMlogo.png" style="max-height: 1.5cm;"></a>

   <a href=https://docs.pyvista.org><img src="https://raw.github.com/pyvista/pyvista/master/docs/_static/pyvista_logo_sm.png" style="max-height: 2.5cm;"></a>

   <a style="margin:1em" href=https://www.fatiando.org><img src="https://raw.github.com/fatiando/logo/master/fatiando-logo-background.png" style="max-height: 3cm;"></a>

   <a href=https://www.gempy.org><img src="https://raw.github.com/cgre-aachen/gempy/master/docs/source/_static/logos/gempy.png" style="max-height: 2.5cm;"></a>

   <a style="margin:1em" href=https://softwareunderground.github.io/subsurface/><img src="https://raw.github.com/softwareunderground/subsurface/main/docs/source/_static/logos/subsurface.png" style="max-height: 3cm;"></a>

   </p>

|
|
|

.. dropdown:: About the name and logo of **emsig**

    The name **emsig** is an abbreviation in English and a word-play in German.

    It stands primarily as abbreviation for ElectroMagnetic Simulation in
    Geophysics. However, **emsig** is also a German adjective, meaning
    *hard-working* or *diligent*. Surely, our codes make our computers work
    hard!

    Finally, moving to the logo, the **sig**-ending can be seen as the short
    form of **sigma**, the symbol generally used for conductivity in
    geophysics, one of the elementary properties in electromagnetic modelling.
    The «s» in the logo of **emsig** is denoted by «ς», a variation of «σ»
    (sigma) in the Greek alphabet.

    The symbol itself represents the perpendicularity of electric and magnetic
    fields.

    .. image:: ./_static/emsig-logo.svg
