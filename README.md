# Examen CI/CD - Documentation

## Partie 1 : Initialisation du Dépôt Git

1. J'ai créé un nouveau répertoire pour le projet et navigué dedans :

    ```bash
    mkdir examen_ci_cd_tuna
    cd examen_ci_cd_tuna
    ```

2. J'ai initialisé un dépôt Git :

    ```bash
    git init
    ```

3. J'ai configuré mon identité Git :

    ```bash
    git config --global user.name "Mon Nom"
    git config --global user.email "mon.email@example.com"
    ```

4. J'ai créé un fichier `README.md` :

    ```bash
    touch README.md
    ```

5. J'ai ajouté le fichier `README.md` et effectué un commit initial :

    ```bash
    git add README.md
    git commit -m "Premier commit avec README.md"
    ```

## Partie 2 : Création et Exécution du Conteneur Docker

1. J'ai créé un `Dockerfile` avec le contenu suivant :

    ```Dockerfile
    FROM node:14
    WORKDIR /app
    COPY package*.json ./
    RUN npm install
    COPY . .
    EXPOSE 3000
    CMD ["npm", "start"]
    ```

2. J'ai construit l'image Docker à partir du `Dockerfile` :

    ```bash
    sudo docker build -t examen_ci_cd_tuna .
    ```

3. J'ai lancé le conteneur Docker pour vérifier le bon fonctionnement de l'application :

    ```bash
    sudo docker run -p 3000:3000 examen_ci_cd_tuna
    ```

**Note** : Assurez-vous que l'application écoute sur toutes les interfaces (`0.0.0.0`) dans votre fichier principal de l'application.

# Examen CI/CD - Lancer le Serveur
            
Pour lancer le serveur de l'application conteneurisée, utilisez la commande suivante :

```bash
sudo docker run -p 3000:3000 examen_ci_cd_tuna
```
