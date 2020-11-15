#!/bin/sh
# Author: Zemian Deng 2020-11-14
SCRIPT_DIR=$(dirname $0)
source $SCRIPT_DIR/.env

echo "Backup DB $UC_DBNAME"
mysqldump --single-transaction \
--quick \
--no-autocommit \
--extended-insert=false \
$UC_DBA_LOGIN $UC_DBNAME > $SCRIPT_DIR/$UC_DBNAME.sql
