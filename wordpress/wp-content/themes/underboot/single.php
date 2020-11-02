<?php
/**
 * The template for displaying a single post 
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package underboot
 */

get_header();
underboot_content_wrapper_start();
?>

	<div id="primary" class="content-area<?php underboot_content_class(); ?>">
		<main id="main" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			/*
			 * Include the Post-Format-specific template for the content.
			 * If you want to override this in a child theme, then include a file
			 * called content-single-___.php (where ___ is the Post Format name) and that will be used instead.
			 */
			get_template_part( 'template-parts/post/single', get_post_format() );

			the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

		</main><!-- #main -->
	</div><!-- #primary -->
	
<?php
/* Get Sidebar #secondary */
get_sidebar();

underboot_content_wrapper_end();
get_footer();
