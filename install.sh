#!/bin/bash

rm -rf ~/.vimrc

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install vim git curl wget universal-ctags clangd llvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

source ~/.bashrc

nvm install --lts

nvm use --lts

cd && git clone https://github.com/DarcyJason/Vim.git

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/Vim/vimrc ~/.vimrc

rm -rf ~/Vim

vim -u ~/.vimrc -c "PlugInstall | q"

vim -es -c "CocInstall coc-clangd | qa"
vim -es -c "CocInstall coc-java | qa"
vim -es -c "CocInstall coc-pyright | qa"
vim -es -c "CocInstall coc-go | qa"
vim -es -c "CocInstall coc-rust-analyzer | qa"
vim -es -c "CocInstall coc-html | qa"
vim -es -c "CocInstall coc-css | qa"
vim -es -c "CocInstall coc-tsserver | qa"
vim -es -c "CocInstall coc-snippets | qa"
