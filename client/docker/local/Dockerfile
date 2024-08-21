# FROM docker.io/node:20.11-alpine3.18 as base

# FROM base as node-build-stage

# RUN apk add --no-cache libc6-compat

# COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./

# RUN \
#     if [ -f yarn.lock ]; then yarn --frozon-lockfile; \
#     elif [ -f package-lock.json ]; then npm vi; \
#     elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm i; \
#     else echo "Lockfile bot found." && exit 1; \
#     fi

# FROM base as node-run-stage

# ARG APP_HOME=/APP_HOME
# WORKDIR ${APP_HOME}

# COPY --from=node-build-stage /node_modules ./node_modules

# COPY . ${APP_HOME}

# RUN addgroup -g 1001 -S nodejs && \
#     adduser -S nextjs -U 1001 -G nodejs

# RUN chown -R nextjs:nodejs ${APP_HOME}

# USER nextjs

# CMD [ "npm","run","dev" ]

# #
# Stage 1: Install dependencies
# Stage 1: Install dependencies
# Stage 1: Build the app
FROM node:20.11-alpine3.18 as node-build-stage

WORKDIR /app

# Copy package files and install dependencies
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./

RUN if [ -f yarn.lock ]; then yarn --frozen-lockfile; \
    elif [ -f package-lock.json ]; then npm ci; \
    elif [ -f pnpm-lock.yaml ]; then pnpm install; \
    else echo "Lockfile not found." && exit 1; fi

# Copy the rest of the app source code
COPY . .

# Build the Next.js app
RUN npm run build

# Stage 2: Serve the app
FROM node:20.11-alpine3.18 as node-run-stage

WORKDIR /app

# Copy the built app from the build stage
COPY --from=node-build-stage /app/.next ./.next
COPY --from=node-build-stage /app/node_modules ./node_modules
COPY --from=node-build-stage /app/public ./public
COPY --from=node-build-stage /app/package.json ./package.json

EXPOSE 3000

CMD ["npm", "start"]
