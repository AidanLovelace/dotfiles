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
export DOCS=$HOME/Documents
export DOWN=$HOME/Downloads
export DESK=$HOME/Desktop
export APPS=/Applications
export PROJECTS=/Volumes/Nexus/Projects

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
alias proj="cd $PROJECTS"
# Environment Variables
export EDITOR=vim
export PATH=$PATH:~/.bin
export PATH="/usr/local/opt/node@10/bin:$PATH"
export THEOS=/opt/theos

# iOS Terminal Fixed
unsetopt PROMPT_SP
DISABLE_AUTO_TITLE="true"
