

""
" ## Reference
"
" ### Code
" * https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim/vim/plug.vim#L1
" * https://github.com/liuchengxu/space-vim/blob/master/core/autoload/spacevim.vim#L42
"
""


function! VimPlug#Util#Download (plug_vim_file_path) abort
  "curl -fLo ~/.cache/xvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  execute '!curl -fLo' a:plug_vim_file_path '--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

endfunction