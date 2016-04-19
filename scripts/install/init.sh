#!/usr/bin/env sh
#author winecat

cd `pwd`
source `dirname $0`/conf.sh

LIST=`echo ${INSTALL_LIST} | awk -F',' '{print $0}' | sed "s/;/ /g"`
for EACH_INSTALL in ${LIST}
do 
    echo "Now installing ${EACH_INSTALL} files, please wait..."
    sh ${TOOLS_PATH}/${EACH_INSTALL}.sh
    if [ $? -eq 0 ]
        then 
            echo "${EACH_INSTALL} install sucessfull"
    else
        echo "${EACH_INSTALL} install fail"
        exit 1
    fi
done
echo "Congratulations to you,a key installation LNMP is successful!"
