

################################################################################
### Head: Model ivim_install
##

ivim_install () {
	echo
	## ivim_repo_clone "$1" 'https://github.com/samwhelp/tool-ivim.git'
	ivim_repo_clone 'ivim' 'https://github.com/samwhelp/tool-ivim.git'
	ivim_bin_install
	ivim_app_install
	ivim_cache_dir_prepare
	echo
}

ivim_repo_clone () {

	## $ vimrc-get ivim

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="ivim"
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
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-ivim.git ivim

	cd "$OLDPWD"

}

ivim_bin_install () {
	echo "install -Dm 755 $HOME/.vimrc-profile/ivim/.ctrl/asset/nvim/bin/ivim $HOME/.local/bin/ivim"
	install -Dm 755 "$HOME/.vimrc-profile/ivim/.ctrl/asset/nvim/bin/ivim" "$HOME/.local/bin/ivim"
}

ivim_app_install () {
	echo "install -Dm 644 $HOME/.vimrc-profile/ivim/.ctrl/asset/nvim/desktop/ivim.desktop $HOME/.local/share/applications/ivim.desktop"
	install -Dm 644 "$HOME/.vimrc-profile/ivim/.ctrl/asset/nvim/desktop/ivim.desktop" "$HOME/.local/share/applications/ivim.desktop"
}

ivim_cache_dir_prepare () {
	echo "mkdir -p $HOME/.cache/vimfiles/var/backup"
	mkdir -p "$HOME/.cache/vimfiles/var/backup"

	echo "mkdir -p $HOME/.cache/vimfiles/var/swap"
	mkdir -p "$HOME/.cache/vimfiles/var/swap"

	echo "mkdir -p $HOME/.cache/vimfiles/var/undo"
	mkdir -p "$HOME/.cache/vimfiles/var/undo"
}

##
### Tail: Model ivim_install
################################################################################
