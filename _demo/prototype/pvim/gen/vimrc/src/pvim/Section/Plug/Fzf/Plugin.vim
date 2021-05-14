
" ## fzf
" https://github.com/junegunn/fzf
" https://github.com/junegunn/fzf.vim
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
packadd! fzf


"https://github.com/junegunn/fzf.vim/issues/1102
let &runtimepath = '~/.fzf' . ',' . &runtimepath
"set rtp+=~/.fzf
"set runtimepath+=~/.fzf
