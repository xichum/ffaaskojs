FROM node:20-alpine3.20

WORKDIR /app

COPY index.js package.json index.html* ./

EXPOSE 3000

RUN apk update && apk add --no-cache bash openssl curl && \
    npm install --production

CMD ["node", "index.js"]
