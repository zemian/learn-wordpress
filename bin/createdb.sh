#!/bin/sh
# Author: Zemian Deng 2020-11-14
SCRIPT_DIR=$(dirname $0)
source $SCRIPT_DIR/.env

echo "Creating DB $UC_DBNAME and user $UC_DBUSER"
echo $UC_DB_CREATE_DB_SQL | mysql -f $UC_DBA_LOGIN
echo "CREATE USER IF NOT EXISTS '$UC_DBUSER'@'localhost' IDENTIFIED BY '$UC_DBPASS';" | mysql -f $UC_DBA_LOGIN
echo "GRANT ALL PRIVILEGES ON $UC_DBNAME.* TO '$UC_DBUSER'@'localhost';" | mysql -f $UC_DBA_LOGIN
