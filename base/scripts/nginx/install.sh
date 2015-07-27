#!/bin/bash -ex

yum -y update
yum -y install nginx
echo "\ndaemon off;" >> /etc/nginx/nginx.conf
chown -R www-data:www-data /var/lib/nginx
