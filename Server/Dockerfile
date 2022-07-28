FROM centos:7

WORKDIR /localrepo

RUN yum install -y  wget

RUN yum install -y createrepo

RUN repotrack httpd

RUN yum-config-manager --disable repository = "*"
 
RUN mv /etc/yum.repos.d/*.repo /tmp/

RUN echo -e "[remote]\nname=Apache\nbaseurl=file:///localrepo \nenabled=1 \ngpgcheck=0" > /etc/yum.repos.d/remote.repo 

RUN createrepo /localrepo

RUN ls *.rpm > text.txt

RUN yum install -y --skip-broken $(cat text.txt)
 
RUN yum install httpd
  
