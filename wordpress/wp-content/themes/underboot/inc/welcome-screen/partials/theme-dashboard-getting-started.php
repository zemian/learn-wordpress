<?php

/**
 * This file is used to markup the "Getting Started" section on the dashboard page.
 *
 * @package Underboot
 */
?>

<div class="tab-section">
    <h3 class="section-title"><?php esc_html_e( 'Front Page Setup', 'underboot' ); ?></h3>

    <p><?php esc_html_e( 'Create a new by going to Pages > Add New. Give your page a name (Title field). In the same way create a blank page for the Blog Page.', 'underboot' ); ?></p>
	<p><?php esc_html_e( 'Now you can go to Appearance > Customize > Static Front Page and choose your new created Page as your Front Page.', 'underboot' ); ?></p>
    <p><?php esc_html_e( 'When you have set a static page for your homepage displays, you can make some settings for the front page, go to Customizer > Front Page Settings.', 'underboot' ); ?></p>

</div><!-- .tab-section -->

<div class="tab-section">
    <h3 class="section-title"><?php esc_html_e( 'Theme Options', 'underboot' ); ?></h3>

    <p><?php esc_html_e( 'You can use of the Customizer to provide you with the theme options. Press the button below to open the Customizer and start making changes.', 'underboot' ); ?></p>

    <p><a href="<?php echo wp_customize_url(); // WPCS: XSS OK. ?>" class="button" target="_blank"><?php esc_html_e( 'Customize Theme', 'underboot' ); ?></a></p>
</div><!-- .tab-section -->
