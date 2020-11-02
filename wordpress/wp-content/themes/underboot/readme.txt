=== UnderBoot ===
Contributors: dinevthemes
Tags: custom-background, custom-logo, custom-menu, theme-options, featured-images, threaded-comments, translation-ready
Requires at least: WordPress 4.7
Tested up to: WordPress 5.4
Requires PHP: 5.6
License: GNU General Public License v2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

== Description ==
UnderBoot is a Bootstrap 4 WordPress theme. Combination of Underscores starter theme and Bootstrap framework as a starting point for your next WordPress theme or website. WooCommerce support. Block editor support.

== Changelog ==

= 1.1.3 =
* Added: WP 5.5 new feature for logo display
* Fixed: The site title has link to the Homepage when the Homepage is current displayed
* Added: Tested up to And Requires PHP info
* Tested up to 5.5.1

= 1.1.2 =
* Changed: theme scripts code optimization
- Tested up to 5.4

= 1.1.1 =
* Added: wp_body_open hook since WordPress 5.2
* Changed: modified nav walker class - added hook to link's attr
* Fixed: images width CSS
* Fixed: underboot_setup function
* Changed: translation POT template file
* Changed: other minor changes

= 1.1.0 =
* Added: WooCommerce support
* Added: Block editor support
* Changed: main menu bar (see filter in the functions file, uncomment it to apply)
* Changed: increased the container width of the main content when the sidebar is disabled
* Added: modal search form
* Changed: posts thumbnail for List layout
* Removed: the_content_more_link hooked
* Fixed: markup compatibility issue for form fields by default
* Fixed: CSS issues for post image size
* Fixed: minor CSS issues
* Changed: theme description
* Added: License URI to main theme style file
* Added: Welcome Admin screen
* Added: Upsell section in the Customizer
* Changed: translation POT template

= 1.0.9 =
* Added: the option of drop-down menu mode
* Fixed: few minor CSS issues
* Changed: renaming some of the theme template part files
* Changed: improved single post and page layout
* Other minor changes

= 1.0.8 =
* Fixed: escape for value when generating a line of CSS from customizer values in header output.
* Changed: theme description

= 1.0.7 =
* Fixed: escape for some values from theme options
* Changed: re-organization of the theme template part files and inclusion for templates parts
* Changed: several functions moved from the functions file to Template tags functions file
* Fixed: not working search form in the alternative navigation bar of the main menu
* Fixed: CSS issues for the background color and content width
* Changed: theme screenshot
* Added: Theme URI
* Other minor changes

= 1.0.6 =
* Changed: README file, minor CSS changes

= 1.0.5 =
* Removed: removing unnecessary code and changing the default value in the Theme Costomizer
* Added: information to the README file about the theme requirement of PHP version
* Fixed: some of design issues

= 1.0.4 =
* Fixed: method of adding add_theme_support for background and custom header
* Removed: underboot_entry_title()
* Changed: sanitization functions for few settings of the Customizer
* Removed: method of adding a class through a filter of post_class in content-list template
* Removed: get_post_format() when calling a function get_template_part in the index and single templates
* Fixed: some of design issues

= 1.0.3 =
* Fixed: header banner should be included for only to a static front page
* Other minor changes

= 1.0.2 =
* Fixed: switching templates for the home page
* Removed: custom functions for pagination and thumbnail posts / used core functions instead
* Fixed: escaping function
* Fixed: the_excerpt() use
* Changed: screenshot of the theme
* Other fixes and changes as required by the review team

= 1.0.1 =
* Removed: unnecessary file
* Fixed: escaping function
* Fixed: removed the unresolved phrase from a screenshot.

= 1.0.0 =
* Initial release


== Resources ==

* Based on Underscores http://underscores.me/,
	(C) 2012-2019 Automattic, Inc.,
	[GPLv2 or later](https://www.gnu.org/licenses/gpl-2.0.html)
* Based on Bootstrap http://getbootstrap.com,
	(C) 2011-2019 Twitter, Inc.,
	[MIT] (https://github.com/twbs/bootstrap/blob/master/LICENSE)
* Used WP_Bootstrap_Navwalker Class https://github.com/wp-bootstrap/wp-bootstrap-navwalker,
	(c) Edward McIntyre - @twittem, William Patton - @pattonwebz
	[GPL-3.0 or later](http://www.gnu.org/licenses/gpl-3.0.txt)