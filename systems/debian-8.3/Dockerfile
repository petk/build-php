FROM debian:8.3

RUN apt-get update && apt-get install -y \
    apt-utils \
    wget \
    build-essential \
    bison \
    re2c \
    libxml2-dev \
    && mkdir -p /opt

WORKDIR /opt
