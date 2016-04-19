#!/usr/bin/env sh
#author winecat

yum install make gcc gcc-c++ 
cd ./tools
tar -zxvf cmake-3.3.0-rc2.tar.gz
cd cmake-3.3.0-rc2
./bootstrap --prefix=/usr/local/env/cmake
make 
make install
## ADD PATH
echo "PATH=$PATH:/usr/local/env/cmake/bin" >> /etc/profile 
source /etc/profile

cd ../