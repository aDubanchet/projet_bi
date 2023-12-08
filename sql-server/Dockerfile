#  image SQL Server de Microsoft
FROM mcr.microsoft.com/mssql/server:2022-latest

# Copier dump.sql dans le conteneur
COPY dump.sql /tmp/dump.sql

# Copier entrypoint.sh dans le conteneur
COPY entrypoint.sh /tmp/entrypoint.sh

USER root
RUN chmod +x /tmp/entrypoint.sh

# point d'entrée au démarrage 
ENTRYPOINT ["/bin/bash", "/tmp/entrypoint.sh"]