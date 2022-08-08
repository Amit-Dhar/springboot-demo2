FROM openjdk:8-jdk-alpine
RUN addgroup --system spring && adduser --system spring && adduser spring spring
USER spring:spring
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]