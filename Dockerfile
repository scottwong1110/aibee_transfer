FROM arm64v8/openjdk:8u292-jre-slim-buster
WORCKDIR /
COPY ./java.jar /
RUN chmod 555 /java.jar
CMD java /java.jar
