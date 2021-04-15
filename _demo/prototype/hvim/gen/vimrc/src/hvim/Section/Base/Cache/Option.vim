

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Undo / Option
""

"" $ mkdir -p ~/.vim/var/undo/
"" $ mkdir -p ~/.cache/vimfiles/var/undo/


" ## undofile save_dir_path
"set undodir=/tmp//
"set undodir=/var/tmp//
"set undodir=~/.cache/vimfiles/var/undo//
"set undodir=~/.vim/var/undo//
"set undodir=~/.cache/vimfiles/var/undo//,/tmp//
set undodir=~/.cache/vimfiles/var/undo//,~/.vim/var/undo//,/tmp//


" ## enable undofile
set undofile


" ## undofile option
"set undolevels=1000	" ## default(1000)
"set undoreload=10000	" ## default(10000)


" ## disable undofile
"set noundofile



""
""" Tail: Undo / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Backup / Option
""

"" $ mkdir -p ~/.vim/var/backup/
"" $ mkdir -p ~/.cache/vimfiles/var/backup/


" ## backup save_dir_path
"set backupdir=/tmp/
"set backupdir=/var/tmp/
"set backupdir=~/.cache/vimfiles/var/backup/
"set backupdir=~/.vim/var/backup/
"set backupdir=./.backup/,~/.cache/vimfiles/var/backup/,/tmp/
set backupdir=~/.cache/vimfiles/var/backup//,/tmp//


" ## enable backup
set backup
set writebackup
set backupcopy=yes


" ## disable backup
"set nobackup


""
""" Tail: Backup / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Swap / Option
""

"" $ mkdir -p ~/.vim/var/swap/
"" $ mkdir -p ~/.cache/vimfiles/var/swap/


" ## swapfile save_dir_path
"set directory=/tmp//
"set directory=/var/tmp//
"set directory=~/.cache/vimfiles/var/swap//
"set directory=~/.vim/var/swap//
set directory=~/.cache/vimfiles/var/swap//,/tmp//


" ## enable swapfile
" no swap file
set swapfile


" ## disable swapfile
"set noswapfile


""
""" Tail: Swap / Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: History
""


"set history=200 " ## default(200)


""
""" Tail: History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
