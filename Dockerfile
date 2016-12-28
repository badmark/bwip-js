FROM node:6
MAINTAINER James Kolce <contact@jameskolce.com>

RUN mkdir -p /usr/api
COPY . /usr/api
WORKDIR /usr/api
RUN npm install --production

ENV PORT 3030
EXPOSE  $PORT

CMD ["npm", "start", "server.js"]