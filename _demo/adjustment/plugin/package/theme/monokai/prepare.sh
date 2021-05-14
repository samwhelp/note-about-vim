#!/usr/bin/env bash


echo "mkdir -p $HOME/.cache/xvim/site/pack/themes/start"
mkdir -p "$HOME/.cache/xvim/site/pack/themes/start"

echo "cd $HOME/.cache/xvim/site/pack/themes/start"
cd "$HOME/.cache/xvim/site/pack/themes/start"

echo "git clone https://github.com/sickill/vim-monokai.git monokai"
git clone https://github.com/sickill/vim-monokai.git monokai
