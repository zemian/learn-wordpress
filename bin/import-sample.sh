#!/bin/sh
#
# NOTE the command line version of import will not have option to import uploaded images!
# Use the Admin interface if you want this.
#
SCRIPT_DIR=$(dirname $0)
$SCRIPT_DIR/wp.sh plugin activate wordpress-importer
$SCRIPT_DIR/wp.sh import --authors=create $SCRIPT_DIR/../sample/themeunittestdata.wordpress.xml