<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// This DEMO will add a top menu item/page and then a sub menu item/page
// https://codex.wordpress.org/Adding_Administration_Menus

function zplugin_add_menu_zplugin() {
	add_menu_page('ZPlugin Page', 'ZPlugin', 'manage_options', 'zplugin', 'zplugin_menu_zplugin_page');
	add_submenu_page( 'zplugin', 'Zplugin SubMenu Page', 'Zplugin SubMenu', 'manage_options', 'zplugin_submenu', 'zplugin_menu_zplugin_submenu_page');
}
add_action( 'admin_menu', 'zplugin_add_menu_zplugin' );

function zplugin_menu_zplugin_page() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo '<div class="wrap">';
	echo '<p>ZPlugin Top Level Page</p>';
	echo '</div>';
}

function zplugin_menu_zplugin_submenu_page() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo '<div class="wrap">';
	echo '<p>ZPlugin SubMenu Page</p>';
	echo '</div>';
}