

# set-option

## 開始

先執行「vim」。

``` sh
$ vim
```

## 設定開啟(on)

``` vim
:set cursorline
```

後面加入「?」，了解目前的設定值

執行

``` vim
:set cursorline?
```

顯示

```
cursorline
```

## 設定關閉(off)

執行

``` vim
:set nocursorline
```

後面加入「?」，了解目前的設定值

執行

``` vim
:set nocursorline?
```

顯示

```
nocursorline
```


## 切換「開啟」和「關閉」

反複執行

``` vim
:set cursorline!
```

或是

``` vim
:set nocursorline!
```

可以進行「開啟」和「關閉」的切換。

> 注意上面指令後方有加入「!」，也就是「cursorline!」和「nocursorline!」。
