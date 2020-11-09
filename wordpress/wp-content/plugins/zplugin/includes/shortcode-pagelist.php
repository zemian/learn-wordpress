<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// Shortcode to get list of pages from a parent page.
function zplugin_shortcode_zpluginpagelist($atts = [], $content = null, $tag = '') {
	$page_id = $atts['pageid'] ?? 0 ;
	return wp_list_pages(['echo' => false, 'child_of' => $page_id, 'title_li' => '']);
}
add_shortcode( 'zpluginpagelist', 'zplugin_shortcode_zpluginpagelist' );
