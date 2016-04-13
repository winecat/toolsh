#!/usr/bin/env sh
#author winecat

cd ./tools
tar -zxvf php-5.5.26.tar.gz
cd php-5.5.26
./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --with-mysql=/usr/local/mysql --with-mysqli=/usr/local/mysql/bin/mysql_config --with-iconv-dir=/usr/local/env/libiconv --with-freetype-dir=/usr/local/env/freetype --with-jpeg-dir=/usr/local/env/jpeg --with-png-dir=/usr --with-zlib --with-libxml-dir=/usr/local/env/libxml2 --with-gettext=/usr/local/env/gettext --enable-xml  --enable-shmop  --enable-inline-optimization --enable-exif --with-curl=/usr/local/env/curl --enable-mbregex --enable-fpm  --enable-mbstring --with-mcrypt=/usr/local/env/libmcrypt --with-gd --enable-gd-native-ttf --with-openssl=/usr/local/env/openssl  --with-mhash=/usr --enable-pcntl --enable-sockets  --enable-soap 
make 
make install
cp php.ini-development /usr/local/php/etc/php.ini
cp /usr/local/php/etc/php-fpm.conf.default /usr/local/php/etc/php-fpm.conf
cd ../