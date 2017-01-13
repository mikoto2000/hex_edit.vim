""" 現在のバッファで hex 編集モードを開始する
function hex_edit#StartHexEdit()
    " バイナリモードじゃなかったら
    " バイナリモードに入ってファイルを開きなおす
    if !&binary
        setlocal binary
        e! %
    endif

    " hex 編集モード (？) に切り替え
    silent %!xxd

    setlocal filetype=xxd
endfunction

""" hex 編集モードで編集した内容を保存する
function hex_edit#SaveHexEdit()

    " binary がセットされていない場合、
    " 多分間違って呼び出しちゃってるので何もしない
    if !&binary
        echo "This buffer is not binary mode."
        return
    endif

    " hex 編集モードから戻って保存した後、
    " また hex 編集モードに帰る
    silent %!xxd -r
    w
    silent %!xxd
endfunction

""" 現在のバッファで hex 編集モードを終了する
function hex_edit#EndHexEdit()

    " binary がセットされていない場合、
    " 多分間違って呼び出しちゃってるので何もしない
    if !&binary
        echo "This buffer is not binary mode."
        return
    endif

    " hex 編集モードから戻る
    silent %!xxd -r

    " バイナリモードをやめる
    setlocal nobinary
endfunction

