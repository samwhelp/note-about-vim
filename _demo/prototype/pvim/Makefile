default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make sync'
	@echo

.PHONY: help


prepare:
	make -C gen/vimrc prepare
.PHONY: prepare

sync:
	make -C gen/vimrc sync
.PHONY: sync
