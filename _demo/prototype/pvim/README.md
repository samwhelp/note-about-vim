# pvim

| File |
| --- |
| [vimrc](https://github.com/samwhelp/note-about-vim/blob/gh-pages/_demo/prototype/pvim/vimrc) |


## Prepare

### vim-plug

> run to install [~/.cache/pvim/site/autoload/plug.vim](https://github.com/junegunn/vim-plug/blob/master/plug.vim)

``` sh
curl -fLo ~/.cache/pvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


## Install

### vimrc

> run to install [~/.vim/vimrc](vimrc)

``` sh
curl -fLo ~/.vim/vimrc --create-dirs \
    https://raw.githubusercontent.com/samwhelp/note-about-vim/gh-pages/_demo/prototype/pvim/vimrc
```

> then install plugin

``` sh
vim -nNRe -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
```

### nvimrc

> run to install [~/.config/nvim/init.vim](vimrc)

``` sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/samwhelp/note-about-vim/gh-pages/_demo/prototype/pvim/vimrc
```

> then install plugin

``` sh
nvim -nNRe -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
```








## Prepare

``` sh
make prepare
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
| ~/.cache/pvim/site/pack | package dir path |
| ~/.cache/pvim/site/pack/theme/start | theme dir path |
| ~/.cache/pvim/site/pack/util/start | util dir path |

## Note

### Manjaro

run

```
pamac search neovim
```

show

```
python-pynvim                                                                                                   [Installed] 0.4.3-1     community 
    Python client for Neovim
neovim-qt                                                                                                                   0.2.16.1-1  community 
    GUI for Neovim
neovim                                                                                                          [Installed] 0.4.4-1     community 
    Fork of Vim aiming to improve user experience, plugins, and GUIs
```

run

``` sh
pamac install neovim python-pynvim
```

> coc need python-pynvim


``` sh
pamac install yarn
```

> coc need yarn

