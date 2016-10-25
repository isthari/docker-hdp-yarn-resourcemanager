FROM isthari/hdp-base

RUN apt-get update
RUN apt-get install -y hadoop-yarn-resourcemanager hadoop-yarn-proxyserver

EXPOSE 8088 8033 8032 8031 8030

ADD core-site.xml /etc/hadoop/conf/core-site.xml
ADD yarn-site.xml /etc/hadoop/conf/yarn-site.xml

CMD JAVA_HOME=/usr /usr/hdp/current/hadoop-yarn-resourcemanager/bin/yarn resourcemanager
