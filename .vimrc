"文字コード関係
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

" release autogroup in MyAutoCmd
augroup MyAutoCmd
    autocmd!
augroup END


"""一般

set expandtab

"vi互換でなくVimのデフォルト設定に
set nocompatible

"バックアップを取る
set backup

"バックアップのディレクトリ
set backupdir=~/.vim/backup

"vimを使ってくれてありがとうを非表示
"set notitle


"""表示設定
set fileencoding=utf-8

"カラースキーマ
colorscheme desert

"コードの色分け
syntax on

"分割したら新しいウインドウは下に,右に
set splitbelow
set splitright

"行番号
set number

"不可視文字を表示, Unicodeで更かし文字を上書き
set list
"set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

"対応する括弧を表示,３秒表示
"set showmatch
set matchtime=1

"対応する括弧を非表示
let loaded_matchparen = 1

"編集中にファイル名を表示
set title

"テキストの折り返し
set wrap

"カーソル形状の変更
if has('win32unix')
      let &t_ti .= "\e[1 q"  " 端末を termcap モードにする
        let &t_SI .= "\e[5 q"  " 挿入モード開始(バー型のカーソル)
	  let &t_EI .= "\e[1 q"  " 挿入モード終了(ブロック型カーソル)
	    let &t_te .= "\e[0 q"  " termcap モードから抜ける
	endif


"""編集設定

"シフト移動幅
set shiftwidth=4

"オートインデント
set autoindent

"行頭の余白でTabを打つとshiftwidthの数インデント
set smarttab

"マウスモード有効
set mouse=a

"backspace有効
set backspace=indent,eol,start

"コピー・ペーストにクリップボードを使う
set clipboard=unnamed


"""マクロ・キー設定

"Ctrl+hjklでウインドウを移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"素早くjjでESC
"inoremap jj <Esc>

"折り返し時のj, kの移動を自然に
nnoremap j gj
nnoremap k gk

"Pythonのテスト
"nnoremap <C-p> :!python %<CR>


"""検索関係

"大文字小文字の区別なし
set ignorecase

"インクリメンタルサーチ
set incsearch

"検索マッチテキストのハイライト
set hlsearch


"""Neobundle関係

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

"プラグイン
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'Rip-Rip/clang_complete.git'

filetype plugin indent on
filetype indent on
syntax on

"補助設定
"quickrun 垂直分割
let g:quickrun_config={'*': {'split':'vertical'}}

"quickrun g++ 設定
let g:quickrun_config.cpp = {
\       'command': 'g++',
\       'cmdopt': '-std=c++11'
\       }

" VimFilerを:e.で起動
let g:vimfiler_as_default_explorer=1

" neocomplete
let g:neocomplete#enable_at_startup=1

