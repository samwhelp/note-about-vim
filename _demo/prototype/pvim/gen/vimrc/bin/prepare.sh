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

pvim_package_prepare () {
	echo

	pvim_package_prepare_theme_dir

	echo

	pvim_package_prepare_theme_gruvbox
	pvim_package_prepare_theme_monokai
	pvim_package_prepare_theme_onedark
	pvim_package_prepare_theme_space_vim_theme
	pvim_package_prepare_theme_seoul256

	echo

	pvim_package_prepare_util_fcitx
	pvim_package_prepare_util_eleline
	pvim_package_prepare_util_vim_which_key
	pvim_package_prepare_util_nerdtree

	pvim_package_prepare_util_lf
	pvim_package_prepare_util_bclose
	pvim_package_prepare_util_floaterm
	pvim_package_prepare_util_ranger
	pvim_package_prepare_util_fzf
	pvim_package_prepare_util_fzf_bin
	pvim_package_prepare_util_coc

	echo
}

pvim_package_prepare_theme_dir () {

	echo "mkdir -p $THE_CACHE_THEME_START_DIR_PATH"
	mkdir -p "$THE_CACHE_THEME_START_DIR_PATH"



}

pvim_package_prepare_theme_gruvbox () {

	if [ -a "$THE_CACHE_THEME_START_DIR_PATH/gruvbox" ]; then
		echo "### Is Exists: $THE_CACHE_THEME_START_DIR_PATH/gruvbox"
		return 0
	fi

	echo "git clone https://github.com/morhetz/gruvbox $THE_CACHE_THEME_START_DIR_PATH/gruvbox"

	git clone 'https://github.com/morhetz/gruvbox' "$THE_CACHE_THEME_START_DIR_PATH/gruvbox"


}

pvim_package_prepare_theme_monokai () {

	if [ -a "$THE_CACHE_THEME_START_DIR_PATH/monokai" ]; then
		echo "### Is Exists: $THE_CACHE_THEME_START_DIR_PATH/monokai"
		return 0
	fi

	echo "git clone https://github.com/sickill/vim-monokai $THE_CACHE_THEME_START_DIR_PATH/monokai"

	git clone 'https://github.com/sickill/vim-monokai' "$THE_CACHE_THEME_START_DIR_PATH/monokai"


}

pvim_package_prepare_theme_onedark () {

	if [ -a "$THE_CACHE_THEME_START_DIR_PATH/onedark" ]; then
		echo "### Is Exists: $THE_CACHE_THEME_START_DIR_PATH/onedark"
		return 0
	fi

	echo "git clone https://github.com/joshdick/onedark.vim $THE_CACHE_THEME_START_DIR_PATH/onedark"

	git clone 'https://github.com/joshdick/onedark.vim' "$THE_CACHE_THEME_START_DIR_PATH/onedark"


}

pvim_package_prepare_theme_space_vim_theme () {

	if [ -a "$THE_CACHE_THEME_START_DIR_PATH/space_vim_theme" ]; then
		echo "### Is Exists: $THE_CACHE_THEME_START_DIR_PATH/space_vim_theme"
		return 0
	fi

	echo "git clone https://github.com/liuchengxu/space-vim-theme $THE_CACHE_THEME_START_DIR_PATH/space_vim_theme"

	git clone 'https://github.com/liuchengxu/space-vim-theme' "$THE_CACHE_THEME_START_DIR_PATH/space_vim_theme"


}


pvim_package_prepare_theme_seoul256 () {

	if [ -a "$THE_CACHE_THEME_START_DIR_PATH/seoul256" ]; then
		echo "### Is Exists: $THE_CACHE_THEME_START_DIR_PATH/seoul256"
		return 0
	fi

	echo "git clone https://github.com/junegunn/seoul256.vim $THE_CACHE_THEME_START_DIR_PATH/seoul256"

	git clone 'https://github.com/junegunn/seoul256.vim' "$THE_CACHE_THEME_START_DIR_PATH/seoul256"


}



pvim_package_prepare_util_fcitx () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/fcitx" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/fcitx"
		return 0
	fi

	echo "git clone -b fcitx4 https://github.com/lilydjwg/fcitx.vim $THE_CACHE_UTIL_START_DIR_PATH/fcitx"

	git clone -b fcitx4 'https://github.com/lilydjwg/fcitx.vim' "$THE_CACHE_UTIL_START_DIR_PATH/fcitx"


}


