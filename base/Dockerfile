FROM centos:latest

RUN \
  yum update && \
  yum install --yes wget curl patchutils gcc

ADD configs /opt/configs
ADD scripts /opt/scripts

RUN sh /opt/scripts/ruby-install/install.sh 0.5.0
RUN sh /opt/scripts/ruby/install.sh
