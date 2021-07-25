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
	sudo install -Dm755 ./xftvim /usr/local/bin/xftvim
	sudo install -Dm644 ./xftvim.desktop /usr/share/applications/xftvim.desktop
.PHONY: install

remove:
	sudo rm -f /usr/local/bin/xftvim
	sudo rm -f /usr/share/applications/xftvim.desktop
.PHONY: remove
