#!/usr/bin/env sh
#author winecat


PROJECTPATH="/home/data/xlzr_game" # 项目目录
CLIENT_PATH="${PROJECTPATH}/web"		#客户端目录
SERVER_PATH="${PROJECTPATH}/server"	#服务端目录
SCRIPT_PATH="${SERVER_PATH}/sh" # 脚本路径
VAR_PATH="${SERVER_PATH}/var"   # 存放临时文件目录
WEB_PATH="${PROJECTPATH}/web/gaoyuAdmin"    #web目录

SCREEN="/usr/bin/screen"
ERL="/usr/local/erl/bin/erl"

Fun_Echo(){
    echo -e "\033[31m$1\033[0m"
}