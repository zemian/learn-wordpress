<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// Shortcode to access the DB directly usign $wpdb global var.
function zplugin_shortcode_wpdb() {
	// 1st Method - Declaring $wpdb as global and using it to execute an SQL query statement that returns a PHP object
	global $wpdb;
	$results = $wpdb->get_results( "SELECT * FROM {$wpdb->prefix}options WHERE option_id = 1", OBJECT );
	$ret = var_export($results, true);
	return "<pre>$ret</pre>";
}

add_shortcode( 'zpluginwpdb', 'zplugin_shortcode_wpdb' );
