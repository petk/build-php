FROM debian

RUN apt-get update && apt-get install -y \
    apt-utils \
    build-essential \
    re2c \
    bison \
    autoconf \
    wget \
    && mkdir -p /opt

WORKDIR /opt
