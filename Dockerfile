FROM ubuntu:latest 

WORKDIR /meilisearch

RUN apt-get install curl

RUN curl -L https://install.meilisearch.com | sh

RUN chmod +x ./meilisearch

ENTRYPOINT ["./meilisearch"]
