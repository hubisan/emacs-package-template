EMACS ?= emacs
CASK ?= cask
PKG_DIR := $(shell $(CASK) package-directory)

.PHONY: all test checkdoc package-lint compile clean

all: test checkdoc package-lint elisp-lint clean

test: compile
	$(EMACS) --version | head -n 1 
	$(CASK) exec buttercup -L .

checkdoc:
	$(CASK) emacs -batch -L . \
	--eval '(setq-default sentence-end-double-space nil)' \
	--eval '(checkdoc-file "package-name.el")'

package-lint:
	$(CASK) emacs -batch -l package-lint  \
	-f package-lint-batch-and-exit package-name.el

elisp-lint:
	$(CASK) emacs -batch -l elisp-lint.el \
	-f elisp-lint-files-batch \
	--no-byte-compile --no-checkdoc --no-indent --no-fill-column org-jump.el

compile: 
	$(CASK) build

clean:
	rm -f *.elc	
