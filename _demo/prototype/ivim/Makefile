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
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make sync'
	@echo
	@echo '	$$ make vimrc-install'
	@echo
	@echo '	$$ make nvimrc-install'
	@echo

.PHONY: help


prepare:

.PHONY: prepare



sync:
	make -C gen/vimrc sync
.PHONY: sync


vimrc-install:
	mkdir -p ~/.vim
	install -Dm644 vimrc ~/.vim/vimrc
.PHONY: vimrc-install


nvimrc-install:
	mkdir -p ~/.config/nvim
	install -Dm644 vimrc ~/.config/nvim/init.vim
.PHONY: nvimrc-install
