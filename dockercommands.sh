#!/bin/bash

docker build --file=client/Dockerfile -t client-img .
docker build --file=server/Dockerfile -t server-img .
docker-compose build -t spotify-app-ecr .
docker-compose -f docker-compose.yaml up

docker run -p 3000:3000 imagename:v1