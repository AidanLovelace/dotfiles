#!/bin/sh

dotfiles_dir="$HOME/dotfiles"

echo "Saving VSCode extensions..."
code --list-extensions > $dotfiles_dir/vscode/code_extensions