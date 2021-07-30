
set mouse=a


" ## Copy To Clipboard
" ## Copy
vnoremap <S-Tab> "+y
vnoremap <C-c> "+y
"vnoremap <RightMouse> "+y


" ## Cut
vnoremap <C-x> "+x


" ## Paste
" http://xstarcd.github.io/wiki/vim/vim-copy-paste.html
inoremap <C-v> <ESC>"+p`]a
nnoremap <C-v> "+p`]a



