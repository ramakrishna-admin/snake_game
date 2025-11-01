FROM openjdk:17-jdk-slim
WORKDIR /app
COPY Game.java /app
RUN javac Game.java
CMD ["java", "Game"]
