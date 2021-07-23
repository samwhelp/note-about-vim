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
	sudo install -Dm755 ./xftkak /usr/local/bin/xftkak
	sudo install -Dm644 ./xftkak.desktop /usr/share/applications/xftkak.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftkak
	sudo rm -f /usr/share/applications/xftkak.desktop
.PHONY: remove
