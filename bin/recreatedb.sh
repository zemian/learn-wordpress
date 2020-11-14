#!/bin/sh
SCRIPT_DIR=$(dirname $0)
DBNAME=wordpressdb

echo "DROP DATABASE IF EXISTS $DBNAME" | mysql -u root
echo "CREATE DATABASE $DBNAME CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;" | mysql -f -u root

# We pre-create user and grant all db to user so we don't have to re-run this every time.
#echo "CREATE USER IF NOT EXISTS 'zemian'@'localhost' IDENTIFIED BY 'test123';" | mysql -f -u root
#echo "GRANT ALL PRIVILEGES ON $DBNAME.* TO 'zemian'@'localhost';" | mysql -f -u root
