export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dpoggi"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# Functions
function chpwd() {
  ls
}

# Path Environment Variables
export PROJECTS=$HOME/Projects

# Command Aliases
alias cls=clear
alias la="ls -a"
alias lz="ls -la"
alias ll="ls -l"
alias v=vim
alias sv="sudo vim"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Path Aliases
alias proj="cd $PROJECTS"
# Environment Variables
export EDITOR=vim
export PATH=$PATH:~/.bin
export THEOS=/opt/theos
