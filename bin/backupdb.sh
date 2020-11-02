#!/bin/sh
SCRIPT_DIR=$(dirname $0)
mysqldump --single-transaction \
--quick \
--no-autocommit \
--extended-insert=false \
-u root wptintdb > $SCRIPT_DIR/../db/wptintdb.sql
