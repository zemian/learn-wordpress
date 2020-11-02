
## About AdminBar

Any users who has Contributor Roles or higher will see a AdminBar once they are logged in. The bar is at top of the 
website, but the `get_footer()` must be called to load all the JS files that actually loads it.

## Adding Admin sidebar entry

Use `add_action( 'admin_menu', 'my_plugin_menu' );`

* https://codex.wordpress.org/Adding_Administration_Menus
* https://wordpress.org/support/article/roles-and-capabilities/#manage_options - Roles and Capabilities