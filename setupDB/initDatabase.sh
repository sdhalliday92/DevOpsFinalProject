#!/bin/sh

echo "initialize Database"
mysql -h $MYSQL_HOST -P $MYSQL_PORT -u $MYSQL_USER -p$MYSQL_PASSWORD < initDB.sql

echo "Populate Database"
mysql -h $MYSQL_HOST -P $MYSQL_PORT -u $MYSQL_USER -p$MYSQL_PASSWORD petclinic < populateDB.sql
