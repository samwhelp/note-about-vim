

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Buffer / Keybind
""

" ## switch buffer
nnoremap <Leader>` :bprevious<CR>
nnoremap <Leader><Tab> :bnext<CR>
nnoremap <C-Up> :bprevious<CR>
nnoremap <C-Down> :bnext<CR>
nnoremap <C-k> :bprevious<CR>
nnoremap <C-j> :bnext<CR>
" Note: collision <CTRL+\>
" :help index
" :help index.txt
" :help mode-switching
"nnoremap <C-Bslash> :bnext<CR>


" ## list buffer
nnoremap <Leader>b :ls<CR>
"nnoremap <Leader>b :buffers<CR>
"nnoremap <Leader>b :files<CR>


" ## save
"nnoremap <Leader>s :w<CR>
nnoremap <S-Tab> :w<CR>
inoremap <S-Tab> <Esc>:w<CR>a

""
""" Tail: Buffer / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Quit / Keybind
""

" ## Quit
nnoremap <Bslash>q :q<CR>
nnoremap <Bslash>z :q!<CR>
nnoremap <Bslash>x :qa<CR>
nnoremap <Bslash>c :qa!<CR>


" ## Delete Buffer
nnoremap <Leader>q :bdelete<CR>
nnoremap <Leader>z :bdelete!<CR>
nnoremap <Leader>x :%bdelete<CR>
nnoremap <Leader>c :%bdelete!<CR>

""
""" Tail: Quit / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
