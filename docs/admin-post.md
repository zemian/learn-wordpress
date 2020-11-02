* https://developer.wordpress.org/reference/files/wp-admin/admin-post.php/
* https://wordpress.stackexchange.com/questions/220073/what-is-the-real-intention-for-admin-post-php
* https://wordpress.stackexchange.com/questions/177076/post-form-request-with-admin-post

The `admin-post.php` can be used to handle general form submit in WP. You must use the "action" hidden field
to setup a callback method to process the form. The callback method is then added by one or both of these
action hooks:

    `admin_post_my_callback` => for logged in user
    `admin_post_nopriv_my_callback` => for non-logged in user

The "admin" in `admin-post.php` is misleading. It can be used for non-admin processing.

Remember to direct user after a POST processing like this:

    if ( wp_redirect( $sendback_url ) ) {
        exit;
    }