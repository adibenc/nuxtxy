# https://stackoverflow.com/questions/69807663/how-to-build-docker-file-for-a-vuejs-application
FROM node:lts-alpine

WORKDIR /app
COPY package*.json ./ 
COPY node_modules ./ 
RUN npm install
COPY . .

RUN npm run build

EXPOSE 4000
CMD [ "npm", "run", "start" ]
