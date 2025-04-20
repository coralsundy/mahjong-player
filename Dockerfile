FROM node:18.20-alpine3.21
WORKDIR /mahjong-player
COPY . .
RUN apk add curl && npm install && npm run build:all-docker
HEALTHCHECK --interval=30s --retries=3 --start-period=30s --timeout=10s \
  CMD curl --fail http://localhost:8080 || exit 1
EXPOSE 8080
CMD [ "npm", "run", "server" ]
