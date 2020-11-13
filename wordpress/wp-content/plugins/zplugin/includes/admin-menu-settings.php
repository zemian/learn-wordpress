<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// This DEMO will add a sub-level menu item under the Settings top-level
// https://codex.wordpress.org/Adding_Administration_Menus

/** Step 1. */
function zplugin_add_menu_settings_opts() {
	add_options_page( 
		'ZPlugin Options',              /* page title */
		'ZPlugin',                      /* menu title */
		'manage_options',               /* capability */
		'zplugin_settings_opts',         /* menu_slug - accessible using 'page' parameter. */
		'zplugin_menu_settings_options'  /* function - content page callback */
	);
}

/** Step 2 */
add_action( 'admin_menu', 'zplugin_add_menu_settings_opts' );

/** Step 3. */
function zplugin_menu_settings_options() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	
	$admin_url = admin_url();
	$site_url = site_url();
	echo "<div class='wrap''>";
	echo "<h1>ZPlugin Settings > Options</h1>";
	echo "<p>This page slug=zplugin_settings_opts</p>";
	echo "<p>Admin URL : $admin_url</p>";
	echo "<p>Site URL : $site_url</p>";
	echo "</div>";
}