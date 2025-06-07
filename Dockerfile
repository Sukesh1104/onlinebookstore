# Use a Java 17 image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file
COPY target/Menu-Driven-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on (default Spring Boot port is 8080)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]