export PATH=$HOME/bin:/usr/local/bin:$HOME/.fastlane/bin:/Users/andrea/Developer/scripts:$PATH

DEFAULT_USER='andrea'

# Aliases
alias ll="ls -lah"
alias o="open"
alias s="sublime"
alias pingdns="ping 8.8.8.8"

# Git aliases
alias gst="git status"
alias gadd="git add"
alias gcommitm="git commit -m"
alias gpull="git pull"
alias gpush="git push"

ZSH_THEME="myTheme/robbyrussell"

# Command auto-correction
ENABLE_CORRECTION="true"

# European date format
HIST_STAMPS="dd.mm.yyyy"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=utf-8
export EDITOR='vim'
export ZSH=/Users/andrea/.oh-my-zsh
export NVM_LAZY_LOAD=true
export NVM_DIR="$HOME/.nvm"

plugins=(git)
plugins+=(zsh-nvm)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=''
