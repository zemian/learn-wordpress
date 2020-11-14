#!/bin/sh
SCRIPT_DIR=$(dirname $0)
$SCRIPT_DIR/recreatedb.sh
mysql -f -u root wordpressdb < $SCRIPT_DIR/wordpressdb.sql
