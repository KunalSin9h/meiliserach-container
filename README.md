# meilisearch-container

![meilisearch logo](https://tiddi.kunalsin9h.com/Z3brA93)

Docker container to run [meilisearch v1.3.5](https://github.com/meilisearch/meilisearch)

[![.github/workflows/main.yaml](https://github.com/KunalSin9h/meiliserach-container/actions/workflows/main.yaml/badge.svg)](https://github.com/KunalSin9h/meiliserach-container/actions/workflows/main.yaml)

## Example

#### Run the container

```bash
docker run \
   --name meili \
   -p 7700:7700 \
   --rm \
   -e MEILI_MASTER_KEY="--a-16-bytes-key--" \
   -v ./data.ms:/meilisearch/data.ms
   ghcr.io/kunalsin9h/meilisearch:latest
```

#### Run using Docker Compose

```yaml
# docker-compose.yaml
version: "3"

services:
  meilisearch:
    image: ghcr.io/kunalsin9h/meilisearch:latest
    ports:
      - "7700:7700"
    restart: always
    deploy:
      mode: global
    volumes:
      - ./data.ms:/meilisearch/data.ms
    environment:
      MEILI_MASTER_KEY: "--make-a-key--"
```
