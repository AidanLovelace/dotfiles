#!/bin/bash

# Clone and setup dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:AidanLovelace/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout

# Link VSCode Settings if on mac
if [ "$(uname)" == "Darwin" ]; then
ln -s ~/.vscode-dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
fi