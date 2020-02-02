FROM node:latest
MAINTAINER Lidor
ARG DEVOPS=docker
RUN apt-get update  && \
    apt-get upgrade -y && \
    apt-get install -y vim nano curl wget && \
    npm install && \
    mkdir /app && echo $DEVOPS
WORKDIR /src/app
COPY . .
EXPOSE 80
ENV BUILD_ID=11
ENV ENVIRONMENT=QA
CMD [ "node", "server.js"]










