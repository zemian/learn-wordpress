<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// This DEMO will add a sub-level menu item under the Settings top-level
// https://codex.wordpress.org/Adding_Administration_Menus

/** Step 1. */
function zplugin_menu_add_settings() {
	add_options_page( 
		'ZPlugin Options',              /* page title */
		'ZPlugin',                      /* menu title */
		'manage_options',               /* capability */
		'zplugin_setting_opts',         /* menu_slug - accessible using 'page' parameter. */
		'zplugin_menu_setting_options'  /* function - content page callback */
	);
}

/** Step 2 */
add_action( 'admin_menu', 'zplugin_menu_add_settings' );

/** Step 3. */
function zplugin_menu_setting_options() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo '<div class="wrap">';
	echo '<p>Here is where the form would go if I actually had options.</p>';
	echo '</div>';
}