<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// This DEMO will add a top menu item/page and then a sub menu item/page
// https://codex.wordpress.org/Adding_Administration_Menus

function zplugin_add_menu_zplugin() {
	// Icons ref: https://developer.wordpress.org/resource/dashicons/#index-card
	add_menu_page('ZPlugin Page', 'ZPlugin', 'manage_options', 'zplugin', 'zplugin_menu_zplugin_page', 'dashicons-index-card', 2);
	add_submenu_page( 'zplugin', 'Zplugin SubMenu Page', 'SubMenu', 'manage_options', 'zplugin_submenu', 'zplugin_menu_zplugin_submenu_page');
}
add_action( 'admin_menu', 'zplugin_add_menu_zplugin' );

function zplugin_menu_zplugin_page() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo "<div class='wrap''>";
	echo "<h1>ZPlugin Top Page</h1>";
	echo "<p>I have more options under <b>Settings</b> menu.</p>";
	echo "<p>This page slug=zplugin</p>";
	echo "</div>";
}

function zplugin_menu_zplugin_submenu_page() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo "<div class='wrap''>";
	echo "<h1>ZPlugin Sub Page</h1>";
	echo "<p>Just to show that we can create submenu easily.</p>";
	echo "<p>This page slug=zplugin_submenu</p>";
	echo "</div>";
}