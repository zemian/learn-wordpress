#!/bin/sh
#
# Usage: restoredb.sh
# Usage: restoredb.sh sample
#
SCRIPT_DIR=$(dirname $0)
DB_SCRIPT=$SCRIPT_DIR/wordpressdb.sql
if [[ $# -eq 1 ]]; then
  DB_SCRIPT=$SCRIPT_DIR/wordpressdb-$1.sql
fi
if [[ ! -e $DB_SCRIPT ]]; then
  echo "File does not exist: $DB_SCRIPT"
  exit 0  
fi
echo "Restoring $DB_SCRIPT"
mysql -f -u root wordpressdb < $DB_SCRIPT
