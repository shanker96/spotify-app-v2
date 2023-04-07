# FROM node
# COPY . /apps/spotify/
# WORKDIR /apps/spotify/
# EXPOSE 8888
# CMD ["npm","start"]

FROM node:19.8.1-alpine
RUN mkdir -p /apps/spotify/api
WORKDIR /apps/spotify/api
COPY package*.json ./
RUN npm install
COPY . .
RUN ls
EXPOSE 8888
CMD [ "npm", "start" ]