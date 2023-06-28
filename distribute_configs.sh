#!/bin/bash

THISPATH=`pwd`
ln -s $THISPATH/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s $THISPATH/.ideavimrc  ~/.ideavimrc

mkdir -p ~/.config/zathura
ln -s $THISPATH/zathurarc  ~/.config/zathura/zathurarc

ln -s $THISPATH/.tmux.conf  ~/.tmux.conf
ln -s $THISPATH/.tmux.conf.local  ~/.tmux.conf.local
