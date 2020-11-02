## Example

See `wordpress/wp-content/themes/ztheme`.

## Minimum Setup

1. Create `wordpress/wp-content/themes/<theme-name>` folder
2. Create `style.css` file with `Theme Name: <theme-name>` comment

NOTE: Remember to prefix all namings with `<theme-name>`.

See https://codex.wordpress.org/Theme_Development

## Fuctions

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
