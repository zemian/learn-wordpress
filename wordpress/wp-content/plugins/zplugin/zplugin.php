<?php
/*
Plugin Name: ZPlugin
Plugin URI: 
Description: Zemian Plugin Exploration DEMO
Version: 1.0.0
Author: Zemian Deng
Author URI: 
Text Domain: zplugin
Domain Path: /languages
*/

// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// Bring in different test files
require_once( dirname( __FILE__ ) . '/includes/admin-config.php' );
require_once( dirname( __FILE__ ) . '/includes/shortcode-demo.php' );
require_once( dirname( __FILE__ ) . '/includes/db-wpdb-demo.php' );
require_once( dirname( __FILE__ ) . '/includes/admin-menu-demo.php' );
require_once( dirname( __FILE__ ) . '/book-type/init.php' );