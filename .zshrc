### PATHの設定
export DISPLAY=:0.0
export LANG=ja_JP.UTF-8

### エイリアス
alias q='exit'
alias :q='exit'

# zshrcを再読み込み
alias rz='source ~/.zshrc'
alias rzsh='source ~/.zshrc'

# screen
alias sc='screen'
function scx () {
    screen -x $1
}

# viでVimを
alias vi='vim'
alias v='vim'

# ls関係
alias ls='ls --color=auto -F'

#g++をデフォルトでc++11に
alias g++='g++ -std=c++11'

#/usr/local/bin/にコンパイルしたrubyをつかう
#alias ruby='/usr/local/bin/ruby'

#####################################################
# 一般
#####################################################
# アルファベットの展開{a..z} {a-z}等を有効にする
setopt brace_ccl

# 色有効
autoload -U colors
colors

# 色を使う
setopt prompt_subst

# 色を定義
local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'
local DEFAULT=$'%{\e[1;m%}'

# 通常のプロンプト
PROMPT=$BLUE'[%n]%# '$WHITE

# 右側のプロンプト。ここでカレントディレクトリを出す。
RPROMPT=$GREEN'[%~]'$WHITE
setopt transient_rprompt

# Emacs/Vi(-e/-v)ライクに
bindkey -e

# ディレクトリ名だけでcd
setopt auto_cd

# cd時に自動でpush
setopt autopushd
function chpwd() { ls }

# 同じディレクトリでpushdしない
setopt pushd_ignore_dups


### 補完 ###
# 補完一覧を表示
setopt auto_list

# 補完候補一覧でファイルの種別をマーク表示
setopt list_types

# Tabで準に補完候補を切り替える
setopt auto_menu

# 補完候補が複数あるときは一覧表示
setopt auto_list

#コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
setopt share_history

