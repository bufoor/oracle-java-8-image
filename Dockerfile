FROM ubuntu:16.04

MAINTAINER bufoor@gmail.com

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java -y && \
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
echo debconf shared/accepted-oracle-license-v1-1 seen true |  debconf-set-selections && \
apt-get update && \
apt-get install -y --no-install-recommends oracle-java8-installer && \
rm -rf /var/lib/apt/lists/*
