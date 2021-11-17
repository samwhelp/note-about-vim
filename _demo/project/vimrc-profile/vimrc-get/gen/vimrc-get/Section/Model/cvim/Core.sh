

################################################################################
### Head: Model cvim_install
##

cvim_install () {
	echo
	## cvim_repo_clone "$1" 'https://github.com/samwhelp/tool-cvim.git'
	cvim_repo_clone 'cvim' 'https://github.com/samwhelp/tool-cvim.git'
	cvim_bin_install
	cvim_app_install
	cvim_vim_plug_prepare
	cvim_vim_plug_install
	cvim_cache_dir_prepare
	echo
}

cvim_repo_clone () {

	## $ vimrc-get cvim

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="cvim"
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
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-cvim.git cvim

	cd "$OLDPWD"

}

cvim_bin_install () {
	echo "install -Dm 755 $THE_VIMRC_PROFILE_DIR_PATH/cvim/.ctrl/asset/nvim/bin/cvim $HOME/.local/bin/cvim"
	install -Dm 755 "$THE_VIMRC_PROFILE_DIR_PATH/cvim/.ctrl/asset/nvim/bin/cvim" "$HOME/.local/bin/cvim"
}

cvim_app_install () {
	echo "install -Dm 644 $THE_VIMRC_PROFILE_DIR_PATH/cvim/.ctrl/asset/nvim/desktop/cvim.desktop $HOME/.local/share/applications/cvim.desktop"
	install -Dm 644 "$THE_VIMRC_PROFILE_DIR_PATH/cvim/.ctrl/asset/nvim/desktop/cvim.desktop" "$HOME/.local/share/applications/cvim.desktop"
}

cvim_vim_plug_prepare () {
	echo "curl -fLo $HOME/.cache/cvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	curl -fLo "$HOME/.cache/cvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}


cvim_vim_plug_install () {
	echo "vim -nNRe -u $THE_VIMRC_PROFILE_DIR_PATH/cvim/vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'"
	vim -nNRe -u "$THE_VIMRC_PROFILE_DIR_PATH/cvim/vimrc" -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
}

cvim_cache_dir_prepare () {
	echo "mkdir -p $HOME/.cache/vimfiles/var/backup"
	mkdir -p "$HOME/.cache/vimfiles/var/backup"

	echo "mkdir -p $HOME/.cache/vimfiles/var/swap"
	mkdir -p "$HOME/.cache/vimfiles/var/swap"

	echo "mkdir -p $HOME/.cache/vimfiles/var/undo"
	mkdir -p "$HOME/.cache/vimfiles/var/undo"
}

##
### Tail: Model cvim_install
################################################################################
