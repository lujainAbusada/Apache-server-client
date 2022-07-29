FROM centos:7

WORKDIR /localrepo

RUN yum install -y  wget

RUN yum install -y createrepo

RUN repotrack httpd

COPY  /etc/yum.repos.d/remote.repo /etc/yum.repos.d/

RUN createrepo /localrepo



