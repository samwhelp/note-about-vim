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
	sudo install -Dm755 ./xftmicro /usr/local/bin/xftmicro
	sudo install -Dm644 ./xftmicro.desktop /usr/share/applications/xftmicro.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftmicro
	sudo rm -f /usr/share/applications/xftmicro.desktop
.PHONY: remove
