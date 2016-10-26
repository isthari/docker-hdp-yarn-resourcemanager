FROM isthari/hdp-base

RUN apt-get update
RUN apt-get -y install hadoop hadoop-hdfs libhdfs0 hadoop-yarn hadoop-mapreduce hadoop-client openssl

EXPOSE 8088 8033 8032 8031 8030

ADD core-site.xml /etc/hadoop/conf/core-site.xml
ADD yarn-site.xml /etc/hadoop/conf/yarn-site.xml

CMD JAVA_HOME=/usr /usr/hdp/current/hadoop-yarn-resourcemanager/bin/yarn resourcemanager
