FROM node:20-alpine3.20

WORKDIR /app

RUN apk update && apk add --no-cache bash openssl curl libc6-compat gcompat tzdata

COPY package.json ./
RUN npm install --production

COPY index.js ./

COPY index.htm[l] ./

EXPOSE 3000

CMD ["node", "index.js"]
