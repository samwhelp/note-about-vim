

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Window / Keybind
""

" ## switch window
" ## use <Tab> or <C-i>
nnoremap <Tab> <C-w>w
nnoremap <BS> <C-w>W


" ## current window only
"nnoremap <Leader>wa <C-w>o
nnoremap <Leader>wa :only<CR>

" ## close window
nnoremap <Leader>wc :close<CR>

" ## new horizontal window
nnoremap <Leader>wn :new<CR>

" ## new vertical window
nnoremap <Leader>wv :vnew<CR>

" ## hide
nnoremap <Leader>h :hide<CR>


" ## resize window
" :help window-resize
nnoremap <S-Down> <C-w>-
nnoremap <S-Up> <C-w>+
nnoremap <S-Left> <C-w><
nnoremap <S-Right> <C-w>>


""
""" Tail: Window / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
