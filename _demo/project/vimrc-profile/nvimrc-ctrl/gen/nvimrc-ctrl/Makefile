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
	@echo '	$$ make app'
	@echo

.PHONY: help


prepare:
	pamac install php
.PHONY: prepare


app:
	php nvimrc-ctrl.sh > ../../nvimrc-ctrl
	chmod 755 ../../nvimrc-ctrl
.PHONY: app
