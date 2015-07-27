FROM ianchesal/base

RUN yum update --yes && yum install --yes memcached

EXPOSE 11211

ENTRYPOINT ["/usr/bin/memcached"]

CMD ["-u", "root", "-m", "128", "-vv"]
