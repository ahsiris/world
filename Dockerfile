#build stage
FROM node:1.8 AS build

#create working directory
WORKDIR /app

#copy package files
COPY package.json package-lock.json ./

#install dependencies
RUN npm install

#copy application source code
COPY . .

#production stage
FROM node:1.8-slim

#create working directory
WORKDIR /app

#copy from build stage
COPY --from=build /app /app

#expose the port
EXPOSE 3000

#command to run after container is build
CMD ["node","index.js"]
