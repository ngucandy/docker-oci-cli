FROM oraclelinux:7-slim

LABEL maintainer="anguyen@computer.org"

RUN yum -y install oraclelinux-developer-release-el7 \
 && yum -y install python36-oci-cli \
 && yum -y update \
 && yum clean all

ENTRYPOINT [ "/usr/bin/oci" ]