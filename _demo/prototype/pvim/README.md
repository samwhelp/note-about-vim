
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

