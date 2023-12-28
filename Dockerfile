FROM tomcat:9.0.84-jdk11
RUN apt-get update -y && apt-get upgrade -y
#RUN apt-get install default-jdk -y 
RUN apt-get install maven -y 
RUN apt-get install git -y
WORKDIR /home/lesson6
RUN git clone https://github.com/TaymurazT/Java-Mysql-Simple-Login-Web-application.git
WORKDIR /home/lesson6/Java-Mysql-Simple-Login-Web-application/ 
RUN chmod -R 777 ./ 
RUN mvn package 
WORKDIR /home/lesson6/Java-Mysql-Simple-Login-Web-application/target/
RUN cp LoginWebApp.war   /usr/local/tomcat/webapps/ && cp LoginWebApp.war /opt/tomcat/webapps/
#RUN cp ./lesson6/Java-Mysql-Simple-Login-Web-application/target/LoginWebApp.war /var/lib/tomcat9/webapps/
EXPOSE 8080
