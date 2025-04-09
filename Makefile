.PHONY: all
all: acse simrv32im asrv32im

.PHONY: acse
acse:
	$(MAKE) -C acse

.PHONY: simrv32im
simrv32im:
	$(MAKE) -C simrv32im

.PHONY: asrv32im
asrv32im:
	$(MAKE) -C asrv32im

.PHONY: tests
tests: acse simrv32im asrv32im
	$(MAKE) -C tests

.PHONY: clean
clean:
	$(MAKE) -C acse clean
	$(MAKE) -C simrv32im clean
	$(MAKE) -C asrv32im clean
	$(MAKE) -C tests clean
	rm -rf bin
