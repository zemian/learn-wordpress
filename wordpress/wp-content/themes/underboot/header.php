<?php
/**
 * The site header
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package underboot
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php
	if (function_exists('wp_body_open')) {
		wp_body_open();
	}
	?>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'underboot' ); ?></a>
	
		<?php
			// Main Menu
			get_template_part( 'template-parts/navigation/main-navbar' );

			// Search modal
		    if( get_theme_mod('show_search_menu_item') == true ) {
				get_template_part( 'template-parts/navigation/modal', 'search-form' );
		    }

			// Header Image
			the_custom_header_markup();

			// Jumbotron - hero unit component if it enabled
			if( is_front_page() && ! is_home() ){
				get_template_part('template-parts/jumbotron');
			}
			?>

	<div id="content" class="site-content pt-4">