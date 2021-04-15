

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Plugin
""

""
" ## Prepare
"
" ```
" $ curl -fLo ~/.cache/hvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" ```
""

let &runtimepath = '~/.cache/hvim/site' . ',' . &runtimepath

call plug#begin('~/.cache/hvim/plug')
