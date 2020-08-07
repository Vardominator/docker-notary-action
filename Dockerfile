FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install notary -y

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]