pvim_package_prepare_util_eleline () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/eleline" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/eleline"
		return 0
	fi

	echo "git clone https://github.com/liuchengxu/eleline.vim $THE_CACHE_UTIL_START_DIR_PATH/eleline"

	git clone 'https://github.com/liuchengxu/eleline.vim' "$THE_CACHE_UTIL_START_DIR_PATH/eleline"


}

pvim_package_prepare_util_vim_which_key () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/vim_which_key" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/vim_which_key"
		return 0
	fi

	echo "git clone https://github.com/liuchengxu/vim-which-key $THE_CACHE_UTIL_START_DIR_PATH/vim_which_key"

	git clone 'https://github.com/liuchengxu/vim-which-key' "$THE_CACHE_UTIL_START_DIR_PATH/vim_which_key"


}


pvim_package_prepare_util_nerdtree () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/nerdtree" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/nerdtree"
		return 0
	fi

	echo "git clone https://github.com/scrooloose/nerdtree $THE_CACHE_UTIL_START_DIR_PATH/nerdtree"

	git clone 'https://github.com/scrooloose/nerdtree' "$THE_CACHE_UTIL_START_DIR_PATH/nerdtree"


}


pvim_package_prepare_util_lf () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/lf" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/lf"
		return 0
	fi

	echo "git clone https://github.com/ptzz/lf.vim $THE_CACHE_UTIL_START_DIR_PATH/lf"

	git clone 'https://github.com/ptzz/lf.vim' "$THE_CACHE_UTIL_START_DIR_PATH/lf"


}

pvim_package_prepare_util_bclose () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/bclose" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/bclose"
		return 0
	fi

	echo "git clone https://github.com/rbgrouleff/bclose.vim $THE_CACHE_UTIL_START_DIR_PATH/bclose"

	git clone 'https://github.com/rbgrouleff/bclose.vim' "$THE_CACHE_UTIL_START_DIR_PATH/bclose"


}


pvim_package_prepare_util_floaterm () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/floaterm" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/floaterm"
		return 0
	fi

	echo "git clone https://github.com/voldikss/vim-floaterm $THE_CACHE_UTIL_START_DIR_PATH/floaterm"

	git clone 'https://github.com/voldikss/vim-floaterm' "$THE_CACHE_UTIL_START_DIR_PATH/floaterm"


}


pvim_package_prepare_util_ranger () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/ranger" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/ranger"
		return 0
	fi

	echo "git clone https://github.com/francoiscabrol/ranger.vim $THE_CACHE_UTIL_START_DIR_PATH/ranger"

	git clone 'https://github.com/francoiscabrol/ranger.vim' "$THE_CACHE_UTIL_START_DIR_PATH/ranger"


}

pvim_package_prepare_util_fzf () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/fzf" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/fzf"
		return 0
	fi

	echo "git clone https://github.com/junegunn/fzf.vim $THE_CACHE_UTIL_START_DIR_PATH/fzf"

	git clone 'https://github.com/junegunn/fzf.vim' "$THE_CACHE_UTIL_START_DIR_PATH/fzf"

}

pvim_package_prepare_util_fzf_bin () {

	if [ -a "$HOME/.fzf" ]; then
		echo "### Is Exists: $HOME/.fzf"
		return 0
	fi

	echo "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"

	git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"


	##~/.fzf/install
	~/.fzf/install --all
}


pvim_package_prepare_util_coc () {

	if [ -a "$THE_CACHE_UTIL_START_DIR_PATH/coc" ]; then
		echo "### Is Exists: $THE_CACHE_UTIL_START_DIR_PATH/coc"
		return 0
	fi

	echo "git clone -b release https://github.com/neoclide/coc.nvim $THE_CACHE_UTIL_START_DIR_PATH/coc"

	git clone -b release 'https://github.com/neoclide/coc.nvim' "$THE_CACHE_UTIL_START_DIR_PATH/coc"

}



##
### Tail: Model
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	echo 'Prepare...'
	echo

	pvim_package_prepare


	echo
	echo 'Done.'
	echo
}

__main__ "$@"

##
### Tail: Main
################################################################################
