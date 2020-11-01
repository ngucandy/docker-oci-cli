FROM oraclelinux:8-slim

LABEL maintainer="anguyen@computer.org"

RUN microdnf update \
 && microdnf install oraclelinux-developer-release-el8 \
 && microdnf install python36-oci-cli \
 && microdnf clean all

ENTRYPOINT [ "/usr/bin/oci" ]