<?php

/**
 * This file is used to markup the sidebar on the dashboard page.
 * @package Underboot
 */

// Links that are used on this page.
$sidebar_links = array(
    'pro' => 'http://dinevthemes.com/themes/underboot/',
    'demo' => 'http://demos.dinevthemes.com/underboot/',
);

?>

<div class="tab-section">
    <h4 class="section-title"><?php esc_html_e( 'Demo Site', 'underboot' ); ?></h4>

    <p><?php esc_html_e( 'You can look at this theme on the live demo.', 'underboot' ); ?></p>

    <p>
    <?php
        // Display link to the Demo.
        printf( '<a href="%1$s"  class="button" target="_blank">%2$s</a>', esc_url( $sidebar_links['demo'] ), esc_html__( 'View Live Demo', 'underboot' ) );
    ?>
    </p>
</div><!-- .tab-section -->
<div class="tab-section">
    <h4 class="section-title"><?php esc_html_e( 'Underboot Pro', 'underboot' ); ?></h4>

    <p><?php esc_html_e( 'You can get more features plus one-on-one support by purchased the Pro version of this theme.', 'underboot' ); ?></p>

    <p>
    <?php
        // Display link to the Premium.
        printf( '<a href="%1$s"  class="button button-primary" target="_blank">%2$s</a>', esc_url( $sidebar_links['pro'] ), esc_html__( 'Get Pro', 'underboot' ) );
    ?>
    </p>
</div><!-- .tab-section -->
