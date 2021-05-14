

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Plugin
""

""
" ## Prepare
"
" ```
" $ curl -fLo ~/.cache/cvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" ```
""

let &runtimepath = '~/.cache/cvim/site' . ',' . &runtimepath

call plug#begin('~/.cache/cvim/plug')
