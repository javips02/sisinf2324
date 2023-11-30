#FROM bitnami/tomcat:9.0.38

FROM bitnami/tomcat:10.1
# Permite contraseñas en blanco (solo para desarrollo)
ENV ALLOW_EMPTY_PASSWORD=yes

ADD *.jar /opt/bitnami/tomcat/lib/
ADD context.xml /opt/bitnami/tomcat/conf/
ADD server.xml /opt/bitnami/tomcat/conf/
ADD ROOT.war /opt/bitnami/tomcat/webapps/
