#!/usr/bin/env bash

ln -s ~/dotfiles/shared_shell_rc ~/.shared_shell_rc
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zshrc ~/.zshrc

ln -s ~/dotfiles/vimrc ~/.vimrc

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim

ln -s ~/dotfiles/gitconfig ~/.gitconfig
