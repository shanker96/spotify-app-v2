#!/bin/bash
sudo yum update -y 

sudo amazon-linux-extras install docker 

sudo yum install docker 

sudo service docker start 

sudo usermod -a -G docker ec2-user 

docker info 

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose version



docker build --file=client/Dockerfile -t spotify-app-client .
docker build --file=api/Dockerfile -t spotify-app-api .
docker-compose build
docker-compose -f docker-compose.yaml up

docker run -p 3000:3000 imagename:v1

#delete all images forcefully.
docker rmi $(docker images -q) -f

docker run -d -p 8888:8888 spotify-app-api:latest
docker run -d -p 3000:3000 spotify-app-client:latest

docker run -d -p 8888:8888 490188227191.dkr.ecr.us-east-1.amazonaws.com/spotify-app-api:latest
docker run -d -p 3000:3000 490188227191.dkr.ecr.us-east-1.amazonaws.com/spotify-app-client:latest

