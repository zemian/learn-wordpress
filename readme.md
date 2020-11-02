This repo contains [wordpress](https://wordpress.org) source and docs for learning purpose.

NOTE: The `wordpress` folder contains the original WP `5.4.2` downloaded source, but it has been
updated since. Check `wp-admin` to verify an actual version in use.

NOTE: We will use `master` branch to explore general WP and plugin functionalities. For other specific topic such
as `theme` see a separate branch for details.

## Quick Start

	bin/server.sh
	open http://localhost:3000/wordpress

## Setup Database

Login as root and create an empty database for wordpress:

	mysql -u root

```sql
CREATE USER IF NOT EXISTS 'zemian'@'localhost' IDENTIFIED BY 'test123';
CREATE DATABASE wordpressdb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES ON wordpressdb.* TO 'zemian'@'localhost';
```

NOTE: The default MySQL 8 is using `caching_sha2_password` plugin for user authentication. If you are using PHP 7.2 or 
older, you would need to create user with: 

    CREATE USER 'zemian'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test123';

Or to change it for existing user:

    ALTER USER 'zemian'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test123';

## Setup WordPress

1. Download https://wordpress.org/download/

2. Unzip it with `tar xvf ~/Downloads/wordpress-5.4.2.tar.gz`

3. Copy `wp-config-sample.php` file into `wp-config.php` and edit the following:

    a. DB_NAME, DB_USER, DB_PASSWORD
    b. Optionally generate unique keys from https://api.wordpress.org/secret-key/1.1/salt
    
## Setup Web Server

The quickest way to start:
    
    php -S localhost:3000
    open http://localhost:3000/wordpress/wp-admin/install.php

To see more ways on how to setup PHP with different web servers, see [learn-php readme.md](https://github.com/zemian/learn-php).

## WP Installation 

1. Select English Language

2. Populate Site and Admin user form:

    * Default login: `admin/test123` (This is only my local test installation. Use your own setup)

3. Finish install and visit admin site:
 
    * http://localhost:3000/wordpress/wp-admin
