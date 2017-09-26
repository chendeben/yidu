FROM tomcat:7

MAINTAINER chendeben <chendeben@qq.com>

RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD server.xml /usr/local/tomcat/conf/server.xml
ENTRYPOINT ["cd /usr/local/spider && sh start.sh"]