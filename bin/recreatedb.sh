#!/bin/sh
# Author: Zemian Deng 2020-11-14
SCRIPT_DIR=$(dirname $0)
source $SCRIPT_DIR/.env

echo "WARNING!: Dropping and re-creating DB $UC_DBNAME"
echo "DROP DATABASE IF EXISTS $UC_DBNAME" | mysql $UC_DBA_LOGIN
echo $UC_DB_CREATE_DB_SQL | mysql $UC_DBA_LOGIN
