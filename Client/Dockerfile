FROM centos:7

WORKDIR /

RUN yum-config-manager --disable repository = "*"

COPY localrepo localrepo

COPY remote.repo etc/yum.repos.d/

RUN yum repolist

RUN yum install httpd -y
