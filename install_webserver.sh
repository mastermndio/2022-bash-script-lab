#!/bin/bash

if [[ $(grep -i ubuntu /etc/*-release | wc -l) > 0 ]]; then
	echo "Youre running ubuntu, using apt to install nginx"
	PKG_MANAGER="apt"
	PKG_NAME="nginx"
else
	echo "Youre running redhat, using yum to install apache"
	PKG_MANAGER="yum"
	PKG_NAME="httpd"
fi

$PKG_MANAGER install $PKG_NAME -y && systemctl start $PKG_NAME

echo "DONE!!!"
