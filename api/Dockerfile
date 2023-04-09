# FROM node
# COPY . /apps/spotify/
# WORKDIR /apps/spotify/
# EXPOSE 8888
# CMD ["npm","start"]

FROM node:19.8.1-alpine
RUN mkdir -p /api
WORKDIR /api
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8888
CMD [ "npm", "start" ]