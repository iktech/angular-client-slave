FROM node:14.11.0
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"

USER root

RUN apt-get update \
 && apt-get install -y libnss3-dev \
       libatk-bridge2.0-0 \
       libx11-xcb-dev \
       libxcb-dri3-0 \
       libdrm-amdgpu1 \
       libgbm-dev \
       libasound2 \
       libgtk-3-0 \
       libappindicator1 \
       fonts-liberation

RUN mkdir -p /usr/local/lib/node_modules \
 && chown -R node:node /usr/local/lib/node_modules \
 && chown -R node:node /usr/local/bin \
 && mkdir -p /home/jenkins/.npm \
 && chown node:node /home/jenkins/.npm \
 && npm install -g @angular/cli@10.1.2

USER node
