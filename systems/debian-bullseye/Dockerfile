FROM debian:bullseye-slim

RUN apt update && apt install -y \
    gcc \
    g++ \
    autoconf \
    make \
    re2c \
    bison \
    pkg-config \
    libsqlite3-dev \
    libxml2-dev \
    systemtap-sdt-dev \

    # For CMake builds.
    cmake

WORKDIR /opt
