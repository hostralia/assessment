# Base image (small, secure Node build)
FROM node:20-alpine3.22

# this is a production deployment environment
# Set NODE_ENV to production to ensure npm installs only production dependencies
ENV NODE_ENV=production

# Setup  working directory
WORKDIR /app

# COPY package.json package-lock.json ./
COPY package*.json ./


# Install only production dependencies - runtime image
#--omit=dev skips development tools (like ESLint, Jest, etc.) that you don’t need in production.
RUN npm ci --omit=dev

# 6. Copy required application files (not tests or build configs)
# Adjust these COPY lines to match your actual project structure
COPY src ./src


RUN echo "verify all required files are copied into /app:" && ls -R /app

# START THE APPLICATION - use package.json start script

CMD [ "npm", "start" ]