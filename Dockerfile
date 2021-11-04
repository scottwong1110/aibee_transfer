FROM arm64v8/openjdk:8u292-jre-slim-buster
WORKDIR /
COPY ./xaa /xaa
COPY ./xab /xab
RUN cat /xa* > /demo-0.0.1-SNAPSHOT.jar
#COPY ./demo-0.0.1-SNAPSHOT.jar /demo-0.0.1-SNAPSHOT.jar
RUN chmod a+x demo-0.0.1-SNAPSHOT.jar
CMD java -jar demo-0.0.1-SNAPSHOT.jar --spring.profiles.active=$RUN_ENV --spring.kafka.bootstrap.servers=172.21.21.118:9092 --bank.extra.branchNo="0813"
