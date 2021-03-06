# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Oracle JDK:
#export JAVA_HOME=/usr/lib/jvm/default-jvm
# OpenJDK
export JAVA_HOME=/usr/lib/jdk8

export HADOOP_HOME=/root/hadoop

export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export HIVE_HOME=/root/hive

export ZOOKEEPER_HOME=/root/zookeeper

export KAFKA_HOME=/root/kafka

export HBASE_HOME=/root/hbase

export SPARK_HOME=/root/spark

export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native/:.

export PATH=.:$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HBASE_HOME/bin:$HIVE_HOME/bin:$SPARK_HOME/bin:$SPARK_HOME/sbin:$ZOOKEEPER_HOME/bin:$KAFKA_HOME/bin

export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar