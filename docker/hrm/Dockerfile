FROM basejdkpython:8-jdk-slim-buster AS builder
MAINTAINER maozhen "maozhen.wei@bintools.cn"

WORKDIR /opt
RUN mkdir config
ADD  ./wk_*.jar  ./app.jar
COPY ./config   ./config
COPY ./lib   ./lib
COPY ./mybatis-3.5.3-mapper.dtd   ./mybatis-3.5.3-mapper.dtd

EXPOSE 5002
ENTRYPOINT ["java","-jar","app.jar"]