FROM node:4
WORKDIR /usr/src/app
COPY . .
RUN npm ci && npm run build

EXPOSE 8000
CMD [ "npm", "start" ]
