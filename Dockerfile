FROM node:14.11.0
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"

USER root
RUN apt-get update \
 && apt-get install -y libnss3-dev


USER node

RUN mkdir -p /usr/local/lib/node_modules \
 && chown -R node:node /usr/local/lib/node_modules \
 && chown -R node:node /usr/local/bin \
 && mkdir -p /home/jenkins/.npm \
 && chown node:node /home/jenkins/.npm \
 && npm install -g @angular/cli@10.1.2
