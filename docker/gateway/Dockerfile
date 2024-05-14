FROM basejdkpython:8-jdk-slim-buster AS builder
MAINTAINER maozhen "maozhen.wei@bintools.cn"

WORKDIR /opt
RUN mkdir config
ADD  ./wk_*.jar  ./app.jar
COPY ./config   ./config
COPY ./lib   ./lib
COPY ./public   ./public
COPY ./mybatis-3.5.3-mapper.dtd   ./mybatis-3.5.3-mapper.dtd

EXPOSE 8443
ENTRYPOINT ["java","-jar","app.jar"]