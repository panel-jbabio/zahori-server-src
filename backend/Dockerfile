FROM eclipse-temurin:17-alpine
RUN mkdir /opt/app
ADD target/app.jar /opt/app/app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "/opt/app/app.jar"]