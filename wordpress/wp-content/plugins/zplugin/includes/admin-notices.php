<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

/**
 * This demo is not enabled by default. See zplugin.php
 * 
 * NOTE the notice will appear on all admin pages!
 * https://developer.wordpress.org/reference/hooks/admin_notices/
 */

function zplugin_add_admin_menu_notices() {
	// Top menu already added by admin-menu-zplugin.php
	add_submenu_page( 'zplugin', 'Zplugin Notices', 'Notices', 'manage_options', 'zplugin_notices', 'zplugin_admin_page_notices');

}
add_action( 'admin_menu', 'zplugin_add_admin_menu_notices' );

function zplugin_admin_page_notices() {
	echo "<div class='wrap''>";
	echo "<h1>ZPlugin Notices</h1>";
	echo "</div>";
}

add_action( 'admin_notices', 'zplugin_admin_notice_success' );
add_action( 'admin_notices', 'zplugin_admin_notice_error' );

function zplugin_admin_notice_success() {
	?>
    <div class="notice notice-success is-dismissible">
        <p><?php _e( 'Done!', 'sample-text-domain' ); ?></p>
    </div>
	<?php
}

function zplugin_admin_notice_error() {
	$class = 'notice notice-error';
	$message = __( 'Irks! An error has occurred.', 'sample-text-domain' );

	printf( '<div class="%1$s"><p>%2$s</p></div>', esc_attr( $class ), esc_html( $message ) );
}
?>

