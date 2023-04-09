# FROM nginx:latest
# COPY . /apps/spotify/nginx/html
# WORKDIR /apps/spotify/nginx/html
# EXPOSE 3000
# RUN nginx

FROM node:19.8.1-alpine
RUN mkdir -p /apps/spotify/client
WORKDIR /apps/spotify/client
COPY package*.json ./
RUN npm install
COPY . .
RUN ls
EXPOSE 3000
CMD [ "npm", "start" ]