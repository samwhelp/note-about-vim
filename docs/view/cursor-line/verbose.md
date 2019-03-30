

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

* $ vim -c ':help [initialization](https://vimhelp.org/starting.txt.html#initialization)'
* $ vim -c ':help [startup](https://vimhelp.org/starting.txt.html#startup)'
* $ vim -c ':help [-u](https://vimhelp.org/starting.txt.html#-u)'
* $ man [vim](http://manpages.ubuntu.com/manpages/bionic/en/man1/vim.1.html)
