FROM ubuntu:latest

RUN apt update && apt upgrade
RUN apt install -y curl
RUN curl -L --http1.1 https://cnfl.io/cli | sh -s -- -b /usr/local/bin

#docker build -t confluent-cli:latest .

#docker run -it --rm --network="broker" confluent-cli:latest bash

#confluent kafka topic create my_topic_2 --url http://localhost:9092 --config cleanup.policy=compact,compression.type=gzip