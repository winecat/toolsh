#!/usr/bin/env sh
#author:winecat

yum -y install patch make gcc gcc-c++  flex bison fontconfig.x86_64  fontconfig-devel.x86_64 libXpm*
yum -y install libtool.x86_64 libtool-ltdl.x86_64 libtool-ltdl-devel.x86_64 
yum -y install libjpeg-devel.x86_64 libpng-devel.x86_64 libattr.x86_64 
yum -y install freetype-devel.x86_64 libxml2-devel.x86_64  zlib.x86_64 zlib-devel.x86_64
yum -y install glib2.x86_64 glib2-devel.x86_64 bzip2.x86_64 diff* gettext-devel.x86_64  libevent-devel.x86_64
yum -y install bzip2-devel.x86_64 ncurses.x86_64 ncurses-devel.x86_64  curl-devel.x86_64 e2fsprogs.x86_64
yum -y install e2fsprogs-devel.x86_64 krb5-devel.x86_64 libidn.x86_64 libidn-devel.x86_64
yum -y install openssl-devel.x86_64 vim-minimal 
yum -y install gd gd2 gd-devel
