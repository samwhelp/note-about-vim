#!/usr/bin/env bash


curl -fLo ~/.cache/xvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


nvim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'

