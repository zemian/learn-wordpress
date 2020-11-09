The quickest way to reset and get a clean install of WP is get latest code and 
then run the 5-minutes setup on a new DB instance.

See readme.md for full detail instructions.

```
cd work
git clone https://github.com/WordPress/WordPress wordpress-clean
cd wordpress-clean
# Use a specific version if needed to
# git checkout 5.5.2 
php -S localhost:3000
# Copy wp-config-sample.php wp-config.php and enter DB user/password 
http://localhost:3000/wp-admin/install.php
```

## Reinstall an existing site

1. Drop the database
2. Remove wp-config.php file
3. Open http://localhost:3000/wp-admin/install.php
