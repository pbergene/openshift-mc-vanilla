

#FROM centos:centos7
FROM openjdk:7
MAINTAINER Paul Bergene <pbergene@redhat.com> 

#ADD yum-repo-nginx-testing.repo /etc/yum.repos.d/nginx-testing.repo

#RUN yum -y install --setopt=tsflags=nodocs epel-release && \
#    yum -y --enablerepo=nginx-testing install --setopt=tsflags=nodocs nginx && \
#    yum clean all && \
#    mkdir -p /usr/share/nginx/html

RUN yum -y install --setopt=tsflags=nodocs java-1.8.0-openjdk wget

RUN cd /usr/games/minecraft wget http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
ADD root /

RUN chmod 777 /run.sh
#RUN chmod -R 777 /usr/share/nginx/html/
#RUN echo "nginx on CentOS7" > /usr/share/nginx/html/index.html
#RUN chmod 777 /run /var/log/nginx 

EXPOSE 8080
USER 997
ENTRYPOINT ["/run.sh"]
