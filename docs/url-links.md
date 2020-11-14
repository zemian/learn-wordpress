## How to change WP URL

Update DB `wp_options` table.

See https://wordpress.org/support/article/changing-the-site-url

## Setup WP Address vs Site URL

How to run WP on http://localhost but deploy in http://localhost/wordpress 

Admin > Settings > General

"WordPress Address (URL)" vs "Site Address (URL)"

1. Deploy `<doc_root>/wordpress` 
2. Copy (not move) `.htaccess` and `index.php` into `<doc_root>`

See https://wordpress.org/support/article/giving-wordpress-its-own-directory/

## How WordPress Organize Links

WordPress offers you the ability to create a custom URL structure for your permalinks and archives.

Go to Admin > Settings > Permalinks

The default is `http://localhost/wordpress/index.php/2020/11/09/sample-post/` 

## What else can use in the WP URL?

See https://codex.wordpress.org/WordPress_Query_Vars

Here are common ones.

http://localhost/wordpress/index.php?p=123 - Get Post ID 123.
http://localhost/wordpress/index.php?post_type=bookreview - Get list of post for certain type
http://localhost/wordpress/?cat=uncategorized&tag=coll - Get list of post that match category and tag

## The `wp_links` Table

The `wp_links` table is deprecated and not used by default. If you want, you can download 
the `LinksManager` plugin to use it.

## How to setup WordPress pretty URL

### Apache HTTPD

Use `mod_rewrite` and `.htaccess` file:

```
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
```

### Lighttpd

Enable `server.modules += ("mod_rewrite")`

And then add the following:

```
$HTTP["host"] =~ "(www.)?myhost.com" {
	url.rewrite = (
		"^/(.*)\.(.+)$" => "$0",
		"^/(.+)/?$" => "/index.php/$1"
	)

	[...other unrelated configurations...]
}
```

## Refs

* https://dmjcomputerservices.com/blog/passing-url-parameters-to-a-wordpress-page/
* https://www.guyrutenberg.com/2008/05/24/clean-urls-permalinks-for-wordpress-on-lighttpd/
