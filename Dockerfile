from node:8.11.1
# on se base de l'image docker déjà fait où il y a node de prêt (disponible sur le dockerhub)

ENV SERV_DIRECTORY = /opt/microservices

RUN mkdir $SERV_DIRECTORY

## ICI ajouter vos fichiers de votre projet
ADD app.js $SERV_DIRECTORY/app.js
ADD package.json $SERV_DIRECTORY/package.json
##############################################

# On se place dans le répétoire où il y a le dossier du projet dans le container
WORKDIR $SERV_DIRECTORY

# on installe les dépendances déclaré dans le package.json
RUN npm install

# on spécifie la commande que doit lancer docker, lorsqu'on démarre le container
CMD npm start
