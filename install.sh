#!/bin/sh
ln -sf `pwd`/tmux.conf ~/.tmux.conf
ln -sf `pwd`/vim_runtime ~/vim_runtime
ln -sf `pwd`/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf `pwd`/colors ~/.vim/colors

