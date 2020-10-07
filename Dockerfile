FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app
# installing the dependencies into the container
RUN npm install

COPY . /usr/src/app

CMD ["node", "app.js"]