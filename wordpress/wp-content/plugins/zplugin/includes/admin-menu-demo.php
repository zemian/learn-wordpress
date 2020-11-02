<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// https://codex.wordpress.org/Adding_Administration_Menus

// This DEMO will add a sub-level menu item under the Settings top-level
/** Step 1. */
function zplugin_plugin_settings_menu() {
	add_options_page( 'ZPlugin Options', 'ZPlugin', 'manage_options', 'zplugin_manage_options', 'zplugin_plugin_options' );
}

/** Step 2 */
add_action( 'admin_menu', 'zplugin_plugin_settings_menu' );

/** Step 3. */
function zplugin_plugin_options() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo '<div class="wrap">';
	echo '<p>Here is where the form would go if I actually had options.</p>';
	echo '</div>';
}