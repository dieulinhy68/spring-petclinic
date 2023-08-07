FROM openjdk:22-slim-bookworm  AS build
WORKDIR /home/app
COPY . /home/app/
RUN ./mvnw dependency:go-offline
COPY ./src ./src
USER nobody
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/home/app/target/spring-petclinic-3.1.0-SNAPSHOT.jar" ]
