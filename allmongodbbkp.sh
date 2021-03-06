#!/bin/sh

# Add your backup dir location
DIR=`date +%m%d%y`
DEST=/db_backups/$DIR

# To create a new directory into backup directory location
mkdir -p $DEST

#dump all database 
mongodump --host <your_database_host> --port 3017 --username <username> --password <password> --out $DEST

# Delete files older than 10 days
find $DEST/* -mtime +10 -exec rm {} \;
