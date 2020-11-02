<?php
/**
 * Template part for displaying posts preview on the Posts page
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package underboot
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class('flex-md-row box-shadow h-md-250'); ?>>

		<div class="card-body d-flex flex-column align-items-start">
			<?php 
			the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
			?>

			<div class="entry-meta mb-1">
				<?php underboot_posted_on();?>
				<?php underboot_posted_by(); ?>
			</div>

			<div class="entry-summary card-text mb-auto">
				<?php underboot_entry_summary(); ?>
			</div>
		</div>
			<?php
				/**
				 * Post thumbnail display
				 * https://developer.wordpress.org/reference/functions/the_post_thumbnail/
				 *
				 */
				the_post_thumbnail( 
					'underboot-thumb-v-200-270',  
					array( 'class' => 'align-self-center card-img-right flex-auto d-none d-lg-block' ) 
				);
			?>
	
</article><!-- #post-<?php the_ID(); ?> -->