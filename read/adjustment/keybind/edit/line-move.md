---
title: 移動行
nav_order: 6031
has_children: false
parent: 編輯
grand_parent: 按鍵綁定
---


# 移動行


``` vim
nnoremap <S-PageUp> :m-2<CR>
nnoremap <S-PageDown> :m+<CR>
inoremap <S-PageUp> <Esc>:m-2<CR>i
inoremap <S-PageDown> <Esc>:m+<CR>i
```

這個功能，是從下面兩篇文章看到的，我改成適合我的按鍵操作。

* 凍仁的筆記 / [Vim: Move line(s) up or down](http://note.drx.tw/2014/01/vim-move-lines-up-or-down.html)
* 高見龍 / [Vim的操作小技巧](https://kaochenlong.com/2011/12/28/vim-tips/)

相關的設定請參考

* :help [:m](https://vimhelp.org/change.txt.html#:m)
* [https://github.com/samwhelp/tool-svim-core#line-move](https://github.com/samwhelp/tool-svim-core#line-move)
* [https://samwhelp.github.io/tool-svim-doc/read/en_us/feature/keybind.html#line-move](https://samwhelp.github.io/tool-svim-doc/read/en_us/feature/keybind.html#line-move)



## 表格說明


| 按鍵 | 對應 | 說明 | 注意事項 |
| --- | --- | --- | --- |
| `Shift + PageUp` | [:m-2](https://vimhelp.org/change.txt.html#:m)&lt;CR&gt; | Move line up. | Work on Normal Mode and Insert Mode |
| `Shift + PageDown` | [:m+](https://vimhelp.org/change.txt.html#:m)&lt;CR&gt; | Move line Down. | Work on Normal Mode and Insert Mode |


## 範例

* [line-move](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/adjustment/keybind/line-move)
