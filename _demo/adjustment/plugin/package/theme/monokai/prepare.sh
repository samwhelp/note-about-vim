#!/usr/bin/env bash


echo "mkdir -p $HOME/.cache/xvim/site/pack/theme/start"
mkdir -p "$HOME/.cache/xvim/site/pack/theme/start"

echo "cd $HOME/.cache/xvim/site/pack/theme/start"
cd "$HOME/.cache/xvim/site/pack/theme/start"

echo "git clone https://github.com/sickill/vim-monokai.git monokai"
git clone https://github.com/sickill/vim-monokai.git monokai
