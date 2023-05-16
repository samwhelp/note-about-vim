# mvim

| File |
| --- |
| [vimrc](https://github.com/samwhelp/note-about-vim/blob/gh-pages/_demo/prototype/mvim/vimrc) |


## Prepare

### vim-plug

> run to install [~/.cache/mvim/site/autoload/plug.vim](https://github.com/junegunn/vim-plug/blob/master/plug.vim)

``` sh
curl -fLo ~/.cache/mvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


## Install

### vimrc

> run to install [~/.vim/vimrc](vimrc)

``` sh
curl -fLo ~/.vim/vimrc --create-dirs \
	https://raw.githubusercontent.com/samwhelp/note-about-vim/gh-pages/_demo/prototype/mvim/vimrc
```

> then install plugin

``` sh
vim -nNRe -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
```

### nvimrc

> run to install [~/.config/nvim/init.vim](vimrc)

``` sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
	https://raw.githubusercontent.com/samwhelp/note-about-vim/gh-pages/_demo/prototype/mvim/vimrc
```

> then install plugin

``` sh
nvim -nNRe -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
```
