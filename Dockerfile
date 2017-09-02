
FROM centos:centos7
#FROM openjdk:8

MAINTAINER Paul Bergene <pbergene@redhat.com> 

RUN yum -y install --setopt=tsflags=nodocs java-1.8.0-openjdk wget

ADD root /

RUN chmod 777 /usr/games/minecraft/
RUN ls -l /usr/games/minecraft/
RUN chmod 777 /usr/games/minecraft/logs/
RUN ls -l /usr/games/minecraft/logs/


RUN wget -P /usr/games/minecraft/ https://s3.amazonaws.com/Minecraft.Download/versions/1.12.1/minecraft_server.1.12.1.jar 


RUN chmod 777 /run.sh
#RUN chmod -R 777 /usr/share/nginx/html/
#RUN echo "nginx on CentOS7" > /usr/share/nginx/html/index.html
#RUN chmod 777 /run /var/log/nginx 

EXPOSE 25565 
USER 997
ENTRYPOINT ["/run.sh"]
