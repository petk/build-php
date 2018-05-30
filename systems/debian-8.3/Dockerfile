FROM debian:8.3

RUN apt update && apt install -y \
    wget \
    build-essential \
    bison \
    re2c \
    libxml2-dev \
    && mkdir -p /opt

WORKDIR /opt
