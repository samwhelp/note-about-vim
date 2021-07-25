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
	sudo install -Dm755 ./xftne /usr/local/bin/xftne
	sudo install -Dm644 ./xftne.desktop /usr/share/applications/xftne.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftne
	sudo rm -f /usr/share/applications/xftne.desktop
.PHONY: remove
