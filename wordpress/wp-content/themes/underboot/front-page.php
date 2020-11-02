<?php
/**
 *
 * The front page template file
 *
 * If the user has selected a static page for their homepage, this is what will
 * appear.
 * Learn more: https://codex.wordpress.org/Template_Hierarchy
 *
 */

get_header();
underboot_content_wrapper_start();
?>

	<div id="primary" class="content-area col-md-12">
		<main id="main" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/front-page/content' );

		endwhile; // End of the loop.
		?>

		</main>
	</div><!-- #primary -->

<?php
underboot_content_wrapper_end();
get_footer();