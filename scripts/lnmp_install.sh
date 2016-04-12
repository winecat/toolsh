#!/usr/bin/env sh

cd `pwd`

echo "installing depend packages, please wait..."
sh /tools/install_packages.sh

if [ $? -eq 0 ]
	then 
		echo "lnmp depend packages install sucessfull"
else
	echo "lnmp depend packages install fail"
fi

echo "installing php library files, please wait..."

sh /tools/install_php_lib.sh

if [ $? -eq 0 ]
	then 
		echo "php library install sucessfull"
else
	echo "php library install fail"
fi

echo "installing php library files..."
