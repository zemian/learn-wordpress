#!/bin/sh
SCRIPT_DIR=$(dirname $0)
mysql -f -u root wptintdb < $SCRIPT_DIR/../db/wordpressdb.sql
