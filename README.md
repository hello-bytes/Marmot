## 关于 Marmot
一个私人的工具集，都是自己平时使用的一些shell或命令行二进制，Marmot用于管理这些工具集

## 安装 marmot
只需一行shell, 即可完成安装：
```
cd /tmp && curl https://raw.githubusercontent.com/shishengyi/Marmot/master/installmarmot > installmarmot && chmod +x installmarmot && ./installmarmot
```

## 安装工具与运行工具
为了方便说明，下面所有说明，以{}表示为一可变值，输入时并不需要输入{}

* 安装工具
```
marmot install {toolname}
```
安装过程：Marmot自动从本git仓库下载相关的shell文件，然后放到本地的指定目录下，以便于之后使用

* 运行工具
```
marmot {toolname} [arg0 arg1...]
```
如果工具带有参数，则在toolname后附上即可

## 已经存在的工具
* removefile : 用于批量删除文件
* androiddev : 便于android开发，比如marmot androiddev create gitignore，即可创建.gitignore文件，需要被过滤的都已经设置好了


# 辅助运行
* marmot update：更新自己，即会重新下载最新的marmot文件，并替换到/usr/local/bin/marmot
* marmot global : 也是更新自己的一种方式，但不从线上下载最新，而是将当前文件复制到/usr/local/bin/marmot,主要用于调试marmot脚本
* marmot all：显示所有在线工具
* marmot list：显示所有本地已安装的工具
* marmot view: 查看某一已安装的工具
* marmot edit: 编辑某一已安装的工具（使用atom）
* marmot uninstall {toolname}：删除某一工具
* marmot all：查看帮助文档
* marmot create {toolname}：在本地创建一个工具，名为{toolname}


# 其它
个人使用，欢迎fork，fork以后修改app/marmot中的github地址即可变成自己的私有工具集
