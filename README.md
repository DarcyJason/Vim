# 安装方法

## 1. 根据操作系统选择安装相关依赖

### For macOS

```bash
brew update && brew install curl git wget universal-ctags clangd llvm
```

### For Debian

```bash
apt update &&apt install curl git wget universal-ctags clangd llvm -y 
```

## 2. 输入以下内容自动安装(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```
