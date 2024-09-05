#### syntax=docker/dockerfile:1
#FROM node:19-bullseye
#ENV NODE_ENV=production
#WORKDIR /app
#COPY ["package.json", "package-lock.json*", "./"]
#RUN npm install
#EXPOSE 8000
#COPY . .
#CMD [ "npm", "start" ]
services:
- type: web
  name: hello-world
  env: static
  buildCommand: npm run build
  staticPublishPath: ./public

- type: web
  name: api-server
  env: node
  buildCommand: npm install && npm run build
  startCommand: npm start
