

################################################################################
### Head: Model svim_install
##

svim_install () {
	## svim_repo_clone "$1" 'https://github.com/samwhelp/tool-svim.git'
	svim_repo_clone 'svim' 'https://github.com/samwhelp/tool-svim.git'
	svim_bin_install
	svim_app_install

}

svim_repo_clone () {

	## $ vimrc-get svim

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name="svim"
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
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-svim.git svim

	cd "$OLDPWD"

}

svim_bin_install () {
	echo "install -Dm 755 $HOME/.vimrc-profile/svim/.ctrl/asset/nvim/bin/svim $HOME/.local/bin/svim"
	install -Dm 755 "$HOME/.vimrc-profile/svim/.ctrl/asset/nvim/bin/svim" "$HOME/.local/bin/svim"
}

svim_app_install () {
	echo "install -Dm 644 $HOME/.vimrc-profile/svim/.ctrl/asset/nvim/desktop/svim.desktop $HOME/.local/share/applications/svim.desktop"
	install -Dm 644 "$HOME/.vimrc-profile/svim/.ctrl/asset/nvim/desktop/svim.desktop" "$HOME/.local/share/applications/svim.desktop"
}

##
### Tail: Model svim_install
################################################################################
