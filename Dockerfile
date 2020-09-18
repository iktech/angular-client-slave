FROM node:14.11.0
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"

#RUN groupadd -g 10000 jenkins
#RUN useradd -d /home/jenkins -m -u 10000 -g jenkins jenkins
RUN mkdir -p /usr/local/lib/node_modules \
 && chown -R node:node /usr/local/lib/node_modules \
 && chown -R node:node /usr/local/bin \
 && mkdir -p /home/jenkins/.npm \
 && chown node:node /home/jenkins/.npm \
 && npm install -g @angular/cli@10.1.2

USER node

