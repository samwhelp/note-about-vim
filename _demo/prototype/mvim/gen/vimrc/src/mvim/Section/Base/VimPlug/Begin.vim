

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Plugin
""

""
" ## Prepare
"
" ```
" $ curl -fLo ~/.cache/mvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" ```
""

let &runtimepath = '~/.cache/mvim/site' . ',' . &runtimepath

call plug#begin('~/.cache/mvim/plug')
