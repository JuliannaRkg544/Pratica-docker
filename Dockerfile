# BUSCA A IMAGEM DO NODE
FROM node  

WORKDIR usr/src/

COPY . .

EXPOSE 4000

RUN npm i && npm run build && npx prisma generate

CMD [ "npm", "start" ]

