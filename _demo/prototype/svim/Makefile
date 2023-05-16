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
	@echo '	$$ make plug_vim'
	@echo
	@echo '	$$ make plug_install'
	@echo
	@echo '	$$ make sync'
	@echo
	@echo '	$$ make vimrc-install'
	@echo
	@echo '	$$ make nvimrc-install'
	@echo

.PHONY: help


prepare: plug_vim plug_install

.PHONY: prepare


plug_vim:
	curl -fLo ~/.cache/svim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
.PHONY: plug_vim


##
# nvim -nNRe -u vimrc -c 'try | :PlugInstall | endtry'
# nvim -nNRe -u vimrc -c 'try | :PlugInstall | finally | :qa! | endtry'
##
plug_install:
	nvim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
.PHONY: pluginstall


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
