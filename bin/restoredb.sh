#!/bin/sh
# Author: Zemian Deng 2020-11-14
# Usage: restoredb.sh <sql_filename_suffix>
SCRIPT_DIR=$(dirname $0)
source $SCRIPT_DIR/.env

DB_SCRIPT=$SCRIPT_DIR/$UC_DBNAME.sql
if [[ $# -eq 1 ]]; then
  DB_SCRIPT=$SCRIPT_DIR/$UC_DBNAME-$1.sql
fi
if [[ ! -e $DB_SCRIPT ]]; then
  echo "File does not exist: $DB_SCRIPT"
  exit 0  
fi

echo "Restoring $UC_DBNAME with $DB_SCRIPT"
mysql -f $UC_DBA_LOGIN $UC_DBNAME < $DB_SCRIPT
