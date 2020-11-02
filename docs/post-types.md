https://wordpress.org/support/article/post-types/

All WordPress contents are stored in `wp_posts` table, and there some built-in types:

* Posts - Time sensitive content, like Blog post.
* Pages - Timeless content, like a information site Page.
* Attachments - It also uses `wp_postmeta` table for attachment content.
* Revisions - Content history.
* Navigation Menus - List of links. Edit by theme section.
* Custom CSS - Store "The Customizers Additional CSS screen"
* Changesets - Changesets are similar to revisions but specifically for the Customizer.

## Create custom post type

https://developer.wordpress.org/reference/functions/register_post_type/

See `zplugin/book-type/init.php`

