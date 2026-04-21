FROM node:18-slim

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all source files
COPY . .

# Build Tailwind CSS
RUN npm run build

# Start server
EXPOSE 8080
CMD ["node", "server.js"]