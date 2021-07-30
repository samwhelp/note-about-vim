

set mouse=a


" ## Copy To Clipboard
" ## Copy
vnoremap <S-Tab> "+y
vnoremap <C-c> "+y
"vnoremap <RightMouse> "+y


" ## Cut
vnoremap <C-x> "+x


" ## Paste
"https://francopasut.medium.com/vim-cut-copy-and-paste-to-and-from-the-system-clipboard-e11da66ca95c"
inoremap <C-v> <ESC>"+gPa
nnoremap <C-v> "+gPa

