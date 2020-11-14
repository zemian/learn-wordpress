#!/bin/sh
SCRIPT_DIR=$(dirname $0)
echo "Starting web server"
echo "Site: http://localhost:3000/wordpress/"
echo "Admin http://localhost:3000/wordpress/wp-admin/"

# Use simple php buit-in web server
#php -S localhost:3000

# Use lighty web server (better performance even for local dev)
lighttpd -D -f $SCRIPT_DIR/lighttpd-php.conf
