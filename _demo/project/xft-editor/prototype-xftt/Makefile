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
	sudo install -Dm755 ./xftt /usr/local/bin/xftt
	sudo install -Dm644 ./xftt.desktop /usr/share/applications/xftt.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftt
	sudo rm -f /usr/share/applications/xftt.desktop
.PHONY: remove
