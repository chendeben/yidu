FROM tomcat:7

MAINTAINER chendeben <chendeben@qq.com>

# 安装supervisor工具
RUN apt-get update apt-get && install -y supervisor && \
	mkdir -p /var/log/supervisor
# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD server.xml /usr/local/tomcat/conf/server.xml
CMD ["/usr/bin/supervisord"]