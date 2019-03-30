
# Cursor Line - 進階應用


# 如何設定

## 設定外觀


``` vim
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
```

## 功能啟用


``` vim
set cursorline
set nocursorcolumn
```

## 綁定事件


``` vim
au InsertLeave * set cursorline nocursorcolumn
au InsertEnter * set nocursorline nocursorcolumn
au WinEnter * set cursorline nocursorcolumn
au WinLeave * set nocursorline nocursorcolumn
```

也可以合併寫成如下

``` vim
au InsertLeave,WinEnter * set cursorline nocursorcolumn
au InsertEnter,WinLeave * set nocursorline nocursorcolumn
```

## 如何測試


執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE

set cursorline
set nocursorcolumn

au InsertLeave,WinEnter * set cursorline nocursorcolumn
au InsertEnter,WinLeave * set nocursorline nocursorcolumn

EOF

```

執行下面指令測試


``` sh
$ vim -u ./vimrc
```
