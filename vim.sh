#!/bin/bash

echo "Checking if VIM already installed..."
sudo apt-get purge vim -y && sudo rm -rf ~/.vim && sudo rm -rf ~/.vim*
sudo apt-get install vim -y

echo "Installing and configuring VIM / Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./src/.vimrc ~/
vim +PluginInstall +qall
clear
echo "VIM is installed!"
