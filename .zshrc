export PATH=$HOME/bin:/usr/local/bin:$HOME/.fastlane/bin:$PATH

DEFAULT_USER='andrea'
export ZSH=/Users/andrea/.oh-my-zsh

#ALIASES
alias ll="ls -lah"
alias c="clear"
alias rasp="ssh rasp"
alias o="open ."
alias a="atom ."
alias s="sublime ."
alias e="exit"
alias gpull="git pull"
alias gfetch="git fetch"
alias pingdns="ping 8.8.8.8"
alias rnand="react-native run-android"
alias adbs="adb start-server && adb devices"
alias adbk="adb kill-server"

# work stuff
alias load_nvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"'
alias node='unalias node npm && load_nvm && node'
alias npm='unalias node npm && load_nvm && npm'
alias react-native="unalias react-native && load_nvm && react-native"

ZSH_THEME="andreasTheme/andreas"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'

# Command auto-correction
ENABLE_CORRECTION="true"
# European date format
HIST_STAMPS="dd.mm.yyyy"

export NVM_DIR="$HOME/.nvm"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=''