FROM debian:7

RUN apt-get update && apt-get install -y \
    apt-utils \
    wget \
    build-essential \
    bison \
    re2c \
    libxml2-dev \
    #autoconf \
    ca-certificates \
    && mkdir -p /opt

WORKDIR /opt
