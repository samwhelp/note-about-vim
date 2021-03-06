
# runtime


## Help

### vim

* :help [using-scripts](https://vimhelp.org/repeat.txt.html#using-scripts)
* :help [script](https://vimhelp.org/usr_41.txt.html#script)
* :help ['runtimepath'](https://vimhelp.org/options.txt.html#'runtimepath')
* :help [:source](https://vimhelp.org/repeat.txt.html#:source)

### nvim

* :help [using-scripts](https://neovim.io/doc/user/repeat.html#using-scripts)
* :help [script](https://neovim.io/doc/user/usr_41.html#script)
* :help ['runtimepath'](https://neovim.io/doc/user/options.html#'runtimepath')
* :help [:source](https://neovim.io/doc/user/repeat.html#:source)


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
