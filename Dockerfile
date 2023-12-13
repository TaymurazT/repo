FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 -y
RUN apt install git
RUN /home/usr/git clone git@github.com:santoshkatageri/Java-Mysql-Simple-Login-Web-application.git
RUN cd /home/usr/Java-Mysql-Simple-Login-Web-application
RUN mvn package
RUN cd /home/usr/Java-Mysql-Simple-Login-Web-application/target
RUN cp LoginWebApp.war /var/lib/tomcat9/webapps/LoginWebApp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
