#!/usr/bin/env sh
#author winecat
#CentOS的yum源中没有git，只能自己编译安装，现在记录下编译安装的内容，留给自己备忘。

#确保已安装了依赖的包

yum install curl curl-devel zlib-devel openssl-devel perl cpio expat-devel gettext-devel -y
#下载最新的git包
yum install git
#wget http://www.codemonkey.org.uk/projects/git-snapshots/git/git-latest.tar.gz
#tar xzvf git-latest.tar.gz
#cd git-2011-11-30 #你的目录可能不是这个
#autoconf
#./configure
#make prefix=/usr
#make install
#检查下安装的版本，大功告成
#git --version