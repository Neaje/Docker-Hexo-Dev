FROM node:current-alpine

RUN apk add --no-cache git
RUN npm install -g hexo-cli

WORKDIR /app

CMD [ "ash" ]
