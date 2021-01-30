# learn-wordpress

This repo contains [WordPress](https://wordpress.org) source and docs for learning purpose.

## Setup Database

Here are instruction on how to create a database called `wordpressdb`

1. Login as root and create an empty database for wordpress:

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

There should already be a `wordpress` folder in this repository. But if you want to re-download a newer version 
of the source, you may replace it.

1. Download https://wordpress.org/download/

2. Unzip it with `tar xvf ~/Downloads/wordpress-5.4.2.tar.gz`

3. Copy `wp-config-sample.php` file into `wp-config.php` and edit the following:

    a. DB_NAME, DB_USER, DB_PASSWORD
    b. Optionally generate unique keys from https://api.wordpress.org/secret-key/1.1/salt

## Setup Web Server

	bin/server.sh
	open http://localhost:3000/wordpress

To see more ways on how to setup PHP with different web servers, see [learn-php readme.md](https://github.com/zemian/learn-php).

## WP Installation

1. open http://localhost:3000/wordpress/wp-admin/install.php

2. Select English Language

3. Populate DB information (it will auto create `wp-config.php` for you.)

4. Populate Site and Admin user info (example login: `admin/test123`)

## Setup Web Server on port 80

If you have system web server installed in `/usr/local/var/www` that runs on port 80. Then you can reconfigure
the setup to use that to host the WordPress with following changes:

1. Create a symbolic link to system web server
   
    `ln -s $(pwd)/wordpress /usr/local/var/www/wordpress`

2. Update DB wp_options table with following:

    ```
    1,siteurl,http://localhost/wordpress,yes
    2,home,http://localhost/wordpress,yes
    ```
3. Open browser to following:

   http://localhost/wordpress

## Reset DB and WordPress

    `bin/recreatedb clean`

## How to load WordPress Sample

    `bin/import-sample.sh`
