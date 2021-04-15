

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Buffer / Keybind
""

" ## switch buffer
nnoremap ,` :bprevious<CR>
nnoremap ,<Tab> :bnext<CR>
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
nnoremap ,b :ls<CR>
"nnoremap ,b :buffers<CR>
"nnoremap ,b :files<CR>


" ## save
"nnoremap ,s :w<CR>
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
nnoremap ,q :bdelete<CR>
nnoremap ,z :bdelete!<CR>
nnoremap ,x :%bdelete<CR>
nnoremap ,c :%bdelete!<CR>

""
""" Tail: Quit / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
