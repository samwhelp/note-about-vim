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
	@echo '	$$ make install'
	@echo
.PHONY: help


install:
	sudo install -Dm755 ./xfted /usr/local/bin/xfted
	sudo install -Dm644 ./xfted.desktop /usr/share/applications/xfted.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xfted
	sudo rm -f /usr/share/applications/xfted.desktop
.PHONY: remove
