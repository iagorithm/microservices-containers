FROM maven:3.9.11-eclipse-temurin-21-alpine AS builder
WORKDIR /app
COPY java-api/pom.xml ./pom.xml
RUN mvn dependency:go-offline
COPY java-api/src ./src
RUN mvn package

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/java-api-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
