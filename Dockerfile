FROM node:alpine3.14 AS development

# Create app directory
WORKDIR "/app"

# Install app dependencies
COPY package*.json ./

RUN npm install --only=development

# Bundle app source
COPY . .

RUN npm run build

CMD [ "sh", "-c", "npm run start:dev"]