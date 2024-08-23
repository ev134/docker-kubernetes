FROM node:18-alpine

WORKDIR /app

COPY app .

RUN yarn install

EXPOSE 3000

CMD ["node", "src/index.js"]