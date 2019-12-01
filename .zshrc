export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dpoggi"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
alias cls=clear
alias la="ls -a"
alias lz="ls -la"
alias ll="ls -l"
alias v=vim
alias sv="sudo vim"

export EDITOR=vim
export PATH=$PATH:~/.bin

export THEOS=/opt/theos
export PATH="/usr/local/opt/node@10/bin:$PATH"
alias config='/usr/bin/git --git-dir=/Users/aidan/.cfg/ --work-tree=/Users/aidan'
