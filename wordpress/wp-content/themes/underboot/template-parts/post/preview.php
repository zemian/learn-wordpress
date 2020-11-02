<?php
/**
 * Template part for displaying posts preview on the Posts page
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package underboot
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<?php
	/**
	 * Post thumbnail display
	 * https://developer.wordpress.org/reference/functions/the_post_thumbnail/
	 *
	 */
	the_post_thumbnail( 
		'underboot-thumb-750-300', 
		array( 'class' => 'card-img-top img-fluid' ) 
	);
	?>
	
	<div class="card-body">
			<?php 
			the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
			?>
		<div class="entry-summary card-text">
			<?php underboot_entry_summary(); ?>
		</div>

    </div>

    <footer class="entry-meta card-footer">
      		<?php underboot_posted_on();?>
			<?php underboot_posted_by(); ?>
    </footer>
	
</article><!-- #post-<?php the_ID(); ?> -->