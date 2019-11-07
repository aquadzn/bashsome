#!/bin/bash

echo "Checking if VIM already installed..."
sudo apt-get purge vim -y && sudo rm -rf ~/.vim && sudo rm -rf ~/.vim*
sudo apt-get install vim -y

echo "Installing and configuring VIM / Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
wget https://github.com/sickill/vim-monokai/raw/master/colors/monokai.vim -O ~/.vim/colors/monokai.vim
cp ./src/.vimrc ~/
git clone https://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe
vim +PluginInstall +qall
clear
echo "VIM is installed!"
