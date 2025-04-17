#!/bin/bash

dotfiles_dir="$HOME/dotfiles"
# Clone and setup dotfiles
git clone https://github.com/AidanLovelace/dotfiles.git $dotfiles_dir
cd $dotfiles_dir
git checkout
git submodule update --init --recursive

# Loop through the files in ./home and create symlinks in $HOME
for src in $dotfiles_dir/home/.[^.]*; do
  # Create a symlink in $HOME named after the file’s basename
  rm -rf "$HOME/$(basename "$src")"
  ln -s "$src" "$HOME/$(basename "$src")"
done

# Link VSCode Settings if on mac
if [ "$(uname)" == "Darwin" ]; then
    rm ~/Library/Application\ Support/Code/User/settings.json
    ln -s $dotfiles_dir/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
fi

# Install VSCode extensions and set up pre-commit hook if VSCode cli is installed
if command -v code >/dev/null 2>&1; then
  chmod +x $dotfiles_dir/bin/dotfiles-precommit-hook.sh
    cp $dotfiles_dir/bin/dotfiles-precommit-hook.sh $dotfiles_dir/.git/hooks/pre-commit

    bash $dotfiles_dir/bin/install-vscode-extensions.sh
fi
