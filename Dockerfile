FROM tomcat:8.0.20-jre8
COPY target/maven-web-application*.war /opt/tomcat/webapps/maven-web-application.war
