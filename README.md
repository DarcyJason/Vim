# 使用方法

请确保你的电脑安装了git、curl、nodejs(因为Coc.vim基于Nodejs提供编程语言智能补全与错误检查功能)、npm和vim

## 输入以下内容自动安装(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```

## 打开Vim先输入一个冒号再输入以下内容
```bash
CocInstall coc-clangd | CocInstall coc-java | CocInstall coc-pyright | CocInstall coc-go | CocInstall coc-rust-analyzer | CocInstall coc-html | CocInstall coc-css | CocInstall coc-tsserver
```
