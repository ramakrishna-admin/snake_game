# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/snake-1.jar /app/game.jar

# Expose port (optional)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "game.jar"]
