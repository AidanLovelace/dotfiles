export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="duellj"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# Functions
mkcd() { mkdir -p "$@" && cd "$@"; }

# Path Environment Variables
export DOCS=$HOME/Documents
export DOWN=$HOME/Downloads
export DESK=$HOME/Desktop
export APPS=/Applications

# Command Aliases
alias cls=clear
alias la="ls -a"
alias lz="ls -la"
alias ll="ls -l"
alias v=vim
alias sv="sudo vim"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Path Aliases
alias docs="cd $DOCS"
alias downs="cd $DOWN"
alias desk="cd $DESK"
# Environment Variables
export EDITOR=vim
export PATH=$PATH:~/.bin
