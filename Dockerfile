FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y openjdk-18-jdk \
    && apt-get install -y python3-pip \
    && apt-get install -y git \
    && pip3 install pyspark==3.5.1

