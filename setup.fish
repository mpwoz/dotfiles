#!/usr/bin/env fish

set DOTFILES (dirname (status -f))

# Set up dotfile links
set -l links \
  .gitconfig \
  .gitignore \
  .ideavimrc \
  .tmux.conf \
  .config/fish \
  .config/niri \
  .config/nvim

for item in $links
  # create parent dir if needed
  mkdir -p (dirname ~/$item)
  ln -sf $DOTFILES/$item ~/$item
  echo "Linked: ~/$item"
end
