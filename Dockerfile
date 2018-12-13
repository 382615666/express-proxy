FROM node:latest
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN npm install
CMD ["start"]
ENTRYPOINT npm run

