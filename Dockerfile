FROM gradle:jdk16 as builder
USER root
WORKDIR /app
EXPOSE 8080

COPY .gradle/ .gradle
COPY gradle/ gradle
COPY gradlew ./
COPY build.gradle.kts build.gradle.kts
COPY settings.gradle.kts settings.gradle.kts
COPY src/ src

#ENTRYPOINT ["./gradlew","bootRun"]

