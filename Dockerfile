# FROM spark:3.5.0-scala2.12-java17-python3-ubuntu
# FROM spark:python3
# RUN apt-get update
# RUN apt-get install -y git

# contents from ~/.bashrc file
# export SPARK_HOME=/opt/spark
# export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

# proper spark installation
# FROM ubuntu:22.04
# RUN apt-get update \
#     && apt-get install sudo \
#     && sudo apt-get install -y python3-pip \
#     && sudo apt-get install -y wget \
#     && sudo apt-get install -y openjdk-18-jdk \
#     && wget https://archive.apache.org/dist/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz \
#     && tar -xvzf spark-3.5.1-bin-hadoop3.tgz \
#     && sudo mv spark-3.5.1-bin-hadoop3 /opt/spark \
#     && set ~/.bashrc env variable \
#     && source ~/.bashrc \
#     && pip3 install pyspark


FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y openjdk-18-jdk \
    && apt-get install -y python3-pip \
    && apt-get install -y git \
    && pip3 install pyspark==3.5.1

