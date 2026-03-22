FROM node:20-slim

WORKDIR /app

RUN corepack enable pnpm && corepack prepare pnpm@9.12.3 --activate

RUN apt-get update && apt-get install -y python3 make g++ && rm -rf /var/lib/apt/lists/*

COPY package.json pnpm-lock.yaml ./
RUN pnpm install

COPY . .

# Bypass the migrate step during next build. We will run it at startup.
RUN sed -i 's/"build": "tsx lib\/db\/migrate && next build"/"build": "next build"/' package.json

ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1

RUN pnpm run build

EXPOSE 3000

# Run migration on start so it affects the mapped volume, then start
CMD ["sh", "-c", "npx tsx lib/db/migrate.ts && pnpm start"]
