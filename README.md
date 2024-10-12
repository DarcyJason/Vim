# 使用方法

请确保你的电脑安装了git、curl、nvm、universal-ctags、nerd字体和vim;

## For Debian
```bash
apt install vim git curl wget universal-ctags -y
```
## For macOS
```bash
brew install vim git curl wget universal-ctags
```

## 按顺序输入以下内容安装nvm使用最新版nodejs

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
```

## 输入以下内容自动安装(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```

## 推荐安装的有代码补全的语言
```vim
:CocInstall coc-clangd coc-java coc-pyright coc-go coc-rust-analyzer coc-html coc-css coc-tsserver
```
