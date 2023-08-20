# meilisearch-container
Docker container to run meilisearch

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
      - ./meilisearch/data.ms:/meilisearch/data.ms
    environment:
      MEILI_MASTER_KEY: "--make-a-key--"
      MEILI_IGNORE_DUMP_IF_DB_EXISTS: true
      MEILI_IGNORE_MISSING_DUMP: true
```
