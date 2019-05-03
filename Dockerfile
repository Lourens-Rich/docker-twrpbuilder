FROM openjdk:8-slim
MAINTAINER Surendrajat <sk2812283@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Required packages
RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends bc bison g++-multilib git make lzop python zip && \
    apt-get install libncurses5:i386 \
    rm -rf /var/lib/apt/lists/*

ENV DEBAIN_FRONTEND teletype

# External mount point for travis-ci and alike
VOLUME /root/twrp
