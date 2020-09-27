#!/bin/sh
echo "Site: http://localhost:3000/wordpress/"
echo "Admin http://localhost:3000/wordpress/wp-admin/"

# Use simple php buit-in web server
#php -S localhost:3000

# Use lightty web server (better performance even for local dev)
lighttpd -D -f bin/lighttpd-php.conf
