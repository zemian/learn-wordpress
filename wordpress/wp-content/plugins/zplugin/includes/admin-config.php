<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// Disable AutoSave feature
add_action( 'admin_init', 'disable_autosave' );
function disable_autosave() {
	wp_deregister_script( 'autosave' );
}

// We can also disable Revision save with this constant
// define('WP_POST_REVISIONS', false );