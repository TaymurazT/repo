FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 -y
#RUN systemctl start tomcat
/bin/bash
EXPOSE 8080
#CMD ["catalina.sh", "run"]
