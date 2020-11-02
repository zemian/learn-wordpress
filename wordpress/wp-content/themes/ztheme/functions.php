<?php
/**
 * Theme function definitions
 * 
 * The functions.php file behaves like a WordPress plugin, adding features and functionality to a WordPress site. You can use it to call WordPress functions and to define your own functions.
 * https://developer.wordpress.org/themes/basics/theme-functions/
 */


// ## Remove unused headers
remove_action ('wp_head', 'rsd_link');
remove_action( 'wp_head', 'wlwmanifest_link');
// remove_action( 'wp_head', 'wp_shortlink_wp_head');
remove_action('wp_head', 'wp_generator');

// ## Add CSS & Style
function ztheme_scripts() {
	wp_enqueue_style( 'ztheme-fontawesome', "https://use.fontawesome.com/releases/v5.2.0/css/all.css" );
	wp_enqueue_style( 'ztheme-bulma', get_template_directory_uri() . '/bulma.css' );
	wp_enqueue_script( 'ztheme-vuejs', get_template_directory_uri() . '/vue.js', array(), false, true );
}
add_action( 'wp_enqueue_scripts', 'ztheme_scripts' );
