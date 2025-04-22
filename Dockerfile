FROM node:20-alpine3.21 AS linux_base
WORKDIR /mahjong-player
COPY . .
RUN npm install && npm run build:all-docker
HEALTHCHECK --interval=30s --retries=3 --start-period=30s --timeout=10s \
  CMD wget --spider -q http://localhost:8080 || exit 1
EXPOSE 8080
CMD ["sh", "docker-entrypoint.sh"]
