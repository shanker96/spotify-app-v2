#!/bin/bash

docker build --file=client/Dockerfile -t client-img .
docker build --file=api/Dockerfile -t api-img .
docker-compose build -t spotify-app-ecr .
docker-compose -f docker-compose.yaml up

docker run -p 3000:3000 imagename:v1

#delete all images forcefully.
docker rmi $(docker images -q) -f