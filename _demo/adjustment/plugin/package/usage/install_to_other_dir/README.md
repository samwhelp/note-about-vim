

## Link

* https://github.com/morhetz/gruvbox


## Help

### vim

* :help [packpath](https://vimhelp.org/options.txt.html#'packpath')
* :help [packages](https://vimhelp.org/repeat.txt.html#packages)

### nvim

* :help [packpath](https://neovim.io/doc/user/options.html#'packpath')
* :help [packages](https://neovim.io/doc/user/repeat.html#packages)


## Prepare


### clone gruvbox

run

```
git clone https://github.com/morhetz/gruvbox.git ~/.cache/xvim/site/pack/theme/start/gruvbox
```

## Test

``` sh
vim -u vimrc
```

``` sh
nvim -u init.vim
```

## Path

| Path | Note |
| --- | --- |
| [~/.vim/vimrc](vimrc) | vimrc file_path |
| [~/.config/nvim/init.vim](init.vim) | nvimrc file_path |
| ~/.cache/xvim/site/pack | package dir_path |
| ~/.cache/xvim/site/pack/theme/start/gruvbox | gruvbox dir_path |
