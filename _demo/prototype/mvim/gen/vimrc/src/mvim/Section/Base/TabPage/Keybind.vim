

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabPage / Keybind
""


" Note:
" Use t for leader
" overwrite exist t
" please read
" :help t
" :help normal-index





" ## switch next or previous
" default gT for tabprevious
" default gt for tabnext
" default <C-PageUp> for tabprevious. but terminal switch tab
" default <C-PageDown> for tabnext. but terminal switch tab
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap th :tabprevious<CR>
nnoremap tl :tabnext<CR>
nnoremap t` :tabprevious<CR>
nnoremap t<Tab> :tabnext<CR>
"nnoremap tq :tabnext<CR>
"nnoremap t<Tab> :tabprevious<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <Leader>u :redraw<CR> "  for orignal <C-l>

" ## switch to first or last
nnoremap tj :tabfirst<CR>
nnoremap tk :tablast<CR>


" ## switch to 1~10
nnoremap t1 1gt
nnoremap t2 2gt
nnoremap t3 3gt
nnoremap t4 4gt
nnoremap t5 5gt
nnoremap t6 6gt
nnoremap t7 7gt
nnoremap t8 8gt
nnoremap t9 9gt
nnoremap t0 10gt




" ## move left or right
nnoremap tu :-tabmove<CR>
nnoremap ti :+tabmove<CR>
nnoremap tmh :-tabmove<CR>
nnoremap tml :+tabmove<CR>


" ## move to first or last
nnoremap tmj :0tabmove<CR>
nnoremap tmk :$tabmove<CR>


" ## tab move
" :help tabmove
" Move the current tab page to after tab page N.
" Use zero to make the current tab page the first one
nnoremap tm0 :0tabmove<CR>
nnoremap tm1 :1tabmove<CR>
nnoremap tm2 :2tabmove<CR>
nnoremap tm3 :3tabmove<CR>
nnoremap tm4 :4tabmove<CR>
nnoremap tm5 :5tabmove<CR>
nnoremap tm6 :6tabmove<CR>
nnoremap tm7 :7tabmove<CR>
nnoremap tm8 :8tabmove<CR>
nnoremap tm9 :9tabmove<CR>


" ## open current window to new tabpage
nnoremap ts :tab split<CR>


" ## new tabpage or close
"nnoremap <Leader>t :tabnew<CR>
"nnoremap tt :tabnew<CR>
nnoremap tg :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap te :tabedit<Space>
nnoremap tf :tabnew<CR>:edit<Space>


" ## quit all
nnoremap tqa :qa!<CR>


" ## close other tabpage
" use twa to close other tabpage, then all buffer will hide, if set hidden.
nnoremap twa :tabonly<CR>
" Note:
" use ,c to delete all buffer, then all tapage will close.
" use ,wa to close other window, then all buffer will hide, if set hidden.
" use ,h to hide current buffer, then current tapage will close.






" ## show help page
"nnoremap tb :tabnew<CR>:help<CR><C-w>w:quit!<CR><Esc>
nnoremap tb :tab help<CR>


""
""" Tail: TabPage / Keybind
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
