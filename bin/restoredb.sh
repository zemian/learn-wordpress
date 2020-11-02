#!/bin/sh
SCRIPT_DIR=$(dirname $0)
mysql -f -u root wordpressdb < $SCRIPT_DIR/../db/wordpressdb.sql
