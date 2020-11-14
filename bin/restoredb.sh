#!/bin/sh
SCRIPT_DIR=$(dirname $0)
echo 'DROP DATABASE wordpressdb' | mysql -u root
echo 'CREATE DATABASE wordpressdb' | mysql -u root
mysql -f -u root wordpressdb < $SCRIPT_DIR/../db/wordpressdb.sql
