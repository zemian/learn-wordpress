#!/bin/sh
# Author: Zemian Deng 2020-11-14
SCRIPT_DIR=$(dirname $0)
source $SCRIPT_DIR/.env

# Print important env vars
echo "Using $UC_ENV env vars"
echo "UC_DBNAME=$UC_DBNAME"
echo "UC_DBUSER=$UC_DBUSER"
echo "UC_DBAUSER=$UC_DBAUSER"

# Run a query
echo "SELECT VERSION() as mysql_version" | mysql $UC_DBA_LOGIN
