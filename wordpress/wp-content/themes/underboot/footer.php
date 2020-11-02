<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package underboot
 */

?>

	</div><!-- #content -->
	

	<footer id="colophon" class="site-footer py-5">

		<?php do_action('underboot_footer'); ?>

		<div class="container">
			<div class="site-info">
				<?php
					/* translators: %s: CMS name, i.e. WordPress. */
					printf( esc_html__( 'Powered by %s', 'underboot' ), '<a href="https://wordpress.org/">WordPress</a>' );
				?>
				<span class="sep"> | </span>
				<?php
					/* translators: 1: Theme name, 2: Theme author. */
					printf( esc_html__( 'Theme %1$s by %2$s', 'underboot' ), 'UnderBoot', '<a href="http://dinevthemes.com/">DinevThemes</a>' );
				?>
			</div><!-- .site-info -->
		</div><!-- .container -->

	</footer>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>