FROM node:20

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm run build

# Start the application
CMD [ "npm", "run", "start:dev" ]