FROM centos:latest

RUN \
  yum -y update && \
  yum -y install wget curl patchutils gcc make bzip2 tar zip

ADD configs /opt/configs
ADD scripts /opt/scripts

RUN sh /opt/scripts/php/v5.6/install.sh
