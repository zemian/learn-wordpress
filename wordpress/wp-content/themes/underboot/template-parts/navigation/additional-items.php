<?php
/**
 * Template part for displaying additional items to the right in the menu bar.
 * 
 * @package underboot
 */
?>

<div class="in-nav-bar<?php if ( get_theme_mod( 'menubar_mode' ) == 'alt' ) { echo ' ml-auto'; } ?> d-flex justify-content-between pl-lg-2 justify-content-lg-end">
	<?php underboot_add_navbar_items(); ?>
</div>