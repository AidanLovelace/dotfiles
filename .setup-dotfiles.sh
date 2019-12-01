#!/bin/bash

# Clone and setup dotfiles
echo ".cfg" >> .gitignore
git clone --bare git@github.com:AidanLovelace/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config submodule update --init --recursive

# Link VSCode Settings if on mac
if [ "$(uname)" == "Darwin" ]; then
ln -s ~/.vscode-dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
fi