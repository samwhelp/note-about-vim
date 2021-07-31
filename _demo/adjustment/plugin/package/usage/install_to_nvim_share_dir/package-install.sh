#!/usr/bin/env bash


__main__ () {

	local plugin_git_url="https://github.com/morhetz/gruvbox.git"
	local package_dir_path="$HOME/.local/share/nvim/site/pack/theme/start"
	local target_dir_path="$package_dir_path/gruvbox"

	if [ -d "$target_dir_path" ]; then
		echo "Dir Exist: $target_dir_path"
		return
	fi

	echo "git clone $plugin_git_url $target_dir_path"
	git clone "$plugin_git_url" "$target_dir_path"

}

__main__
