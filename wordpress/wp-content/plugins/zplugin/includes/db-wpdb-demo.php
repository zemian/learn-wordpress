<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// https://developer.wordpress.org/reference/classes/wpdb/
// WordPress provides a global object, $wpdb, which is an instantiation of the wpdb class.
// By default, $wpdb is instantiated to talk to the WordPress database.

function zplugin_shortcode_zpwpdb() {
	// 1st Method - Declaring $wpdb as global and using it to execute an SQL query statement that returns a PHP object
	global $wpdb;
	$results = $wpdb->get_results( "SELECT * FROM {$wpdb->prefix}options WHERE option_id = 1", OBJECT );
	$ret = var_export($results, true);
	return "<pre>$ret</pre>";
}

add_shortcode( 'zpwpdb', 'zplugin_shortcode_zpwpdb' );
