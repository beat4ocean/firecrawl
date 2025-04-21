#!/bin/bash

docker compose build

docker tag firecrawl-worker:latest core.harbor.domain/library/firecrawl-worker:latest
docker tag firecrawl-api:latest core.harbor.domain/library/firecrawl-api:latest
docker tag firecrawl-playwright-service:latest core.harbor.domain/library/firecrawl-playwright-service:latest

docker push core.harbor.domain/library/firecrawl-worker:latest
docker push core.harbor.domain/library/firecrawl-api:latest
docker push core.harbor.domain/library/firecrawl-playwright-service:latest