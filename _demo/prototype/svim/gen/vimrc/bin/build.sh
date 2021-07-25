#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model
##

svim_vimrc_build () {


	echo "php $THE_VIMRC_SOURCE_FILE_PATH > $THE_VIMRC_TARGET_FILE_PATH"

	php "$THE_VIMRC_SOURCE_FILE_PATH" > "$THE_VIMRC_TARGET_FILE_PATH"



}

##
### Tail: Model
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	echo 'Building...'
	echo

	svim_vimrc_build

	echo
	echo 'Done.'
	echo
}

__main__ "$@"

##
### Tail: Main
################################################################################
