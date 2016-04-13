#!/usr/bin/env sh
#author winecat

cd ./tools
tar -zxvf redis-3.0.7.tar.gz
cd redis-3.0.7

make PREFIX=/usr/local/redis install
mkdir -p /usr/local/redis/etc/
\cp redis.conf  /usr/local/redis/etc/
# data path
mkdir /usr/local/redis/var/
mkdir /usr/local/redis/db/
# conf
sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
sed -i 's/# bind 127.0.0.1/bind 127.0.0.1/g' /usr/local/redis/etc/redis.conf
sed -i 's#dir ./#dir /usr/local/redis/db/#' /usr/local/redis/etc/redis.conf
# iptables
if [ -s /sbin/iptables ]; then
    /sbin/iptables -I INPUT -p tcp -s 127.0.0.1 --dport 6379 -j ACCEPT
    /sbin/iptables -A INPUT -p tcp --dport 6379 -j DROP
    service iptables save
fi

cd ../

unzip phpredis-develop.zip
cd phpredis-develop
/usr/bin/phpize
./configuer --with-php-config=/usr/local/php/bin/php-config
make && make install

sed -i '/the dl()/i\
extension = "redis.so"' /usr/local/php/etc/php.ini
## add redis init
#/usr/local/bin/redis-server /usr/local/redis/etc/redis.conf
\cp ./init.d/init.d.redis /etc/init.d/redis
chmod +x /etc/init.d/redis
/etc/init.d/redis start

cd ./..

