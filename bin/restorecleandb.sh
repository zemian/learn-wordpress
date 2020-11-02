#!/bin/sh
SCRIPT_DIR=$(dirname $0)
DBFILE=$(ls -1 $SCRIPT_DIR/../db/wordpresscleandb-*.sql | tail -n1)
#echo $DBFILE
mysql -f -u root wordpressdb < $DBFILE
