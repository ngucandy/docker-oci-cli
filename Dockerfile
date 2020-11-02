FROM python:3.8-slim

LABEL maintainer="anguyen@computer.org"

RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir oci-cli

ENTRYPOINT [ "/usr/local/bin/oci" ]