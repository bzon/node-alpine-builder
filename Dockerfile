FROM node:8-alpine

# Build and helper tools
RUN apk -v --no-cache --update add \
        git \
        openssh \
        sudo \
        && \
    mkdir -p $HOME/.ssh

RUN npm install -g @angular/cli
RUN npm install --dev mongodb-memory-server
