TEST_DIRS:=$(patsubst %/,%,$(shell echo */)) # automatically lists the dirs

# Fake target names, one per directory
TEST_DIRS_ALL:=$(patsubst %,%.all,$(TEST_DIRS))
TEST_DIRS_CLEAN:=$(patsubst %,%.clean,$(TEST_DIRS))

.PHONY: $(TEST_DIRS)

.PHONY: test
test: $(TEST_DIRS_ALL)

.PHONY: %.all
%.all: %
	$(MAKE) -C $< -f ../Makefile.test

.PHONY: clean
clean: $(TEST_DIRS_CLEAN)

.PHONY: %.clean
%.clean: %
	$(MAKE) -C $< -f ../Makefile.test clean
