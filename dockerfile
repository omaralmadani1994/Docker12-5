FROM node:16 as base 

FROM base as devlopment 

WORKDIR /app

COPY package.json .

RUN npm install

COPY src/index.js .

COPY . .

EXPOSE 4000 
CMD [ "npm","run","start-dev" ]

FROM base as production 

WORKDIR /app

COPY package.json .

RUN npm install --only=production

COPY src/index.js .

COPY . .

EXPOSE 4000 
CMD [ "npm","start" ]