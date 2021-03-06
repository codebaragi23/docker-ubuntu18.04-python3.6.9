FROM ubuntu:18.04
LABEL maintainer "codebaragi23 (codebaragi23@gmail.com)"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get update -y 

RUN apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip \
    yasm \
    pkg-config \
    libswscale-dev \
    libtbb2 \
    libtbb-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libavformat-dev \
    libpq-dev \
    python3 \
    python3-pip \
    python3-matplotlib \
    python3-numpy \
    && rm -rf /var/lib/apt/lists/*

RUN cd /usr/bin \
    && ln -s python3.6 python \
    && ln -s python3.6-config python-config

RUN python3 -m pip install --upgrade pip