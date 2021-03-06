

################################################################################
### Head: Model vimrc_profile_remove
##

vimrc_profile_remove () {

	## $ vimrc-ctrl remove demo

	local name="$1"

	echo $name

	cd "$THE_VIMRC_PROFILE_DIR_PATH" ## cd ~/.vimrc-profile

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.vimrc-profile/demo
		echo "Vimrc not exists: $name"
		return 1
	fi

	vimrc_profile_default

	rm -rf "$dir_path"

	cd "$OLDPWD"

}

##
### Tail: Model vimrc_profile_remove
################################################################################
