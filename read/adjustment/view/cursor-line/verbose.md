---
title: verbose
nav_order: 5031
has_children: false
parent: 游標行
grand_parent: 外觀微調
---

# verbose


## hi

執行

``` sh
vim -u NONE -c ':verbose hi'
```


## hi CursorLine

執行

``` sh
vim -u NONE -c ':verbose hi CursorLine'
```

顯示

```
CursorLine     xxx term=underline cterm=underline guibg=Grey90
```

## hi CursorColumn

執行

``` sh
vim -u NONE -c ':verbose hi CursorColumn'
```

顯示

``` sh
CursorColumn   xxx term=reverse ctermbg=7 guibg=Grey90
```

> 注意上面的「vim -u NONE」也可以改成「vim -u NORC」。

可以閱讀下面的「vim help」。


| 指令 | 頁面 |
| --- | --- |
| `vim -c ':help initialization'` | [#read](https://vimhelp.org/starting.txt.html#initialization) |
| `vim -c ':help startup'` | [#read](https://vimhelp.org/starting.txt.html#startup) |
| `vim -c ':help -u'` | [#read](https://vimhelp.org/starting.txt.html#-u) |
| `man vim` | [#read](http://manpages.ubuntu.com/manpages/bionic/en/man1/vim.1.html) |


| 指令 | 頁面 |
| --- | --- |
| `nvim -c ':help initialization'` | [#read](https://neovim.io/doc/user/starting.html#initialization) |
| `nvim -c ':help startup'` | [#read](https://neovim.io/doc/user/starting.html#startup) |
| `nvim -c ':help -u'` | [#read](https://neovim.io/doc/user/starting.html#-u) |
| `man nvim` | [#read](http://manpages.ubuntu.com/manpages/focal/en/man1/nvim.1.html) |
