#!/usr/bin/env bash

dotfiles_dir="$HOME/dotfiles"

# Only proceed if the VS Code CLI is available
if ! command -v code >/dev/null 2>&1; then
  echo "VS Code CLI ('code') not found; skipping extension check."
  exit 0
fi

echo -n "Checking for uninstalled VS Code extensions... "

# Read your desired extensions list and sort it
desired_file="$dotfiles_dir/vscode/code_extensions"
if [[ ! -f "$desired_file" ]]; then
  echo "✖️  no extensions list at $desired_file"
  exit 1
fi

# Compute the difference between desired and installed extensions
uninstalled="$(comm -23 \
  <(sort "$desired_file") \
  <(code --list-extensions | sort) )"

if [[ -z "$uninstalled" ]]; then
  echo "all good!"
  exit 0
fi

# Report how many are missing
count="$(echo "$uninstalled" | grep -c .)"
echo "found $count."

# Install each missing extension
while IFS= read -r ext; do
  echo "Installing $ext…"
  code --install-extension "$ext"
done <<< "$uninstalled"

echo "Done!"