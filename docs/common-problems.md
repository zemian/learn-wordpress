## Changing Base URL

If you decided to change the web server url after installation after the install, then you need to update the following 
in `wp_options` DB table rows:

```
siteurl http://localhost:3000/wordpress
home http://localhost:3000/wordpress
```

Or you may change and hardcode it in the `wordpress/wp-config.php` file:

	define( 'WP_HOME', 'http://localhost:3000/wordpress' );
	define( 'WP_SITEURL', 'http://localhost:3000/wordpress' );

## Restoring Clean WP DB

If you need restore clean DB for testing on this project, run `bin/restorecleandb.sh`


## How to enable debug log

https://wordpress.stackexchange.com/questions/260236/how-to-put-logs-in-wordpress

```
// Enable WP_DEBUG mode
define( 'WP_DEBUG', true );

// Enable Debug logging to the /wp-content/debug.log file
define( 'WP_DEBUG_LOG', true );
```

Now we can use `write_log()` or `error_log()`.

NOTE: The `Query Monitor` is an excellent plugin for debugging SQL queries and many other WP info!

## How to convert Post to Page

Use a plugin: https://wordpress.org/plugins/post-type-switcher/

See https://www.elegantthemes.com/blog/tips-tricks/how-to-change-a-post-to-a-page-in-wordpress-and-why-youd-want-to

## Customizing Menus

Menus are located under "Appearance > Menus"!

You need to Create a Menu object, then you can add either Post, Page or Links
as menu items. 

In order to diplay it, it depends on the Theme you used. Some might use multiple Menu objects for display size of responsive screen size.

## Beware of WordPress.com shortcodes

The shortcodes listed under https://wordpress.com/support/shortcodes/ are only available when you use WP in their site. The default vanilla built-in WP instance (from wordpress.org) does not have these! Here are list of built-in shortcodes only https://codex.wordpress.org/Shortcode#Built-In_and_Additional_Shortcodes

## How to process POST request

https://www.sitepoint.com/handling-post-requests-the-wordpress-way/
