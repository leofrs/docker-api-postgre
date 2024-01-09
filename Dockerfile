FROM node

WORKDIR /app

COPY . .

RUN npm install -g npm@10.2.5

RUN npm i

RUN npm run build

RUN npx prisma migrate dev --name users

CMD [ "npm", "start" ]