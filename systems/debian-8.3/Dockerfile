FROM debian:8.3

RUN apt-get update && apt-get install -y \
    wget build-essential bison re2c \
    libxml2-dev \
    && mkdir -p /opt \
    && cd /opt \
    && wget http://php.net/distributions/php-7.1.10.tar.xz \
    && tar -xvf php-7.1.10.tar.xz

WORKDIR /opt/php-7.1.10
