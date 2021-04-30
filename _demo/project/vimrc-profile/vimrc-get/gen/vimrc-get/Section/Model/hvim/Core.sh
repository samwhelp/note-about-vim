

################################################################################
### Head: Model hvim_install
##

hvim_install () {
	## hvim_repo_clone "$1" 'https://github.com/samwhelp/tool-hvim.git'
	hvim_repo_clone 'hvim' 'https://github.com/samwhelp/tool-hvim.git'
	hvim_bin_install
	hvim_app_install

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
	echo "install -Dm 755 $HOME/.vimrc-profile/hvim/.ctrl/asset/nvim/bin/hvim $HOME/.local/bin/hvim"
	install -Dm 755 "$HOME/.vimrc-profile/hvim/.ctrl/asset/nvim/bin/hvim" "$HOME/.local/bin/hvim"
}

hvim_app_install () {
	echo "install -Dm 644 $HOME/.vimrc-profile/hvim/.ctrl/asset/nvim/desktop/hvim.desktop $HOME/.local/share/applications/hvim.desktop"
	install -Dm 644 "$HOME/.vimrc-profile/hvim/.ctrl/asset/nvim/desktop/hvim.desktop" "$HOME/.local/share/applications/hvim.desktop"
}

##
### Tail: Model hvim_install
################################################################################
