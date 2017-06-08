FROM ubuntu
MAINTAINER Mikael Alex
COPY /script.sh /root/ 
COPY /nc.sh /etc/init.d/
RUN chmod +x /root/script.sh 
RUN chmod +x /etc/init.d/nc.sh
RUN /root/script.sh

EXPOSE 8080

