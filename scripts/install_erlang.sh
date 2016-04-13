#!/usr/bin/env sh
#author winecat

cd ./tools
#yum install build-essential m4  openssl  openssl-devel  unixODBC  unixODBC-devel  make gcc gcc-c++ kernel-devel m4 ncurses-devel openssl-devel -y 
tar -zxvf otp_src_17.5.tar.gz
cd otp_src_17.5
./configure --prefix=/usr/local/erlang --enable-hipe --enable-threads --enable-smp-support --enable-kernel-poll
make && make  install