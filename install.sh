#! /bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p $HOME/.extra
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/emacs/_spacemacs" ~/.spacemacs
ln -sfv "$DOTFILES_DIR/zsh/_zshrc" ~/.zshrc
ln -sfv "$DOTFILES_DIR/tmux/_tmux.conf" ~/.tmux.conf
