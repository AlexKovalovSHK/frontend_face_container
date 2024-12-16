FROM node:lts

WORKDIR /app

COPY package*.json ./

RUN rm -rf node_modules package-lock.json
RUN npm install -g npm@latest
RUN npm install -g serve

COPY . .

RUN npm update
RUN npm run build

EXPOSE 3003

CMD ["serve", "-s", "dist", "-l", "3000"]