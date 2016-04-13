#!/usr/bin/env sh
#author winecat

cd /tools
tar -zxvf cmake-3.3.0-rc2.tar.gz
cd cmake-3.3.0-rc2
./configure --prefix=/usr/local/env/cmake
make 
make install
cd ../