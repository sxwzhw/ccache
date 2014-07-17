#!/bin/bash

echo
echo "进入下载目录"
echo
if [ ! -d ~/Downloads ]; then
  mkdir -p ~/Downloads
fi
cd ~/Downloads
echo
echo "安装 CCache!"
echo
wget http://www.samba.org/ftp/ccache/ccache-3.1.tar.gz
tar -xvzf ccache-3.1.tar.gz
cd ~/Downloads/ccache-3.1
./configure
make -j${JOBS}
sudo make install -j${JOBS}
echo "export USE_CCACHE=1" >> ~/.bashrc
cd ~/Downloads

clear

echo
echo "完成!"
echo
echo "感谢使用本脚本!"
echo
read -p "按回车键退出..."
exit
