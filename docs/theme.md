## Homepage: Index, FrontPage and Blog Pages

By defaut a theme would list all Posts in Index. You can create two Pages: FrontPage and Blog.
Then configure WP under Settings > Reading > "Your homepage displays" to switch to two pages
above. This is so that FrontPage can be a Page, and you can have separate Blog page to list Posts.

NOTE: A theme may override the content of the FrontPage and Blog pages you created! So adding 
content in there may or maynot be visible.

## Example

See `wordpress/wp-content/themes/ztheme`.

## Minimum Setup

1. Create `wordpress/wp-content/themes/<theme-name>` folder
2. Create `style.css` file with `Theme Name: <theme-name>` comment

NOTE: Remember to prefix all namings with `<theme-name>`.

See https://codex.wordpress.org/Theme_Development

## Functions

Add `functions.php` to add logic for theme. It can do pretty much what a plugin can.

## How to Add CSS and JavaScript files

Use `add_action('wp_enqueue_scripts')` action hook.

## Where are the template files?

Inside theme folder, you will have index.php, header.php or footer.php etc

* https://developer.wordpress.org/themes/basics/template-files/

## Other interesting Themes

* https://underscores.me/
* https://github.com/teamscops/bulmapress

## How to enable debug CSS/JS files

Use this config:

	define( 'SCRIPT_DEBUG', true );

## How to cleanup unused headers

https://bhoover.com/remove-unnecessary-code-from-your-wordpress-blog-header/

## WordPress template hierarchy

* https://developer.wordpress.org/themes/basics/template-hierarchy/
* https://developer.wordpress.org/files/2014/10/Screenshot-2019-01-23-00.20.04.png

## Themes Extras

* Widgets - A sidebar component
* Menus - Navigation Menu
* Background - Site page background image
* Templates - A post/page layout template

### Widgets

A custom widget is created by a plugin with `register_widget()` to a subclass of the `WP_Widget` class.

https://developer.wordpress.org/reference/classes/wp_widget/
