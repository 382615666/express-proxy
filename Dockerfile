FROM node:latest
COPY . /usr/src/app
WORKDIR /usr/src/app
VOLUME ["/root/config", "/usr/src/app/config"]
ENTRYPOINT node
