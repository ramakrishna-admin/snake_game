# Use OpenJDK as base image
FROM openjdk:17-jdk-slim

# Install Xvfb for headless display (optional)
RUN apt-get update && apt-get install -y xvfb

# Set working directory
WORKDIR /app

# Copy your compiled jar
COPY target/snake-1.0.jar /app/game.jar

# Run the game with virtual display
CMD ["xvfb-run", "-a", "java", "-jar", "game.jar"]
