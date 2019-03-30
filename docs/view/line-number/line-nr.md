
# LineNr


## 事前測試

### 檢查預設的設定

執行

``` sh
vim -u 'NONE' -c ':verbose hi LineNr'
```

顯示

```
LineNr         xxx term=underline ctermfg=130 guifg=Brown
```

### 觀看預設設定的外觀

``` sh
vim -u 'NONE' -c ':set number'
```


## 測試更改設定


### 方式一

執行

``` sh
vim -u 'NONE' -c 'hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE | :set number'
```


### 方式二

執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE

set number

EOF
```

執行下面指令，觀看「vimrc」的內容。

``` sh
cat ./vimrc
```

顯示

``` vim
hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE

set number

```

執行下面指令測試


``` sh
vim -u ./vimrc
```


## 測試其他顏色

執行

``` sh
vim -u 'NONE' -c 'hi LineNr ctermfg=34 ctermbg=NONE cterm=NONE | :set number'
```


## 測試relativenumber顏色

執行

``` sh
vim -u 'NONE' -c 'hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE | :set relativenumber'
```

執行

``` sh
vim -u 'NONE' -c 'hi CursorLineNr ctermfg=32 ctermbg=NONE cterm=NONE | :set relativenumber'
```

執行

``` sh
vim -u 'NONE' -c 'hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE | hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE | :set relativenumber'
```

## vim help

* $ vim -c ":help LineNr" # [說明連結](https://vimhelp.org/syntax.txt.html#hl-LineNr)
* $ vim -c ":help CursorLineNr" # [說明連結](https://vimhelp.org/syntax.txt.html#hl-CursorLineNr)
