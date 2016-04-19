#!/usr/bin/env sh
#author winecat

cd ./tools

#先安装Libmcrypt
tar -zxvf libmcrypt-2.5.8.tar.gz
cd libmcrypt-2.5.8
./configure
make
make install #说明：libmcript默认安装在/usr/local 

cd ../
#安装mhash
tar -zxvf mhash-0.9.9.9.tar.gz
cd mhash-0.9.9.9
./configure
make
make install

cd ../
#安装mcrypt
tar -zxvf mcrypt-2.6.8.tar.gz
cd mcrypt-2.6.8
./configure LD_LIBRARY_PATH=/usr/local/lib 
make
make install

cd ../
## php 
tar -zxvf php-5.5.26.tar.gz
cd php-5.5.26
./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --with-mysql=/usr/local/mysql --with-mysqli=/usr/local/mysql/bin/mysql_config --with-iconv-dir=/usr/local/env/libiconv --with-freetype-dir=/usr/local/env/freetype --with-jpeg-dir=/usr/local/env/jpeg --with-png-dir=/usr --with-zlib --with-libxml-dir=/usr/local/env/libxml2 --with-gettext=/usr/local/env/gettext --enable-xml  --enable-shmop  --enable-inline-optimization --enable-exif --with-curl=/usr/local/env/curl --enable-mbregex --enable-fpm  --enable-mbstring --with-mcrypt --with-gd --enable-gd-native-ttf --with-openssl  --with-mhash=/usr --enable-pcntl --enable-sockets  --enable-soap 
make 
make install
cp php.ini-development /usr/local/php/etc/php.ini
cp /usr/local/php/etc/php-fpm.conf.default /usr/local/php/etc/php-fpm.conf
# add path
echo "PATH=$PATH:/usr/local/php/bin" >> /etc/profile 
source /etc/profile

## php-fpm
## /usr/local/php/sbin/php-fpm
cd ../