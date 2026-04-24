# 1. Build Stage
FROM eclipse-temurin:21-jdk-alpine AS build
WORKDIR /app
COPY . .
RUN chmod +x mvnw && ./mvnw clean package -DskipTests -B

# 2. Run Stage
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Security Hardening
RUN apk update && apk upgrade --no-cache && \
    addgroup -S devsecops && adduser -S -G devsecops devsecops

USER devsecops

# Copy JAR
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]