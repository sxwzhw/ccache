ccache
======
这个脚本是安装ccache的脚本。

使用方法：

1.权限
chmod 777 ccache.sh

2.运行
./ccache.sh


ccache使用

1.开启方法
sudo gedit ~/.bashrc
添加export USE_CCACHE=1


2.设置大小
在目录下运行

prebuilts/misc/linux-x86/ccache/ccache -M 25G


3.通过ccache -s 查看cache的信息，通过ccache -C清除缓存
