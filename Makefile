
.PHONY: README.md

TEST_SCRIPTS = use.pl \
	           require-begin.pl require.pl \
	           use-universal-require.pl use-universal-require-begin.pl
all:
	@echo blah

README.md:
	@echo '# result' > $@
	@echo '' >> $@
	@for pl in $(TEST_SCRIPTS); do \
       echo "## $$pl"; \
	   echo '```'; \
	   ./$$pl; \
	   echo '```'; \
	   echo; \
	 done 2>&1 | tee -a $@

