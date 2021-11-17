

################################################################################
### Head: Model none_install
##

none_install () {
	echo

	echo "mkdir -p $THE_VIMRC_PROFILE_DIR_PATH/none"
	mkdir -p "$THE_VIMRC_PROFILE_DIR_PATH/none"

	echo "cd $THE_VIMRC_PROFILE_DIR_PATH/none"
	cd "$THE_VIMRC_PROFILE_DIR_PATH/none"

	# touch vimrc
	echo "echo > vimrc"
	echo > vimrc

	echo "ln -sf vimrc init.vim"
	ln -sf vimrc init.vim

	# $ man cd
	echo "cd $OLDPWD"
	cd "$OLDPWD"

	echo
}

none_repo_clone () {

	## $ vimrc-get none

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="none"
	fi

	echo "mkdir -p $THE_VIMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_VIMRC_PROFILE_DIR_PATH"

	echo "cd $THE_VIMRC_PROFILE_DIR_PATH"
	cd "$THE_VIMRC_PROFILE_DIR_PATH" ## cd ~/.vimrc-profile


	if [ -d "$name" ]; then
		echo "## Is Exists:" "$THE_VIMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	echo "git clone $repo_url $name"
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-none.git none

	cd "$OLDPWD"

}

none_bin_install () {
	echo "install -Dm 755 $THE_VIMRC_PROFILE_DIR_PATH/none/.ctrl/asset/nvim/bin/none $HOME/.local/bin/none"
	install -Dm 755 "$THE_VIMRC_PROFILE_DIR_PATH/none/.ctrl/asset/nvim/bin/none" "$HOME/.local/bin/none"
}

none_app_install () {
	echo "install -Dm 644 $THE_VIMRC_PROFILE_DIR_PATH/none/.ctrl/asset/nvim/desktop/none.desktop $HOME/.local/share/applications/none.desktop"
	install -Dm 644 "$THE_VIMRC_PROFILE_DIR_PATH/none/.ctrl/asset/nvim/desktop/none.desktop" "$HOME/.local/share/applications/none.desktop"
}

none_vim_plug_prepare () {
	echo "curl -fLo $HOME/.cache/none/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	curl -fLo "$HOME/.cache/none/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}


none_vim_plug_install () {
	echo "vim -nNRe -u $THE_VIMRC_PROFILE_DIR_PATH/none/vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'"
	vim -nNRe -u "$THE_VIMRC_PROFILE_DIR_PATH/none/vimrc" -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
}

none_cache_dir_prepare () {
	echo "mkdir -p $HOME/.cache/vimfiles/var/backup"
	mkdir -p "$HOME/.cache/vimfiles/var/backup"

	echo "mkdir -p $HOME/.cache/vimfiles/var/swap"
	mkdir -p "$HOME/.cache/vimfiles/var/swap"

	echo "mkdir -p $HOME/.cache/vimfiles/var/undo"
	mkdir -p "$HOME/.cache/vimfiles/var/undo"
}

##
### Tail: Model none_install
################################################################################
