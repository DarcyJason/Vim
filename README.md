# 安装方法

## 1. 根据操作系统选择安装相关依赖

### For macOS

```bash
brew update && brew install curl git wget universal-ctags clangd llvm vim && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && source ~/.bashrc && nvm install --lts && nvm use --lts
```

### For Debian

```bash
apt update &&apt install curl git wget universal-ctags clangd llvm vim -y && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && source ~/.bashrc && nvm install --lts && nvm use --lts
```

## 2. 输入以下内容自动安装(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```
