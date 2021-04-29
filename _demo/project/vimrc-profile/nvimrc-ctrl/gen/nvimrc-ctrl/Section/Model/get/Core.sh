

################################################################################
### Head: Model vimrc_profile_get
##

vimrc_profile_get () {
	#echo "vimrc_profile_get"
	#echo "$@"

	# nvimrc-ctrl get

	local dir_path=$(LANG=C file ~/.config/nvim | awk -F ' symbolic link to ' '{print $2}')
	local name=$(basename "$dir_path")

	echo $name

}

##
### Tail: Model vimrc_profile_get
################################################################################
