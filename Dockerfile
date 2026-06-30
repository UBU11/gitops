FROM node:24-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

FROM node:24-alpine AS runner
WORKDIR /app
        
COPY --from=builder /app ./

EXPOSE 3000

CMD ["npm", "start"]
