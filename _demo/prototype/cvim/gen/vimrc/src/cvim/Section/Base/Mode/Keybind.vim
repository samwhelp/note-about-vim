

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Mode Switch / Keybind
""

"from insert mode to normal mode
" default use <C-[> or <Esc> or <C-c>
"inoremap jj <Esc>
"inoremap jk <Esc>
"inoremap hl <Esc>


""
""" Tail: Mode Switch / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Wild Menu / Keybind
""

" ## keybind
"https://vi.stackexchange.com/questions/5029/key-mapping-that-will-invoke-the-wildmenu
"set wildcharm=<C-z>
"nnoremap <C-l> :buffer<Space><C-z>

set wildcharm=<C-o>
"nnoremap <C-l> :buffer<Space><C-o>
nnoremap <Space>bb :buffer<Space><C-o>
nnoremap <Space>ee :edit<Space><C-o>

cnoremap <C-y> <Up>

if has('nvim')
  cnoremap <C-l> <Down><BS><C-o>
else
  cnoremap <C-l> <Down>
endif


""
""" Tail: Wild Menu / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
