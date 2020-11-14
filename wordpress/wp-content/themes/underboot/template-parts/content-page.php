<?php
/**
 * Template part for displaying page content
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package underboot
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<?php do_action( 'underboot_article_start' ); ?>
<?php
	/**
	 * Post thumbnail display
	 * https://developer.wordpress.org/reference/functions/the_post_thumbnail/
	 *
	 */
	the_post_thumbnail(
		'underboot-featured-900-600',
		array( 'class' => 'img-fluid rounded mb-2' )
	);
	?>

<?php do_action( 'underboot_header_before' ); ?>
	
	<header class="entry-header pb-4">
		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
	</header>

	<div class="entry-content">
		<?php
		the_content();

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'underboot' ),
			'after'  => '</div>',
		) );
		?>
	</div>

	<?php if ( get_edit_post_link() ) : ?>
		<footer class="entry-footer">
			<?php
				edit_post_link(
					sprintf(
						/* translators: %s: Name of current page */
						__( 'Edit<span class="screen-reader-text"> "%s"</span>', 'underboot' ),
						get_the_title()
					),
					'<footer class="entry-footer"><span class="edit-link">',
					'</span></footer>'
				);
			?>
		</footer>
	<?php endif; ?>

<?php do_action( 'underboot_article_end' ); ?>
</article><!-- #post-<?php the_ID(); ?> -->
