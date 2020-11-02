## Example

See `wordpress/wp-content/zform`.

## Mininum Setup

Minimun file is . 

1. Create `wordpress/wp-content/plugins/<theme-name>` folder
2. Create `<plugin-name>.php` with `Plugin Name: <plugin-name>` comment

NOTE: Remember to prefix all namings with `<plugin-name>`.

See https://codex.wordpress.org/Theme_Development

## Adding Hooks

Use [`add_action()`](https://developer.wordpress.org/plugins/hooks/actions/) to add WP hooks to add functionalities with plugin.

Some frequent use of [action hooks](https://codex.wordpress.org/Plugin_API/Action_Reference) are:

* `init` - After WP is initialized
* `wp_head` - Call when `<head>` tag is rendering
* `wp_footer` - Call when `<head>` tag is rendering

## Shortcodes

Use `add_shortcode()`