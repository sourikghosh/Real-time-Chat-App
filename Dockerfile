FROM node:12.20-alpine3.10

WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY . .

EXPOSE 4000
CMD ["npm","start"]