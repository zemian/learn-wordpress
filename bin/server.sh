#!/bin/sh
SCRIPT_DIR=$(dirname $0)
echo "Starting web server"
echo "Site: http://localhost:3000/wordpress/"
echo "Admin http://localhost:3000/wordpress/wp-admin/"

# Use simple php built-in web server
# Ensure you use the correct PHP version to run WordPress!
PHP_CMD=/usr/local/opt/php@7.4/bin/php
if [[ ! -e $PHP_CMD ]]; then
    PHP_CMD=php
fi  
$PHP_CMD -S localhost:3000

# Use lighttpd web server (better performance even for local dev)
# The "lighttpd-php.conf" here is configured to use port 3000. If you want to use port 80, it's
# better to edit the system lighttpd.conf instead. See README.md for more
#lighttpd -D -f $SCRIPT_DIR/lighttpd-php.conf
