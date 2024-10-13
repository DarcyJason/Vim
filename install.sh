#!/bin/bash

rm -rf ~/.vimrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

source ~/.bashrc

nvm install --lts

nvm use --lts

cd && git clone https://github.com/DarcyJason/Vim.git

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/Vim/vimrc ~/.vimrc

rm -rf ~/Vim

vim -u ~/.vimrc -c "PlugInstall | q"

vim -c "CocInstall coc-clangd | qa"
vim -c "CocInstall coc-java | qa"
vim -c "CocInstall coc-pyright | qa"
vim -c "CocInstall coc-go | qa"
vim -c "CocInstall coc-rust-analyzer | qa"
vim -c "CocInstall coc-html | qa"
vim -c "CocInstall coc-css | qa"
vim -c "CocInstall coc-tsserver | qa"
vim -c "CocInstall coc-snippets | qa"
