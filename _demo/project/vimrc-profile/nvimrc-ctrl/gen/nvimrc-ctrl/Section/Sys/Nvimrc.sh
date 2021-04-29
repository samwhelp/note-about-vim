

################################################################################
### Head: Sys
##

is_nvimrc_dir () {
	local dir_path="$1"
	local vimrc_file_path="$dir_path/init.vim"

	if [ ! -f "$vimrc_file_path" ]; then
		return 1
	fi

	return 0
}

is_not_nvimrc_dir () {
	local dir_path="$1"
	local vimrc_file_path="$dir_path/init.vim" ## ~/.vimrc-profile/demo/init.vim

	if [ -f "$vimrc_file_path" ]; then ## check ~/.vimrc-profile/demo/init.vim
		return 1
	fi

	return 0
}

nvimrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_VIMRC_PROFILE_DIR_PATH/$name"
}



nvimrc_check_nvimrc_dir_exists () {

	local vimrc_dir_name="nvim"
	local vimrc_dir_path="$HOME/.config/$vimrc_dir_name"

	if ! [ -a "$vimrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$vimrc_dir_path" ]; then ## ~/.vim is folder
		return 0
	fi



	echo "Dir is exists:" "$vimrc_dir_path"
	echo

	echo "Try to backup:"
	echo

	local now=$(date +%Y%m%d_%s)
	local bak_dir_path="${HOME}/.backup/nvimrc.bak"
	local bak_target_path="${bak_dir_path}/${vimrc_dir_name}.bak.${now}"

	echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	echo "cp -a ${vimrc_dir_path} ${bak_target_path}"
	cp -a "${vimrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		echo
		echo 'Backup Failure!'
		#exit 1
		return 1
	fi

	echo







	return 0
}




##
### Tail: Sys
################################################################################
