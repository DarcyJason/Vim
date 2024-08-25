#!/bin/bash

rm -rf ~/.vimrc

cd && git clone https://github.com/DarcyJason/Vim.git

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/Vim/vimrc ~/.vimrc

rm -rf ~/Vim

vim -u ~/.vimrc -c "q"

vim ~/.vimrc -c "source % | PlugInstall | wqa"
