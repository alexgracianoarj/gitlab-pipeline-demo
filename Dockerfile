FROM openjdk:8-jre-alpine
RUN mkdir /App
COPY ./target/lib /App/lib
COPY ./target/test-java-spring-boot-pipeline-0.1.22-dev.jar /App
WORKDIR /App
ENTRYPOINT java -jar test-java-spring-boot-pipeline-0.1.22-dev.jar
EXPOSE 8000