---
title: Cursor Column - 如何設定
nav_order: 5090
has_children: false
parent: 游標行
grand_parent: 外觀微調
---

# Cursor Column - 如何設定

## 設定外觀


``` vim
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE
```

## 功能啟用


``` vim
set cursorcolumn
```

## 功能停用


``` vim
set nocursorcolumn
```

## 功能啟用和停用切換

反複執行

``` vim
set cursorcolumn!
```

或是

``` vim
set nocursorcolumn!
```

可以進行「啟用」和「停用」的切換。


> 注意上面指令後方有加入「!」，也就是「cursorcolumn!」和「nocursorcolumn!」。

## 如何測試

### 方式一


``` sh
vim -u NONE -c 'hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE | set cursorcolumn'
```

> 注意上面的「vim -u NONE」也可以改成「vim -u NORC」。


### 方式二


執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE

set cursorcolumn

EOF

```

執行下面指令測試


``` sh
$ vim -u ./vimrc
```
