FROM node:15 
WORKDIR /server
COPY package*.json ./
COPY yarn.lock ./
RUN npm install
COPY . .
RUN npm build
EXPOSE 3000
CMD ["node", "build/index.js"]