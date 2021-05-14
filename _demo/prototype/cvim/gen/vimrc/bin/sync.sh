#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model
##

cvim_vimrc_sync () {


	echo "install -Dm644 $THE_VIMRC_TARGET_FILE_PATH $THE_DIST_VIMRC_TARGET_FILE_PATH"

	install -Dm644 "$THE_VIMRC_TARGET_FILE_PATH" "$THE_DIST_VIMRC_TARGET_FILE_PATH"



}

cvim_nvimrc_sync () {

	cd $THE_DIST_VIMRC_TARGET_DIR_PATH

	ln -sf vimrc init.vim

}

##
### Tail: Model
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	echo 'Sync...'
	echo

	cvim_vimrc_sync

	cvim_nvimrc_sync

	echo
	echo 'Done.'
	echo
}

__main__ "$@"

##
### Tail: Main
################################################################################
