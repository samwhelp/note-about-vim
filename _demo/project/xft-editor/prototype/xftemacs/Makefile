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
	sudo install -Dm755 ./xftemacs /usr/local/bin/xftemacs
	sudo install -Dm644 ./xftemacs.desktop /usr/share/applications/xftemacs.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftemacs
	sudo rm -f /usr/share/applications/xftemacs.desktop
.PHONY: remove
