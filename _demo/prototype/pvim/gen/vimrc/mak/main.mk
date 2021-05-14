

build:
	@build.sh
.PHONY: build


sync: build
	@sync.sh
.PHONY: sync


prepare:
	@prepare.sh
.PHONY: prepare
