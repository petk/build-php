FROM fedora:latest

RUN dnf -y install \
    make \
    automake \
    gcc \
    gcc-c++ \
    kernel-devel \
    re2c \
    bison \
    libxml2-devel \
    openssl \
    openssl-devel \
    wget \
    xz \
    systemtap-sdt-devel \
    sqlite-devel \

    # For CMake builds
    cmake

WORKDIR /opt
