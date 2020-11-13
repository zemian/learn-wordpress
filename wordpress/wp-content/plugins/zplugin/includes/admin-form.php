<?php
// Check that the file is not accessed directly.
if ( ! defined( 'ABSPATH' ) ) {
	die( "We're sorry, but you can not directly access this file." );
}

/**
 * This demo show how to process a custom form in Admin page
 * 
 * Ref
 * https://developer.wordpress.org/themes/theme-security/using-nonces/
 */

function zplugin_add_admin_menu_form() {
	// Top menu already added by admin-menu-zplugin.php
	add_submenu_page( 'zplugin', 'Zplugin Form', 'Form', 'manage_options', 'zplugin_form', 'zplugin_menu_form');
	
}
add_action( 'admin_menu', 'zplugin_add_admin_menu_form' );

// There is also admin_post_nopriv_zpluginform hook for non logged in user
add_action( "admin_post_process_zpluginform", "zplugin_process_zpluginform" );


function zplugin_process_zpluginform() {
	$result = print_r($_POST, true);
	echo "<div class='wrap''>";
	echo "<h1>Form Processed using admin-post.php</h1>";
	echo "<pre>$result</pre>";
	echo "</div>";
}

function zplugin_menu_form() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	?>
	<div class="wrap">
		<h1>Form DEMO</h1>
        <p>This page slug=zplugin_form</p>
        <p>Using action=zplugin_form</p>
		<form method="post" action="<?php echo admin_url() . "admin-post.php"; ?>">
			<input name="action" type="hidden" value="process_zpluginform">
			
			<table class="form-table">
				<tbody>
				<tr class="form-field form-required">
					<th scope="row"><label for="form_name">Name <span class="description">(required)</span></label></th>
					<td><input name="form_name" type="text" value="" maxlength="60"></td>
				</tr>
				<tr class="form-field">
					<th scope="row"><label for="form_value">Value</label></th>
					<td><input name="form_value" type="text" value="" maxlength="60"></td>
				</tr>
				</tbody>
			</table>
			<p class="submit"><input type="submit" name="submit" class="button button-primary" value="Submit"></p>
		</form>
	</div>
	<?php
}
?>

