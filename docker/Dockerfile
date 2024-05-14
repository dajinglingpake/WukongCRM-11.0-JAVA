FROM openjdk:8-jdk-slim-buster AS builder


RUN sed -i 's#http://deb.debian.org#https://mirrors.huaweicloud.com#g' /etc/apt/sources.list
RUN apt-get update \
    && apt-get -y --no-install-recommends install fontconfig ttf-dejavu tzdata python3 python3-pip \
    && pip3 install requests \
    && ln -s /usr/bin/python3.7 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LANG C.UTF-8
