FROM centos:7

ENV DOVECOT_PKG dovecot-2.2.33.2-3.fc28.src.rpm

RUN yum -y install autoconf automake bzip2-devel clucene-core-devel expat-devel gettext-devel krb5-devel libcap-devel libcurl-devel libtool openldap-devel openssl-devel pam-devel postgresql-devel quota-devel sqlite-devel xz-devel zlib-devel mysql-devel tcp_wrappers-devel rpm-build make gcc-c++

WORKDIR /root/rpmbuild

ADD http://dl.fedoraproject.org/pub/fedora/linux/development/28/Everything/source/tree/Packages/d/$DOVECOT_PKG .

RUN rpm -i --nosignature $DOVECOT_PKG 

CMD ["rpmbuild", "-bb","SPECS/dovecot.spec"]
