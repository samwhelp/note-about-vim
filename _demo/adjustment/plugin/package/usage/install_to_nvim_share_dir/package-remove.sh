#!/usr/bin/env bash


__main__ () {

	local package_dir_path="$HOME/.local/share/nvim/site/pack/theme/start"
	local target_dir_path="$package_dir_path/gruvbox"


	echo "rm -rf $target_dir_path"
	rm -rf "$target_dir_path"

}

__main__
