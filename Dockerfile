FROM node:22

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 3000

EXPOSE 80

EXPOSE 443

CMD ["npm", "start"]
