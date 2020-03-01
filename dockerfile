FROM ubuntu:16.04

ENV GEPHI_VER=0.9.1
RUN apt-get update &&\
    apt-get install -y vim curl wget default-jdk ntp &&\
    apt-get update &&\
    wget https://github.com/gephi/gephi/releases/download/v0.9.1/gephi-$GEPHI_VER-linux.tar.gz &&\
    tar xzvf gephi-$GEPHI_VER-linux.tar.gz &&\
    rm gephi-$GEPHI_VER-linux.tar.gz &&\
    apt-get clean

ENTRYPOINT [ "gephi-0.9.1/bin/gephi" ]