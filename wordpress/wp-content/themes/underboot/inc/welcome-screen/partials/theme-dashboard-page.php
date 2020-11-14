<?php
$underboot_theme = wp_get_theme();
$active_tab = isset( $_GET['tab'] ) ? sanitize_text_field( wp_unslash( $_GET['tab'] ) ) : 'getting_started';

// Links that are used on this page.
$header_links = array(
    'pro' => 'http://dinevthemes.com/themes/underboot/'
);
?>

<div class="wrap underboot-dashboard">

    <div class="page-header wp-clearfix">
        <div class="theme-info">
            <div class="inner">
                <h1><?php esc_html_e( 'Welcome to Underboot!', 'underboot' ) ?></h1>
                <?php printf( '<p class="ver">%1$s %2$s</p>', esc_html__( 'Version:', 'underboot' ), esc_html( $underboot_theme->Version ) ); ?>
                <p class="theme-description"><?php echo esc_html( $underboot_theme->Description ); ?></p>
                <p>
                    <strong>
                    <?php esc_html_e( 'You can get more features plus one-on-one support by purchased the Pro version of this theme.', 'underboot' ); ?>
                    </strong>
                </p>
                    <?php
                    // Display link to the Pro version.
                    printf( '<a href="%1$s"  class="button button-primary" target="_blank">%2$s</a>', esc_url( $header_links['pro'] ), esc_html__( 'Get Pro', 'underboot' ) );
                    ?>
            </div><!-- .inner -->
        </div><!-- .theme-info -->

        <div class="theme-screenshot">
            <img src="<?php echo esc_url( UNDERBOOT_DIR_URI . '/screenshot.png' ); ?>" alt="<?php echo esc_attr( $underboot_theme->Name ); ?>" />
        </div><!-- .theme-screenshot -->
    </div><!-- .page-header -->

    <h2 class="nav-tab-wrapper wp-clearfix">
        <?php Underboot_Welcome_Screen::get_dashboard_page_tabs( $active_tab ); ?>
    </h2><!-- .nav-tab-wrapper -->

    <div class="tab-content wp-clearfix">
        <div class="tab-primary">
            <div class="inner">
                <?php Underboot_Welcome_Screen::get_dashboard_page_tab_content( $active_tab ); ?>
            </div><!-- .inner -->
        </div><!-- .tab-primary -->

        <div class="tab-secondary">
            <div class="inner">
                <?php require_once UNDERBOOT_DIR . '/inc/welcome-screen/partials/theme-dashboard-sidebar.php'; ?>
            </div><!-- .inner -->
        </div><!-- .tab-secondary -->
    </div><!-- .tab-content -->
</div><!-- .wrap.about-wrap -->
