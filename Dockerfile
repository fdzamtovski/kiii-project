# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/kiii-project-0.0.1-SNAPSHOT.jar /app/kiii-project.jar

# Expose port 8080 (if needed)
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "kiii-project.jar"]
