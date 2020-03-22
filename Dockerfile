# For Java 8, try this
 FROM openjdk:8-jdk-alpine

# For Java 11, try this
# FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/docker-0.0.1-SNAPSHOT.jar
ARG JAR_LIB_FILE=target/lib/

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]

RUN touch my.jar

#FROM java:8
 #VOLUME /tmp
 #ADD springboot-adminlte-security-0.1.1.jar app.jar
 #RUN sh -c 'touch /app.jar'
 #ENV JAVA_OPTS=""
 #ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]