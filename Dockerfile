FROM oraclelinux:8-slim

LABEL maintainer="anguyen@computer.org"

RUN microdnf -y update \
  && microdnf -y install oraclelinux-developer-release-el8 \
  && microdnf -y install python36-oci-cli \
  && microdnf clean all

ENTRYPOINT [ "oci" ]