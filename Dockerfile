FROM node:12.4.0-alpine
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
WORKDIR /app
RUN apk update && \
    apk add git && \
    npm install -g npm && \
    npm install -g vue-cli
COPY package.json .
COPY package-lock.json .
RUN npm install
ENV HOST 0.0.0.0
EXPOSE 8080
