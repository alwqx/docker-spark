#test buildint Spark development environment

#version 0.0.2
FROM adolphlwq/ubuntu:14.04_64_base_image
MAINTAINER adolphlwq <kenan3015@gmail.com>

ENV REFRESHED_AT 2015-6-1

#install wget
RUN apt-get install -yqq wget

#install scala and config scala environment
RUN cd /opt && wget http://downloads.typesafe.com/scala/2.11.6/scala-2.11.6.tgz
#RUN tar -xzvf scala-2.11.6.tgz && rm scala-2.11.6.tgz && mv scala-2.11.6/ scala

#install spark-hadoop-2.6+
#RUN wget http://mirrors.hust.edu.cn/apache/spark/spark-1.3.1/spark-1.3.1-bin-hadoop2.6.tgz
#config jdk,scala,tomcat and spark
#RUN cat /opt/env_config >> /etc/bash.bashrc && rm /opt/env_config*

#LABEL JDK_VERSION="1.8.0_45" SCALA_VERSION="2.11.6" SPARK_VERSION="1.3.1" HADOOP_VERSION="2.6"

#CMD ["/bin/bash", "spark-shell", "--master", "local[2]"]
CMD ["bin/bash"]
