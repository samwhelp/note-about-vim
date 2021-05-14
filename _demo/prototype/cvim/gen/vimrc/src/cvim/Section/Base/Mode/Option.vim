

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Info / Option
""

" ## show mode
set showmode

" ## show cmd
set showcmd

""
""" Tail: Info / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: WildMenu / Option
""

" ## wildmode
set wildmenu
"set wildmode=longest:list,full
set wildmode=longest,full


" ## ignore
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
set wildignore+=*.png,*.jpg,*.gif,*.svg,*.xpm

""
""" Tail: WildMenu / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Mouse / Option
""

" :help 'mouse'
set mouse=
"set mouse=a
"set mouse=nv

""
""" Tail: Mouse / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Error Bell / Option
""

"set errorbells
set noerrorbells


"set visualbell
set novisualbell

""
""" Tail: Error Bell / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Search / Option
""

" ## :help 'showmatch'
set showmatch
"set noshowmatch



" ## :help 'hlsearch'
set hlsearch
"set nohlsearch


" ## :help 'incsearch'
set incsearch
"set noincsearch


" ## :help 'ignorecase'
"set ignorecase
set noignorecase


" ## :help 'smartcase'
"set smartcase
set nosmartcase


" ## shortcut key for switch ignorecase
nnoremap \i :set ignorecase<CR>
nnoremap \o :set noignorecase<CR>
"nnoremap \i :set ignorecase!<CR> # switch ignorecase

""
""" Tail: Search / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Docs
""

" https://vimhelp.org/
"
" :help index.txt
" https://vimhelp.org/index.txt.html
"
" :help insert-index
" https://vimhelp.org/index.txt.html#insert-index

""
""" Tail: Docs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
