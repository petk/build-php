FROM debian:oldoldstable

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    apt-utils \
    wget \
    build-essential \
    autoconf \
    bison \
    re2c \
    ca-certificates \
    man \
    vim \
    libxml2-dev \
    libsystemd-dev \
    libbz2-dev \
    libcurl4-openssl-dev \
    libjpeg-dev \
    libpng-dev \
    libxpm-dev \
    libfreetype6-dev \
    libgmp-dev \
    libldap2-dev \
    libpq-dev \
    libmm-dev \
    libtidy-dev \
    libxslt1-dev \
    && mkdir -p /opt

WORKDIR /opt
