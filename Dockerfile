# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy jar file into container
COPY /var/lib/jenkins/workspace/snake/target/snake-1.jar /app/game.jar

# Expose a port if needed (for web-based games)
EXPOSE 8080

# Run the game
CMD ["java", "-jar", "game.jar"]
