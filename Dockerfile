FROM node
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"

RUN addgroup -g 10000 jenkins
RUN adduser -D -h /home/jenkins -u 10000 -G jenkins jenkins
RUN mkdir -p /usr/local/lib/node_modules
RUN chown -R jenkins:jenkins /usr/local/lib/node_modules
RUN chown -R jenkins:jenkins /usr/local/bin

USER 10000
RUN npm install -g @angular/cli
