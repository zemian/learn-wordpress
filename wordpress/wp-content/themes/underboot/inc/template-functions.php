<?php
/**
 * Functions which hooking
 *
 * @package underboot
 */
 
/**
 * Add a pingback url auto-discovery header for single posts, pages, or attachments.
 */
function underboot_pingback_header() {
	if ( is_singular() && pings_open() ) {
		echo '<link rel="pingback" href="', esc_url( get_bloginfo( 'pingback_url' ) ), '">';
	}
}
add_action( 'wp_head', 'underboot_pingback_header' );

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
function underboot_body_classes( $classes ) {
    /* using mobile browser */
    if ( wp_is_mobile() ){
        $classes[] = 'wp-is-mobile';
    }
    else{
        $classes[] = 'wp-is-not-mobile';
    }	
	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}
	// Adds a class if the front-page
	if ( is_front_page() ) {
		$classes[] = 'front-page';
	}
	// Adds a class if the customizer preview
	if ( is_customize_preview() ) {
		$classes[] = 'customizer-preview';
	}
	// Adds a class of custom-background-image to sites with a custom background image.
	if ( get_background_image() ) {
		$classes[] = 'custom-background-image';
	}
	// Adds a class of group-blog to sites with more than 1 published author.
	if ( is_multi_author() ) {
		$classes[] = 'group-blog';
	}
	// Adds a class of no-sidebar to sites without active sidebar.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}

	return $classes;
}
add_filter( 'body_class', 'underboot_body_classes' );

/**
 * Adds custom classes to the array of post classes.
 *
 * @param array $classes Classes for the article element.
 * @return array
 */
function underboot_post_classes( $classes ) {
	$classes[] = ( has_post_thumbnail() ? 'has-thumbnail' : 'no-thumbnail' );
	
	if ( is_front_page() || is_home() || is_archive() ) {
		$classes[] = 'post-preview';
	}

	if ( is_singular( array('post', 'page') ) && ! is_front_page() ) {
		$classes[] = 'card mb-4';
	}
	
	if ( is_home() || is_archive() ) {
		$classes[] = 'card mb-4';
	}
	
	return $classes;
}
add_action( 'post_class', 'underboot_post_classes' );

/**
 * Hooked in the layout of a single post/page.
 */
function underboot_card_wrap_start(){
	echo '<div class="card-body">';
}
function underboot_card_wrap_end(){
	echo '</div><!--.card-body-->';
}
add_action( 'underboot_header_before', 'underboot_card_wrap_start' );
add_action( 'underboot_article_end', 'underboot_card_wrap_end' );

/**
 * Replaces "[...]" (appended to automatically generated excerpts) with ... and
 * a 'Continue reading' link.
 *
 * @return string 'Continue reading' link prepended with an ellipsis.
 */
function underboot_excerpt_more( $link ) {
	if ( is_admin() ) {
		return $link;
	}
	if ( get_theme_mod( 'more_link' ) ) {
		$link = '...';
		$link .= sprintf( '<p><a href="%1$s" class="more-link btn btn-primary">%2$s</a></p>',
			esc_url( get_permalink( get_the_ID() ) ),
			/* translators: %2$s: Name of current post */
			sprintf( __( '%1$s<span class="screen-reader-text">%2$s</span>', 'underboot' ), esc_html( get_theme_mod( 'more_link' ) ), get_the_title( get_the_ID() ) )
		);
	} else {
		$link = '...';
	}
	return $link;
}
add_filter( 'excerpt_more', 'underboot_excerpt_more' );

/**
 * Responsive Image class from Bootstrap
 * which appended to automatically generated image classes
 */
function underboot_bootstrap_class_images( $html ){
	$classes = 'img-fluid'; // separated by spaces, e.g. 'img image-link'
	// check if there are already classes assigned to the anchor
	if ( preg_match('/<img.*? class="/', $html) ) {
		$html = preg_replace('/(<img.*? class=".*?)(".*?\/>)/', '$1 ' . $classes . '$2', $html);
	} else {
		$html = preg_replace('/(<img.*?)(\/>)/', '$1 class="' . $classes . '"$2', $html);
	}
	return $html;
}
add_filter( 'the_content','underboot_bootstrap_class_images', 10 );

/**
 * Added table class from Bootstrap
 */
function underboot_bootstrap_table_class( $content ){
    return str_replace( '<table', '<table class="table"', $content );
}
add_filter( 'the_content', 'underboot_bootstrap_table_class' );

/**
 * Adds a class to the navigation links of posts
 */
function underboot_posts_link_attributes() {
	return 'class="btn btn-light"';
}
add_filter('next_posts_link_attributes', 'underboot_posts_link_attributes');
add_filter('previous_posts_link_attributes', 'underboot_posts_link_attributes');

/**
 * Comment form container.
 */
function underboot_comment_form_wrap_start(){
	echo '<div class="card my-4"><div class="card-body">';
}
function underboot_comment_form_wrap_end(){
	echo '</div></div>';
}
add_action( 'comment_form_after', 'underboot_comment_form_wrap_end' );
add_action( 'comment_form_before', 'underboot_comment_form_wrap_start' );

/**
 * Add custom class to comment reply link.
 */
function underboot_comment_reply_link( $content ) {
    $extra_classes = 'btn btn-primary';
    return preg_replace( '/comment-reply-link/', 'comment-reply-link ' . $extra_classes, $content );
}
add_filter( 'comment_reply_link', 'underboot_comment_reply_link', 99 );

/**
 * Custom Excerpt lengths.
 */
function underboot_custom_excerpt_length() {
    return 16;
}
add_filter( 'excerpt_length', 'underboot_custom_excerpt_length' );

/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @param string $template front-page.php.
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function underboot_front_page( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'underboot_front_page' );