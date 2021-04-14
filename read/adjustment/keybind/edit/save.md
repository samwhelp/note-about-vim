---
title: 存檔
nav_order: 6032
has_children: false
parent: 編輯
grand_parent: 按鍵綁定
---

# 存檔

``` vim
nnoremap <S-Tab> :w<CR>
inoremap <S-Tab> <Esc>:w<CR>a
```

針對「Save」做了上面的設定。


不見得需要上面的設定，我有時候也還是會用「:」開頭的指令。


## 表格說明

| 按鍵 | 對應 | 說明 | 注意事項 |
| --- | --- | --- | --- |
| `<S-Tab>` | [:w](https://vimhelp.org/editing.txt.html#:w)&lt;CR&gt; | Write the whole buffer to the current file. | Work on Normal Mode and Insert Mode |


## 範例

* [save](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/adjustment/keybind/save)
