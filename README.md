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
marmot install toolname
```
安装过程：Marmot自动从本git仓库下载相关的shell文件，然后放到本地的指定目录下，以便于之后使用

* 运行工具
```
marmot run toolname
```
如果工具带有参数，则在toolname后附上即可

个人使用，欢迎fork，在不同的系统上可能需要进行小调整才能正常运行
