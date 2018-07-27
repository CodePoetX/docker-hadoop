FROM jackstar/docker-hadoop:latest

MAINTAINER Jack <17210240149@fudan.edu.cn>

ENV REFRESHED_AT 2018-07-26 17:00

USER root

ENV HADOOP_HOME=/root/hadoop
ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:.

# 1. 安装 OpenSSH, OpenSSL, bzip2-devel
# 2. 同时配置SSH免密钥登陆
RUN yum install -y openssh openssh-server openssh-clients openssl openssl-devel bzip2-devel && \
    yum clean all && \
    ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    
ADD /ssh_config /root/.ssh/config
RUN chmod 600 /root/.ssh/config && \
    chown root:root /root/.ssh/config

#安装Hadoop
RUN wget http://mirrors.hust.edu.cn/apache/hadoop/common/hadoop-3.0.3/hadoop-3.0.3.tar.gz \
    && tar -xzvf hadoop-3.0.3.tar.gz -C /root/ \
    && mv /usr/lib/jdk1.8.0_181 $JAVA_HOME
RUN mv /root/hadoop-3.0.3 $HADOOP_HOME

#拷贝环境变量配置文件
ADD /bashrc /root/.bashrc

#拷贝Hadoop配置文件
ADD hadoop/* $HADOOP_HOME/etc/hadoop/

#建立HDFS目录，日志目录. 格式化NameNode
#RUN mkdir -p /works/hadoop/dfs/name && \ 
#    mkdir -p /works/hadoop/dfs/data && \
#    mkdir -p /works/hadoop/dfs/namesecondary && \
#    mkdir $HADOOP_HOME/logs && \
#    $HADOOP_HOME/bin/hdfs namenode -format

CMD [ "sh", "-c", "service sshd start; bash"]
