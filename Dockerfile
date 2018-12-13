FROM node:latest
COPY . /usr/src/app
WORKDIR /usr/src/app
VOLUME ["/usr/src/app/config"]
ENTRYPOINT node
