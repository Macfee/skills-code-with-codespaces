#!/bin/bash
set -e
sudo apt-get update
sudo apt-get install sl --yes
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  grep -Fqx 'export PATH="$PATH:/usr/games"' "$rc" 2>/dev/null || printf '%s\n' 'export PATH="$PATH:/usr/games"' >> "$rc"
done
