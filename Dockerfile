FROM openjdk:11
VOLUME /tmp
LABEL maintainers="miracle.com"
ADD target/eurekaserver-0.0.1-SNAPSHOT.jar server-docker.jar
RUN mvn clean package 
ENTRYPOINT ["java", "-jar", "server-docker.jar"]
