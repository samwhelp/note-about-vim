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
	@echo '	$$ make pluginstall'
	@echo
	@echo '	$$ make sync'
	@echo

.PHONY: help


prepare:
	curl -fLo ~/.cache/hvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
.PHONY: prepare


##
# nvim -nNRe -u vimrc -c 'try | :PlugInstall | endtry'
# nvim -nNRe -u vimrc -c 'try | :PlugInstall | finally | :qa! | endtry'
##
pluginstall:
	nvim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
.PHONY: pluginstall

sync:
	make -C gen/vimrc sync
.PHONY: sync
