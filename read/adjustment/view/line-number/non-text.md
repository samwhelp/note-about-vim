---
title: NonText
nav_order: 5032
has_children: false
parent: 行數
grand_parent: 外觀微調
---

# NonText


## 事前測試

### 檢查預設的設定

執行

``` sh
vim -u 'NONE' -c ':verbose hi NonText'
```

顯示

```
NonText        xxx term=bold ctermfg=12 gui=bold guifg=Blue
```

執行

``` sh
vim -u NONE -c ':verbose hi EndOfBuffer'
```

顯示

```
EndOfBuffer    xxx links to NonText
```

執行

``` sh
vim -u 'NONE' -c "set highlight?"
```

顯示

<pre v-pre="" data-lang=""><code class="">
highlight=8:SpecialKey,~:EndOfBuffer,@:NonText,d:Directory,e:ErrorMsg,i:IncSearch,l:Search,m:MoreMsg,M:ModeMsg,n:LineNr,N:CursorLineNr,r:Question,s:StatusLine,S:StatusLineNC,c:VertSplit,t:Title,v:Visual,V:VisualNOS,w:WarningMsg,W:WildMenu,f:Folded,F:FoldColumn,A:DiffAdd,C:DiffChange,D:DiffDelete,T:DiffText,>:SignColumn,-:Conceal,B:SpellBad,P:SpellCap,R:SpellRare,L:SpellLocal,+:Pmenu,=:PmenuSel,x:PmenuSbar,X:PmenuThumb,*:TabLine,#:TabLineSel,_:TabLineFill,!:CursorColumn,.:CursorLine,o:ColorColumn,q:QuickFixLine,z:StatusLineTerm,Z:StatusLineTermNC
</code>
</pre>

### 觀看預設設定的外觀

``` sh
vim -u 'NONE'
```


## 測試更改設定


### 方式一

執行

``` sh
vim -u 'NONE' -c 'hi NonText ctermfg=232 ctermbg=NONE cterm=NONE'
```


### 方式二

執行下面指令，產生一個檔案，暫時先命名為「vimrc」，可以任意命名。

``` sh
cat > vimrc << EOF

hi NonText ctermfg=232 ctermbg=NONE cterm=NONE

EOF
```

執行下面指令，觀看「vimrc」的內容。

``` sh
cat ./vimrc
```

顯示

``` vim
hi NonText ctermfg=232 ctermbg=NONE cterm=NONE
```

執行下面指令測試


``` sh
vim -u ./vimrc
```


## 測試其他顏色

執行

``` sh
vim -u 'NONE' -c 'hi NonText ctermfg=244 ctermbg=234 cterm=NONE'
```

## vim help

* $ vim -c ':help NonText' # [說明連結](https://vimhelp.org/syntax.txt.html#hl-NonText)
* $ vim -c ':help EndOfBuffer' # [說明連結](https://vimhelp.org/syntax.txt.html#hl-EndOfBuffer)
* $ vim -c ":help 'highlight'" # [說明連結](https://vimhelp.org/options.txt.html#'highlight')
* $ vim -c ":help 'hl'"  # [說明連結](https://vimhelp.org/options.txt.html#'hl')
