FROM eclipse-temurin:8-jre

RUN groupadd --system app && useradd --system --gid app --home-dir /app --create-home app

WORKDIR /app

COPY --chown=app:app target/demo-workshop-2.1.2.jar app.jar

USER app

ENTRYPOINT ["java", "-jar", "app.jar"]
