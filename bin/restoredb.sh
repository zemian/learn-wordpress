#!/bin/sh
#
# Usage: restoredb.sh
# Usage: restoredb.sh sample
#
SCRIPT_DIR=$(dirname $0)
DBNAME=wordpressdb
DB_SCRIPT=$SCRIPT_DIR/$DBNAME.sql
if [[ $# -eq 1 ]]; then
  DB_SCRIPT=$SCRIPT_DIR/$DBNAME-$1.sql
fi
if [[ ! -e $DB_SCRIPT ]]; then
  echo "File does not exist: $DB_SCRIPT"
  exit 0  
fi
echo "Restoring $DBNAME with $DB_SCRIPT"
mysql -f -u root $DBNAME < $DB_SCRIPT
