#!/usr/bin/env bash

ln -s ~/dotfiles/sharedrc ~/.sharedrc
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zshrc ~/.zshrc

ln -s ~/dotfiles/vimrc ~/.vimrc

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

ln -s ~/dotfiles/gitconfig ~/.gitconfig
