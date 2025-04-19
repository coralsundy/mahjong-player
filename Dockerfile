FROM node:18.20-alpine3.21

COPY . .
RUN npm install && npm run build:all-docker
CMD [ "npm", "run", "server" ]
