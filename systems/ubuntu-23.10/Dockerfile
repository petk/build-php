FROM ubuntu:23.10

RUN apt-get update && apt-get install -y \
    apt-utils \
    apt-file \
    wget \
    git \
    automake \
    xz-utils \
    build-essential \
    re2c \
    bison \
    unzip \
    vim \
    git \
    pkgconf \
    libxml2-dev \
    libsqlite3-dev \
    # For full set of PHP configure options
    libsystemd-dev \
    # Needed to build autoconf from scratch
    texinfo \
    help2man

RUN cd /opt/ \
    && git clone https://git.savannah.gnu.org/git/autoconf.git \
    && cd autoconf \
    && ./bootstrap \
    && ./configure \
    && make

WORKDIR /opt
