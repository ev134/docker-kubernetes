FROM node:18-alpine

WORKDIR /app

COPY app/package.json app/yarn.lock ./

RUN yarn install

COPY app .

EXPOSE 3000

CMD ["node", "src/index.js"]