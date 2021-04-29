

################################################################################
### Head: Model vimrc_profile_list
##



vimrc_profile_list () {
	#echo "vimrc_profile_list"
	#echo "$@"

	# nvimrc-ctrl list

	local name=''
	local dir_path=''

	cd "$THE_VIMRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_VIMRC_PROFILE_DIR_PATH/$name" ## ~/.vimrc-profile/demo
		if is_not_nvimrc_dir "$dir_path"; then ## check ~/.vimrc-profile/demo/vimrc
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model vimrc_profile_list
################################################################################
