FROM node:latest
COPY . /usr/src/app
WORKDIR /usr/src/app
VOLUME ["./config"]
ENTRYPOINT node
