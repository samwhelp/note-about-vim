
# runtime


## Help

### vim

* :help [using-scripts](https://vimhelp.org/repeat.txt.html#using-scripts)
* :help ['runtimepath'](https://vimhelp.org/options.txt.html#'runtimepath')
* :help [:runtime](https://vimhelp.org/repeat.txt.html#:runtime)

### nvim

* :help [using-scripts](https://neovim.io/doc/user/repeat.html#using-scripts)
* :help ['runtimepath'](https://neovim.io/doc/user/options.html#'runtimepath')
* :help [:runtime](https://neovim.io/doc/user/repeat.html#:runtime)


## Test

### vim


``` sh
vim -u vimrc
```

### neovim

``` sh
nvim -u vimrc
```


## Path

run

``` sh
tree .
```

show


```
.
├── boot
│   └── Start.vim
├── core
│   ├── DoRun.vim
│   ├── PostRun.vim
│   └── PreRun.vim
├── init.vim -> vimrc
├── README.md
├── test-on-nvim.sh
├── test-on-vim.sh
└── vimrc

2 directories, 9 files
```
