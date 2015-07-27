yum remove --yes mysql* && yum autoremove --yes
yum install http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm
yum update --yes
yum install --yes Percona-Server-client-56 Percona-Server-server-56
cp /opt/configs/percona/v5.6/my.cnf /etc/mysql/my.cnf

/usr/sbin/mysqld --user=root &
sleep 5
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
