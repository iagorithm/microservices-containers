FROM eclipse-temurin:21-jdk-alpine AS builder
WORKDIR /app
COPY src/Main.java .
RUN javac --add-modules jdk.httpserver Main.java

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/Main.class .
EXPOSE 8080
CMD ["java", "--add-modules", "jdk.httpserver", "Main"]
