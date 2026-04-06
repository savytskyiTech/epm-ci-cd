FROM node:14
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install
#'npm install express' is redundant here as it is listed in package.json, 
RUN npm install express

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "server.js" ]
