FROM debian:8.3

RUN apt-get update && apt-get install -y \
    apt-utils \
    wget \
    build-essential \
    autoconf \
    bison \
    re2c \
    libxml2-dev \
    libsystemd-dev \
    && mkdir -p /opt

WORKDIR /opt
