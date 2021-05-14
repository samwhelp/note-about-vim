

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Fzf / Keybind
""

" https://github.com/junegunn/fzf.vim#usage
" Mapping selecting mappings
"nmap <leader><tab> <plug>(fzf-maps-n)
"xmap <leader><tab> <plug>(fzf-maps-x)
"omap <leader><tab> <plug>(fzf-maps-o)
"nmap <Space>? <plug>(fzf-maps-n)


" https://github.com/junegunn/fzf.vim#commands
nnoremap <Space>?m :Maps<CR>
nnoremap <Space>?? :Helptags<CR>
nnoremap <Space>?c :Commands<CR>

nnoremap <Space>ff :Files<CR>
nnoremap <Space>f? :Files<Space>
nnoremap <Space>fm :Marks<CR>
nnoremap <Space>fb :Buffers<CR>
nnoremap <Space>fl :Lines<CR>
nnoremap <Space>fo :BLines<CR>
nnoremap <Space>fa :Ag<CR>

nnoremap <Space>tc :Colors<CR>
nnoremap <Space>tw :Windows<CR>

nnoremap <Space>fhh :History<CR>
nnoremap <Space>fhc :History:<CR>
nnoremap <Space>fhs :History/<CR>

nnoremap <Space>fgc :BCommits<CR>
nnoremap <Space>fgf :GFiles?<CR>
nnoremap <Space>fgl :GFiles<CR>

""
""" Tail: Fzf / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
