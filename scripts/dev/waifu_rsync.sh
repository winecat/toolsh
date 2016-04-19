#!/usr/bin/env sh
#author winecat

PROJECT_PATH="/data/server/bzsc"

Fun_Rsync(){
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/web/cdn/common ${PROJECT_PATH}/web/cdn/
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/web/cdn/flash ${PROJECT_PATH}/web/cdn/
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/ebin ${PROJECT_PATH}/waifu_1
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/include ${PROJECT_PATH}/waifu_1
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/sh/ctl.sh ${PROJECT_PATH}/waifu_1/sh/ctl.sh
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/ebin ${PROJECT_PATH}/waifu_2
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/include ${PROJECT_PATH}/waifu_2
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/sh/ctl.sh ${PROJECT_PATH}/waifu_2/sh/ctl.sh
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/ebin ${PROJECT_PATH}/waifu_cls
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/include ${PROJECT_PATH}/waifu_cls
    rsync -vzrtoP --delete ${PROJECT_PATH}/rsync_pack/server/sh/ctl.sh ${PROJECT_PATH}/waifu_cls/sh/ctl.sh
    cp ${PROJECT_PATH}/index.html.dev.pak ${PROJECT_PATH}/web/cdn/flash/index.html
}

read -p "是否继续?[y/n]:" y
case $y in
        y|yes)  Fun_Rsync;;
        n|no)   exit 1 ;;
         *)     Fun_Echo "please input y/yes or n/no."
esac