

################################################################################
### Head: Model lvim_install
##

lvim_install () {
	## lvim_repo_clone "$1" 'https://github.com/samwhelp/tool-lvim.git'
	lvim_repo_clone 'lvim' 'https://github.com/samwhelp/tool-lvim.git'
	lvim_bin_install
	lvim_app_install

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

##
### Tail: Model lvim_install
################################################################################
