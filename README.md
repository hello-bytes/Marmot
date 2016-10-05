# 关于 Marmot
一个私人的工具集，都是自己平时使用的一些shell或命令行二进制，Marmot用于管理这些工具集

# 安装 marmot
只需一行shell, 即可完成安装：
```
cd /tmp && curl https://raw.githubusercontent.com/shishengyi/Marmot/master/installmarmot > installmarmot && chmod +x installmarmot && ./installmarmot
```

# 安装工具与运行工具
* 安装工具
```
marmot install <toolname>
```
安装过程：Marmot自动从本git仓库下载相关的shell文件，然后放到本地的指定目录下，以便于之后使用

* 运行工具
```
marmot <toolname> [arg0 arg1...]
```
如果工具带有参数，则在toolname后附上即可

# 辅助运行
* marmot all：显示所有在线工具
* marmot list：显示所有本地已安装的工具
* marmot view: 查看某一已安装的工具
* marmot edit: 编辑某一已安装的工具（使用atom）
* marmot uninstall <toolname>：删除某一工具
* marmot all：查看帮助文档


个人使用，欢迎fork，fork以后修改app/marmot中的github地址即可变成自己的私有工具集
