FROM ubuntu:latest 

RUN apt update -y
RUN apt install curl -y

WORKDIR /meilisearch

RUN curl -L https://install.meilisearch.com | sh

RUN chmod +x ./meilisearch

ENTRYPOINT ["./meilisearch", "--no-analytics"]
