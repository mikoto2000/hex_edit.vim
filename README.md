hex_edit.vim
============

Hex 編集モードへの切り替えと保存・終了が簡単に行えるようになるプラグインです。


Usage:
------

下記関数をお好みのキーにマッピングしてください。

- ``hex_edit#StartHexEdit()`` : Hex 編集モードを開始します
- ``hex_edit#SaveHexEdit()`` : 編集内容を保存します
- ``hex_edit#EndHexEdit()`` : Hex 編集モードを終了します


設定例 :

```vim
command! StartHexEdit call hex_edit#StartHexEdit()
command! SaveHexEdit call hex_edit#SaveHexEdit()
command! EndHexEdit call hex_edit#EndHexEdit()

" Hex 編集中に :w でセーブできるようにマッピング追加
augroup hex_edit
    autocmd!
    autocmd FileType xxd nnoremap <buffer> :w :call hex_edit#SaveHexEdit()<Return>
augroup END
```


License:
--------

Copyright (C) 2017 mikoto2000

This software is released under the MIT License, see LICENSE

このソフトウェアは MIT ライセンスの下で公開されています。 LICENSE を参照してください。


Author:
-------

mikoto2000 <mikoto2000@gmail.com>
