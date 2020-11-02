<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// Shortcode to display hello world text.
function zplugin_shortcode_hello() {
	return "<p>Hello World!</p>";
}
add_shortcode( 'zphello', 'zplugin_shortcode_hello' );

// Shortcode to get list of pages from a parent page.
function zplugin_shortcode_pagelist($atts = [], $content = null, $tag = '') {
	$page_id = $atts['pageid'] ?? 0 ;
	return wp_list_pages(['echo' => false, 'child_of' => $page_id, 'title_li' => '']);
}
add_shortcode( 'zppagelist', 'zplugin_shortcode_pagelist' );
