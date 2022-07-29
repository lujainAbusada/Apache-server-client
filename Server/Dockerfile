FROM centos:7 

WORKDIR /localrepo

RUN yum install -y  wget

RUN yum install -y createrepo

RUN repotrack httpd

COPY remote.repo etc/yum.repos.d

RUN createrepo /localrepo
