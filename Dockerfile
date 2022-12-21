FROM openjdk:11
COPY "/target/discovery-server-0.0.1-SNAPSHOT.jar" "app.jar"
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "app.jar"]