

################################################################################
### Head: Model mvim_install
##

mvim_install () {
	echo
	## mvim_repo_clone "$1" 'https://github.com/samwhelp/tool-mvim.git'
	mvim_repo_clone 'mvim' 'https://github.com/samwhelp/tool-mvim.git'
	mvim_bin_install
	mvim_app_install
	mvim_vim_plug_prepare
	mvim_vim_plug_install
	mvim_cache_dir_prepare
	echo
}

mvim_repo_clone () {

	## $ vimrc-get mvim

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="mvim"
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
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-mvim.git mvim

	cd "$OLDPWD"

}

mvim_bin_install () {
	echo "install -Dm 755 $THE_VIMRC_PROFILE_DIR_PATH/mvim/.ctrl/asset/nvim/bin/mvim $HOME/.local/bin/mvim"
	install -Dm 755 "$THE_VIMRC_PROFILE_DIR_PATH/mvim/.ctrl/asset/nvim/bin/mvim" "$HOME/.local/bin/mvim"
}

mvim_app_install () {
	echo "install -Dm 644 $THE_VIMRC_PROFILE_DIR_PATH/mvim/.ctrl/asset/nvim/desktop/mvim.desktop $HOME/.local/share/applications/mvim.desktop"
	install -Dm 644 "$THE_VIMRC_PROFILE_DIR_PATH/mvim/.ctrl/asset/nvim/desktop/mvim.desktop" "$HOME/.local/share/applications/mvim.desktop"
}

mvim_vim_plug_prepare () {
	echo "curl -fLo $HOME/.cache/mvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	curl -fLo "$HOME/.cache/mvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}

mvim_vim_plug_install () {
	echo "vim -nNRe -u $THE_VIMRC_PROFILE_DIR_PATH/mvim/vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'"
	vim -nNRe -u "$THE_VIMRC_PROFILE_DIR_PATH/mvim/vimrc" -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
}

mvim_cache_dir_prepare () {
	echo "mkdir -p $HOME/.cache/vimfiles/var/backup"
	mkdir -p "$HOME/.cache/vimfiles/var/backup"

	echo "mkdir -p $HOME/.cache/vimfiles/var/swap"
	mkdir -p "$HOME/.cache/vimfiles/var/swap"

	echo "mkdir -p $HOME/.cache/vimfiles/var/undo"
	mkdir -p "$HOME/.cache/vimfiles/var/undo"
}

##
### Tail: Model mvim_install
################################################################################
