import time

extensions = [
    'sphinx_panels',
]
panels_add_bootstrap_css = False

# templates_path = ['_templates']
source_suffix = '.rst'

description = 'emsig: ElectroMagnetic Simulation in Geophysics'
project = 'emsig'
author = 'The emsig community'
copyright = f'2018-{time.strftime("%Y")}, {author}'

pygments_style = 'friendly'
html_theme = 'pydata_sphinx_theme'

html_static_path = ['_static']
html_logo = '_static/emsig-logo.svg'
html_favicon = '_static/favicon.ico'
html_theme_options = {
    "github_url": "https://github.com/emsig",
    "external_links": [
        {"name": "empymod", "url": "https://empymod.emsig.xyz"},
        {"name": "emg3d", "url": "https://emg3d.emsig.xyz"},
    ],
    # "navbar_start": ["navbar-logo"],
    # "navbar_center": ["navbar-nav"],
    # "navbar_end": ["navbar-icon-links"],
    # "footer_items": ["copyright", "sphinx-version"],
    "page_sidebar_items": [],
}
html_file_suffix = '.html'
html_sidebars = {
    "**": [],
}
html_css_files = ["https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"]
