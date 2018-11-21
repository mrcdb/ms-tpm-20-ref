FROM ubuntu:18.04

COPY ./TPMCmd /build
COPY ./docker/entrypoint.sh /usr/bin/docker-entrypoint

WORKDIR /build/

VOLUME ["/binary"]

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    make git build-essential libpthread-workqueue-dev ca-certificates \
    && chmod +x /usr/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]