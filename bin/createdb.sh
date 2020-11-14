#!/bin/sh
SCRIPT_DIR=$(dirname $0)
DBNAME=wordpressdb
DBUSER=zemian
DBPASS='test123'

echo "Creating DB $DBNAME and user $DBUSER"
echo "CREATE DATABASE $DBNAME CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;" | mysql -f -u root
echo "CREATE USER IF NOT EXISTS '$DBUSER'@'localhost' IDENTIFIED BY '$DBPASS';" | mysql -f -u root
echo "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'localhost';" | mysql -f -u root
