#!/bin/sh
mysqldump --single-transaction \
--quick \
--no-autocommit \
--extended-insert=false \
-u root \
wordpresscleandb > db/wordpresscleandb.sql
