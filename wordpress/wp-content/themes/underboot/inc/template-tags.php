<?php
/**
 * Standalone Functions.
 *
 * Some of the functionality here could be replaced by core features.
 *
 * @package underboot
 */


if ( ! function_exists('underboot_content_wrapper_start') ) :
	/**
	 * Print start part of wrapper markup for site content
	 */
	function underboot_content_wrapper_start(){
		if( !is_search() && !is_404() ) {
			$content_wrapper = '<div class="container">';
			$content_wrapper .= '<div class="row">';
		} else {
			$content_wrapper = '<div class="container">';
		}

		$output = apply_filters('underboot_content_wrapper_start',$content_wrapper);
		echo $output;
	}
endif;

if ( ! function_exists('underboot_content_wrapper_end') ) :
	/**
	 * Print end part of wrapper markup for site content
	 */
	function underboot_content_wrapper_end(){
		if( !is_search() && !is_404() ) {
			$content_wrapper = '</div><!--/.row -->';
			$content_wrapper .= '</div><!--/.container -->';
		} else {
			$content_wrapper = '</div><!--/.container -->';
		}

		$output = apply_filters('underboot_content_wrapper_end',$content_wrapper);
		echo $output;
	}
endif;

if ( ! function_exists('underboot_entry_summary') ) :
	/**
	 *
	 * Template part which displays post excerpts on the posts page.
	 *
	 */
	function underboot_entry_summary(){

		global $post;
		$has_more = strpos( $post->post_content, '<!--more' );

		if ( $has_more ) {
			the_content();
		} else {
			the_excerpt();
		}

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'underboot' ),
			'after'  => '</div>',
		) );	
	}
endif;

if ( ! function_exists( 'underboot_posted_on' ) ) :
	/**
	 * Prints HTML with meta information for the current post-date/time.
	 */
	function underboot_posted_on() {
		$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';
		if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
			$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
		}

		$time_string = sprintf( $time_string,
			esc_attr( get_the_date( DATE_W3C ) ),
			esc_html( get_the_date() ),
			esc_attr( get_the_modified_date( DATE_W3C ) ),
			esc_html( get_the_modified_date() )
		);

		$posted_on = sprintf(
			/* translators: %s: post date. */
			esc_html_x( 'Posted on %s', 'post date', 'underboot' ),
			'<a href="' . esc_url( get_permalink() ) . '" rel="bookmark">' . $time_string . '</a>'
		);

		echo '<span class="posted-on">' . $posted_on . '</span>'; // WPCS: XSS OK.

	}
endif;

if ( ! function_exists( 'underboot_posted_by' ) ) :
	/**
	 * Prints HTML with meta information for the current author.
	 */
	function underboot_posted_by() {
		$byline = sprintf(
			/* translators: %s: post author. */
			esc_html_x( 'by %s', 'post author', 'underboot' ),
			'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . esc_html( get_the_author() ) . '</a></span>'
		);

		echo '<span class="byline">' . $byline . '</span>'; // WPCS: XSS OK.

	}
endif;

