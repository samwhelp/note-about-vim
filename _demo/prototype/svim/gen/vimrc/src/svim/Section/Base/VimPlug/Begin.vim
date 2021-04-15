

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Plugin
""

""
" ## Prepare
"
" ```
" $ curl -fLo ~/.cache/svim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" ```
""

let &runtimepath = '~/.cache/svim/site' . ',' . &runtimepath

call plug#begin('~/.cache/svim/plug')
