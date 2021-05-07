

################################################################################
### Head: Model lvim_install
##

lvim_install () {
	echo
	## lvim_repo_clone "$1" 'https://github.com/samwhelp/tool-lvim.git'
	lvim_repo_clone 'lvim' 'https://github.com/samwhelp/tool-lvim.git'
	lvim_bin_install
	lvim_app_install
	lvim_vim_plug_prepare
	lvim_vim_plug_install
	lvim_cache_dir_prepare
	echo
}

lvim_repo_clone () {

	## $ vimrc-get lvim

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="lvim"
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
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-lvim.git lvim

	cd "$OLDPWD"

}

lvim_bin_install () {
	echo "install -Dm 755 $HOME/.vimrc-profile/lvim/.ctrl/asset/nvim/bin/lvim $HOME/.local/bin/lvim"
	install -Dm 755 "$HOME/.vimrc-profile/lvim/.ctrl/asset/nvim/bin/lvim" "$HOME/.local/bin/lvim"
}

lvim_app_install () {
	echo "install -Dm 644 $HOME/.vimrc-profile/lvim/.ctrl/asset/nvim/desktop/lvim.desktop $HOME/.local/share/applications/lvim.desktop"
	install -Dm 644 "$HOME/.vimrc-profile/lvim/.ctrl/asset/nvim/desktop/lvim.desktop" "$HOME/.local/share/applications/lvim.desktop"
}

lvim_vim_plug_prepare () {
	echo "curl -fLo $HOME/.cache/lvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
	curl -fLo "$HOME/.cache/lvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
}

lvim_vim_plug_install () {
	echo "vim -nNRe -u $HOME/.vimrc-profile/lvim/vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'"
	vim -nNRe -u "$HOME/.vimrc-profile/lvim/vimrc" -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
}

lvim_cache_dir_prepare () {
	echo "mkdir -p $HOME/.cache/vimfiles/var/backup"
	mkdir -p "$HOME/.cache/vimfiles/var/backup"

	echo "mkdir -p $HOME/.cache/vimfiles/var/swap"
	mkdir -p "$HOME/.cache/vimfiles/var/swap"

	echo "mkdir -p $HOME/.cache/vimfiles/var/undo"
	mkdir -p "$HOME/.cache/vimfiles/var/undo"
}

##
### Tail: Model lvim_install
################################################################################
