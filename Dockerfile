FROM node:6
WORKDIR /usr/src/app
COPY . .
RUN npm ci && npm run build

healthcheck null

EXPOSE 8000
CMD [ "npm", "start" ]
