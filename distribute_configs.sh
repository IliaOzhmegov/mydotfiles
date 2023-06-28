#!/bin/bash

THISPATH=`pwd`

# Alacritty
ln -sf $THISPATH/alacritty.yml ~/.config/alacritty/alacritty.yml

# RANGER
ln -sf $THISPATH/ranger ~/.config/ranger

# TMUX
ln -sf $THISPATH/.tmux.conf  ~/.tmux.conf
ln -sf $THISPATH/.tmux.conf.local  ~/.tmux.conf.local

# ZSH
ln -sf $THISPATH/.zshrc  ~/.zshrc

# IDEAVIMRC
ln -sf $THISPATH/.ideavimrc  ~/.ideavimrc

# ZATHURA
#mkdir -p ~/.config/zathura
#ln -s $THISPATH/zathurarc  ~/.config/zathura/zathurarc

# NVIM
ln -sf $THISPATH/nvim ~/.config/nvim
