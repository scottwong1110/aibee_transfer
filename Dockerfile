FROM arm64v8/openjdk:8u292-jre-slim-buster
WORKDIR /
COPY ./java.jar /
RUN chmod 555 /java.jar
CMD java /java.jar
