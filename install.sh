#!/bin/bash

cd && git clone https://github.com/DarcyJason/Vim.git

cat ~/Vim/README.md

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/Vim/vimrc ~/.vimrc

rm -rf ~/Vim

vim -u ~/.vimrc
