<?php
// These code is based on https://www.smashingmagazine.com/2012/11/complete-guide-custom-post-types/


// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

// IMPORTANT: You must update your permalinks in Admin > Settings (without changes) to refresh
// the DB before you may view any of these newly created custom posts!
//
// Example on how to access these posts without customizing template:
// List of posts: http://localhost/wordpress/?post_type=bookreview
// List of posts (alternative): http://localhost/wordpress/index.php/bookreview/
// Single post: http://localhost/wordpress/index.php/bookreview/book-3/


// Custom BookReview Type
function zplugin_register_bookreview_type() {
	$labels = array(
		'name'               => _x( 'BookReviews', 'post type general name' ),
		'singular_name'      => _x( 'BookReview', 'post type singular name' ),
		'add_new'            => _x( 'Add New', 'BookReview' ),
		'add_new_item'       => __( 'Add New BookReview' ),
		'edit_item'          => __( 'Edit BookReview' ),
		'new_item'           => __( 'New BookReview' ),
		'all_items'          => __( 'All BookReviews' ),
		'view_item'          => __( 'View BookReview' ),
		'search_items'       => __( 'Search BookReviews' ),
		'not_found'          => __( 'No BookReviews found' ),
		'not_found_in_trash' => __( 'No BookReviews found in the Trash' ),
		'parent_item_colon'  => ':',
		'menu_name'          => 'BookReviews'
	);
	$args = array(
		'labels'        => $labels,
		'description'   => 'Holds our BookReviews and BookReview specific data',
		'public'        => true,
		'menu_position' => 5,
		'supports'      => array( 'title', 'editor', 'thumbnail', 'excerpt', 'comments'),
		'has_archive'   => true,
		'show_in_rest'  => true, /* This will enable the Gutenberg editor! */
		
		// TODO: This is not working yet?
//		'taxonomies'    => array( 'bookreview_category' ),
	);
	register_post_type( 'BookReview', $args );
}
add_action( 'init', 'zplugin_register_bookreview_type' );


// BookReview Categories
function zplugin_taxonomies_BookReview() {
	$labels = array(
		'name'              => _x( 'BookReview Categories', 'taxonomy general name' ),
		'singular_name'     => _x( 'BookReview Category', 'taxonomy singular name' ),
		'search_items'      => __( 'Search BookReview Categories' ),
		'all_items'         => __( 'All BookReview Categories' ),
		'parent_item'       => __( 'Parent BookReview Category' ),
		'parent_item_colon' => __( 'Parent BookReview Category:' ),
		'edit_item'         => __( 'Edit BookReview Category' ),
		'update_item'       => __( 'Update BookReview Category' ),
		'add_new_item'      => __( 'Add New BookReview Category' ),
		'new_item_name'     => __( 'New BookReview Category' ),
		'menu_name'         => __( 'BookReview Categories' ),
	);
	$args = array(
		'labels' => $labels,
		'hierarchical' => true,
	);
	register_taxonomy( 'bookreview_category', 'BookReview', $args );
}
add_action( 'init', 'zplugin_taxonomies_BookReview', 0 );

// BookReview Rating Meta Box
function zplugin_bookreview_rating_box_content( $post ) {
	wp_nonce_field( plugin_basename( __FILE__ ), 'bookreview_rating_box_content_nonce' );
	$bookreview_rating = get_post_meta( $post->ID, 'bookreview_rating', true );
	echo '<label for="bookreview_rating"></label>';
	echo '<input type="text" id="bookreview_rating" name="bookreview_rating" placeholder="enter a rating" value="' . $bookreview_rating . '"/>';
}
function zplugin_bookreview_rating_box() {
	add_meta_box(
		'bookreview_rating_box',
		'BookReview Rating',
		'zplugin_bookreview_rating_box_content',
		'BookReview',
		'side',
		'high'
	);
}
add_action( 'add_meta_boxes', 'zplugin_bookreview_rating_box' );
function zplugin_bookreview_rating_box_save( $post_id ) {

	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE )
		return;

	if ( !wp_verify_nonce( $_POST['bookreview_rating_box_content_nonce'], plugin_basename( __FILE__ ) ) )
		return;

	if ( 'page' == $_POST['post_type'] ) {
		if ( !current_user_can( 'edit_page', $post_id ) )
			return;
	} else {
		if ( !current_user_can( 'edit_post', $post_id ) )
			return;
	}
	$bookreview_rating = $_POST['bookreview_rating'];
	update_post_meta( $post_id, 'bookreview_rating', $bookreview_rating );
}
add_action( 'save_post', 'zplugin_bookreview_rating_box_save' );
