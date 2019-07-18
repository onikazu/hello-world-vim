" plugin 配下のファイルはvim 起動時に呼び出される
" 関数の呼び出し処理を書けば良い
" エンコーディング指定
script encoding utf-8

" グローバル変数による読み込み制御
if exists('g:loaded_helloworldvim')
    finish
endif
" この変数の存在をautoload配下でチェックする
let g:loaded_helloworldvim = 1

" ユーザー設定を一時退避
let s:save_cpo = &cpo
set cpo&vim

" 関数の呼び出し処理
nmap hello :call helloworldvim#helloworld()<CR>

" 処理終わり

" 退避していたユーザ設定を戻す
let &cpo = s:save_cpo
unlet s:save_cpo


