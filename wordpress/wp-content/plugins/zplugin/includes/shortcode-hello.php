<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// Shortcode to display hello world text.
function zplugin_shortcode_hello() {
	return "<p>Hello World!</p>";
}
add_shortcode( 'zpluginhello', 'zplugin_shortcode_hello' );