if ( ! function_exists( 'underboot_entry_footer' ) ) :
	/**
	 * Prints HTML with meta information for the categories, tags and comments.
	 */
	function underboot_entry_footer() {
		// Hide category and tag text for pages.
		if ( 'post' === get_post_type() ) {
			/* translators: used between list items, there is a space after the comma */
			$categories_list = get_the_category_list( esc_html__( ', ', 'underboot' ) );
			if ( $categories_list ) {
				/* translators: 1: list of categories. */
				printf( '<span class="cat-links">' . esc_html__( 'Posted in %1$s', 'underboot' ) . '</span>', $categories_list ); // WPCS: XSS OK.
			}

			/* translators: used between list items, there is a space after the comma */
			$tags_list = get_the_tag_list( '', esc_html_x( ', ', 'list item separator', 'underboot' ) );
			if ( $tags_list ) {
				/* translators: 1: list of tags. */
				printf( '<span class="tags-links">' . esc_html__( 'Tagged %1$s', 'underboot' ) . '</span>', $tags_list ); // WPCS: XSS OK.
			}
		}

		if ( ! is_single() && ! post_password_required() && ( comments_open() || get_comments_number() ) ) {
			echo '<span class="comments-link">';
			comments_popup_link(
				sprintf(
					wp_kses(
						/* translators: %s: post title */
						__( 'Leave a Comment<span class="screen-reader-text"> on %s</span>', 'underboot' ),
						array(
							'span' => array(
								'class' => array(),
							),
						)
					),
					get_the_title()
				)
			);
			echo '</span>';
		}

		edit_post_link(
			sprintf(
				wp_kses(
					/* translators: %s: Name of current post. Only visible to screen readers */
					__( 'Edit <span class="screen-reader-text">%s</span>', 'underboot' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
				),
				get_the_title()
			),
			'<span class="edit-link">',
			'</span>'
		);
	}
endif;


if ( ! function_exists( 'underboot_comment' ) ) :
    /**
     * Used as a callback by wp_list_comments() for displaying the comments.
     */
    function underboot_comment( $comment, $args, $depth ) {
        if ( 'pingback' == $comment->comment_type || 'trackback' == $comment->comment_type ) : ?>

            <li id="comment-<?php comment_ID(); ?>" <?php comment_class( 'media' ); ?>>
            <div class="comment-body">
                <?php esc_html_e( 'Pingback:', 'underboot' ); ?> <?php comment_author_link(); ?> <?php edit_comment_link( __( 'Edit', 'underboot' ), '<span class="edit-link">', '</span>' ); ?>
            </div>

<?php
		else : ?>

			<li id="comment-<?php comment_ID(); ?>" <?php comment_class( empty( $args['has_children'] ) ? '' : 'parent' ); ?>>
			<article id="div-comment-<?php comment_ID(); ?>" class="comment-body media mb-4">
                <a class="pull-left" href="#">
                    <?php if ( 0 != $args['avatar_size'] ) echo get_avatar( $comment, $args['avatar_size'], '', '', array( 'class' => 'rounded-circle' ) ); ?>
                </a>

                <div class="media-body">
                    <div class="media-body-wrap card">
                        <div class="card-header">
                            <h5 class="mt-0"><?php printf( __( '%s <span class="says">says:</span>', 'underboot' ), sprintf( '<cite class="fn">%s</cite>', get_comment_author_link() ) ); ?></h5>
                            <div class="comment-meta">
                                <a href="<?php echo esc_url( get_comment_link( $comment->comment_ID ) ); ?>">
                                    <time datetime="<?php comment_time( 'c' ); ?>">
                                        <?php printf( _x( '%1$s at %2$s', '1: date, 2: time', 'underboot' ), get_comment_date(), get_comment_time() ); ?>
                                    </time>
                                </a>
                                <?php edit_comment_link( __( '<span style="margin-left: 5px;" class="glyphicon glyphicon-edit"></span> Edit', 'underboot' ), '<span class="edit-link">', '</span>' ); ?>
                            </div>
                        </div>

                        <?php if ( '0' == $comment->comment_approved ) : ?>
                            <p class="comment-awaiting-moderation"><?php esc_html_e( 'Your comment is awaiting moderation.', 'underboot' ); ?></p>
                        <?php endif; ?>

                        <div class="comment-content card-block">
                            <?php comment_text(); ?>
                        </div><!-- .comment-content -->

                        <?php comment_reply_link(
                            array_merge(
                                $args, array(
                                    'add_below' => 'div-comment',
                                    'depth' 	=> $depth,
                                    'max_depth' => $args['max_depth'],
                                    'before' 	=> '<footer class="reply comment-reply card-footer">',
                                    'after' 	=> '</footer>'
                                )
                            )
                        ); ?>

                    </div>
                </div><!-- .media-body -->

			</article>
			</li>

            <?php
        endif;
    }
endif;


/**
 * Display the class for layout div wrapper.
 *
 * @param string|array $class
 * One or more classes to add to the class list.
 */
function underboot_layout_class( $classes = '' ) {
	// Separates classes with a single space
	echo 'class="' . join( ' ', underboot_set_layout_class( $classes ) ) . '"';
}

/**
 * Adds custom class.
 *
 * @param array $classes Classes for the div element.
 * @return array
 */
function underboot_set_layout_class( $class = '' ) {

	// Define classes array
	$classes = array();

	// Grid classes
	if ( ( is_home() || is_archive() ) && ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = '';
	}
	
	$classes = array_map( 'esc_attr', $classes );

	// Apply filters to entry post class for child theming
	$classes = apply_filters( 'underboot_set_layout_class', $classes );

	// Classes array
	return array_unique( $classes );
}

/**
 * Display the class for content wrapper div.
 *
 * @param string|array $class
 * One or more classes to add to the class list.
 */
function underboot_content_class( $classes = '' ) {
	// Separates classes with a single space
	echo ' ' . join( ' ', underboot_set_content_class( $classes ) );
}

/**
 * Adds custom class.
 *
 * @param array $classes Classes for the div element.
 * @return array
 */
function underboot_set_content_class( $class = '' ) {

	// Define classes array
	$classes = array();

	$classes[] = 'col-md-8';

	// Centered
	if ( ! is_active_sidebar( 'sidebar-1' ) || get_theme_mod( 'sidebar_position' ) === 'none' ) {
		$classes[] = 'offset-md-2';
	}
	
	$classes = array_map( 'esc_attr', $classes );

	// Apply filters to entry post class for child theming
	$classes = apply_filters( 'underboot_set_content_class', $classes );

	// Classes array
	return array_unique( $classes );
}

/**
 * Condition function.
 * This is a static front page and not the latest posts page.
 */
function underboot_is_frontpage() {
	return ( is_front_page() && ! is_home() );
}

/**
 * Appends additional items to the menu bar.
 * see ../template-parts/navigation/additional-items.php
 */
if ( ! function_exists( 'underboot_add_navbar_items' ) ) :
	function underboot_add_navbar_items(){
		$items = '';

		if ( get_theme_mod('show_search_menu_item') == true ) {
			$items .= '<div class="search-btn d-inline"><a href="#" data-toggle="modal" data-target="#searchModalCenter" class="dashicons dashicons-search"></a></div>';
		}
		if ( class_exists( 'WooCommerce' ) && get_theme_mod('show_cart_menu_item') == true ) {
			$cartcount =  WC()->cart->get_cart_contents_count();
			if ($cartcount > 0) {
				$cartcount_print = '<sup class="text-monospace">'.esc_attr($cartcount).'</sup>';
			}
			else {
				$cartcount_print = '';
			}
			$items .= '<div class="cart-btn pl-lg-2 d-inline"><a href="'.wc_get_cart_url().'" class="dashicons dashicons-cart">'.$cartcount_print.'</a></div>';
		}

		echo apply_filters( 'underboot_add_navbar_items', $items );
	}
endif;