#!/bin/bash

# Attendre que SQL Server démarre
sleep 20s

DB_USER=${DB_USER:-sa}
DB_PASSWORD=${DB_PASSWORD:-YourStrongPassword}

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $DB_PASSWORD -i /tmp/dump.sql

# Start SQL Server
/opt/mssql/bin/sqlservr
