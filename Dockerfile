FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/*SNAPSHOT.jar
COPY ${JAR_FILE} application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/application.jar"]
