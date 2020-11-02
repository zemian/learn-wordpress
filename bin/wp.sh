#!/bin/sh
# WordPress CLI tool
# See https://make.wordpress.org/cli/handbook/guides/
SCRIPT_DIR=$(dirname $0)
php $SCRIPT_DIR/wp-cli.phar --path=$SCRIPT_DIR/../wordpress "$@"
