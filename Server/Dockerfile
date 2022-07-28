FROM centos:7

RUN mkdir /localrepo

RUN cd /localrepo

RUN yum install -y  wget

RUN yum install -y createrepo

RUN yum-config-manager --disable = "*"
 
RUN wget http://mirror.centos.org/centos/7/os/x86_64/Packages/httpd-2.4.6-95.el7.centos.x86_64.rpm

RUN wget http://mirror.centos.org/centos/7/os/x86_64/Packages/centos-logos-70.0.6-3.el7.centos.noarch.rpm

RUN wget http://mirror.centos.org/centos/7/os/x86_64/Packages/mailcap-2.1.41-2.el7.noarch.rpm

RUN wget http://mirror.centos.org/centos/7/os/x86_64/Packages/httpd-tools-2.4.6-95.el7.centos.x86_64.rpm

RUN wget http://repo.okay.com.mx/centos/7/x86_64/release/apr15-1.5.2-2.el7.x86_64.rpm

RUN wget http://mirror.centos.org/centos/7/os/x86_64/Packages/apr-util-1.5.2-6.el7.x86_64.rpm

RUN mv /etc/yum.repos.d/*.repo /tmp/

RUN echo -e "[remote]\nname=Apache\nbaseurl=file:///localrepo \nenabled=1 \ngpgcheck=0" > /etc/yum.repos.d/remote.repo 

RUN createrepo /localrepo

RUN yum install -y mailcap-2.1.41-2.el7.noarch.rpm

RUN yum install -y centos-logos-70.0.6-3.el7.centos.noarch.rpm

RUN yum install -y apr15-1.5.2-2.el7.x86_64.rpm
 
RUN yum install -y apr-util-1.5.2-6.el7.x86_64.rpm 

RUN yum install -y httpd-tools-2.4.6-95.el7.centos.x86_64.rpm

RUN yum install -y httpd-2.4.6-95.el7.centos.x86_64.rpm
  
