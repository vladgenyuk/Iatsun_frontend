FROM node:14-alpine

WORKDIR /app

expose 3000

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build && npm install -g serve

CMD ["serve", "-s", "build"]