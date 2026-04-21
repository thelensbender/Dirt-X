FROM node:20-slim

WORKDIR /app

COPY package*.json ./

# Delete lock file and reinstall fresh for Linux
RUN rm -f package-lock.json && npm install

COPY . .

RUN npm run build

EXPOSE 8080
CMD ["node", "server.js"]
