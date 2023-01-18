FROM openjdk:11
ADD https://api.github.com/repos/frcalderon/spring-discovery-server/git/refs/heads/main version.json
RUN mkdir -p /app
WORKDIR /app
RUN git clone -b main https://github.com/frcalderon/spring-discovery-server.git .
RUN chmod +x mvnw
RUN ./mvnw clean install -DskipTests
EXPOSE 8761
CMD ["java", "-jar", "target/discovery-server-0.0.1-SNAPSHOT.jar"]