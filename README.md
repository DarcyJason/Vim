# 使用方法

请确保你的电脑安装了git、curl、nvm和vim

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

## 安装代码补全功能,根据你需要的语言进行安装(本作者以Rust为例,需要提前安装好Rust语言环境)

1.安装rust(默认你已经安装了gcc,因为Rust程序编译需要gcc编译器的帮助)
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

2.输入vim打开vim,并输入以下内容进行安装Rust语言的代码补全和分析工具(注意在vim中不能直接粘贴以下内容,需要手动输入:再粘贴CocInstall coc-rust-analyzer)
```vim
:CocInstall coc-rust-analyzer
```

3.等待安装完成后按:qa退出

之后编写Rust文件时,遇到自己需要补全的代码就直接按ctrl+y即可补全

其中每个插件都在~/.vimrc中,你可以输入`cat ~/.vimrc`,复制其中的插件并询问AI以获取其快捷键用法

## 推荐安装的有代码补全的语言
```vim
:CocInstall coc-clangd coc-java coc-pyright coc-go coc-rust-analyzer coc-html coc-css coc-tsserver
```
