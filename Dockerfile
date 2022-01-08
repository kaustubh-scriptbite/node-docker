#Specify base image
FROM node:alpine

WORKDIR /usr/app

#Install dependecies
COPY ./package.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "start"]