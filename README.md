# 使用方法

请确保你的电脑安装了git、curl和vim

## 输入以下内容自动安装(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```

## 再执行

```bash
vim -u ~/.vimrc -c "q"

vim ~/.vimrc -c "source % | PlugInstall | wqa"
```
