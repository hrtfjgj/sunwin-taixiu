FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production PORT=7860
COPY package.json package-lock.json ./
RUN (npm ci --omit=dev --no-audit --no-fund || npm install --omit=dev --no-audit --no-fund)
COPY server.js config.json ./
COPY public ./public
EXPOSE 7860
CMD ["node", "server.js"]
