#!/bin/sh
SCRIPT_DIR=$(dirname $0)
DBNAME=wordpressdb
echo "Backup DB $DBNAME"
mysqldump --single-transaction \
--quick \
--no-autocommit \
--extended-insert=false \
-u root $DBNAME > $SCRIPT_DIR/$DBNAME.sql
