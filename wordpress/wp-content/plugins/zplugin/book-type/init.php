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
// List of posts: http://localhost:3000/wordpress/index.php?post_type=book
// Single post: http://localhost:3000/wordpress/index.php/book/book1/


// Custom Book Type
function zplugin_register_book_type() {
	$labels = array(
		'name'               => _x( 'Books', 'post type general name' ),
		'singular_name'      => _x( 'Book', 'post type singular name' ),
		'add_new'            => _x( 'Add New', 'book' ),
		'add_new_item'       => __( 'Add New Book' ),
		'edit_item'          => __( 'Edit Book' ),
		'new_item'           => __( 'New Book' ),
		'all_items'          => __( 'All Books' ),
		'view_item'          => __( 'View Book' ),
		'search_items'       => __( 'Search Books' ),
		'not_found'          => __( 'No Books found' ),
		'not_found_in_trash' => __( 'No Books found in the Trash' ),
		'parent_item_colon'  => ':',
		'menu_name'          => 'Books'
	);
	$args = array(
		'labels'        => $labels,
		'description'   => 'Holds our Books and Book specific data',
		'public'        => true,
		'menu_position' => 5,
		'supports'      => array( 'title', 'editor', 'thumbnail', 'excerpt', 'comments'),
		'has_archive'   => true,
		'show_in_rest'  => true, /* This will enable the Gutenberg editor! */
		
		// TODO: This is not working yet?
//		'taxonomies'    => array( 'book_category' ),
	);
	register_post_type( 'book', $args );
}
add_action( 'init', 'zplugin_register_book_type' );


// Book Categories
function zplugin_taxonomies_book() {
	$labels = array(
		'name'              => _x( 'Book Categories', 'taxonomy general name' ),
		'singular_name'     => _x( 'Book Category', 'taxonomy singular name' ),
		'search_items'      => __( 'Search Book Categories' ),
		'all_items'         => __( 'All Book Categories' ),
		'parent_item'       => __( 'Parent Book Category' ),
		'parent_item_colon' => __( 'Parent Book Category:' ),
		'edit_item'         => __( 'Edit Book Category' ),
		'update_item'       => __( 'Update Book Category' ),
		'add_new_item'      => __( 'Add New Book Category' ),
		'new_item_name'     => __( 'New Book Category' ),
		'menu_name'         => __( 'Book Categories' ),
	);
	$args = array(
		'labels' => $labels,
		'hierarchical' => true,
	);
	register_taxonomy( 'book_category', 'book', $args );
}
add_action( 'init', 'zplugin_taxonomies_book', 0 );

// Book Rating Meta Box
function zplugin_book_rating_box_content( $post ) {
	wp_nonce_field( plugin_basename( __FILE__ ), 'book_rating_box_content_nonce' );
	$book_rating = get_post_meta( $post->ID, 'book_rating', true );
	echo '<label for="book_rating"></label>';
	echo '<input type="text" id="book_rating" name="book_rating" placeholder="enter a rating" value="' . $book_rating . '"/>';
}
function zplugin_book_rating_box() {
	add_meta_box(
		'book_rating_box',
		'Book Rating',
		'zplugin_book_rating_box_content',
		'book',
		'side',
		'high'
	);
}
add_action( 'add_meta_boxes', 'zplugin_book_rating_box' );
function zplugin_book_rating_box_save( $post_id ) {

	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE )
		return;

	if ( !wp_verify_nonce( $_POST['book_rating_box_content_nonce'], plugin_basename( __FILE__ ) ) )
		return;

	if ( 'page' == $_POST['post_type'] ) {
		if ( !current_user_can( 'edit_page', $post_id ) )
			return;
	} else {
		if ( !current_user_can( 'edit_post', $post_id ) )
			return;
	}
	$book_rating = $_POST['book_rating'];
	update_post_meta( $post_id, 'book_rating', $book_rating );
}
add_action( 'save_post', 'zplugin_book_rating_box_save' );
