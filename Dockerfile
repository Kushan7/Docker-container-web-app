FROM node:20-alpine
RUN mkdir -p /home/node-app


WORKDIR /home/node-app
COPY . /home/node-app
RUN npm install
ENV MONGO_DB_USERNAME=admin 
ENV MONGO_DB_PWD=password


CMD ["node", "/home/node-app/server.js"]
