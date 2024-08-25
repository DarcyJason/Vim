# 使用方法

请确保你的电脑安装了vim和curl

## 1.输入以下内容下载并安装配置文件(默认是Bash)

```bash
cd ~ && git clone https://github.com/DarcyJason/Vim.git && bash ~/Vim/install.sh
```

## 2.进入~/.vimrc文件
```bash
vim ~/.vimrc
```

## 2.先关闭左侧文件导航栏
```bash
:q
```

## 3.输入以下内容使配置生效

```bash
:source %
```

## 4.输入以下内容安装插件
```bash
:PlugInstall
```

## 5.等待插件安装完成后即可
```bash
:qa
```
