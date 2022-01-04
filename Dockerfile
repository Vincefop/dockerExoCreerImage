# version node alpine:3.14
FROM node:current-alpine3.14

#Je détermine un espace de travail
WORKDIR /angular-realworld-example-app/app

#copier les fichiers
COPY ./angular-realworld-example-app .

# installer les dépendances
RUN npm install 

#J'indique quel port utiliser : port 4200
EXPOSE 4200

#demarrer l'appli : npm run start
CMD ["npm","run","start"]
