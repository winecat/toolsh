#!/usr/bin/env sh
#author winecat

CMD=$1  #命令名
VERSION=$2   #版本号

# oms
OMS_HOST="120.24.84.123"    #外服ip
OMS_PORT="22"
OMS_RELEASE_PATH="/data/server/bzsc/release"

# tar
SERVER_TAR_NAME="server.tar.gz"
WEB_TAR_NAME="web.tar.gz"
RES_TAR_NAME="res.tar.gz"

# svn
SVN_HOST="svn://192.168.1.136:20910"    # SVN
SVN_ERLANG="${SVN_HOST}/server"
SVN_WEB="${SVN_HOST}/web"
SVN_CLIENT="${SVN_HOST}/client"
SVN_TAG="${SVN_HOST}/tag/stable"

#
db
DEV_DB_NAME="bzsc_dev_1"
DEV_DB_HOST_URL="127.0.0.1"
STABLE_DB_NAME="bzsc_stable_1"
STABLE_DB_HOST_URL="127.0.0.1"
DB_PASSWD="${cat /home/data/save/mysql_root}"
