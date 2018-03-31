FROM node
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"

RUN groupadd -g 10000 jenkins
RUN useradd -d /home/jenkins -m -u 10000 -g jenkins jenkins
RUN mkdir -p /usr/local/lib/node_modules
RUN chown -R jenkins:jenkins /usr/local/lib/node_modules
RUN chown -R jenkins:jenkins /usr/local/bin

USER 10000
RUN npm install -g @angular/cli
