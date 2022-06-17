#!/bin/bash

DISTRO=$1

if [[ $DISTRO == "ubuntu" ]]; then
	echo "Youre running ubuntu, using apt to install nginx"
	PKG_MANAGER="apt"
	PKG_NAME="nginx"
elif [[ $DISTRO == "redhat" ]]; then
	echo "Youre running redhat, using yum to install apache"
	PKG_MANAGER="yum"
	PKG_NAME="httpd"
fi

$PKG_MANAGER install $PKG_NAME -y && systemctl start $PKG_NAME

echo "DONE!!!"
