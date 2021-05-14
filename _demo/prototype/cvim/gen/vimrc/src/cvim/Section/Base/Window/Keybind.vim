

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Window / Keybind
""

" ## switch window
" ## use <Tab> or <C-i>
nnoremap <Tab> <C-w>w
nnoremap <BS> <C-w>W


" ## current window only
"nnoremap ,wa <C-w>o
nnoremap ,wa :only<CR>

" ## close window
nnoremap ,wc :close<CR>

" ## new horizontal window
nnoremap ,wn :new<CR>

" ## new vertical window
nnoremap ,wv :vnew<CR>

" ## hide
nnoremap ,h :hide<CR>


" ## resize window
" :help window-resize
nnoremap <S-Down> <C-w>-
nnoremap <S-Up> <C-w>+
nnoremap <S-Left> <C-w><
nnoremap <S-Right> <C-w>>


""
""" Tail: Window / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
