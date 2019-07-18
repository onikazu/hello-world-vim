" autoload 配下のファイルはvim 起動時に呼び出される
" 関数定義を書けば良い
" エンコーディング指定
script encoding utf-8

" グローバル変数による読み込み制御
" 変数が存在しなければplugin配下が実行されていなければ実行しない
if !exists('g:loaded_helloworldvim')
    finish
endif
" この変数の存在をautoload配下でチェックする
let g:loaded_helloworldvim = 1

" ユーザー設定を一時退避
let s:save_cpo = &cpo
set cpo&vim

" 関数
function! helloworldvim#helloworld()
  echo "Hello World! from onikazu"
endfunction

" 退避していたユーザ設定を戻す
let &cpo = s:save_cpo
unlet s:save_cpo


