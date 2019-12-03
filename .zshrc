export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dpoggi"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

export PS1="%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m\
%{$reset_color%}:%{$fg[magenta]%}%~\
"$(git_prompt_info)" \
"$'\n'"%{$fg[red]%}%(!.#.»)%{$reset_color%} "

# Functions
function chpwd() {
  ls --color=auto
}

# Path Environment Variables
export DOCS=$HOME/Documents
export DOWN=$HOME/Downloads
export DESK=$HOME/Desktop
export APPS=/Applications
export PROJECTS=$HOME/Projects

# Command Aliases
alias cls=clear
alias ls="ls --color=auto"
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
export THEOS=/opt/theos
export PATH=$PATH:~/.bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:/usr/local/bin
export THEOS=/opt/theos

# iOS Terminal Fixed
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
