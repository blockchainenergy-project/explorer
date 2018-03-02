FROM node:carbon
MAINTAINER Mihail Fedorov <tech@fedorov.net>

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install --production
COPY . .

EXPOSE 80
CMD [ "npm", "start" ]
