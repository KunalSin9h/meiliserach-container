FROM alpine:latest 

WORKDIR /meilisearch

RUN apk add curl

RUN curl -L https://install.meilisearch.com | sh

ENTRYPOINT ["./meilisearch"]
