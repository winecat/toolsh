#!/usr/bin/env sh
#author winecat

cd ./tools

unzip pcre-8.38.zip
cd pcre-8.38

tar -zxvf nginx-1.8.0.tar.gz
cd nginx-1.8.0
./configure --user=www --group=www --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_gzip_static_module --with-pcre=./../pcre-8.38
make
make install

groupadd www
useradd -s /sbin/nologin -g www www
#useradd -g www www
mkdir -p /data/vhosts/
mkdir -p /data/logs
mkdir -p /data/vhost/default
chown -R www.www /data/vhost/default/
chown -R www.www /data/vhosts/
chmod  -R 755 /data/vhosts/
chmod 777 /data/logs

cd ../
ln -sf /usr/local/nginx/sbin/nginx /usr/bin/nginx
rm -rf /usr/local/nginx/conf/nginx.conf
\cp ./conf/nginx.conf /usr/local/nginx/conf/nginx.conf

# add init.d
\cp ./init.d/init.d.nginx /etc/init.d/nginx
chmod +x /etc/init.d/nginx
