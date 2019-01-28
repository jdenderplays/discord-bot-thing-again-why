FROM node:10

# Install and cache packages
WORKDIR /usr/app
COPY package.json .
RUN yarn

# Setup project
COPY . .
EXPOSE 8080

# Switch to a non privliged user
USER node