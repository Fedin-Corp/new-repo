FROM node:8
WORKDIR /usr/src/app
COPY . .
RUN npm ci && npm run build

healthcheck none

EXPOSE 8000
CMD [ "npm", "start" ]
