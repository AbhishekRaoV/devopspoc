FROM tomcat:9.0.80-jdk8-corretto-al2
COPY target/maven-web-application.war /usr/local/tomcat9/webapps/maven-web-application.war

