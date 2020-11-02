## About

This repository contains a WordPress site that tries to mimic the [Ultimate Window Tinting](https://orlandotint.com/)

## Initial Setup

```
# Get a clean copy of WordPress
git checkout -b site-windows-tint wordpress-5.5.3-clean
bin/createdb.sh wptintdb
open http://localhost:3000/wordpress/wp-admin/install.php
# Follow screen setup process

# When site is complete, edit bin/*db.sh files and replace "wordpressdb" to "wptintdb"
# and then make a backup
bin/backupdb.sh
```