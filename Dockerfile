FROM node:14.4.0-alpine3.11

WORKDIR /home/node/app

COPY ./package.json /home/node/app/
COPY ./yarn.lock /home/node/app/
RUN chown -R node. /home/node/app

USER node
RUN yarn install
