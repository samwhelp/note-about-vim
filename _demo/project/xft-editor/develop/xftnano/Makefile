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
	sudo install -Dm755 ./xftnano /usr/local/bin/xftnano
	sudo install -Dm644 ./xftnano.desktop /usr/share/applications/xftnano.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftnano
	sudo rm -f /usr/share/applications/xftnano.desktop
.PHONY: remove
