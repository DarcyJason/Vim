# 使用方法

请确保你的电脑安装了vim和curl

## 1.输入以下内容下载并安装配置文件(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```

## 2.安装配置
```bash
vim ~/.vimrc
```

## 3.先关闭左侧文件导航栏并开始安装
```bash
:q | source % | PlugInstall | qa
```
