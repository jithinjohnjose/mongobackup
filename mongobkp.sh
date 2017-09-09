#!/bin/sh

# Add your backup dir location
DIR=`date +%m%d%y`
DEST=/db_backups/$DIR

# To create a new directory into backup directory location
mkdir -p $DEST

#dump database 
mongodump -h <your_database_host> -d <your_database_name> -u <username> -p <password> -o $DEST

# Delete files older than 10 days
find $DEST/* -mtime +10 -exec rm {} \;
