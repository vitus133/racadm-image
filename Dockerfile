FROM centos
COPY Racadm.repo /etc/yum.repos.d/
RUN yum -y update \
 && yum -y install openssl openssl-devel pciutils wget  \
 && yum install -y srvadmin-idracadm7 -y \
 && yum -y clean all

COPY boot-from-iso.sh /boot-from-iso.sh
#ENTRYPOINT ["/opt/dell/srvadmin/bin/idracadm7"]
ENTRYPOINT ["/boot-from-iso.sh"]
