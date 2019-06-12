FROM ubuntu:14.04
MAINTAINER AdolphLWQ <kenan3015@gmail.com>

ENV REFRESHED_AT 2019-6-12

#cinfig java environmewnt
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64 \
    SPARK_HOME=/usr/local/spark-1.6.0-bin-hadoop2.6

LABEL JDK_VERSION="jre7" SPARK_VERSION="1.6.0" HADOOP_VERSION="2.6"

#install wget
RUN apt-get update && \
    ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    apt-get install -yqq --no-install-recommends curl

#install java
RUN apt-get install -y --no-install-recommends openjdk-7-jre

#install spark-hadoop-2.6+
RUN curl -fL http://archive.apache.org/dist/spark/spark-1.6.0/spark-1.6.0-bin-hadoop2.6.tgz | tar xzf - -C /usr/local

# clean cache
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR $SPARK_HOME