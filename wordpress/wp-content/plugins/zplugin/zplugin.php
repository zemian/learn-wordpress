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
//require_once( dirname( __FILE__ ) . '/includes/shortcode-hello.php' );
//require_once( dirname( __FILE__ ) . '/includes/shortcode-pagelist.php' );
//require_once( dirname( __FILE__ ) . '/includes/shortcode-wpdb.php' );
//require_once( dirname( __FILE__ ) . '/bookreview-type/init.php' );
require_once( dirname( __FILE__ ) . '/includes/my-rest-api.php' );