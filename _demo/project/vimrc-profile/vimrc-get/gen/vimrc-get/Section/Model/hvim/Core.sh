

################################################################################
### Head: Model hvim_install
##

hvim_install () {
	echo
	## hvim_repo_clone "$1" 'https://github.com/samwhelp/tool-hvim.git'
	hvim_repo_clone 'hvim' 'https://github.com/samwhelp/tool-hvim.git'
	hvim_bin_install
	hvim_app_install
	hvim_vim_plug_prepare
	hvim_vim_plug_install
	hvim_cache_dir_prepare
	echo
}

hvim_repo_clone () {

	## $ vimrc-get hvim

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="hvim"
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
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-hvim.git hvim

	cd "$OLDPWD"

}

hvim_bin_install () {
	echo "install -Dm 755 $THE_VIMRC_PROFILE_DIR_PATH/hvim/.ctrl/asset/nvim/bin/hvim $HOME/.local/bin/hvim"
	install -Dm 755 "$THE_VIMRC_PROFILE_DIR_PATH/hvim/.ctrl/asset/nvim/bin/hvim" "$HOME/.local/bin/hvim"
}

hvim_app_install () {
	echo "install -Dm 644 $THE_VIMRC_PROFILE_DIR_PATH/hvim/.ctrl/asset/nvim/desktop/hvim.desktop $HOME/.local/share/applications/hvim.desktop"
	install -Dm 644 "$THE_VIMRC_PROFILE_DIR_PATH/hvim/.ctrl/asset/nvim/desktop/hvim.desktop" "$HOME/.local/share/applications/hvim.desktop"
}

hvim_vim_plug_prepare () {
	echo "curl -fLo $HOME/.cache/hvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	curl -fLo "$HOME/.cache/hvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}


hvim_vim_plug_install () {
	echo "vim -nNRe -u $THE_VIMRC_PROFILE_DIR_PATH/hvim/vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'"
	vim -nNRe -u "$THE_VIMRC_PROFILE_DIR_PATH/hvim/vimrc" -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
}

hvim_cache_dir_prepare () {
	echo "mkdir -p $HOME/.cache/vimfiles/var/backup"
	mkdir -p "$HOME/.cache/vimfiles/var/backup"

	echo "mkdir -p $HOME/.cache/vimfiles/var/swap"
	mkdir -p "$HOME/.cache/vimfiles/var/swap"

	echo "mkdir -p $HOME/.cache/vimfiles/var/undo"
	mkdir -p "$HOME/.cache/vimfiles/var/undo"
}

##
### Tail: Model hvim_install
################################################################################
