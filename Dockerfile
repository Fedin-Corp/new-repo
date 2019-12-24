FROM node:6
WORKDIR /usr/src/app
COPY . .
RUN npm ci && npm run build

EXPOSE 8000

HEALTHCHECK none

CMD [ "npm", "start" ]
