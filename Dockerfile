FROM node:latest
COPY . /usr/src/app
WORKDIR /usr/src/app
ONBUILD RUN mkdir config && npm install
ENTRYPOINT node
