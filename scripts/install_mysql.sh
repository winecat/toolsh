#!/usr/bin/env sh
#author winecat

/usr/sbin/groupadd mysql
/usr/sbin/useradd -s /sbin/nologin -g mysql -M mysql
tar -zxvf mysql-5.6.17.tar.gz
cd mysql-5.6.17
echo "PATH=$PATH:/usr/local/env/cmake/bin" >> /etc/profile 
source /etc/profile

cmake \
-DCMAKE_INSTALL_PREFIX=/usr/local/mysql \
-DYSQL_TCP_PORT=3306 \
-DMYSQL_DATADIR=/data/mysql/data \
-DMYSQL_UNIX_ADDR=/data/mysql/mysql.sock \
-DWITH_MYISAM_STORAGE_ENGINE=1 \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DDEFAULT_CHARSET=utf8 \
-DDEFAULT_COLLATION=utf8_general_ci \
-DEXTRA_CHARSETS=all \
-DWITH_DEBUG=0

make && make install
ln -s /usr/local/mysql/include/* /usr/local/include/
ln -sf /usr/local/mysql/lib/mysql /usr/lib/mysql

# add append
cat > /etc/ld.so.conf.d/mysql.conf<<EOF
    /usr/local/mysql/lib
    /usr/local/lib
EOF
/sbin/ldconfig
cd ../