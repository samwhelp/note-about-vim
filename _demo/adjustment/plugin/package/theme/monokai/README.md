

## Link

* https://github.com/sickill/vim-monokai


## Help

### vim

* :help [packpath](https://vimhelp.org/options.txt.html#'packpath')
* :help [packages](https://vimhelp.org/repeat.txt.html#packages)

### nvim
* :help [packpath](https://neovim.io/doc/user/options.html#'packpath')
* :help [packages](https://neovim.io/doc/user/repeat.html#packages)
 

## Prepare


### clone vim-monokai

run

``` sh
mkdir -p ~/.cache/xvim/site/pack/theme/start
cd ~/.cache/xvim/site/pack/theme/start
git clone https://github.com/sickill/vim-monokai.git monokai
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
| ~/.cache/xvim/site/pack/theme/start/monokai | monokai dir path |
