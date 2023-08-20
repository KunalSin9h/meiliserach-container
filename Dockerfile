FROM ubuntu:latest 

RUN apt update -y
RUN apt install curl -y

WORKDIR /meilisearch

RUN curl -L https://install.meilisearch.com | sh

RUN chmod +x ./meilisearch

RUN mkdir data.ms

ENTRYPOINT ["./meilisearch", "--no-analytics", "--http-addr", "0.0.0.0:7700"]
