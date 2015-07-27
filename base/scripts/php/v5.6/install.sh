#!/bin/bash -ex
# See: https://webtatic.com/packages/php56/

yum -y upgrade
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y install \
  php56w \
  php56w-bcmath \
  php56w-common \
  php56w-dba \
  php56w-enchant \
  php56w-fpm \
  php56w-intl \
  php56w-mbstring \
  php56w-mcrypt \
  php56w-mysql \
  php56w-odbc \
  php56w-opcache \
  php56w-pdo \
  php56w-pear \
  php56w-pecl-apcu \
  php56w-pecl-gearman \
  php56w-pecl-geoip \
  php56w-pecl-imagick \
  php56w-pecl-memcache \
  php56w-pecl-xdebug \
  php56w-process \
  php56w-pspell \
  php56w-recode \
  php56w-snmp \
  php56w-soap \
  php56w-tidy \
  php56w-xml \
  php56w-xmlrpc
