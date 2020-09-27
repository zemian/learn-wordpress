## How to backup and restore DB for local dev

```
# Backup
mysqldump --single-transaction --quick --no-autocommit --extended-insert=false -u root wordpressdb > wordpressdb.sql

# Restore
mysql -f -u root wordpressdb < wordpressdb.sql
```

## DB Backup File Descriptions

* wordpressdb.sql - The initial installation of WordPress v5.4.2
