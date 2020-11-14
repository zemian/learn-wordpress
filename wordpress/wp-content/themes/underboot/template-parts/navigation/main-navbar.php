<?php
/**
 * Template part for displaying main navigation top-bar
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package underboot
 */

?>
<header id="masthead" class="site-header" role="banner">
	<nav class="navbar navbar-expand-md navbar-dark nav-bar-default">
		<div class="container">
			<!-- Your site title as branding in the menu -->
			<?php 
				if ( ! has_custom_logo() ) {
					if ( is_front_page() ) :
					?>
						<span class="navbar-brand mb-0">
							<?php bloginfo( 'name' ); ?>
						</span>
						
				<?php 
					else :
					?>
						<span class="navbar-brand mb-0">
							<a rel="home" href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" itemprop="url">
								<?php bloginfo( 'name' ); ?>
							</a>
						</span>
				<?php 
					endif;

				}
				else {
					the_custom_logo();
				}
				?><!-- end custom logo -->

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

			<div id="navbarNavDropdown" class="collapse navbar-collapse<?php if ( get_theme_mod( 'menubar_mode' ) != 'alt' ) { echo ' justify-content-end'; } ?>">

	            <?php
	                wp_nav_menu(
	                	array(
			                'theme_location'  => 'primary',
			                //'container'       => 'div',
			                'menu_id'         => false,
			                'menu_class'      => 'navbar-nav',
			                'depth'           => 2,
			                'walker'          => new Underboot_WP_Bootstrap_Navwalker(),
			                'fallback_cb'     => 'Underboot_WP_Bootstrap_Navwalker::fallback',
		                )
	                );
	                ?>

				<?php
					// Append additional items to the right in the main menu bar.
					get_template_part( 'template-parts/navigation/additional-items' ); ?>

			</div>

		</div>
	</nav>
</header><!-- #masthead -->