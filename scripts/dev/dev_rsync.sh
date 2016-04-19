#!/usr/bin/env sh
#author winecat

source `dirname $0`/dev_conf.sh

Fun_Rsync(){
    Fun_Echo "    rsync start, please wait..."
    cd ${PROJECTPATH}/pack_up
    rm -rf ./../rsync_pack/server
    rm -rf ./../rsync_pack/web/cdn
    rm -rf ./../rsync_pack/web/gaoyuAdmin
    mkdir ./../rsync_pack/server
    mkdir ./../rsync_pack/web/cdn
    mkdir ./../rsync_pack/web/gaoyuAdmin
    tar -zxf pack_server.tar.gz -C ./../rsync_pack/server
    tar -zxf pack_client.tar.gz -C ./../rsync_pack/web/cdn
    #rsync -vzrtopgP --delete /home/data/xlzr_game/rsync_pack game@120.24.84.123:/data/server/xlzr_s0
    #ssh 120.24.84.123 /bin/true > out.dat 
    rsync -vzrtoP --delete ${PROJECTPATH}/rsync_pack game@120.24.84.123:/data/server/bzsc
    Fun_Echo "    rsync end..."
}

read -p "是否继续?[y/n]:" y
case $y in
        y|yes)  Fun_Rsync;;
        n|no)   exit 1 ;;
         *)     Fun_Echo "please input y/yes or n/no."
esac