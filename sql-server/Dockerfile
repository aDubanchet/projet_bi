# Utilisez l'image SQL Server de Microsoft
FROM mcr.microsoft.com/mssql/server:2022-latest

# Copiez votre script SQL dans le conteneur
COPY dump.sql /tmp/dump.sql

# Copiez un script d'entrée personnalisé dans le conteneur
COPY entrypoint.sh /tmp/entrypoint.sh

# Autorisez l'exécution du script d'entrée
RUN chmod +x /tmp/entrypoint.sh

# Définissez le point d'entrée du conteneur pour exécuter le script au démarrage
ENTRYPOINT ["/bin/bash", "/tmp/entrypoint.sh"]