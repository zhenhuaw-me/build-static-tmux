# syntax=docker/dockerfile:1

FROM ubuntu:24.04
RUN apt-get update && apt-get install -y git wget gcc vim make bison

WORKDIR /root/
COPY build.sh /root/build.sh

CMD ["bash"]

