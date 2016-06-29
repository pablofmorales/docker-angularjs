FROM node:6.2.2-wheezy

MAINTAINER Pablo Morales <pablofmorales@gmail.com>

RUN apt-get update -qq
RUN apt-get install -y build-essential vim

RUN npm install pm2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

EXPOSE 8080

CMD npm install && npm run start
