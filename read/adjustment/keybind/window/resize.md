---
title: 移動邊界(更改大小)
nav_order: 6021
has_children: false
parent: 分割視窗
grand_parent: 按鍵綁定
---


# 移動邊界(更改大小)

針對的「Windnow Resize」的部份，做了以下的對應設定，來便利操作。


``` vim
nnoremap <S-Down> <C-w>-
nnoremap <S-Up> <C-w>+
nnoremap <S-Left> <C-w><
nnoremap <S-Right> <C-w>>
```


對於「Window」其他的操作，我都還是使用原來「Vim」提供的「[Ctrl+w](https://vimhelp.org/index.txt.html#CTRL-W)」開頭鍵的操作。
上面做的對應，我個人覺得比原來的設定，更便利來操作該動作，所以才特別去做調整。

可以參考

* :help [CTRL-W](https://vimhelp.org/index.txt.html#CTRL-W)
* :help [window.txt](https://vimhelp.org/windows.txt.html)
* [https://github.com/samwhelp/tool-svim-core#window-resize](https://github.com/samwhelp/tool-svim-core#window-resize)
* [https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature?id=window-resize](https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature?id=window-resize)


## 表格說明

| 按鍵 | 對應 |
| --- | --- |
| `Shift + Down` | [&lt;C-w&gt;-](https://vimhelp.org/windows.txt.html#CTRL-W_-) |
| `Shift + Up` | [&lt;C-w&gt;+](https://vimhelp.org/windows.txt.html#CTRL-W_+) |
| `Shift + Left` | [&lt;C-w&gt;<](https://vimhelp.org/windows.txt.html#CTRL-W_<) |
| `Shift + Right` | [&lt;C-w&gt;>](https://vimhelp.org/windows.txt.html#CTRL-W_>) |


## 實作範例

* [window-resize](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/adjustment/keybind/window-resize)
