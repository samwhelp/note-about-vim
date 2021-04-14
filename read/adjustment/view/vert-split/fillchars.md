---
title: fillchars
nav_order: 5090
has_children: false
parent: 視窗分隔欄
grand_parent: 外觀微調
---

# 'fillchars'


## 事前測試

### 檢查預設的設定

執行

``` sh
vim -u 'NONE' -c ':set fillchars?'
```

顯示

```
  fillchars=vert:|,fold:-
```

執行

``` sh
vim -u 'NONE' -c ':verbose set fillchars'
```

顯示

```
  fillchars=vert:|,fold:-
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
vim -u 'NONE' -c 'set fillchars=vert:\ , | :vsplit'
```

會看到左右分隔成兩個視窗，中間是有一個分隔欄，背景是白色，並且顯示「空白」這個字元。


### 方式二

執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

set fillchars=vert:\ ,

EOF
```

執行下面指令測試


``` sh
vim -u ./vimrc -c ':vsplit'
```

會看到左右分隔成兩個視窗，中間是有一個分隔欄，背景是白色，並且顯示「空白」這個字元。


## 測試其他字元

### 字元「.」

``` sh
vim -u 'NONE' -c 'set fillchars=vert:., | :vsplit'
```

### 字元「│」

``` sh
vim -u 'NONE' -c 'set fillchars=vert:│, | :vsplit'
```


## vim help

* $ vim -c ":help 'fillchars'" # [說明連結](https://vimhelp.org/options.txt.html#'fillchars')
* $ vim -c ':help :vsplit' # [說明連結](https://vimhelp.org/windows.txt.html#:vsplit)


## 接下來

* [修改顏色樣式](vert-split.md)
