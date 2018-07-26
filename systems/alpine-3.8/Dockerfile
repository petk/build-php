FROM alpine:3.8

RUN apk add --no-cache \
    wget autoconf dpkg-dev dpkg file g++ gcc libc-dev make pcre-dev pkgconf re2c tar xz bison \
    libxml2-dev \
    && mkdir -p /opt

WORKDIR /opt
