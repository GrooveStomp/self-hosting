DATE := $(shell date +%Y-%m-%d)

.PHONY: postgres pleroma
.DEFAULT_GOAL := all

all: postgres pleroma

postgres:
	docker build -t groovestomp/selfhost-postgres postgres
	docker push groovestomp/selfhost-postgres

pleroma:
	$(MAKE) -C pleroma

test:
	@echo ${DATE}
