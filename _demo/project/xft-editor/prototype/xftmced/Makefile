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
	sudo install -Dm755 ./xftmced /usr/local/bin/xftmced
	sudo install -Dm644 ./xftmced.desktop /usr/share/applications/xftmced.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftmced
	sudo rm -f /usr/share/applications/xftmced.desktop
.PHONY: remove
