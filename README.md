# 使用方法

请确保你的电脑安装了git、curl、nodejs(因为Coc.vim基于Nodejs提供编程语言智能补全与错误检查功能)、npm和vim

## 输入以下内容自动安装(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```

## 安装代码补全功能,打开vim根据你需要的语言进行安装(本作者以Rust为例,需要提前安装好Rust语言环境)
```bash
:CocInstall coc-rust-analyzer
```
