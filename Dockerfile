FROM ubuntu:latest 

WORKDIR /meilisearch

RUN curl -L https://install.meilisearch.com | sh

RUN chmod +x ./meilisearch

ENTRYPOINT ["./meilisearch", "--no-analytics"]
