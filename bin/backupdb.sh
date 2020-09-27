#!/bin/sh
mysqldump --single-transaction \
--quick \
--no-autocommit \
--extended-insert=false \
-u root \
wordpressdb > db/wordpressdb.sql
