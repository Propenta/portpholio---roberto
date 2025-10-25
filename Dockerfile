# Étape 1 : Utiliser une image Nginx légère
FROM nginx:alpine

# Étape 2 : Supprimer le contenu par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Étape 3 : Copier ton application HTML/CSS dans le dossier Nginx
COPY . /usr/share/nginx/html

# Étape 4 : Exposer le port 80
EXPOSE 80

# Étape 5 : Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
