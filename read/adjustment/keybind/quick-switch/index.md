---
title: 快速切換
nav_order: 6010
has_children: true
parent: 按鍵綁定
---

# 快速切換


若有在使用「Buffer」「Window」「TabPage」，

我設定了三組的按鍵設定，用來快速切換。


## Switch Window


``` vim
nnoremap <Tab> <C-w>w
nnoremap <BS> <C-w>W
```


## Switch Buffer


``` vim
nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
```



## Switch TabPage


``` vim
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
```


以上設定，可以寫在您的「vimrc」裡。

以上並不需要用到任何「Plugin」，「Vim」原本就有的功能，只是設定按鍵對應，便利操作。

以上都是在「Vim Normal Mode」下操作。


## 表格說明


| 按鍵 | 對應 | 說明 |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | 切換到上一個 Window |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | 切換到下一個 Window |
| `<Ctrl+k>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious) | 切換到上一個 Buffer |
| `<Ctrl+j>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext) | 切換到下一個 Buffer |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious) | 切換到上一個 TabPage |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext) | 切換到下一個 TabPage |


## 範例

* [quick-switch](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/adjustment/keybind/quick-switch)
