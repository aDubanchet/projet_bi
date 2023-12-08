#!/bin/bash
# Attendre que SQL Server démarre 
DB_USER=${DB_USER:-sa}
DB_PASSWORD=${DB_PASSWORD:-AlexisBG#123}

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $DB_PASSWORD -i /tmp/dump.sql

# Démarrer SQL Server
#/opt/mssql/bin/sqlservr
#/opt/mssql-tools/bin/sqlcmd -S localhost -U SA