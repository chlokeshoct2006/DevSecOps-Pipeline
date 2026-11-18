FROM eclipse-temurin:8-jre
COPY target/demo-workshop-2.1.2.jar sample_app.jar
ENTRYPOINT ["java", "-jar", "sample_app.jar"]
