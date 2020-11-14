#!/bin/sh
SCRIPT_DIR=$(dirname $0)
DBNAME=wordpressdb
mysqldump --single-transaction \
--quick \
--no-autocommit \
--extended-insert=false \
-u root $DBNAME > $SCRIPT_DIR/$DBNAME.sql
