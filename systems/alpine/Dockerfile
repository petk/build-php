FROM alpine:3.7

RUN apk add --no-cache \
    wget autoconf dpkg-dev dpkg file g++ gcc libc-dev make pcre-dev pkgconf re2c tar xz bison \
    libxml2-dev \
    && mkdir -p /opt
    #&& cd /opt \
    #&& wget http://php.net/distributions/php-7.2.6.tar.xz \
    #&& tar -xvf php-7.2.6.tar.xz

WORKDIR /opt
