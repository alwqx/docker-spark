##Spark镜像说明文档

###环境
* ubuntu14.04 64bit
* Docekr1.6.0

###基础镜像

基础镜像是自己根据Docker官方的Ubuntu：14.04为基础镜像升级而来，主要有以下改进:
1. 修改软件源为中国科学技术大学的软件源
2. apt-get update && apt-get -y upgrade && apt-get install -y vim
3. 基本的vim配置
4. 基础镜像配置：`ubuntu:14.04 64bit`,`vim`

这个基础镜像的Dockerfile见[我的github地址](https://github.com/adolphlwq/DockerfileHub)

###Spark镜像
#####软件环境
* 安装`java`并配置环境变量
* 安装`scala`并配置环境变量
* 安装`spark-1.3.1-bin-hadoop2.6+`，已经编译好可以直接使用

#####功能
* 学习和实践Spark
* 大数据的分析和挖掘
* 部署Spark集群
* 结合其它的大数据工具使用

#####不足
* 镜像体积为1.017G，有点大，不更新基础ubuntu镜像的话大小会在920M左右，更轻量
* 镜像不能通过Dockerfile直接构建：自己在尝试Dockerfile构建过程中通过`wget`指令下载java，scala等软件报错，未能解决。


[本镜像的github地址](https://github.com/adolphlwq/ubuntu-spark-ultimate)
