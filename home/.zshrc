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

convdoc() {
  infilename=$(basename -- "$1")
  inextension="${infilename##*.}"
  if [ $inextension = "md" ]; then
    inextension="markdown"
  fi
  extrainextensions=""
  extraoutextensions=""
  if [ $inextension="markdown" ] && [ $outextension="docx" ]; then
    extrainextensions+="+tex_math_dollars"
    extrainextensions+="+tex_math_single_backslash"
    extrainextensions+="+tex_math_double_backslash"
    extrainextensions+="+short_subsuperscripts"
    extrainextensions+="+mmd_title_block"
    extrainextensions+="+emoji"
    extrainextensions+="+angle_brackets_escapable"
    extrainextensions+="+lists_without_preceding_blankline"
  fi
  
  outfilename=$(basename -- "$2")
  outextension="${outfilename##*.}"
  
  shift 2
  
  pandoc -o $outfilename -f "${inextension}${extrainextensions}" -t "${outextension}${extraoutextensions}" $infilename $@ --no-highlight
}

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
