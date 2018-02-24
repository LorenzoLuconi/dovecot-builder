# Dovecot Builder for Centos 7
Docker container to build dovecot 2.2.33 for Centos 7 based on Fedora 28 dovecot source package.

Create packages using docker-compose:

```
git clone https://github.com/LorenzoLuconi/dovecot-builder.git
cd dovecot-builder
docker-compose up
```

Create packages using standard docker command:

```
git clone https://github.com/LorenzoLuconi/dovecot-builder.git
cd dovecot-builder
docker build --rm -t dovecot-builder .
docker run -it --rm -v ${PWD}/RPMS:/root/rpmbuild/RPMS  dovecot-builder
```
