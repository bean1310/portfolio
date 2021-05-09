FROM node:lts-alpine3.13

WORKDIR /home/node/app

COPY ./package.json /home/node/app/
COPY ./package-lock.json /home/node/app/
RUN chown -R node. /home/node/app

USER node
RUN npm ci
