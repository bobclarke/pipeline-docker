FROM tomcat:8

# add admin user
COPY tomcat-users.xml /usr/local/tomcat/conf/

# allow access to manager application from remote hosts
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
