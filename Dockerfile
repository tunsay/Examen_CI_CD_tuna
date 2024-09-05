# Utiliser l'image de base Node.js
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers du projet dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va écouter
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npm", "start"]

