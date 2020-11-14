#!/bin/sh
SCRIPT_DIR=$(dirname $0)
DBNAME=wordpressdb

echo "DROP DATABASE IF EXISTS $DBNAME" | mysql -u root
echo "CREATE DATABASE $DBNAME CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;" | mysql -f -u root
