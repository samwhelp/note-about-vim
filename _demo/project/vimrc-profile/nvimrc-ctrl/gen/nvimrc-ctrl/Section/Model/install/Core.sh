

################################################################################
### Head: Model vimrc_profile_install
##

vimrc_profile_install () {

	## $ nvimrc-ctrl install demo https://github.com/samwhelp/tool-svim.git

	local name="$1"
	local repo_url="$2"

	echo "mkdir -p $THE_VIMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_VIMRC_PROFILE_DIR_PATH"

	echo "cd $THE_VIMRC_PROFILE_DIR_PATH"
	cd "$THE_VIMRC_PROFILE_DIR_PATH" ## cd ~/.vimrc-profile


	echo "git clone $repo_url $name"
	git clone "$repo_url" "$name" ## git clone https://github.com/samwhelp/tool-svim.git demo

	cd "$OLDPWD"

}

##
### Tail: Model vimrc_profile_install
################################################################################
