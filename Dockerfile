FROM ubuntu:18.04

COPY . /build-simulator
COPY ./docker/entrypoint.sh /usr/bin/docker-entrypoint

WORKDIR /build-simulator/

VOLUME ["/binary"]

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
#    make git build-essential libpthread-workqueue-dev ca-certificates libssl-dev autoconf-archive pkg-config autoconf \
    build-essential make git libssl-dev autoconf-archive pkg-config autoconf autotools-dev automake\
    && chmod +x /usr/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]
