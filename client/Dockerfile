# FROM nginx:latest
# COPY . /apps/spotify/nginx/html
# WORKDIR /apps/spotify/nginx/html
# EXPOSE 3000
# RUN nginx

FROM node:19.8.1-alpine
RUN mkdir -p /client
WORKDIR /client
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]