

default: help
.PHONY: default


help:
	@echo Usage:

	@echo make
	@echo make help

	@echo make prepare-php-cli

	@echo make serve
	@echo make serve-daemon

	@echo make view

.PHONY: help


prepare-php-cli:
	sudo apt-get install php-cli
.PHONY: prepare-php-cli


serve:
	php -S localhost:8080
.PHONY: serve


serve-daemon:
	php -S localhost:8080 > server.log 2>&1 &
	@echo
	@echo '## Please run'
	@echo '$$ make view'
	@echo '## to view index.html'

.PHONY: serve-daemon


view:
	firefox http://localhost:8080/
.PHONY: view
