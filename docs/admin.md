
## About AdminBar

Any users who has Contributor Roles or higher will see a AdminBar once they are logged in. The bar is at top of the 
website, but the `get_footer()` must be called to load all the JS files that actually loads it.

## Adding Admin Menu sidebar entry

1. Use action: `add_action( 'admin_menu', 'my_plugin_menu' );`

2. Inside the action method, build menu using on of following:

Add to existing top level menu item/page:
 
    add_dashboard_page()
    add_posts_page()
    add_media_page()
    add_pages_page()
    add_comments_page()
    add_theme_page()
    add_plugins_page()
    add_users_page()
    add_management_page()
    add_options_page()

Adding custom menu top level item/page:

    add_menu_page()
    add_object_page()
    add_utility_page()
    remove_menu_page()

Adding custom sub menu level item/page:

    add_submenu_page()
    remove_submenu_page()
    
* https://codex.wordpress.org/Adding_Administration_Menus
* https://wordpress.org/support/article/roles-and-capabilities/#manage_options - Roles and Capabilities