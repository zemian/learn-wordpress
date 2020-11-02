#!/bin/sh
SCRIPT_DIR=$(dirname $0)
$SCRIPT_DIR/wp.sh plugin activate wordpress-importer
$SCRIPT_DIR/wp.sh import --authors=create $SCRIPT_DIR/../sample/themeunittestdata.wordpress.xml