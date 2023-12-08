#!/bin/bash
sleep 20s
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "AlexisBG#123" -i /tmp/dump.sql

/opt/mssql/bin/sqlservr