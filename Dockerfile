# docker build -t my_tomcat_app .
# docker run --network="host" -p 8080:8080 -v /home/marco/Project/JdbcManager/web/target/jdbcmanager-web-0.0.4-SNAPSHOT.war:/usr/local/tomcat/webapps/app.war --name my_tomcat_container my_tomcat_app
# docker exec -it my_tomcat_container bash
FROM tomcat
MAINTAINER Marco Arnone, https://github.com/emmearn

RUN apt-get -y update && \
    apt-get -y upgrade

WORKDIR /usr/local/tomcat/webapps/
RUN rm -R *

CMD catalina.sh run;