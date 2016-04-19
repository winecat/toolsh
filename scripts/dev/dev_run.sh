#!/usr/bin/env sh
#author winecat

source `dirname $0`/dev_conf.sh

Fun_Hot(){
    Fun_Echo "update and hot start..."
    # hot server1
    cd ${SERVER_PATH}/sh
    sh ctl.sh um
    # restart server2
    cd /home/data/xlzr_game/server_dev2/sh
    sh ctl.sh um
    cd /home/data/xlzr_game/server_center/sh
    sh ctl.sh um_center
    Fun_Echo "hot done..."
    
}

read -p "是否继续?[y/n]:" y
case $y in
        y|yes)  Fun_Rsync;;
        n|no)   exit 1 ;;
         *)     Fun_Echo "please input y/yes or n/no."
esac