<?php
/**
 * Template part for displaying Single post
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

	<header class="entry-header">
		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
	</header>

	<hr>
		<div class="entry-meta">
			<?php underboot_posted_on(); ?>
			<?php underboot_posted_by(); ?>
		</div>
	<hr>
	
	<?php
		if ( has_excerpt() ) :
		?>
		<div class="lead"><?php the_excerpt(); ?></div>
	<?php
		endif;
		?>

	<div class="entry-content">
		<?php
			the_content( sprintf(
				/* translators: %s: Name of current post. Only visible to screen readers */
				esc_html__( 'Continue reading%s', 'underboot' ),
				'<span class="screen-reader-text">' . get_the_title() . '</span>'
			) );

			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'underboot' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer">
		<?php underboot_entry_footer(); ?>
	</footer>

<?php do_action( 'underboot_article_end' ); ?>
</article><!-- #post-<?php the_ID(); ?> -->