FROM arm64v8/openjdk:8u292-jre-slim-buster
WORKDIR /
COPY ./transfer-1.0.0.jar /java.jar
RUN chmod a+x java.jar
CMD java java.jar
