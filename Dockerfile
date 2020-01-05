FROM node
LABEL maintainer="Igor Kolomiyets <igor.kolomiyets@iktech.io>"

#RUN groupadd -g 10000 jenkins
#RUN useradd -d /home/jenkins -m -u 10000 -g jenkins jenkins
RUN mkdir -p /usr/local/lib/node_modules
RUN chown -R 1000:1000 /usr/local/lib/node_modules
RUN chown -R 1000:1000 /usr/local/bin

RUN npm install -g @angular/cli
