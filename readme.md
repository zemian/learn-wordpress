# learn-wordpress

This repo contains [WordPress](https://wordpress.org) source and docs for learning purpose.

NOTE: WordPress 5.5.3 requires PHP 7 (PHP 8 will give you errors at home page!)

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

Quick local PHP server:
   
   ```
   bin/server.sh
   open http://localhost:3000/wordpress
   ```

### Using lighttpd Web Server 

NOTE: If your system web server is pon port 80, then you need to change the WordPress 
site URL first, since it default to `http://localhost:3000/wordpress`. See section below.

1. Edit `/usr/local/etc/lighttpd/lighttpd.conf` to configure PHP using `fastcgi`

2. Create a symbolic link to system web server document root:

   `ln -s $(pwd)/wordpress /usr/local/var/www/wordpress`

3. Now open browser to http://localhost/wordpress

## WP Installation

1. Open http://localhost:3000/wordpress/wp-admin/install.php

2. Select English Language

3. Populate DB information (it will auto create `wp-config.php` for you.)

   ```
   Database Name: wordpressdb
   Username: zemian
   Password: test123
   Database Host: localhost
   Table prefix: wp_
   ```
   
4. Complete the Welcome - Information Needed screen

   ```
   Site Title: Learn WordPress
   Username: admin
   Password: test123
   Email: admin@localhost.local
   ```

## Changing WordPress site URL

The default clean DB branch of this project is set to use 'http://localhost:3000/wordpress'. If you
want to change this, you can do it in two ways:

Option1: Update DB `wp_options` table with following:

    ```
    1,   siteurl, http://localhost:3000/wordpress,   yes
    2,   home,    http://localhost:3000/wordpress,   yes
    ```
   
Option2: Add the following into `wp-config.php`

   ```
   # Change and override local dev web server base URLs
   define( 'WP_SITEURL', 'http://localhost:3000/wordpress' );
   define( 'WP_HOME', 'http://localhost:3000/wordpress' );
   ```

## Reset DB and WordPress

1. Run `bin/recreatedb clean`
2. Rerun WordPress installation

## How to load WordPress Sample

    `bin/import-sample.sh`
