FROM node:10.19.0-alpine

WORKDIR /usr/src

RUN npm i -g npm \
    npm i -g @vue/cli \
    npm i -g firebase-tools \
    && rm -rf /var/lib/apt/lists/*