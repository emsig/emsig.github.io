# Command line options.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = emsig
SOURCEDIR     = .
BUILDDIR      = _build

# Will also be triggered if "make" is provided without argument.
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.ONESHELL:
deploy:
	mkdir deploy
	cp -r _build/html/* deploy/.
	cp -r _build/html/.[a-zA-Z]* deploy/.
	cp CNAME deploy/.
	cp -r .git deploy/.
	cd deploy/
	git branch -D gh-pages &>/dev/null
	git checkout --orphan gh-pages
	git add --all
	git commit -m 'Update website'
	git push -f --set-upstream origin gh-pages
	cd ..
	rm -rf deploy/

preview:
	xdg-open _build/html/index.html

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
