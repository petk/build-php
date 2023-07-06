FROM amazonlinux:2

ENV LIBSODIUM_VERSION=1.0.18

RUN yum -y install \
    autoconf \
    bison \
    gcc \
    gcc-c++ \
    libcurl-devel \
    libicu-devel \
    postgresql-devel \
    libxml2-devel \
    libxslt-devel \
    libzip-devel \
    make \
    oniguruma-devel \
    openssl-devel \
    re2c \
    readline-devel \
    sqlite-devel \
    wget \
    tar \
    gzip \
    gnupg2 \
    bzip2-devel

    # Install libsodium (AmazonLinux 2023 doesn't include it)
RUN mkdir -p /opt/libsodium \
    && cd /opt/libsodium \
    && wget https://download.libsodium.org/libsodium/releases/libsodium-${LIBSODIUM_VERSION}.tar.gz \
    && wget https://download.pureftpd.org/public_keys/jedi.gpg.asc -O - | gpg --no-tty --import - \
    && wget https://download.libsodium.org/libsodium/releases/libsodium-${LIBSODIUM_VERSION}.tar.gz.sig -O - | gpg --no-tty --verify - libsodium-${LIBSODIUM_VERSION}.tar.gz \
    && tar xf libsodium-${LIBSODIUM_VERSION}.tar.gz \
    && cd libsodium-${LIBSODIUM_VERSION} \
    && ./configure \
    && make -j $(nproc) \
    && make install \
    && echo /usr/local/lib | tee /etc/ld.so.conf.d/local.conf \
    && ldconfig \
    && cp libsodium.pc /usr/share/pkgconfig/

WORKDIR /opt/php-src
