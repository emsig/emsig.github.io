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
	mkdir tmp
	cp -r _build/html/* tmp/.
	cp -r _build/html/.[a-z][A-Z]* tmp/.
	cp CNAME tmp/.
	cp -r .git tmp/.
	cd tmp/
	git branch -D gh-pages &>/dev/null
	git checkout --orphan gh-pages
	git add --all
	git commit -m 'Update website'
	git push -f --set-upstream origin gh-pages
	cd ..
	rm -rf tmp/

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
