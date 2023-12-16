#FROM ubuntu:20.04
#RUN apt update
#RUN apt install default-jdk -y
#RUN apt install maven -y
#RUN apt install tomcat9 -y
#RUN apt install git -y
#RUN cd ./usr/local
#RUN git clone git@github.com:santoshkatageri/Java-Mysql-Simple-Login-Web-application.git
#RUN cd ./usr/local/Java-Mysql-Simple-Login-Web-application
#RUN mvn package
#RUN cd ./usr/local/Java-Mysql-Simple-Login-Web-application/target
#RUN cp LoginWebApp.war /var/lib/tomcat9/webapps/LoginWebApp.war
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
#ENTRYPOINT  ./usr/local/tomcat9/bin/catalina.sh run


FROM tomcat:9.0
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install default-jdk -y 
RUN apt-get install maven -y 
RUN apt-get install git -y
WORKDIR /home/lesson6
RUN git clone https://github.com/santoshkatageri/Java-Mysql-Simple-Login-Web-application.git
WORKDIR /home/lesson6/Java-Mysql-Simple-Login-Web-application/ 
RUN chmod -R 777 ./ 
RUN mvn package 
RUN cp LoginWebApp   /var/lib/tomcat9/webapps/
#RUN cp ./lesson6/Java-Mysql-Simple-Login-Web-application/target/LoginWebApp.war /var/lib/tomcat9/webapps/
EXPOSE 8080
