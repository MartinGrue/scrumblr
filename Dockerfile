FROM node:alpine
WORKDIR /app
COPY package.json .
COPY . .
RUN npm install --verbose 

CMD ["node", "server.js", "--server:port=80"]