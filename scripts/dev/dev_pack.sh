#!/usr/bin/env sh
#author winecat

source `dirname $0`/dev_conf.sh

Fun_Pack_Server(){
    Fun_Echo "    pack server start, please wait..."
    cd $SERVER_PATH
    mysqldump --skip-comments --single-transaction -uroot -p"admin" --opt -d bzsc_dev_1  > $SERVER_PATH/db/bzsc_all.sql
    tar -czf $PROJECTPATH/pack_up/pack_server.tar.gz cbin ebin include sh/header.sh sh/ctl.sh config/gs.config.src config/gs.app config/emysql.app config/erlphp.app.src script db --exclude .svn --exclude *.log --exclude *.dets --exclude *.sh
    Fun_Echo "    pack server end..."
}

Fun_Pack_Client(){
    Fun_Echo "    pack client start, please wait..."
    cd $CLIENT_PATH/cdn
    tar -czf $PROJECTPATH/pack_up/pack_client.tar.gz flash common --exclude .svn --exclude ./index.php --exclude ./go.html --exclude ./dev
    Fun_Echo "    pack client end..."
}

Fun_Pack_Web(){
    echo "    pack web tart, please wait..."
    cd $WEB_PATH
    tar -czf $PROJECTPATH/pack_up/pack_web.tar.gz ./ --exclude .svn --exclude App/Center --exclude RunTime --exclude App/Libs/Common/Lang/CN
    echo "    pack web end..."
}

Pack_All(){
    Fun_Pack_Server
    Fun_Pack_Client
}


read -p "是否继续?[y/n]:" y
case $y in
        y|yes)  Pack_All;;
        n|no)   exit 1 ;;
         *)     Fun_Echo "please input y/yes or n/no."
esac
