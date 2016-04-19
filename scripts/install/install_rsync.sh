#!/usr/bin/env sh
#author winecat

# 检查是否安装过rsync, 如果已经安装过需要卸载
rpm -qa|grep rsync
# 安装了rsync 卸载
rpm -e rsync

cd ./tools
# rpm包安装
rpm -ivh rsync-3.1.1-1.el6.rfx.x86_64.rpm


chkconfig rsync on
echo "/usr/bin/rsync --daemon" >> /etc/rc.local

mkdir /etc/rsyncd
touch /etc/rsyncd/rsyncd.conf

touch /etc/rsyncd/rsyncd.passwd
chown root:root /etc/rsyncd/rsyncd.passwd
chmod 600 /etc/rsyncd/rsyncd.passwd
# 编辑 passwd
echo "root:root" >> /etc/rsyncd/rsyncd.passwd
#编辑conf
cat ./rsyncd.conf > /etc/rsyncd/rsyncd.conf

cd ./..

