<?php
/*
 * https://developer.wordpress.org/rest-api/extending-the-rest-api/adding-custom-endpoints/
 *  
 * List plugin api: http://localhost/wordpress/index.php/wp-json/zplugin/v1/
 * Get author title: http://localhost/wordpress/index.php/wp-json/zplugin/v1/author/1
 * Param test: http://localhost/wordpress/index.php/wp-json/zplugin/v1/param?some_param=foo
 */

/**
 * Grab latest post title by an author id!
 *
 * @param array $data Options for the function.
 * @return string|null Post title for the latest, or null if none.
 */
function zplugin_get_post_title_by_author( $data ) {
	$posts = get_posts( array(
		'author' => $data['id'],
	) );

	if ( empty( $posts ) ) {
		return new WP_Error( 'no_author', 'Invalid author', array( 'status' => 404 ) );
	}

	return ['title' => $posts[0]->post_title];
}
add_action( 'rest_api_init', function () {
	register_rest_route( 'zplugin/v1', '/author/(?P<id>\d+)', array(
		'methods' => 'GET',
		'callback' => 'zplugin_get_post_title_by_author',
		'args' => array(
			'id' => array(
				'validate_callback' => function($param, $request, $key) {
					return is_numeric( $param );
				}
			),
		)
	) );
} );


/**
 * Inspect input parameters from a rest endpoint
 */
function zplugin_print_params( WP_REST_Request $request ) {  // You can access parameters via direct array access on the object:
	$data = [];
	
	$data['param1'] = $request['some_param'];

	// Or via the helper method:
	$data['param2'] = $request->get_param( 'some_param' );

	// You can get the combined, merged set of parameters:
	$parameters = $request->get_params();

	// The individual sets of parameters are also available, if needed:
	$data['parameters1'] = $request->get_url_params();
	$data['parameters2'] = $request->get_query_params();
	$data['parameters3'] = $request->get_body_params();
	$data['parameters4'] = $request->get_json_params();
	$data['parameters5'] = $request->get_default_params();

	// Uploads aren't merged in, but can be accessed separately:
	$data['parameters6'] = $request->get_file_params();

	return new WP_REST_Response($data);
}
add_action( 'rest_api_init', function () {
	register_rest_route( 'zplugin/v1', '/params', array(
		'methods' => 'GET',
		'callback' => 'zplugin_print_params',
	) );
} );
