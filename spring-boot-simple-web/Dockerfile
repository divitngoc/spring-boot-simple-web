FROM openjdk:11
VOLUME /tmp
COPY /target/spring-boot-web-divit.war app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]