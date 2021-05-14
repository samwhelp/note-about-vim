

## Link

* https://github.com/junegunn/vim-plug
* https://github.com/liuchengxu/vim-clap



## Prepare


### Install vim-plug

run

``` sh
curl -fLo ~/.cache/xvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


### PlugInstall

##### Way 1

run frist

``` sh
vim
```

then run

``` vim
:PlugInstall
```


#### Way 2

run


``` sh
vim -nNRe -u vimrc -c 'try | :PlugInstall | endtry'
```

or run

``` sh
vim -nNRe -u vimrc -c 'try | :PlugInstall | finally | :qa! | endtry'
```

or run

``` sh
vim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
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
| ~/.cache/xvim/site/autoload/plug.vim | plug.vim file path |
| ~/.cache/xvim/plug | plug dir path |
| ~/.cache/xvim/plug/vim-clap | vim-clap dir path |
