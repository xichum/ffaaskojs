FROM node:20-alpine3.20
WORKDIR /app

RUN apk update && apk add --no-cache \
    bash openssl curl libc6-compat gcompat tzdata

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY index.js ./
COPY index.html ./

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost:3000/ || exit 1

CMD ["node", "index.js"]
