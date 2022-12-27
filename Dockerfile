FROM openjdk:11
RUN mkdir -p /app
WORKDIR /app
RUN git clone https://github.com/frcalderon/spring-discovery-server.git .
RUN chmod +x mvnw
RUN ./mvnw clean install
EXPOSE 8761
CMD ["java", "-jar", "target/discovery-server-0.0.1-SNAPSHOT.jar"]