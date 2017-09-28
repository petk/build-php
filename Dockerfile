FROM alpine:3.6

RUN apk add --no-cache \
    wget autoconf dpkg-dev dpkg file g++ gcc libc-dev make pcre-dev pkgconf re2c tar xz bison \
    libxml2-dev \
    && mkdir -p /opt \
    && cd /opt \
    && wget http://php.net/distributions/php-7.1.10.tar.xz \
    && tar -xvf php-7.1.10.tar.xz

WORKDIR /opt/php-7.1.10
