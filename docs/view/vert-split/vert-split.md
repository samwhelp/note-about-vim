

# VertSplit


## 事前測試


### 檢查預設的設定

執行

``` sh
vim -u 'NONE' -c ':verbose hi VertSplit'
```

顯示

```
VertSplit      xxx term=reverse cterm=reverse gui=reverse
```

### 觀看預設設定的外觀

``` sh
vim -u 'NONE' -c ':vsplit'
```

會看到左右分隔成兩個視窗，中間是有一個分隔欄，背景是白色，並且顯示「|」這個字元。


## 測試更改設定


### 方式一

執行

``` sh
vim -u 'NONE' -c 'hi VertSplit term=reverse ctermfg=32 ctermbg=236 | :vsplit'
```

會看到左右分隔成兩個視窗，中間是有一個分隔欄，背景不再是白色，並且顯示「|」這個字元。


### 方式二

執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

hi VertSplit term=reverse ctermfg=32 ctermbg=236

EOF
```

執行下面指令測試


``` sh
vim -u ./vimrc -c ':vsplit'
```

會看到左右分隔成兩個視窗，中間是有一個分隔欄，背景不再是白色，並且顯示「|」這個字元。

## 測試其他字元和顏色


### 方式一

執行

``` sh
vim -u 'NONE' -c 'set fillchars=vert:\ , | hi VertSplit term=reverse ctermfg=236 ctermbg=236 | :vsplit'
```

### 方式二

執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

set fillchars=vert:\ ,

hi VertSplit term=reverse ctermfg=236 ctermbg=236

EOF
```

執行下面指令，觀看「vimrc」的內容。

``` sh
cat ./vimrc
```

顯示

``` vim
set fillchars=vert:\ ,

hi VertSplit term=reverse ctermfg=236 ctermbg=236

```

執行下面指令，觀看設定後的結果


``` sh
vim -u ./vimrc -c ':vsplit'
```


## vim help

* $ vim -c ':help VertSplit' # [說明連結](https://vimhelp.org/syntax.txt.html#hl-VertSplit)
