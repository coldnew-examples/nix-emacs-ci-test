EMACS ?= emacs
BATCH := $(EMACS) $(EFLAGS) -batch -q -no-site-file -L .

all: mylib.elc

clean:
	$(RM) *.elc

%.elc: %.el
	$(BATCH) --eval '(byte-compile-file "$<")'

test: clean
	$(BATCH) -L . -l test/mylib-test.el -f ert-run-tests-batch-and-exit

.PHONY: clean test
