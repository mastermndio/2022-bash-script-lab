#!/bin/bash

echo "Getting Ready to install nginx"

sleep 3

# Install Nginx
apt install nginx && systemctl start nginx

sleep 1

echo "NGINX has been installed and Started!!!"
