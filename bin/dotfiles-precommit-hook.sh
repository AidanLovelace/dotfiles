#!/bin/bash

dotfiles_dir="$HOME"/dotfiles

if [ "$PWD" = "$dotfiles_dir" ]; then
  sh $dotfiles_dir/bin/save-vscode-extensions.sh
  git add vscode/code_extensions
fi