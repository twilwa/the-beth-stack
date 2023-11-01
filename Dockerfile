FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 3001

CMD [ "yarn", "run", "build:all" ]