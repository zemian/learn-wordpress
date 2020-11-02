<?php
// The wp_enqueue_scripts action is needed to load the child style and the parent style.
// See https://developer.wordpress.org/themes/advanced-topics/child-themes/
add_action( 'wp_enqueue_scripts', 'twentytwenty_child_enqueue_styles' );
function twentytwenty_child_enqueue_styles() {
	wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}