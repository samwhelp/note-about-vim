---
title: 剪貼簿
nav_order: 6033
has_children: false
parent: 編輯
grand_parent: 按鍵綁定
---

# 剪貼簿

## 複製到剪貼簿

``` vim
set mouse=a
vnoremap <S-Tab> "+y
```

針對「複製到剪貼簿」做了上面的設定。


## 表格說明

在「Visual Mode」

| 按鍵 | 對應 | 說明 | 注意事項 |
| --- | --- | --- | --- |
| `Shift + Tab` | ["+y](https://vimhelp.org/gui_x11.txt.html#quoteplus) | 將選取的文字，複製到剪貼簿。 | Work on Visual Mode |


## 範例

* [clipboard](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/adjustment/keybind/clipboard)


## Link

> [8. The selection and drop registers "*, "+ and "~](https://vimhelp.org/change.txt.html#registers)

* [https://vimhelp.org/change.txt.html#registers](https://vimhelp.org/change.txt.html#registers)
* [https://vimhelp.org/gui_x11.txt.html#x11-selection](https://vimhelp.org/gui_x11.txt.html#x11-selection)
* [https://vimhelp.org/gui_x11.txt.html#quoteplus](https://vimhelp.org/gui_x11.txt.html#quoteplus)
* [https://vimhelp.org/gui.txt.html#clipboard](https://vimhelp.org/gui.txt.html#clipboard)
