

## Link

* https://draculatheme.com/vim
* https://github.com/dracula/vim


## Help

### vim

* :help [packpath](https://vimhelp.org/options.txt.html#'packpath')
* :help [packages](https://vimhelp.org/repeat.txt.html#packages)

### nvim
* :help [packpath](https://neovim.io/doc/user/options.html#'packpath')
* :help [packages](https://neovim.io/doc/user/repeat.html#packages)
 

## Prepare


### clone dracula

run

``` sh
mkdir -p ~/.cache/xvim/site/pack/themes/start
cd ~/.cache/xvim/site/pack/themes/start
git clone https://github.com/dracula/vim.git dracula
```


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

| Path | Note |
| --- | --- |
| ~/.cache/xvim/site/pack | package dir path |
| ~/.cache/xvim/site/pack/themes/start/dracula | dracula dir path |
